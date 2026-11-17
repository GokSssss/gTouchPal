package com.cootek.smartinput5.backup;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.cootek.smartinput5.storage.StorageRoot135;
import java.io.File;
import java.io.IOException;

/** Copies share the existing app-owned workspace. Live dictionary paths do not change. */
public final class BackupLocations155 {
    private static Context application;
    private BackupLocations155() { }
    public static synchronized void bind(Context context) {
        if (context == null) return;
        Context app = context.getApplicationContext();
        application = app == null ? context : app;
        StorageRoot135.bind(application);
    }
    public static synchronized File folder() {
        if (application == null) throw new IllegalStateException("Copy context unavailable");
        File files = application.getExternalFilesDir(null);
        if (files == null) throw new IllegalStateException("App copy directory unavailable");
        return new File(new File(files, "TouchPalG"), "Backup");
    }
    /** Imported files may come from anywhere; DocumentsUI cannot browse Android/data. */
    public static void preparePicker(Intent intent) {
        Uri uri = new Uri.Builder().scheme("content")
                .authority("com.android.externalstorage.documents")
                .appendPath("document").appendPath("primary:Download").build();
        intent.putExtra("android.provider.extra.INITIAL_URI", uri);
    }
    static synchronized File safeFolder() throws IOException {
        File result = StorageRoot135.directory("Backup", true);
        if (result == null || !result.isDirectory() || !result.equals(result.getCanonicalFile())
                || !result.equals(folder().getCanonicalFile()))
            throw new IOException("App copy directory unavailable");
        return result;
    }
    public static File textDirectory(Context context) {
        bind(context);
        try { return safeFolder(); }
        catch (IOException unavailable) { return folder(); }
    }
}
