package com.cootek.smartinput5.storage;

import android.content.Context;
import java.io.*;
import java.security.MessageDigest;

/** Install the owner's exact language archives without changing any layout. */
public final class BundledLanguages137 {
    private static final String[] NAMES = {"russian.tpl"};
    private static final String[] HASHES = {
        "35b7174e2460f7116c307e01a87183b95c371476587e5c560ff0bd75bfbf6b93"
    };
    private BundledLanguages137() { }

    public static synchronized void ensure(Context context) {
        if (context == null) return;
        File directory = StorageRoot135.directory("language", true);
        if (directory == null) return;
        removeAddedEnglish(directory);
        for (int i = 0; i < NAMES.length; i++) {
            File target = new File(directory, NAMES[i]);
            // Existing packages belong to the user, including locally updated versions.
            if (target.exists()) continue;
            File temporary = null;
            try {
                if (!target.getCanonicalFile().equals(target.getAbsoluteFile())) continue;
                temporary = File.createTempFile("language137_", ".tmp", directory);
                MessageDigest digest = MessageDigest.getInstance("SHA-256");
                InputStream input = context.getAssets().open("touchpal_languages/" + NAMES[i]);
                FileOutputStream output = new FileOutputStream(temporary);
                long total = 0;
                try {
                    byte[] buffer = new byte[16384];
                    int count;
                    while ((count = input.read(buffer)) != -1) {
                        total += count;
                        if (total > 16L * 1024 * 1024) throw new IOException("Language package limit");
                        digest.update(buffer, 0, count);
                        output.write(buffer, 0, count);
                    }
                    output.getFD().sync();
                } finally {
                    try { input.close(); } finally { output.close(); }
                }
                StringBuilder actual = new StringBuilder();
                for (byte value : digest.digest()) {
                    actual.append(Character.forDigit((value >>> 4) & 15, 16));
                    actual.append(Character.forDigit(value & 15, 16));
                }
                if (!HASHES[i].equals(actual.toString())) throw new IOException("Language checksum");
                if (!target.exists() && !temporary.renameTo(target)) throw new IOException("Language package move");
            } catch (Exception unavailable) {
                // A later startup can retry. Existing language selection is never rewritten.
            } finally { if (temporary != null) temporary.delete(); }
        }
    }

    /** Remove only the exact optional archive introduced in137; keep Russian untouched. */
    private static void removeAddedEnglish(File directory) {
        File target = new File(directory, "english.tpl");
        try {
            if (!target.isFile() || target.length() != 7841713L
                    || !target.getCanonicalFile().equals(target.getAbsoluteFile())) return;
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            InputStream input = new FileInputStream(target);
            try { byte[] buffer = new byte[16384]; int n; while ((n=input.read(buffer))!=-1) digest.update(buffer,0,n); }
            finally { input.close(); }
            StringBuilder hash = new StringBuilder();
            for (byte value : digest.digest()) {
                hash.append(Character.forDigit((value >>> 4) & 15, 16));
                hash.append(Character.forDigit(value & 15, 16));
            }
            if ("97292ea1c68f0a31fe2869b3901b35912df868476ab2df97a041c64a1eff6287".equals(hash.toString())) target.delete();
        } catch (Exception unavailable) { /* Retry at the next startup; never remove a different archive. */ }
    }
}
