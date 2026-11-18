package com.cootek.smartinput5.backup;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FilterInputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.TreeMap;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipOutputStream;

/** A bounded, fully verified container. Reading never writes application data. */
public final class BackupArchive {
    public static final String PACKAGE_NAME = "com.cootek.smartinputv5";
    public static final String SCHEMA = "1";
    public static final String MANIFEST_NAME = "manifest.properties";
    public static final int MAX_ENTRIES = 128;
    public static final int MAX_ENTRY_BYTES = 16 * 1024 * 1024;
    public static final long MAX_TOTAL_BYTES = 64L * 1024L * 1024L;
    public static final long MAX_ZIP_BYTES = 72L * 1024L * 1024L;
    private static final int MAX_MANIFEST_BYTES = 256 * 1024;
    private static final int MAX_METADATA_FIELDS = 32;
    private static final int TAIL_BYTES = 65535 + 22;

    private BackupArchive() { }

    public static final class Archive {
        /** Maps are immutable; the returned payload byte arrays belong to this result. */
        public final Map<String, byte[]> entries;
        public final Map<String, String> metadata;

        private Archive(Map<String, byte[]> entries, Map<String, String> metadata) {
            this.entries = Collections.unmodifiableMap(new LinkedHashMap<String, byte[]>(entries));
            this.metadata = Collections.unmodifiableMap(new LinkedHashMap<String, String>(metadata));
        }
    }

    /** Writes one ZIP and flushes it, while leaving the caller's output open. */
    public static void write(OutputStream output, Map<String, byte[]> payloads,
                             Map<String, String> metadata) throws IOException {
        if (output == null || payloads == null || metadata == null) {
            throw new IOException("Backup arguments are missing");
        }
        if (payloads.size() > MAX_ENTRIES) throw new IOException("Too many backup files");
        Map<String, byte[]> snapshot = new TreeMap<String, byte[]>();
        long total = 0;
        for (Map.Entry<String, byte[]> entry : payloads.entrySet()) {
            String name = entry.getKey();
            validateName(name);
            byte[] bytes = entry.getValue();
            if (bytes == null) throw new IOException("Missing backup data: " + name);
            if (bytes.length > MAX_ENTRY_BYTES) throw new IOException("Backup file is too large: " + name);
            total += bytes.length;
            if (total > MAX_TOTAL_BYTES) throw new IOException("Backup data exceeds the size limit");
            snapshot.put(name, bytes.clone());
        }
        Map<String, String> cleanMetadata = validateMetadata(metadata);
        Properties manifest = new Properties();
        manifest.setProperty("schema", SCHEMA);
        manifest.setProperty("package", PACKAGE_NAME);
        manifest.setProperty("appVersion", cleanMetadata.get("appVersion"));
        manifest.setProperty("createdUTC", cleanMetadata.get("createdUTC"));
        for (Map.Entry<String, String> entry : cleanMetadata.entrySet()) {
            String key = entry.getKey();
            if (!isReservedMetadata(key)) manifest.setProperty("meta." + key, entry.getValue());
        }
        manifest.setProperty("count", String.valueOf(snapshot.size()));
        int index = 0;
        for (Map.Entry<String, byte[]> entry : snapshot.entrySet()) {
            String prefix = "entry." + index++ + ".";
            manifest.setProperty(prefix + "name", entry.getKey());
            manifest.setProperty(prefix + "length", String.valueOf(entry.getValue().length));
            manifest.setProperty(prefix + "sha256", sha256(entry.getValue()));
        }
        ByteArrayOutputStream manifestBytes = new ByteArrayOutputStream();
        manifest.store(manifestBytes, "TouchPal backup schema 1");
        if (manifestBytes.size() > MAX_MANIFEST_BYTES) throw new IOException("Backup manifest is too large");

        ZipOutputStream zip = new ZipOutputStream(new NonClosingOutputStream(output));
        try {
            writeEntry(zip, MANIFEST_NAME, manifestBytes.toByteArray());
            for (Map.Entry<String, byte[]> entry : snapshot.entrySet()) {
                writeEntry(zip, entry.getKey(), entry.getValue());
            }
            zip.finish();
            zip.flush();
        } catch (IOException failure) {
            try { zip.close(); } catch (IOException ignored) { }
            throw failure;
        }
        zip.close();
    }

    /** Reads and verifies everything before returning; leaves the caller's input open. */
    public static Archive read(InputStream input) throws IOException {
        if (input == null) throw new IOException("Backup input is missing");
        RecordingInputStream recording = new RecordingInputStream(input);
        ZipInputStream zip = new ZipInputStream(recording);
        Map<String, byte[]> payloads = new LinkedHashMap<String, byte[]>();
        Set<String> names = new HashSet<String>();
        byte[] manifestBytes = null;
        long total = 0;
        int localEntries = 0;
        try {
            ZipEntry entry;
            while ((entry = zip.getNextEntry()) != null) {
                String name = entry.getName();
                if (name == null || !names.add(name)) throw new IOException("Duplicate backup file");
                localEntries++;
                if (localEntries > MAX_ENTRIES + 1) throw new IOException("Too many backup files");
                if (entry.isDirectory()) throw new IOException("Directories are not backup files");
                if (entry.getMethod() != ZipEntry.STORED && entry.getMethod() != ZipEntry.DEFLATED) {
                    throw new IOException("Unsupported ZIP compression method");
                }
                boolean manifestEntry = MANIFEST_NAME.equals(name);
                if (!manifestEntry) validateName(name);
                int limit = manifestEntry ? MAX_MANIFEST_BYTES : MAX_ENTRY_BYTES;
                if (entry.getSize() > limit) throw new IOException("Backup file exceeds the size limit");
                ByteArrayOutputStream bytes = new ByteArrayOutputStream();
                byte[] buffer = new byte[8192];
                int count;
                while ((count = zip.read(buffer)) != -1) {
                    if (count == 0) continue;
                    if ((long) bytes.size() + count > limit) throw new IOException("Backup file exceeds the size limit");
                    if (!manifestEntry) {
                        total += count;
                        if (total > MAX_TOTAL_BYTES) throw new IOException("Backup data exceeds the size limit");
                    }
                    bytes.write(buffer, 0, count);
                }
                zip.closeEntry();
                if (manifestEntry) manifestBytes = bytes.toByteArray();
                else payloads.put(name, bytes.toByteArray());
            }
            // ZipInputStream does not itself require the central directory / EOCD.
            // Drain the raw source so the bounded tail can detect truncated ZIPs.
            byte[] drain = new byte[8192];
            while (recording.read(drain) != -1) { }
            recording.verifyEnd(localEntries);
        } catch (IllegalArgumentException failure) {
            throw new IOException("Invalid ZIP data", failure);
        } finally {
            try { zip.close(); } catch (IOException ignored) { }
        }
        if (manifestBytes == null) throw new IOException("Backup manifest is missing");
        Properties manifest = new UniqueProperties();
        try {
            manifest.load(new ByteArrayInputStream(manifestBytes));
        } catch (IllegalArgumentException failure) {
            throw new IOException("Invalid backup manifest", failure);
        }
        if (!SCHEMA.equals(manifest.getProperty("schema"))) throw new IOException("Unsupported backup schema");
        if (!PACKAGE_NAME.equals(manifest.getProperty("package"))) throw new IOException("Backup belongs to another application");
        int count = checkedNumber(manifest.getProperty("count"), MAX_ENTRIES, "file count");
        if (count != payloads.size()) throw new IOException("Backup file count does not match its manifest");

        Map<String, String> metadata = new LinkedHashMap<String, String>();
        metadata.put("schema", SCHEMA);
        metadata.put("package", PACKAGE_NAME);
        metadata.put("appVersion", manifest.getProperty("appVersion"));
        metadata.put("createdUTC", manifest.getProperty("createdUTC"));
        Set<String> expectedProperties = new HashSet<String>();
        Collections.addAll(expectedProperties, "schema", "package", "appVersion", "createdUTC", "count");
        Set<String> listedNames = new HashSet<String>();
        for (int index = 0; index < count; index++) {
            String prefix = "entry." + index + ".";
            String name = manifest.getProperty(prefix + "name");
            validateName(name);
            if (!listedNames.add(name)) throw new IOException("Duplicate manifest file name");
            byte[] bytes = payloads.get(name);
            if (bytes == null) throw new IOException("A listed backup file is missing");
            int length = checkedNumber(manifest.getProperty(prefix + "length"), MAX_ENTRY_BYTES, "file length");
            String digest = manifest.getProperty(prefix + "sha256");
            if (digest == null || !digest.matches("[0-9a-f]{64}") || bytes.length != length
                    || !sha256(bytes).equals(digest)) throw new IOException("Backup checksum or length does not match");
            expectedProperties.add(prefix + "name");
            expectedProperties.add(prefix + "length");
            expectedProperties.add(prefix + "sha256");
        }
        for (Object keyObject : manifest.keySet()) {
            String key = (String) keyObject;
            if (key.startsWith("meta.")) {
                String metadataKey = key.substring(5);
                if (isReservedMetadata(metadataKey)) throw new IOException("Reserved backup metadata field");
                metadata.put(metadataKey, manifest.getProperty(key));
            } else if (!expectedProperties.contains(key)) {
                throw new IOException("Unknown backup manifest field");
            }
        }
        metadata = validateMetadata(metadata);
        return new Archive(payloads, metadata);
    }

    public static boolean isAllowedName(String name) {
        if (name == null || name.length() == 0 || name.length() > 200
                || name.indexOf('\\') >= 0 || name.indexOf('\0') >= 0 || name.contains("..")) return false;
        return name.matches("settings/[A-Za-z0-9_.-]+\\.bin")
                || name.matches("flags/[A-Za-z0-9_.-]+")
                || name.matches("dictionary/[A-Za-z0-9_.-]+\\.usr")
                || name.equals("dictionary/shortcut.lst")
                || name.equals("dictionary/emo_list_en.lua.png")
                || name.equals("dictionary/emo_list_zh.lua.png")
                || name.equals("dictionary/emo_list_default.lua.png")
                || name.equals("dictionary/locale.lua.png")
                || name.equals("clipboard/data.json");
    }

    private static void validateName(String name) throws IOException {
        if (!isAllowedName(name)) throw new IOException("Unexpected backup file name");
    }

    private static Map<String, String> validateMetadata(Map<String, String> source) throws IOException {
        if (source.size() > MAX_METADATA_FIELDS) throw new IOException("Too many backup metadata fields");
        Map<String, String> result = new TreeMap<String, String>();
        for (Map.Entry<String, String> entry : source.entrySet()) {
            String key = entry.getKey(), value = entry.getValue();
            if (key == null || !key.matches("[A-Za-z][A-Za-z0-9_.-]{0,63}")
                    || value == null || value.length() > 1024 || value.indexOf('\0') >= 0) {
                throw new IOException("Invalid backup metadata field");
            }
            result.put(key, value);
        }
        if (result.containsKey("schema") && !SCHEMA.equals(result.get("schema"))) throw new IOException("Unsupported backup schema");
        if (result.containsKey("package") && !PACKAGE_NAME.equals(result.get("package"))) throw new IOException("Backup belongs to another application");
        requireText(result.get("appVersion"), 128, "application version");
        requireText(result.get("createdUTC"), 64, "creation time");
        result.put("schema", SCHEMA);
        result.put("package", PACKAGE_NAME);
        if (result.size() > MAX_METADATA_FIELDS) throw new IOException("Too many backup metadata fields");
        return result;
    }

    private static void requireText(String value, int limit, String label) throws IOException {
        if (value == null || value.trim().length() == 0 || value.length() > limit) throw new IOException("Invalid backup " + label);
    }

    private static boolean isReservedMetadata(String key) {
        return key.equals("schema") || key.equals("package") || key.equals("appVersion") || key.equals("createdUTC");
    }

    private static int checkedNumber(String text, int max, String label) throws IOException {
        if (text == null || !text.matches("[0-9]{1,10}")) throw new IOException("Invalid backup " + label);
        try {
            long value = Long.parseLong(text);
            if (value > max) throw new IOException("Backup " + label + " exceeds the limit");
            return (int) value;
        } catch (NumberFormatException failure) {
            throw new IOException("Invalid backup " + label, failure);
        }
    }

    private static void writeEntry(ZipOutputStream zip, String name, byte[] bytes) throws IOException {
        ZipEntry entry = new ZipEntry(name);
        entry.setTime(0);
        zip.putNextEntry(entry);
        zip.write(bytes);
        zip.closeEntry();
    }

    private static String sha256(byte[] bytes) throws IOException {
        try {
            byte[] digest = MessageDigest.getInstance("SHA-256").digest(bytes);
            StringBuilder hex = new StringBuilder(64);
            for (byte value : digest) {
                hex.append(Character.forDigit((value >>> 4) & 15, 16));
                hex.append(Character.forDigit(value & 15, 16));
            }
            return hex.toString();
        } catch (NoSuchAlgorithmException failure) {
            throw new IOException("SHA-256 is not available", failure);
        }
    }

    private static final class UniqueProperties extends Properties {
        @Override public synchronized Object put(Object key, Object value) {
            if (containsKey(key)) throw new IllegalArgumentException("Duplicate manifest key");
            return super.put(key, value);
        }
    }

    private static final class NonClosingOutputStream extends FilterOutputStream {
        NonClosingOutputStream(OutputStream output) { super(output); }
        @Override public void close() throws IOException { flush(); }
    }

    private static final class RecordingInputStream extends FilterInputStream {
        private final byte[] tail = new byte[TAIL_BYTES];
        private long count;
        RecordingInputStream(InputStream input) { super(input); }
        @Override public void close() { }
        @Override public int read() throws IOException {
            int value = in.read();
            if (value >= 0) remember((byte) value);
            return value;
        }
        @Override public int read(byte[] bytes, int off, int length) throws IOException {
            int size = in.read(bytes, off, length);
            if (size > 0) {
                if (count + size > MAX_ZIP_BYTES) throw new IOException("ZIP backup exceeds the size limit");
                int remaining = size;
                while (remaining > 0) {
                    int position = (int) (count % tail.length);
                    int copy = Math.min(remaining, tail.length - position);
                    System.arraycopy(bytes, off + size - remaining, tail, position, copy);
                    count += copy;
                    remaining -= copy;
                }
            }
            return size;
        }
        private void remember(byte value) throws IOException {
            if (count >= MAX_ZIP_BYTES) throw new IOException("ZIP backup exceeds the size limit");
            tail[(int) (count % tail.length)] = value;
            count++;
        }
        private int at(long absolute) { return tail[(int) (absolute % tail.length)] & 255; }
        private int u16(long absolute) { return at(absolute) | (at(absolute + 1) << 8); }
        private long u32(long absolute) {
            return ((long) at(absolute)) | ((long) at(absolute + 1) << 8)
                    | ((long) at(absolute + 2) << 16) | ((long) at(absolute + 3) << 24);
        }
        void verifyEnd(int localEntries) throws IOException {
            long first = Math.max(0, count - tail.length);
            for (long end = count - 22; end >= first; end--) {
                if (u32(end) != 0x06054b50L || end + 22 + u16(end + 20) != count) continue;
                long centralSize = u32(end + 12), centralOffset = u32(end + 16);
                if (u16(end + 4) != 0 || u16(end + 6) != 0
                        || u16(end + 8) != localEntries || u16(end + 10) != localEntries
                        || centralSize < (long) localEntries * 46L
                        || centralOffset + centralSize != end
                        || centralOffset == 0xffffffffL || centralSize == 0xffffffffL) {
                    throw new IOException("Invalid ZIP directory");
                }
                return;
            }
            throw new IOException("ZIP backup is truncated or has no valid end record");
        }
    }
}
