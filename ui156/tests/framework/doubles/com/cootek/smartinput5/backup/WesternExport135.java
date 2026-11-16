package com.cootek.smartinput5.backup;

import java.io.*;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/** One immutable native-save snapshot, prepared before asking for a destination. */
final class WesternExport135 {
    private static final int LIMIT = 16 * 1024 * 1024;
    static final class Prepared {
        final File file;
        final int length;
        final byte[] sha256;
        Prepared(File file, int length, byte[] sha256) {
            this.file = file; this.length = length; this.sha256 = sha256;
        }
    }
    private WesternExport135() { }
    private static MessageDigest digest() throws IOException {
        try { return MessageDigest.getInstance("SHA-256"); }
        catch (NoSuchAlgorithmException impossible) { throw new IOException("Digest unavailable"); }
    }
    static Prepared prepare(File cache, byte[] snapshot) throws IOException {
        if (cache == null || snapshot == null || snapshot.length == 0 || snapshot.length > LIMIT)
            throw new IOException("Dictionary snapshot unavailable");
        File file = File.createTempFile("western135_", ".tmp", cache);
        Prepared result = new Prepared(file, snapshot.length, digest().digest(snapshot));
        boolean complete = false;
        try {
            FileOutputStream stream = new FileOutputStream(file);
            try { stream.write(snapshot); stream.getFD().sync(); }
            finally { stream.close(); }
            verify(result); complete = true; return result;
        } finally { if (!complete) discard(result); }
    }
    static void verify(Prepared prepared) throws IOException { read(prepared, null); }
    static void copy(Prepared prepared, OutputStream output) throws IOException {
        if (output == null) throw new IOException("Destination unavailable");
        read(prepared, output); output.flush();
    }
    private static void read(Prepared prepared, OutputStream output) throws IOException {
        if (prepared == null || !prepared.file.isFile() || prepared.length <= 0
                || prepared.length > LIMIT || prepared.file.length() != prepared.length)
            throw new IOException("Prepared dictionary unavailable");
        MessageDigest hash = digest();
        InputStream input = new FileInputStream(prepared.file);
        int count = 0;
        try {
            byte[] buffer = new byte[16384]; int n;
            while ((n = input.read(buffer)) != -1) {
                if (count > prepared.length - n) throw new IOException("Prepared dictionary changed");
                if (output != null) output.write(buffer, 0, n);
                hash.update(buffer, 0, n); count += n;
            }
        } finally { input.close(); }
        if (count != prepared.length || !Arrays.equals(prepared.sha256, hash.digest()))
            throw new IOException("Prepared dictionary changed");
    }
    static void discard(Prepared prepared) { if (prepared != null) prepared.file.delete(); }
}
