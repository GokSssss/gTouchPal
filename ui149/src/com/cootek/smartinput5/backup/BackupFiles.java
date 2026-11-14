package com.cootek.smartinput5.backup;

import android.content.Context;
import com.cootek.smartinput5.func.I;
import java.io.*;
import java.util.*;

/** Only user dictionary files and the two existing feature markers. */
final class BackupFiles {
    static final String DISABLED = "flags/spell_disabled";
    static final String HARDWARE = "flags/spell_hardware_only";
    static final int LIMIT = 16 * 1024 * 1024;
    private BackupFiles() {}
    static final class Failure extends IOException {
        Failure(String code,String reason){super(code+" · "+reason);}
    }
    static String failureDetails(Throwable error) {
        for(int i=0;i<10 && error!=null;i++,error=error.getCause()) if(error instanceof Failure)return error.getMessage();
        return "";
    }
    private static String label(File file) {
        String name=file.getName();
        return "western.usr".equals(name)||"shortcut.lst".equals(name)||"emo_list_en.lua.png".equals(name)||"emo_list_zh.lua.png".equals(name)?name:"Другой пользовательский словарь";
    }


    static File privateRoot(Context context) throws IOException {
        File files = context.getFilesDir();
        if (files == null) throw new Failure("BF01", "Внутренняя папка приложения недоступна.");
        return files.getCanonicalFile();
    }

    static File workspace(Context context) throws IOException {
        File root = privateRoot(context);
        File dir = new File(root, "touchpal_backup");
        directChild(root, dir);
        if (!dir.isDirectory() && !dir.mkdirs()) throw new IOException("Backup directory unavailable");
        return dir;
    }

    static File dictionaryRoot(Context context) throws IOException {
        File directory = I.g(context);
        if (directory == null) throw new Failure("BF02", "Рабочая папка словарей недоступна.");
        directChild(privateRoot(context), directory);
        if (!directory.isDirectory()) throw new Failure("BF02", "Рабочая папка словарей недоступна.");
        return directory.getCanonicalFile();
    }

    static void directChild(File parent, File child) throws IOException {
        File expected = new File(parent.getCanonicalFile(), child.getName());
        if (!expected.equals(child.getCanonicalFile())) throw new Failure("BF03", "Путь файла выходит за разрешённую папку словарей.");
    }

    static boolean dictionaryName(String name) {
        return name != null && name.length() <= 160 && name.matches("[A-Za-z0-9_.-]+")
            && !name.contains("..") && (name.endsWith(".usr") || name.equals("shortcut.lst")
                || name.equals("emo_list_en.lua.png") || name.equals("emo_list_zh.lua.png")
                || name.equals("emo_list_default.lua.png") || name.equals("locale.lua.png"));
    }

    static boolean fileName(String name) {
        return DISABLED.equals(name) || HARDWARE.equals(name)
            || (name != null && name.startsWith("dictionary/") && dictionaryName(name.substring(11)));
    }

    static File resolve(Context context, String name) throws IOException {
        File parent;
        String leaf;
        if (DISABLED.equals(name)) { parent = privateRoot(context); leaf = "touchpal_spell_disabled"; }
        else if (HARDWARE.equals(name)) { parent = privateRoot(context); leaf = "touchpal_spell_hardware_only"; }
        else if (name != null && name.startsWith("dictionary/") && dictionaryName(name.substring(11))) {
            parent = dictionaryRoot(context); leaf = name.substring(11);
        } else throw new IOException("Unexpected backup file");
        File result = new File(parent, leaf);
        directChild(parent, result);
        if (result.exists() && !result.isFile()) throw new Failure("BF06", "Назначение словаря занято каталогом или специальным файлом.");
        return result;
    }

    static Set<String> existing(Context context) throws IOException {
        Set<String> result = new TreeSet<String>();
        File[] files = dictionaryRoot(context).listFiles();
        if (files == null) throw new Failure("BF04", "Не удалось получить список файлов словаря.");
        for (File file : files) {
            if (!dictionaryName(file.getName())) continue;
            directChild(dictionaryRoot(context), file);
            if (!file.isFile()) throw new Failure("BF05", "Вместо файла словаря найден каталог или специальный файл.");
            result.add("dictionary/" + file.getName());
        }
        for (String name : new String[] {DISABLED, HARDWARE}) if (resolve(context, name).exists()) result.add(name);
        return result;
    }

    static byte[] read(File file, int limit) throws IOException {
        if (!file.isFile()) throw new Failure("BF09",label(file)+": файл отсутствует или не является обычным файлом.");
        if(file.length()>limit) throw new Failure("BF07",label(file)+": размер больше 16 МБ.");
        InputStream input;
        try {input=new FileInputStream(file);} catch(IOException unavailable){throw new Failure("BF10",label(file)+": нет доступа для чтения.");}
        try {
            ByteArrayOutputStream bytes = new ByteArrayOutputStream((int) Math.min(file.length(), 65536));
            byte[] buffer = new byte[16384];
            int count;
            while ((count = input.read(buffer)) != -1) {
                if (bytes.size() > limit - count) throw new Failure("BF07", "Файл словаря недоступен или превышает лимит 16 МБ.");
                bytes.write(buffer, 0, count);
            }
            return bytes.toByteArray();
        } catch(Failure failure){throw failure;}
        catch(IOException unavailable){throw new Failure("BF11",label(file)+": ошибка при чтении файла.");}
        finally { input.close(); }
    }

    static Map<String, byte[]> capture(Context context) throws IOException {
        Map<String, byte[]> result = new TreeMap<String, byte[]>();
        long total = 0;
        for (String name : existing(context)) {
            if (!name.startsWith("dictionary/")) continue;
            byte[] bytes = read(resolve(context, name), LIMIT);
            total += bytes.length;
            if (total > 60L * 1024 * 1024 || result.size() >= 120) throw new Failure("BF08", "Общий объём словарей превышает лимит копии.");
            result.put(name, bytes);
        }
        result.put(DISABLED, new byte[] {(byte) (resolve(context, DISABLED).exists() ? 1 : 0)});
        result.put(HARDWARE, new byte[] {(byte) (resolve(context, HARDWARE).exists() ? 1 : 0)});
        return result;
    }

    static Map<String, byte[]> desired(Map<String, byte[]> entries) throws IOException {
        Map<String, byte[]> result = new TreeMap<String, byte[]>();
        for (Map.Entry<String, byte[]> entry : entries.entrySet()) {
            String name = entry.getKey();
            if (name.startsWith("settings/")) continue;
            if (!fileName(name)) throw new IOException("Unexpected backup content");
            if (name.startsWith("flags/")) {
                byte[] bytes = entry.getValue();
                if (bytes.length != 1 || (bytes[0] != 0 && bytes[0] != 1)) throw new IOException("Invalid feature marker");
                if (bytes[0] == 1) result.put(name, new byte[0]);
            } else result.put(name, entry.getValue());
        }
        return result;
    }

    static void status(Context context, String text) throws IOException {
        File parent = workspace(context);
        File target = new File(parent, "last_restore.txt");
        directChild(parent, target);
        File temporary = File.createTempFile("status_", ".tmp", parent);
        try {
            FileOutputStream output = new FileOutputStream(temporary);
            try { output.write(text.getBytes("UTF-8")); output.getFD().sync(); }
            finally { output.close(); }
            if (!temporary.renameTo(target)) throw new IOException("Cannot write backup status");
        } finally { temporary.delete(); }
    }
}
