package com.cootek.smartinput5.backup;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Map;

/** A private, complete ZIP exists before the system creates a destination document. */
public final class BackupExport {
    private BackupExport() { }

    public static File prepare(File cacheDirectory, Map<String, byte[]> entries,
                               Map<String, String> metadata) throws IOException {
        if (cacheDirectory == null) throw new IOException("No private cache");
        File directory = cacheDirectory.getCanonicalFile();
        if (!directory.isDirectory()) throw new IOException("No private cache");
        File prepared = File.createTempFile("touchpal_export_", ".zip", directory);
        boolean complete = false;
        try {
            FileOutputStream output = new FileOutputStream(prepared);
            try {
                BackupArchive.write(output, entries, metadata);
                output.getFD().sync();
            } finally { output.close(); }
            verify(prepared);
            complete = true;
            return prepared;
        } finally {
            if (!complete) discard(prepared);
        }
    }

    /** Check local bytes before opening/truncating the user-selected URI. */
    public static void verify(File prepared) throws IOException {
        if (prepared == null || !prepared.isFile() || prepared.length() <= 0
                || prepared.length() > BackupArchive.MAX_ZIP_BYTES) {
            throw new IOException("Prepared backup is unavailable");
        }
        FileInputStream input = new FileInputStream(prepared);
        try { BackupArchive.read(input); }
        finally { input.close(); }
    }

    /** Copies exactly one prepared file; ownership of output remains with the caller. */
    public static void copy(File prepared, OutputStream output) throws IOException {
        if (prepared == null || output == null || !prepared.isFile())
            throw new IOException("Prepared backup is unavailable");
        long expected = prepared.length();
        if (expected <= 0 || expected > BackupArchive.MAX_ZIP_BYTES)
            throw new IOException("Prepared backup has invalid length");
        FileInputStream input = new FileInputStream(prepared);
        long copied = 0;
        try {
            byte[] buffer = new byte[16384];
            int count;
            while ((count = input.read(buffer)) != -1) {
                copied += count;
                if (copied > expected) throw new IOException("Prepared backup changed");
                output.write(buffer, 0, count);
            }
            if (copied != expected) throw new IOException("Prepared backup changed");
            output.flush();
        } finally { input.close(); }
    }

    public static void discard(File prepared) {
        if (prepared != null) prepared.delete();
    }
}
