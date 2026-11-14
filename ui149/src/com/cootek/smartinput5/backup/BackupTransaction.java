package com.cootek.smartinput5.backup;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

/**
 * A process-crash recoverable transaction for already validated backup data.
 *
 * The caller must stop all other writers and provide trusted, stable private
 * parent directories through Resolver. No native engine or Settings singleton is
 * called here. fsync is used for file contents; Java/API15 does not expose a
 * portable directory fsync, so this is not a promise about every power-loss case.
 */
public final class BackupTransaction {
    public interface Resolver { File resolve(String logical) throws IOException; }
    public interface Preferences {
        Map<String, byte[]> snapshotRaw() throws IOException;
        void apply(Map<String, byte[]> desired) throws IOException;
        void restoreRaw(Map<String, byte[]> original) throws IOException;
    }
    public enum Recovery { NONE, ROLLED_BACK, COMMITTED }

    private static final int MAX_FILES = 128;
    private static final int MAX_ONE = 16 * 1024 * 1024;
    private static final long MAX_TOTAL = 64L * 1024L * 1024L;
    private static final int JOURNAL_MAGIC = 0x54504a31;
    private static final int PREFS_MAGIC = 0x54505531;
    private static final byte[] COMMITTED = new byte[] { 'D', 'O', 'N', 'E', '\n' };
    private static final byte[] ROLLED_BACK = new byte[] { 'B', 'A', 'C', 'K', '\n' };
    private static final String JOURNAL = "prepared.bin";
    private static final String COMMIT = "committed";
    private static final String ROLLBACK = "rolled-back";
    private static final String UNDO = "preferences.bin";

    // Package-private deterministic fault points for host tests. Never set by
    // the Android implementation and deliberately not a public product API.
    interface FaultInjector { void at(String point, String logical) throws IOException; }
    static FaultInjector faultInjector;

    private BackupTransaction() { }

    public static synchronized void apply(File transactionDir,
            Map<String, byte[]> desiredFiles, Set<String> existingFileNames,
            Map<String, byte[]> desiredPrefs, Resolver resolver,
            Preferences preferences) throws IOException {
        if (transactionDir == null || desiredFiles == null || existingFileNames == null
                || desiredPrefs == null || resolver == null || preferences == null)
            throw new IOException("Missing transaction input");
        checkByteMap(desiredFiles, false);
        checkByteMap(desiredPrefs, true);
        if ((long) desiredFiles.size() + desiredPrefs.size() > MAX_FILES
                || totalBytes(desiredFiles) + totalBytes(desiredPrefs) > MAX_TOTAL)
            throw new IOException("Combined restore data is too large");
        TreeSet<String> names = new TreeSet<String>();
        for (String name : existingFileNames) { checkLogical(name); names.add(name); }
        names.addAll(desiredFiles.keySet());
        if (names.size() > MAX_FILES) throw new IOException("Too many files");
        for (String name : names) checkLogical(name);

        File tx = checkedLeaf(transactionDir);
        if (tx.exists()) {
            if (!tx.isDirectory()) throw new IOException("Transaction path is not a directory");
            String[] contents = tx.list();
            if (contents == null || contents.length != 0)
                throw new IOException("Recover the prior transaction first");
        } else {
            File parent = tx.getParentFile();
            if (parent == null || !parent.isDirectory()) throw new IOException("Missing transaction parent");
            if (!tx.mkdir()) throw new IOException("Cannot create transaction directory");
        }

        Journal journal = new Journal();
        Set<String> destinations = new HashSet<String>();
        try {
            // Resolve every destination and prepare every byte before the first
            // rename, so validation/staging errors leave current state intact.
            for (String name : names) {
                File dest = destination(resolver, name, tx);
                if (!destinations.add(dest.getPath())) throw new IOException("Aliased destinations");
                boolean exists = dest.exists();
                if (exists && !dest.isFile()) throw new IOException("Destination is not a file");
                journal.original.put(name, Boolean.valueOf(exists));
                if (desiredFiles.containsKey(name)) writeFile(child(tx, "new/" + name), desiredFiles.get(name));
            }
            Map<String, byte[]> oldPrefs = preferences.snapshotRaw();
            checkByteMap(oldPrefs, true);
            byte[] undo = encodePreferences(oldPrefs);
            writeFile(child(tx, UNDO), undo);
            journal.prefsLength = undo.length;
            journal.prefsHash = sha(undo);
            writeAtomic(tx, JOURNAL, encodeJournal(journal));
        } catch (Exception e) {
            // No journal means no mutation could have started.
            if (!child(tx, JOURNAL).exists()) deleteTree(tx, tx);
            throw asIOException("Cannot prepare restore", e);
        }

        try {
            fault("after-prepared", null);
            for (String name : names) {
                File dest = destination(resolver, name, tx);
                File old = child(tx, "old/" + name);
                if (journal.original.get(name).booleanValue()) {
                    mkdirParents(old.getParentFile(), tx);
                    move(dest, old);
                    fault("after-old-move", name);
                } else if (dest.exists()) {
                    throw new IOException("Destination changed during restore");
                }
                File staged = child(tx, "new/" + name);
                if (desiredFiles.containsKey(name)) {
                    move(staged, dest);
                    fault("after-new-move", name);
                }
            }
            fault("before-preferences", null);
            preferences.apply(desiredPrefs);
            fault("after-preferences", null);
            writeAtomic(tx, COMMIT, COMMITTED);
            // Keep both the committed marker and undo until the controller has
            // consumed pending.zip. recover then safely cleans committed state.
        } catch (Exception e) {
            try {
                recover(tx, resolver, preferences);
            } catch (Exception rollback) {
                throw new IOException("Restore failed; undo recovery is still required", rollback);
            }
            throw asIOException("Restore failed; previous data restored", e);
        }
    }

    public static synchronized Recovery recover(File transactionDir, Resolver resolver,
            Preferences preferences) throws IOException {
        if (transactionDir == null || resolver == null || preferences == null)
            throw new IOException("Missing recovery input");
        File tx = checkedLeaf(transactionDir);
        if (!tx.exists()) return Recovery.NONE;
        if (!tx.isDirectory()) throw new IOException("Transaction path is not a directory");
        File prepared = child(tx, JOURNAL);
        File committed = child(tx, COMMIT);
        File rolledBack = child(tx, ROLLBACK);
        if (committed.exists() && rolledBack.exists())
            throw new IOException("Conflicting terminal transaction markers");
        if (committed.exists()) {
            if (!Arrays.equals(readFile(committed, 32), COMMITTED))
                throw new IOException("Invalid committed transaction");
            // This marker is durable only after every replacement and commit.
            // A prior cleanup may already have removed the journal/undo files.
            cleanupCompleted(tx, COMMIT);
            return Recovery.COMMITTED;
        }
        if (rolledBack.exists()) {
            if (!Arrays.equals(readFile(rolledBack, 32), ROLLED_BACK))
                throw new IOException("Invalid rolled-back transaction");
            cleanupCompleted(tx, ROLLBACK);
            return Recovery.ROLLED_BACK;
        }
        if (!prepared.exists()) {
            // A crash while staging occurred before any current-state mutation.
            deleteTree(tx, tx);
            return Recovery.NONE;
        }
        Journal journal = decodeJournal(readFile(prepared, 128 * 1024));
        byte[] undo = readFile(child(tx, UNDO), (int) MAX_TOTAL);
        if (undo.length != journal.prefsLength || !Arrays.equals(sha(undo), journal.prefsHash))
            throw new IOException("Invalid preference undo data");
        Map<String, byte[]> oldPrefs = decodePreferences(undo);
        // Resolve/check every destination and old file before doing any rollback.
        Map<String, File> targets = new LinkedHashMap<String, File>();
        Set<String> paths = new HashSet<String>();
        for (String name : journal.original.keySet()) {
            File dest = destination(resolver, name, tx);
            if (!paths.add(dest.getPath())) throw new IOException("Aliased recovery destinations");
            File old = child(tx, "old/" + name);
            checkedLeaf(old);
            if (old.exists() && !old.isFile()) throw new IOException("Invalid old file");
            if (dest.exists() && !dest.isFile()) throw new IOException("Invalid current file");
            if (journal.original.get(name).booleanValue() && !old.exists() && !dest.exists())
                throw new IOException("Missing original file during recovery");
            targets.put(name, dest);
        }
        for (String name : journal.original.keySet()) {
            File dest = targets.get(name);
            File old = child(tx, "old/" + name);
            if (old.exists()) {
                if (dest.exists() && !dest.delete()) throw new IOException("Cannot remove restored file");
                move(old, dest);
            } else if (!journal.original.get(name).booleanValue()) {
                if (dest.exists() && !dest.delete()) throw new IOException("Cannot remove added file");
            }
        }
        preferences.restoreRaw(oldPrefs);
        // A terminal marker is needed for rollback as well: otherwise a crash
        // while deleting undo before the journal would make recovery impossible.
        writeAtomic(tx, ROLLBACK, ROLLED_BACK);
        cleanupCompleted(tx, ROLLBACK);
        return Recovery.ROLLED_BACK;
    }

    private static void checkByteMap(Map<String, byte[]> map, boolean preferenceNames)
            throws IOException {
        if (map == null || map.size() > MAX_FILES) throw new IOException("Too many entries");
        long total = 0;
        for (Map.Entry<String, byte[]> e : map.entrySet()) {
            if (preferenceNames) checkPreferenceName(e.getKey()); else checkLogical(e.getKey());
            if (e.getValue() == null || e.getValue().length > MAX_ONE)
                throw new IOException("Invalid entry size");
            total += e.getValue().length;
            if (total > MAX_TOTAL) throw new IOException("Restore data is too large");
        }
    }

    private static long totalBytes(Map<String, byte[]> map) {
        long total = 0;
        for (byte[] value : map.values()) total += value.length;
        return total;
    }

    private static void checkPreferenceName(String name) throws IOException {
        if (name == null || !name.matches("settings/[A-Za-z0-9_][A-Za-z0-9_.-]{0,127}\\.bin")
                || name.indexOf("..") >= 0) throw new IOException("Invalid preference name");
    }

    private static void checkLogical(String name) throws IOException {
        if (name == null || name.length() > 256 || name.indexOf("..") >= 0)
            throw new IOException("Invalid restore file name");
        if (name.equals("dictionary/shortcut.lst") || name.equals("dictionary/emo_list_en.lua.png")
                || name.equals("dictionary/emo_list_zh.lua.png")
                || name.equals("dictionary/emo_list_default.lua.png") || name.equals("dictionary/locale.lua.png")) return;
        if (name.matches("dictionary/[A-Za-z0-9_][A-Za-z0-9_.-]{0,191}\\.usr")
                || name.matches("flags/[A-Za-z0-9_][A-Za-z0-9_.-]{0,127}")) return;
        throw new IOException("Invalid restore file name");
    }

    private static File destination(Resolver resolver, String name, File tx) throws IOException {
        File file = checkedLeaf(resolver.resolve(name));
        File parent = file.getParentFile();
        if (parent == null || !parent.isDirectory()) throw new IOException("Missing restore directory");
        String root = tx.getCanonicalPath();
        if (file.getPath().equals(root) || file.getPath().startsWith(root + File.separator))
            throw new IOException("Restore destination overlaps transaction");
        return file;
    }

    private static File checkedLeaf(File input) throws IOException {
        if (input == null) throw new IOException("Missing path");
        File absolute = input.getAbsoluteFile();
        File parent = absolute.getParentFile();
        if (parent == null || absolute.getName().equals(".") || absolute.getName().equals(".."))
            throw new IOException("Invalid path");
        File expected = new File(parent.getCanonicalFile(), absolute.getName());
        if (!absolute.getCanonicalFile().equals(expected)) throw new IOException("Symbolic link rejected");
        // File.exists follows links. A dangling link is visible in parent.list
        // even on runtimes whose getCanonicalPath cannot resolve its target.
        if (!expected.exists() && parent.exists()) {
            String[] list = parent.list();
            if (list == null) throw new IOException("Cannot inspect path parent");
            for (String entry : list) if (entry.equals(absolute.getName()))
                throw new IOException("Unreadable or dangling path rejected");
        }
        return expected;
    }

    private static File child(File tx, String relative) throws IOException {
        if (relative == null || relative.startsWith("/") || relative.indexOf('\\') >= 0
                || relative.indexOf("..") >= 0 || relative.indexOf('\0') >= 0)
            throw new IOException("Invalid transaction path");
        File root = tx.getCanonicalFile();
        File current = root;
        for (String part : relative.split("/")) {
            if (part.length() == 0) throw new IOException("Empty path segment");
            current = checkedLeaf(new File(current, part));
            if (!current.getPath().startsWith(root.getPath() + File.separator))
                throw new IOException("Transaction path escaped");
        }
        return current;
    }

    private static void mkdirParents(File dir, File root) throws IOException {
        if (dir.equals(root)) return;
        if (!dir.exists()) {
            mkdirParents(dir.getParentFile(), root);
            checkedLeaf(dir);
            if (!dir.mkdir()) throw new IOException("Cannot create staging directory");
        }
        if (!dir.isDirectory()) throw new IOException("Invalid staging directory");
        checkedLeaf(dir);
    }

    private static void writeFile(File file, byte[] data) throws IOException {
        // Staging paths have only fixed, validated components. Find the nearest
        // existing ancestor instead of mkdirs, which can silently follow links.
        File parent = file.getParentFile();
        if (!parent.exists()) {
            List<File> missing = new ArrayList<File>();
            File p = parent;
            while (!p.exists()) { missing.add(p); p = p.getParentFile(); }
            if (!p.isDirectory()) throw new IOException("Missing staging parent");
            Collections.reverse(missing);
            for (File d : missing) {
                checkedLeaf(d);
                if (!d.mkdir()) throw new IOException("Cannot create staging parent");
            }
        }
        checkedLeaf(file);
        if (file.exists()) throw new IOException("Unexpected staging file");
        FileOutputStream out = new FileOutputStream(file);
        try { out.write(data); out.getFD().sync(); } finally { out.close(); }
    }

    private static void writeAtomic(File tx, String name, byte[] data) throws IOException {
        File temporary = child(tx, name + ".tmp");
        // A previous process can die before rename. This known temporary is not
        // authoritative state and must not prevent retrying terminal writes.
        if (temporary.exists() && (!temporary.isFile() || !temporary.delete()))
            throw new IOException("Cannot replace incomplete transaction marker");
        writeFile(temporary, data);
        move(temporary, child(tx, name));
    }

    private static void cleanupCompleted(File tx, String terminalName) throws IOException {
        File terminal = child(tx, terminalName);
        File[] children = tx.listFiles();
        if (children == null) throw new IOException("Cannot inspect completed transaction");
        // Keep the terminal proof until all other children are gone. If cleanup
        // is interrupted, recover must never mistake committed state for work
        // which still needs rollback (or require an already deleted undo file).
        for (File entry : children) {
            if (entry.getName().equals(terminalName)) continue;
            deleteTree(entry, tx);
            fault("after-cleanup-entry", entry.getName());
        }
        if (!terminal.delete()) throw new IOException("Cannot remove terminal marker");
        fault("after-cleanup-marker", terminalName);
        if (!tx.delete()) throw new IOException("Cannot remove completed transaction directory");
    }

    private static byte[] readFile(File file, int limit) throws IOException {
        file = checkedLeaf(file);
        if (!file.isFile() || file.length() > limit) throw new IOException("Invalid transaction data size");
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        FileInputStream in = new FileInputStream(file);
        try {
            byte[] buffer = new byte[8192];
            int n;
            while ((n = in.read(buffer)) != -1) {
                if ((long) out.size() + n > limit) throw new IOException("Transaction data grew");
                out.write(buffer, 0, n);
            }
        } finally { in.close(); }
        return out.toByteArray();
    }

    private static void move(File from, File to) throws IOException {
        from = checkedLeaf(from); to = checkedLeaf(to);
        if (!from.isFile() || to.exists() || !from.renameTo(to))
            throw new IOException("Cannot move restore file");
    }

    private static void deleteTree(File file, File root) throws IOException {
        file = checkedLeaf(file);
        if (!file.getPath().equals(root.getCanonicalPath())
                && !file.getPath().startsWith(root.getCanonicalPath() + File.separator))
            throw new IOException("Cleanup escaped transaction");
        if (!file.exists()) return;
        if (file.isDirectory()) {
            File[] children = file.listFiles();
            if (children == null) throw new IOException("Cannot inspect transaction directory");
            for (File entry : children) deleteTree(entry, root);
        }
        if (!file.delete()) throw new IOException("Cannot clean transaction data");
    }

    private static byte[] encodePreferences(Map<String, byte[]> map) throws IOException {
        ByteArrayOutputStream bytes = new ByteArrayOutputStream();
        DataOutputStream out = new DataOutputStream(bytes);
        out.writeInt(PREFS_MAGIC); out.writeInt(map.size());
        for (String name : new TreeSet<String>(map.keySet())) {
            writeString(out, name); out.writeInt(map.get(name).length); out.write(map.get(name));
        }
        out.flush();
        if (bytes.size() > MAX_TOTAL) throw new IOException("Preference undo too large");
        return bytes.toByteArray();
    }

    private static Map<String, byte[]> decodePreferences(byte[] bytes) throws IOException {
        DataInputStream in = new DataInputStream(new ByteArrayInputStream(bytes));
        if (in.readInt() != PREFS_MAGIC) throw new IOException("Invalid preference undo header");
        int count = in.readInt();
        if (count < 0 || count > MAX_FILES) throw new IOException("Invalid preference undo count");
        Map<String, byte[]> map = new LinkedHashMap<String, byte[]>();
        for (int i = 0; i < count; i++) {
            String name = readString(in); checkPreferenceName(name);
            int size = in.readInt();
            if (size < 0 || size > MAX_ONE || size > in.available()) throw new IOException("Invalid preference undo length");
            byte[] value = new byte[size]; in.readFully(value);
            if (map.put(name, value) != null) throw new IOException("Duplicate preference undo name");
        }
        if (in.available() != 0) throw new IOException("Trailing preference undo data");
        checkByteMap(map, true);
        return map;
    }

    private static final class Journal {
        final Map<String, Boolean> original = new LinkedHashMap<String, Boolean>();
        int prefsLength;
        byte[] prefsHash;
    }

    private static byte[] encodeJournal(Journal journal) throws IOException {
        ByteArrayOutputStream body = new ByteArrayOutputStream();
        DataOutputStream out = new DataOutputStream(body);
        out.writeInt(JOURNAL_MAGIC); out.writeInt(journal.original.size());
        for (Map.Entry<String, Boolean> e : journal.original.entrySet()) {
            writeString(out, e.getKey()); out.writeBoolean(e.getValue().booleanValue());
        }
        out.writeInt(journal.prefsLength); out.write(journal.prefsHash); out.flush();
        byte[] data = body.toByteArray(); body.write(sha(data));
        return body.toByteArray();
    }

    private static Journal decodeJournal(byte[] data) throws IOException {
        if (data.length < 12 + 64) throw new IOException("Invalid journal size");
        byte[] body = Arrays.copyOf(data, data.length - 32);
        if (!Arrays.equals(sha(body), Arrays.copyOfRange(data, body.length, data.length)))
            throw new IOException("Journal checksum failed");
        DataInputStream in = new DataInputStream(new ByteArrayInputStream(body));
        if (in.readInt() != JOURNAL_MAGIC) throw new IOException("Invalid journal version");
        int count = in.readInt();
        if (count < 0 || count > MAX_FILES) throw new IOException("Invalid journal count");
        Journal journal = new Journal();
        for (int i = 0; i < count; i++) {
            String name = readString(in); checkLogical(name);
            int value = in.readUnsignedByte();
            if (value > 1 || journal.original.put(name, Boolean.valueOf(value != 0)) != null)
                throw new IOException("Invalid journal entry");
        }
        journal.prefsLength = in.readInt();
        if (journal.prefsLength < 8 || journal.prefsLength > MAX_TOTAL)
            throw new IOException("Invalid undo length");
        journal.prefsHash = new byte[32]; in.readFully(journal.prefsHash);
        if (in.available() != 0) throw new IOException("Trailing journal data");
        return journal;
    }

    private static void writeString(DataOutputStream out, String text) throws IOException {
        byte[] bytes = text.getBytes("UTF-8"); out.writeInt(bytes.length); out.write(bytes);
    }
    private static String readString(DataInputStream in) throws IOException {
        int n = in.readInt();
        if (n < 1 || n > 1024 || n > in.available()) throw new IOException("Invalid name length");
        byte[] bytes = new byte[n]; in.readFully(bytes);
        String name = new String(bytes, "UTF-8");
        if (!Arrays.equals(name.getBytes("UTF-8"), bytes)) throw new IOException("Invalid UTF-8 name");
        return name;
    }
    private static byte[] sha(byte[] bytes) throws IOException {
        try { return MessageDigest.getInstance("SHA-256").digest(bytes); }
        catch (NoSuchAlgorithmException e) { throw new IOException("SHA-256 unavailable", e); }
    }
    private static IOException asIOException(String message, Exception e) {
        return new IOException(message, e);
    }
    private static void fault(String point, String name) throws IOException {
        if (faultInjector != null) faultInjector.at(point, name);
    }
}
