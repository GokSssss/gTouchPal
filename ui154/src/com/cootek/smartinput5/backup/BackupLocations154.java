package com.cootek.smartinput5.backup;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/** Shared export locations only. Never rebase a live dictionary or StorageRoot135. */
public final class BackupLocations154 {
    private static final String RELATIVE = "TouchPalG/Backup";
    private BackupLocations154() { }

    public static File folder() {
        File sd = Environment.getExternalStorageDirectory();
        if (sd == null) throw new IllegalStateException("SD storage unavailable");
        return new File(sd, RELATIVE);
    }

    /** A hint, not a restriction: the system picker can select any readable/writable file. */
    public static void preparePicker(Intent intent) {
        try { safeFolder(); } catch (IOException ignored) { }
        catch (RuntimeException ignored) { }
        Uri uri = new Uri.Builder().scheme("content")
                .authority("com.android.externalstorage.documents")
                .appendPath("document").appendPath("primary:" + RELATIVE).build();
        intent.putExtra("android.provider.extra.INITIAL_URI", uri);
    }

    private static File safeFolder() throws IOException {
        if (!Environment.MEDIA_MOUNTED.equals(Environment.getExternalStorageState()))
            throw new IOException("SD storage unavailable");
        File sd = Environment.getExternalStorageDirectory();
        if (sd == null) throw new IOException("SD storage unavailable");
        File root = new File(sd.getCanonicalFile(), "TouchPalG");
        if (!root.equals(root.getCanonicalFile())) throw new IOException("Linked export directory");
        File folder = new File(root, "Backup");
        if (!folder.equals(folder.getCanonicalFile())) throw new IOException("Linked export directory");
        if (!folder.isDirectory() && !folder.mkdirs() && !folder.isDirectory())
            throw new IOException("Export directory unavailable");
        return folder;
    }

    /** The two TXT tools share this folder; failure must never fall back to private storage. */
    public static File textDirectory(Context context) {
        File target = folder();
        try {
            File sd = Environment.getExternalStorageDirectory().getCanonicalFile();
            File planned = new File(sd, RELATIVE);
            if (!planned.equals(planned.getCanonicalFile()))
                throw new IllegalStateException("Linked TXT export directory");
        } catch (IOException unavailable) { /* The normal directory probe reports failure. */ }
        try {
            target = safeFolder();
            // Run only in the existing background directory probe, not in the picker/UI path.
            if (android.os.Looper.myLooper() != android.os.Looper.getMainLooper())
                copyMissingText(context, target);
        } catch (IOException unavailable) { }
        catch (RuntimeException unavailable) { }
        return target; // Existing TXT tools report a nonwritable destination through their normal UI.
    }

    private static synchronized void copyMissingText(Context context, File target) throws IOException {
        File app = context.getExternalFilesDir(null);
        if (app == null) return;
        File source = new File(new File(app, "TouchPalG"), "Backup");
        if (!source.isDirectory() || !source.equals(source.getCanonicalFile())) return;
        File[] files = source.listFiles();
        if (files == null || files.length > 512) return;
        for (File original : files) {
            String name = original.getName();
            if (!name.matches("western_dict(?:_[A-Za-z0-9_-]{1,80})?\\.txt")) continue;
            if (!original.isFile() || !original.equals(original.getCanonicalFile())
                    || original.length() > 16L * 1024 * 1024) continue;
            File dest = new File(target, name);
            if (dest.exists() || !dest.equals(dest.getCanonicalFile())) continue;
            File temporary = File.createTempFile(".txt154_", ".part", target);
            try {
                FileInputStream input = new FileInputStream(original);
                try {
                    FileOutputStream output = new FileOutputStream(temporary);
                    try {
                        byte[] buffer = new byte[16384];
                        int count; long bytes = 0;
                        while ((count = input.read(buffer)) != -1) {
                            if ((bytes += count) > 16L * 1024 * 1024)
                                throw new IOException("TXT export size limit");
                            output.write(buffer, 0, count);
                        }
                        output.getFD().sync();
                    } finally { output.close(); }
                } finally { input.close(); }
                if (!dest.exists() && !temporary.renameTo(dest))
                    throw new IOException("Cannot copy previous TXT export");
            } finally { temporary.delete(); }
        }
    }
}
