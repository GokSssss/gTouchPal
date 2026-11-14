package com.cootek.smartinput5.backup;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Looper;
import android.os.Process;
import com.cootek.smartinput5.engine.Engine;
import com.cootek.smartinput5.engine.Okinawa;
import com.cootek.smartinput5.engine.Settings;
import com.cootek.smartinput5.func.z;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.*;

public final class BackupController {
    static final String ENGINE = "7b1928d971073eb35b49fd5e1df20caa2d9769bcff92bec64b9aebee0b5190b2";
    private BackupController() {}

    private static void mainThread() throws IOException {
        if (Looper.myLooper() != Looper.getMainLooper()) throw new IOException("Use the main thread for native snapshot");
    }

    public static Map<String, String> metadata(Context context) {
        Map<String, String> map = new TreeMap<String, String>();
        String version = "TEST107";
        try { PackageInfo info = context.getPackageManager().getPackageInfo(context.getPackageName(), 0); version = info.versionName; }
        catch (Exception ignored) { }
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        format.setTimeZone(TimeZone.getTimeZone("UTC"));
        map.put("appVersion", version == null ? "TEST107" : version);
        map.put("createdUTC", format.format(new Date()));
        map.put("dictionaryEngine", ENGINE);
        map.put("clipboardIncluded", "true");
        map.put("clipboardPinnedIncluded", "true");
        map.put("clipboardShortcutsIncluded", "true");
        map.put("clipboardImageFilesIncluded", "false");
        return map;
    }

    /** Fixed phase identifiers and exception categories never contain user data. */
    static final class CaptureException extends IOException {
        final String stage;
        final Throwable resumeFailure;
        CaptureException(String stage, Throwable cause, Throwable resumeFailure) {
            super("Backup capture: " + stage);
            this.stage = stage;
            this.resumeFailure = resumeFailure;
            initCause(cause);
        }
    }

    /** Keep the Activity's existing memory-error handling while retaining both failures. */
    static final class CaptureMemoryError extends OutOfMemoryError {
        final String stage;
        final Throwable resumeFailure;
        CaptureMemoryError(String stage, Throwable cause, Throwable resumeFailure) {
            super("Backup capture: " + stage);
            this.stage = stage;
            this.resumeFailure = resumeFailure;
            initCause(cause);
        }
    }

    private static String exceptionCategory(Throwable failure) {
        if (failure instanceof OutOfMemoryError) return "OutOfMemoryError";
        if (failure instanceof SecurityException) return "SecurityException";
        if (failure instanceof ClassCastException) return "ClassCastException";
        if (failure instanceof NullPointerException) return "NullPointerException";
        if (failure instanceof IllegalArgumentException) return "IllegalArgumentException";
        if (failure instanceof IllegalStateException) return "IllegalStateException";
        if (failure instanceof ConcurrentModificationException) return "ConcurrentModificationException";
        if (failure instanceof IOException) return "IOException";
        if (failure instanceof RuntimeException) return "RuntimeException";
        if (failure instanceof Error) return "Error";
        if (failure instanceof Exception) return "Exception";
        return "Throwable";
    }

    private static String stageLabel(String stage) {
        if ("thread".equals(stage)) return "поток клавиатуры";
        if ("workspace".equals(stage)) return "служебная папка";
        if ("pending-restore".equals(stage)) return "ожидающее восстановление; перезапусти TouchPal";
        if ("settings".equals(stage)) return "доступ к настройкам";
        if ("engine".equals(stage)) return "состояние клавиатуры";
        if ("native-open".equals(stage)) return "доступ к словарю";
        if ("native-release".equals(stage)) return "сохранение словаря";
        if ("native-prefs".equals(stage)) return "подготовка настроек";
        if ("clipboard".equals(stage)) return "текстовый буфер, закреплённые записи и сокращения";
        if ("user-files".equals(stage)) return "чтение пользовательских словарей";
        if ("validation".equals(stage)) return "проверка подготовленных данных";
        if ("native-resume".equals(stage)) return "возобновление словаря";
        if ("engine-state".equals(stage)) return "возврат состояния клавиатуры";
        return "подготовка данных";
    }

    public static String captureError(Throwable failure) {
        String stage = "capture";
        Throwable cause = failure;
        Throwable resume = null;
        if (failure instanceof CaptureException) {
            CaptureException captured = (CaptureException) failure;
            stage = captured.stage;
            cause = captured.getCause();
            resume = captured.resumeFailure;
        } else if (failure instanceof CaptureMemoryError) {
            CaptureMemoryError captured = (CaptureMemoryError) failure;
            stage = captured.stage;
            cause = captured.getCause();
            resume = captured.resumeFailure;
        }
        String message = "Не удалось подготовить копию.\nЭтап: " + stageLabel(stage)
                + " [" + stage + "].\nОшибка: " + exceptionCategory(cause) + ".";
        if (resume != null) message += "\nВозобновление: " + exceptionCategory(resume) + ".";
        String clipDetails=ClipboardBackup138.failureDetails(failure);
        if(clipDetails.length()!=0) message+="\n"+clipDetails;
        String fileDetails=BackupFiles.failureDetails(failure);
        if(fileDetails.length()!=0) message+="\n"+fileDetails;
        String details = BackupPreferences.failureDetails(failure);
        if (details.length() != 0) message += "\n" + details;
        return message;
    }

    public static synchronized Map<String, byte[]> capture(Context context) throws IOException {
        return capture(context, false);
    }

    public static synchronized byte[] captureWestern(Context context) throws IOException {
        return capture(context, true).get("dictionary/western.usr");
    }

    private static Map<String, byte[]> capture(Context context, boolean westernOnly) throws IOException {
        String stage = "thread";
        String failureStage = stage;
        Engine engine = null;
        Okinawa nativeCore = null;
        boolean enabled = false;
        boolean released = false;
        Throwable failure = null;
        Throwable resumeFailure = null;
        Map<String, byte[]> entries = null;
        try {
            mainThread();
            stage = "workspace";
            File workspace = BackupFiles.workspace(context);
            stage = "pending-restore";
            if (new File(workspace, "pending.zip").exists() || new File(workspace, "transaction").exists())
                throw new IOException("Pending restoration");
            stage = "settings";
            Settings settings = Settings.getInstance();
            if (settings == null) throw new IOException("Settings unavailable");
            stage = "engine";
            try { engine = Engine.getInstance(); }
            catch (IllegalArgumentException noImeAssigned) { /* Settings can be open without an IME instance. */ }
            enabled = Engine.isInitialized();
            stage = "native-open";
            nativeCore = z.J0() ? z.b0().m0() : null;
            if (nativeCore == null) throw new IOException("Dictionary unavailable");
            stage = "native-release";
            released = true;
            nativeCore.release();
            if (westernOnly) {
                stage = "user-files";
                byte[] bytes = BackupFiles.read(BackupFiles.resolve(context, "dictionary/western.usr"), BackupFiles.LIMIT);
                if (bytes.length == 0) throw new IOException("Dictionary is empty");
                entries = new TreeMap<String, byte[]>();
                entries.put("dictionary/western.usr", bytes);
            } else {
                stage = "native-prefs";
                Map<String, Object> live;
                synchronized (settings) { live = new HashMap<String, Object>(settings.getPreferenceMap()); }
                entries = new TreeMap<String, byte[]>(BackupPreferences.snapshot(context, live));
                stage = "user-files";
                entries.putAll(BackupFiles.capture(context));
                stage = "clipboard";
                entries.put(ClipboardBackup138.KEY, ClipboardBackup138.capture(context));
                stage = "validation";
                validateEntries(entries);
            }
        } catch (Throwable problem) {
            failure = problem;
            failureStage = stage;
        } finally {
            if (released) {
                try { nativeCore.init(); }
                catch (Throwable problem) {
                    if (failure == null) { failure = problem; failureStage = "native-resume"; }
                    else resumeFailure = problem;
                }
                // Restore the old disabled flag even when init reports a failure.
                if (engine != null && !enabled) {
                    try { engine.setEnable(false); }
                    catch (Throwable problem) {
                        if (failure == null) { failure = problem; failureStage = "engine-state"; }
                        else if (resumeFailure == null) resumeFailure = problem;
                    }
                }
            }
        }
        if (failure instanceof OutOfMemoryError || resumeFailure instanceof OutOfMemoryError)
            throw new CaptureMemoryError(failureStage, failure, resumeFailure);
        // Fatal VM/linkage errors retain their type; the resume attempt must not mask them.
        if (failure instanceof Error) throw (Error) failure;
        if (failure != null) throw new CaptureException(failureStage, failure, resumeFailure);
        return entries;
    }

    static void validateEntries(Map<String, byte[]> entries) throws IOException {
        if (entries == null || entries.size() > 128 || !entries.containsKey(BackupFiles.DISABLED)
                || !entries.containsKey(BackupFiles.HARDWARE)) throw new IOException("Неполная резервная копия.");
        Map<String,byte[]> preferences=preferencesOnly(entries);
        BackupPreferences.validate(ClipboardBackup138.settingsOnly(preferences));
        if(preferences.containsKey(ClipboardBackup138.KEY)) ClipboardBackup138.validate(preferences.get(ClipboardBackup138.KEY));
        long total = 0;
        for (Map.Entry<String, byte[]> entry : entries.entrySet()) {
            if (entry.getValue() == null || entry.getValue().length > BackupFiles.LIMIT) throw new IOException("Размер файла в копии слишком велик.");
            total += entry.getValue().length;
            if (total > 64L * 1024 * 1024) throw new IOException("Размер копии слишком велик.");
            if (!entry.getKey().startsWith("settings/") && !BackupFiles.fileName(entry.getKey()))
                throw new IOException("Неподдерживаемый состав резервной копии.");
        }
        BackupFiles.desired(entries);
    }

    static Map<String, byte[]> preferencesOnly(Map<String, byte[]> entries) throws IOException {
        Set<String> known = new HashSet<String>(Arrays.asList("settings/TouchPalOptions.bin",
            "settings/default.bin", "settings/touchpal_hardware.bin", "settings/touchpal_haptics.bin"));
        Map<String, byte[]> result = new TreeMap<String, byte[]>();
        for (Map.Entry<String, byte[]> entry : entries.entrySet()) {
            if (!entry.getKey().startsWith("settings/")) continue;
            if (!known.contains(entry.getKey()) && !ClipboardBackup138.KEY.equals(entry.getKey())) throw new IOException("Неизвестный раздел настроек в копии.");
            result.put(entry.getKey(), entry.getValue());
        }
        if (!result.keySet().containsAll(known)) throw new IOException("В копии не хватает настроек.");
        return result;
    }

    public static void validate(BackupArchive.Archive archive) throws IOException {
        if (archive == null || !ENGINE.equals(archive.metadata.get("dictionaryEngine")))
            throw new IOException("Эта копия использует другой формат словаря.");
        validateEntries(archive.entries);
    }

    public static synchronized void stage(Context context, BackupArchive.Archive archive) throws IOException {
        validate(archive);
        File parent = BackupFiles.workspace(context);
        File pending = new File(parent, "pending.zip");
        BackupFiles.directChild(parent, pending);
        if (pending.exists() || new File(parent, "transaction").exists()) throw new IOException("Восстановление уже ожидает перезапуска.");
        File temporary = File.createTempFile("incoming_", ".tmp", parent);
        try {
            FileOutputStream output = new FileOutputStream(temporary);
            try { BackupArchive.write(output, archive.entries, archive.metadata); output.getFD().sync(); }
            finally { output.close(); }
            if (!temporary.renameTo(pending)) throw new IOException("Не удалось подготовить восстановление.");
        } finally { temporary.delete(); }
    }

    public static void restart(Context context) {
        try {
            Settings settings = Settings.getInstance();
            if (settings != null) settings.writeBack();
            // A synchronous write barrier also waits for pending SharedPreferences writes.
            context.getSharedPreferences("TouchPalOptions", 0).edit().commit();
            if (z.J0()) {
                Okinawa nativeCore = z.b0().m0();
                if (nativeCore != null) nativeCore.release();
            }
        } finally { Process.killProcess(Process.myPid()); }
    }

    public static String status(Context context) {
        try {
            File file = new File(BackupFiles.workspace(context), "last_restore.txt");
            if (file.isFile()) return new String(BackupFiles.read(file, 16384), "UTF-8");
        } catch (Exception ignored) { }
        return "";
    }

    static BackupTransaction.Resolver resolver(final Context context) {
        return new BackupTransaction.Resolver() {
            public File resolve(String logical) throws IOException { return BackupFiles.resolve(context, logical); }
        };
    }

    static BackupTransaction.Preferences preferences(final Context context) {
        return new BackupTransaction.Preferences() {
            public Map<String, byte[]> snapshotRaw() throws IOException { Map<String,byte[]> values=new TreeMap<String,byte[]>(BackupPreferences.snapshotRaw(context));values.put(ClipboardBackup138.KEY,ClipboardBackup138.capture(context));return values; }
            public void apply(Map<String, byte[]> values) throws IOException {
                BackupPreferences.restore(context, ClipboardBackup138.settingsOnly(values));
                if(values.containsKey(ClipboardBackup138.KEY)) ClipboardBackup138.restore(context,values.get(ClipboardBackup138.KEY));
                BackupPreferences.prepareRestoredStartup(context);
            }
            public void restoreRaw(Map<String, byte[]> values) throws IOException { BackupPreferences.restoreRaw(context, ClipboardBackup138.settingsOnly(values));if(values.containsKey(ClipboardBackup138.KEY))ClipboardBackup138.restore(context,values.get(ClipboardBackup138.KEY)); }
        };
    }
}
