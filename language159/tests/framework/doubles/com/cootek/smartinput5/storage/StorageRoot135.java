package com.cootek.smartinput5.storage;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import java.io.IOException;

/** App-owned external work directory. Never fall back to the public SD root. */
public final class StorageRoot135 {
    public static final String NAME = "TouchPalG";
    private static Context application;
    private StorageRoot135() { }

    /** Called after attachBaseContext, before providers and native managers start. */
    public static synchronized void bind(Context context) {
        if (context != null) {
            Context app = context.getApplicationContext();
            application = app == null ? context : app;
        }
    }

    public static synchronized File root(boolean create) {
        if (application == null) return null;
        try {
            if (!Environment.MEDIA_MOUNTED.equals(Environment.getExternalStorageState())) return null;
            File parent = application.getExternalFilesDir(null);
            if (parent == null) return null;
            parent = parent.getCanonicalFile();
            File result = child(parent, NAME);
            if (create && !result.exists() && !result.mkdirs() && !result.isDirectory()) return null;
            return result.isDirectory() ? result : null;
        } catch (IOException problem) { return null; }
        catch (RuntimeException problem) { return null; }
    }

    public static File directory(String relative, boolean create) {
        try {
            File base = root(create);
            if (base == null || relative == null || relative.length() > 512
                    || relative.indexOf('\0') >= 0 || new File(relative).isAbsolute()) return null;
            if (relative.length() == 0) return base;
            File result = base;
            for (String part : relative.split("/", -1)) {
                if (part.length() == 0 || ".".equals(part) || "..".equals(part)) return null;
                result = child(result, part);
            }
            if (create && !result.exists() && !result.mkdirs() && !result.isDirectory()) return null;
            return result.isDirectory() ? result : null;
        } catch (IOException problem) { return null; }
        catch (RuntimeException problem) { return null; }
    }

    /** Existing dictionary tools can still prepare an export while SD is unavailable. */
    public static File backupDirectory(Context context) {
        try {
            File result = child(workDirectory(context), "Backup");
            if (!result.isDirectory() && !result.mkdirs() && !result.isDirectory())
                throw new IOException("Export directory unavailable");
            return result;
        } catch (IOException problem) { throw new IllegalStateException("Export directory unavailable"); }
    }

    public static File workDirectory(Context context) {
        bind(context);
        File result = root(true);
        if (result != null) return result;
        try {
            File files = context.getFilesDir();
            if (files == null) throw new IOException("Private directory unavailable");
            result = child(files.getCanonicalFile(), NAME);
            if (!result.isDirectory() && !result.mkdirs() && !result.isDirectory())
                throw new IOException("Export directory unavailable");
            return result;
        } catch (IOException problem) { throw new IllegalStateException("Export directory unavailable"); }
    }

    /** Rebase only a previously selected custom font inside one of our old folders. */
    public static String fontPath(String original) {
        if (original == null) return original;
        try {
            File sd = Environment.getExternalStorageDirectory();
            File base = root(false);
            if (sd == null || base == null) return original;
            File file = new File(original).getCanonicalFile();
            for (String legacy : new String[] {"TouchPal2015", "TouchPalv5"}) {
                File old = new File(new File(sd, legacy), "touchpal_font").getCanonicalFile();
                if (old.equals(file.getParentFile())) {
                    File fonts = child(base, "touchpal_font");
                    return child(fonts, file.getName()).getPath();
                }
            }
        } catch (IOException ignored) { }
        catch (RuntimeException ignored) { }
        return original;
    }

    static File child(File parent, String leaf) throws IOException {
        File expected = new File(parent.getCanonicalFile(), leaf);
        if (!expected.equals(expected.getCanonicalFile())) throw new IOException("Unexpected file location");
        return expected;
    }
}
