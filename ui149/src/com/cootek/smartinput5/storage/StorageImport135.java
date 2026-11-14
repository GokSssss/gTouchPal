package com.cootek.smartinput5.storage;

import android.content.Context;
import android.os.Environment;
import java.io.*;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/** Explicit background import. Old data is read only; prepared destinations win. */
public final class StorageImport135 {
    private static final long FILE_LIMIT = 256L * 1024 * 1024;
    private static final long TOTAL_LIMIT = 1024L * 1024 * 1024;
    private StorageImport135() { }
    public static final class Result {
        public int copied;
        public int kept;
        public int skipped;
        long bytes;
        int visited;
    }

    public static Result run(Context context) throws IOException {
        StorageRoot135.bind(context);
        File target = StorageRoot135.root(true);
        File source = Environment.getExternalStorageDirectory();
        if (target == null || source == null) throw new IOException("External storage unavailable");
        File files = context.getFilesDir();
        if (files == null) throw new IOException("Private storage unavailable");
        File lockFile = StorageRoot135.child(files.getCanonicalFile(), "touchpal_storage135.lock");
        RandomAccessFile lockStream = new RandomAccessFile(lockFile, "rw");
        FileChannel channel = lockStream.getChannel();
        FileLock lock = null;
        try {
            try { lock = channel.tryLock(); }
            catch (OverlappingFileLockException busy) { throw new IOException("Import already running"); }
            if (lock == null) throw new IOException("Import already running");
            Result result = new Result();
            for (String name : new String[] {"TouchPal2015", "TouchPalv5"}) {
                File legacy = StorageRoot135.child(source.getCanonicalFile(), name);
                if (legacy.isDirectory()) merge(legacy, target, 0, result);
            }
            return result;
        } finally {
            try { if (lock != null) lock.release(); }
            finally { lockStream.close(); }
        }
    }

    static void merge(File source, File target, int depth, Result result) throws IOException {
        if (Thread.currentThread().isInterrupted()) throw new IOException("Import interrupted");
        if (depth > 32 || ++result.visited > 20000) throw new IOException("Import size limit");
        File[] children = source.listFiles();
        if (children == null) throw new IOException("Cannot read old directory");
        Arrays.sort(children);
        for (File entry : children) {
            File input;
            File output;
            try {
                input = StorageRoot135.child(source, entry.getName());
                output = StorageRoot135.child(target, entry.getName());
            } catch (IOException link) { result.skipped++; continue; }
            if (entry.isDirectory()) {
                if (output.exists() && !output.isDirectory()) { result.kept++; continue; }
                if (!output.exists() && !output.mkdir() && !output.isDirectory())
                    throw new IOException("Cannot create destination directory");
                merge(input, output, depth + 1, result);
            } else if (entry.isFile()) {
                if (++result.visited > 20000) throw new IOException("Import size limit");
                if (output.exists()) { result.kept++; continue; }
                copyMissing(input, output, result);
            } else result.skipped++;
        }
    }

    private static MessageDigest digest() throws IOException {
        try { return MessageDigest.getInstance("SHA-256"); }
        catch (NoSuchAlgorithmException impossible) { throw new IOException("Digest unavailable"); }
    }

    static void copyMissing(File input, File output, Result result) throws IOException {
        long expected = input.length();
        long modified = input.lastModified();
        if (expected > FILE_LIMIT || result.bytes > TOTAL_LIMIT - expected)
            throw new IOException("Import size limit");
        File temporary = File.createTempFile(".touchpal135_", ".part", output.getParentFile());
        try {
            MessageDigest hash = digest();
            FileInputStream from = new FileInputStream(input);
            long count = 0;
            try {
                FileOutputStream to = new FileOutputStream(temporary);
                try {
                    byte[] buffer = new byte[16384];
                    int n;
                    while ((n = from.read(buffer)) != -1) {
                        if (Thread.currentThread().isInterrupted()) throw new IOException("Import interrupted");
                        if (count > expected - n) throw new IOException("Source changed");
                        to.write(buffer, 0, n); hash.update(buffer, 0, n); count += n;
                    }
                    to.getFD().sync();
                } finally { to.close(); }
            } finally { from.close(); }
            if (count != expected || input.length() != expected || input.lastModified() != modified)
                throw new IOException("Source changed");
            if (!Arrays.equals(hash.digest(), readHash(temporary, expected)))
                throw new IOException("Copy verification failed");
            // The import lock serializes our own imports. Never replace an existing destination.
            if (output.exists()) { result.kept++; return; }
            StorageRoot135.child(output.getParentFile(), output.getName());
            if (!temporary.renameTo(output)) throw new IOException("Cannot finish import");
            result.copied++; result.bytes += expected;
        } finally { temporary.delete(); }
    }

    private static byte[] readHash(File file, long expected) throws IOException {
        MessageDigest hash = digest();
        InputStream stream = new FileInputStream(file);
        long count = 0;
        try {
            byte[] buffer = new byte[16384]; int n;
            while ((n = stream.read(buffer)) != -1) { hash.update(buffer, 0, n); count += n; }
        } finally { stream.close(); }
        if (count != expected) throw new IOException("Copy size mismatch");
        return hash.digest();
    }
}
