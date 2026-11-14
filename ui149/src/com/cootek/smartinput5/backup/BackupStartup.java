package com.cootek.smartinput5.backup;

import android.content.Context;
import java.io.*;
import java.util.*;

/** Invoked before TouchPal creates its Settings/configuration/native managers. */
public final class BackupStartup {
    private BackupStartup() {}

    private static boolean mainProcess(Context context) {
        try {
            String expected = context.getApplicationInfo().processName;
            if (expected == null || expected.length() == 0) expected = context.getPackageName();
            InputStream input = new FileInputStream("/proc/self/cmdline");
            ByteArrayOutputStream output = new ByteArrayOutputStream();
            try {
                int value;
                while (output.size() < 256 && (value = input.read()) > 0) output.write(value);
            } finally { input.close(); }
            return expected.equals(new String(output.toByteArray(), "UTF-8"));
        } catch (Exception ignored) { return false; }
    }

    public static synchronized void applyPending(Context context) {
        if (context == null || !mainProcess(context)) return;
        WesternImport137.applyPending(context);
        File pending = null;
        boolean committed = false;
        try {
            File workspace = BackupFiles.workspace(context);
            File transaction = new File(workspace, "transaction");
            BackupFiles.directChild(workspace, transaction);
            pending = new File(workspace, "pending.zip");
            BackupFiles.directChild(workspace, pending);
            if (!pending.exists() && !transaction.exists()) return;
            BackupTransaction.Resolver resolver = BackupController.resolver(context);
            BackupTransaction.Preferences preferences = BackupController.preferences(context);
            BackupTransaction.Recovery recovered = BackupTransaction.recover(transaction, resolver, preferences);
            if (recovered != BackupTransaction.Recovery.NONE) {
                committed = recovered == BackupTransaction.Recovery.COMMITTED;
                if (committed) com.cootek.smartinput5.settings.FreshDefaults137.restored(context);
                if (pending.exists() && !pending.delete()) throw new IOException("Cannot consume pending restore");
                BackupFiles.status(context, recovered == BackupTransaction.Recovery.COMMITTED
                    ? "Словарь и настройки восстановлены."
                    : "Предыдущее восстановление было прервано. Прежние данные возвращены.");
                return;
            }
            if (!pending.isFile()) return;
            InputStream input = new FileInputStream(pending);
            BackupArchive.Archive archive;
            try { archive = BackupArchive.read(input); }
            finally { input.close(); }
            BackupController.validate(archive);
            BackupTransaction.apply(transaction, BackupFiles.desired(archive.entries),
                BackupFiles.existing(context), BackupController.preferencesOnly(archive.entries), resolver, preferences);
            committed = true;
            com.cootek.smartinput5.settings.FreshDefaults137.restored(context);
            if (!pending.delete()) throw new IOException("Cannot consume pending restore");
            BackupFiles.status(context, "Словарь и настройки восстановлены.\nКопия: "
                + archive.metadata.get("createdUTC"));
            BackupTransaction.recover(transaction, resolver, preferences);
        } catch (Exception failure) {
            try {
                if (!committed && pending != null && pending.exists()) {
                    File transaction = new File(BackupFiles.workspace(context), "transaction");
                    if (!transaction.exists()) pending.delete();
                }
                boolean recoveryPending = new File(BackupFiles.workspace(context), "transaction").exists();
                BackupFiles.status(context, committed
                    ? "Словарь и настройки восстановлены. Завершение операции продолжится при следующем запуске."
                    : recoveryPending
                        ? "Восстановление прервано. Откат будет продолжен при перезапуске TouchPal."
                        : "Копия не восстановлена. Прежние данные сохранены.");
            } catch (Exception ignored) { }
        }
    }
}
