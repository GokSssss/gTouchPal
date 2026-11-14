package com.cootek.smartinput5.backup;

import android.content.Context;
import java.io.*;
import java.security.MessageDigest;
import java.util.*;

/** A separate dictionary transaction: never restores preferences or other USRs. */
public final class WesternImport137 {
    private static final String LOGICAL = "dictionary/western.usr";
    private static final byte[] HEADER;
    static {
        try { HEADER = "western.usr s=5.010 d=20141106\u0000\u0000".getBytes("US-ASCII"); }
        catch (UnsupportedEncodingException impossible) { throw new AssertionError(impossible); }
    }
    private WesternImport137() { }

    public static byte[] read(InputStream input) throws IOException {
        if (input == null) throw new IOException("Файл словаря недоступен.");
        ByteArrayOutputStream output = new ByteArrayOutputStream();
        byte[] buffer = new byte[16384];
        int count;
        while ((count = input.read(buffer)) != -1) {
            if (count == 0) continue;
            if (output.size() > BackupFiles.LIMIT - count) throw new IOException("Словарь больше 16 МБ.");
            output.write(buffer, 0, count);
        }
        byte[] bytes = output.toByteArray();
        validate(bytes);
        return bytes;
    }

    static void validate(byte[] bytes) throws IOException {
        if (bytes == null || bytes.length < 250 || bytes.length > BackupFiles.LIMIT)
            throw new IOException("Неверный размер western.usr.");
        for (int i = 0; i < HEADER.length; i++) if (bytes[i] != HEADER[i])
            throw new IOException("Выбран не western.usr совместимого формата.");
        // Header format shared by this engine's bundled template and saved USRs.
        long body = (bytes[36] & 255L) | ((bytes[37] & 255L) << 8)
                | ((bytes[38] & 255L) << 16) | ((bytes[39] & 255L) << 24);
        if (body + 32 != bytes.length) throw new IOException("Файл словаря обрезан или повреждён.");
    }

    private static File directory(Context context) throws IOException {
        File parent = BackupFiles.workspace(context);
        File directory = new File(parent, "western_import");
        BackupFiles.directChild(parent, directory);
        if (!directory.isDirectory() && !directory.mkdirs()) throw new IOException("Папка восстановления недоступна.");
        return directory;
    }

    public static boolean pending(Context context) throws IOException {
        File directory = directory(context);
        return new File(directory, "pending.zip").exists() || new File(directory, "transaction").exists();
    }

    /** Called only after the owner's confirmation and the original native save barrier. */
    public static synchronized void stage(Context context, byte[] incoming, byte[] previous) throws IOException {
        validate(incoming);
        validate(previous);
        File workspace = BackupFiles.workspace(context);
        if (new File(workspace, "pending.zip").exists() || new File(workspace, "transaction").exists() || pending(context))
            throw new IOException("Сначала заверши предыдущее восстановление.");
        File directory = directory(context);
        writeVerified(directory, "previous_western.usr", previous);
        Map<String, byte[]> entries = new TreeMap<String, byte[]>();
        entries.put(LOGICAL, incoming);
        ByteArrayOutputStream bytes = new ByteArrayOutputStream();
        BackupArchive.write(bytes, entries, BackupController.metadata(context));
        writeVerified(directory, "pending.zip", bytes.toByteArray());
    }

    private static String sha(byte[] data) throws IOException {
        try {
            byte[] digest = MessageDigest.getInstance("SHA-256").digest(data);
            StringBuilder result = new StringBuilder();
            for (byte value : digest) {
                result.append(Character.forDigit((value >>> 4) & 15, 16));
                result.append(Character.forDigit(value & 15, 16));
            }
            return result.toString();
        } catch (java.security.NoSuchAlgorithmException impossible) { throw new IOException(impossible); }
    }

    private static void writeVerified(File directory, String name, byte[] bytes) throws IOException {
        File target = new File(directory, name);
        BackupFiles.directChild(directory, target);
        if (target.exists() && !target.isFile()) throw new IOException("Неверное назначение файла.");
        File temporary = File.createTempFile("western_", ".tmp", directory);
        try {
            FileOutputStream output = new FileOutputStream(temporary);
            try { output.write(bytes); output.getFD().sync(); } finally { output.close(); }
            byte[] actual = BackupFiles.read(temporary, 20 * 1024 * 1024);
            if (!sha(bytes).equals(sha(actual))) throw new IOException("Ошибка проверки записи словаря.");
            if (!temporary.renameTo(target)) throw new IOException("Не удалось сохранить файл восстановления.");
        } finally { temporary.delete(); }
    }

    private static BackupTransaction.Preferences unchangedPreferences() {
        return new BackupTransaction.Preferences() {
            public Map<String, byte[]> snapshotRaw() { return Collections.emptyMap(); }
            public void apply(Map<String, byte[]> values) throws IOException {
                if (!values.isEmpty()) throw new IOException("Dictionary import cannot change settings");
            }
            public void restoreRaw(Map<String, byte[]> values) throws IOException { apply(values); }
        };
    }

    /** Invoked in the main process before native dictionaries are opened. */
    public static synchronized void applyPending(final Context context) {
        File pending = null;
        boolean committed = false;
        try {
            File directory = directory(context);
            pending = new File(directory, "pending.zip");
            File transaction = new File(directory, "transaction");
            BackupFiles.directChild(directory, pending);
            BackupFiles.directChild(directory, transaction);
            if (!pending.exists() && !transaction.exists()) return;
            BackupTransaction.Resolver resolver = new BackupTransaction.Resolver() {
                public File resolve(String name) throws IOException {
                    if (!LOGICAL.equals(name)) throw new IOException("Unexpected dictionary target");
                    return BackupFiles.resolve(context, name);
                }
            };
            BackupTransaction.Preferences preferences = unchangedPreferences();
            BackupTransaction.Recovery recovered = BackupTransaction.recover(transaction, resolver, preferences);
            if (recovered != BackupTransaction.Recovery.NONE) {
                committed = recovered == BackupTransaction.Recovery.COMMITTED;
                if (pending.exists() && !pending.delete()) throw new IOException("Cannot consume dictionary restore");
                BackupFiles.status(context, committed ? "Пользовательский словарь восстановлен. Настройки сохранены."
                        : "Восстановление словаря прервалось. Прежний словарь возвращён.");
                return;
            }
            InputStream input = new FileInputStream(pending);
            BackupArchive.Archive archive;
            try { archive = BackupArchive.read(input); } finally { input.close(); }
            if (!BackupController.ENGINE.equals(archive.metadata.get("dictionaryEngine"))
                    || archive.entries.size() != 1 || !archive.entries.containsKey(LOGICAL))
                throw new IOException("Unexpected dictionary archive");
            validate(archive.entries.get(LOGICAL));
            BackupTransaction.apply(transaction, archive.entries, Collections.singleton(LOGICAL),
                    Collections.<String, byte[]>emptyMap(), resolver, preferences);
            committed = true;
            if (!pending.delete()) throw new IOException("Cannot consume dictionary restore");
            BackupFiles.status(context, "Пользовательский словарь восстановлен. Настройки сохранены.");
            BackupTransaction.recover(transaction, resolver, preferences);
        } catch (Exception failure) {
            try {
                File directory = directory(context);
                if (!committed && pending != null && !new File(directory, "transaction").exists()) pending.delete();
                BackupFiles.status(context, committed
                        ? "Словарь восстановлен. Завершение продолжится при перезапуске."
                        : "Словарь не восстановлен. Прежние данные сохранены; при прерванной операции откат продолжится при перезапуске.");
            } catch (Exception ignored) { }
        }
    }
}
