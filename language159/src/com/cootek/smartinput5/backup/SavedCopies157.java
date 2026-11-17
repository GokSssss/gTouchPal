package com.cootek.smartinput5.backup;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import java.io.*;
import java.util.*;

/** Verified local copies, checked incoming snapshots and explicit Downloads exports. */
final class SavedCopies157 {
    static final int ZIP=1, USR=2, TXT=3;
    private static final long LIMIT=72L*1024*1024;
    private SavedCopies157() { }

    static String mime(int kind) {
        return kind==ZIP?"application/zip":kind==USR?"application/octet-stream":"text/plain";
    }
    static int kind(File file) {
        String name=file.getName().toLowerCase(Locale.US);
        return name.endsWith(".zip")?ZIP:name.endsWith(".usr")?USR:name.endsWith(".txt")?TXT:0;
    }
    private static String fallback(int kind) {
        if(kind==USR)return "western.usr";
        if(kind==TXT)return "western_dict_full.txt";
        return "TouchPal_backup_"+new java.text.SimpleDateFormat("yyyyMMdd_HHmmss",Locale.US).format(new Date())+".zip";
    }
    private static String name(Context context,Uri uri,int kind) {
        String value=null;Cursor cursor=null;
        try {
            cursor=context.getContentResolver().query(uri,new String[]{"_display_name"},null,null,null);
            if(cursor!=null&&cursor.moveToFirst())value=cursor.getString(0);
        } catch(Exception ignored) { }
        finally { if(cursor!=null)cursor.close(); }
        if(value==null&&"file".equals(uri.getScheme()))value=uri.getLastPathSegment();
        String ext=kind==ZIP?".zip":kind==USR?".usr":".txt";
        if(value==null||value.length()>140||value.contains("..")
                ||!value.matches("[\\p{L}\\p{N}_.() -]+")
                ||!value.toLowerCase(Locale.US).endsWith(ext))return fallback(kind);
        return value;
    }
    /** Read an external provider once; confirmation and restore use exactly these checked bytes. */
    static CopyFiles155.Prepared read(Context context,Uri uri,int kind)throws IOException {
        File file=File.createTempFile("incoming157_",".tmp",context.getCacheDir());boolean ready=false;
        try {
            InputStream input=context.getContentResolver().openInputStream(uri);
            if(input==null)throw new IOException("Incoming file unavailable");
            try {
                FileOutputStream output=new FileOutputStream(file);
                try {
                    byte[] buffer=new byte[16384];int size;long bytes=0;
                    while((size=input.read(buffer))!=-1) {
                        if((bytes+=size)>LIMIT)throw new IOException("Incoming file too large");
                        output.write(buffer,0,size);
                    }
                    if(bytes==0)throw new IOException("Incoming file empty");
                    output.getFD().sync();
                } finally { output.close(); }
            } finally { input.close(); }
            CopyFiles155.Prepared result=new CopyFiles155.Prepared(file,name(context,uri,kind),mime(kind));
            ready=true;return result;
        } finally { if(!ready)file.delete(); }
    }

    /** Do not multiply an already retained identical file or replace a different same-name copy. */
    static synchronized File remember(CopyFiles155.Prepared source)throws IOException {
        source.verify();File folder=BackupLocations155.safeFolder();
        File target=new File(folder,source.name);
        if(!target.equals(target.getCanonicalFile()))throw new IOException("Linked copy file");
        if(target.isFile()&&target.length()==source.length) {
            CopyFiles155.Prepared existing=new CopyFiles155.Prepared(target,source.name,source.mime);
            if(Arrays.equals(source.digest,existing.digest))return target;
        }
        return CopyFiles155.saveStandard(source,folder);
    }

    static List<File> files()throws IOException {
        File folder=BackupLocations155.safeFolder();File[] found=folder.listFiles();
        if(found==null||found.length>10000)throw new IOException("Copy listing unavailable");
        List<File> result=new ArrayList<File>();
        for(File file:found)if(file.isFile()&&file.equals(file.getCanonicalFile())&&kind(file)!=0)result.add(file);
        Collections.sort(result,new Comparator<File>(){public int compare(File a,File b){
            long x=a.lastModified(),y=b.lastModified();return x==y?b.getName().compareTo(a.getName()):x>y?-1:1;
        }});
        return result;
    }
    static File latestZip()throws IOException {
        for(File file:files())if(kind(file)==ZIP&&file.length()>0) {
            try {
                InputStream input=new FileInputStream(file);
                try { BackupController.validate(BackupArchive.read(input));return file; }
                finally { input.close(); }
            } catch(IOException invalid) { }
        }
        return null;
    }
    static String label(File file) {
        return new java.text.SimpleDateFormat("dd.MM.yyyy HH:mm",Locale.getDefault()).format(new Date(file.lastModified()))+" · "+file.getName();
    }

    /** Move former public copies only after a complete verified app-owned copy exists. */
    static synchronized int migratePublic()throws IOException {
        File sd=Environment.getExternalStorageDirectory();
        if(sd==null)return 0;
        File oldRoot=new File(sd.getCanonicalFile(),"TouchPalG");
        File oldFolder=new File(oldRoot,"Backup");
        if(!oldRoot.equals(oldRoot.getCanonicalFile())||!oldFolder.equals(oldFolder.getCanonicalFile()))
            throw new IOException("Linked old copy directory");
        if(!oldFolder.exists())return 0;
        File[] found=oldFolder.listFiles();if(found==null||found.length>10000)throw new IOException("Old copies unavailable");
        int moved=0;
        for(File original:found) {
            int kind=kind(original);
            if(kind==0||!original.isFile()||!original.equals(original.getCanonicalFile())||original.length()>LIMIT)continue;
            String fileName=original.getName();
            if(fileName.length()>140||fileName.contains("..")||!fileName.matches("[\\p{L}\\p{N}_.() -]+"))continue;
            CopyFiles155.Prepared source=new CopyFiles155.Prepared(original,fileName,mime(kind));
            File saved=remember(source);
            CopyFiles155.Prepared result=new CopyFiles155.Prepared(saved,saved.getName(),source.mime);
            if(result.length!=source.length||!Arrays.equals(source.digest,result.digest))throw new IOException("Migration verification failed");
            source.verify();
            if(saved.lastModified()!=original.lastModified())saved.setLastModified(original.lastModified());
            if(!original.delete())throw new IOException("Verified copy saved; original could not be removed");
            moved++;
        }
        // delete() removes empty directories only. Unknown files and unrelated folders stay intact.
        oldFolder.delete();oldRoot.delete();return moved;
    }

    /** Android29+ owns a Downloads provider row; older devices use the public Downloads folder. */
    static String download(Context context,CopyFiles155.Prepared source)throws Exception {
        source.verify();
        if(Build.VERSION.SDK_INT<29) {
            File folder=Environment.getExternalStoragePublicDirectory("Download");
            if(folder==null||!folder.equals(folder.getCanonicalFile())
                    ||(!folder.isDirectory()&&!folder.mkdirs()&&!folder.isDirectory()))
                throw new IOException("Downloads unavailable");
            return CopyFiles155.saveStandard(source,folder).getName();
        }
        Uri collection=(Uri)Class.forName("android.provider.MediaStore$Downloads").getField("EXTERNAL_CONTENT_URI").get(null);
        ContentValues values=new ContentValues();values.put("_display_name",source.name);
        values.put("mime_type",source.mime);values.put("relative_path","Download/");values.put("is_pending",1);
        Uri created=context.getContentResolver().insert(collection,values);
        if(created==null)throw new IOException("Downloads unavailable");
        boolean published=false;
        try {
            OutputStream output=context.getContentResolver().openOutputStream(created,"w");
            if(output==null)throw new IOException("Downloads output unavailable");
            try { source.copy(output); } finally { output.close(); }
            CopyFiles155.Prepared checked=read(context,created,source.mime.equals("application/zip")?ZIP:source.mime.equals("text/plain")?TXT:USR);
            try {
                if(checked.length!=source.length||!Arrays.equals(checked.digest,source.digest))throw new IOException("Downloads verification failed");
            } finally { checked.discard(); }
            values.clear();values.put("is_pending",0);
            if(context.getContentResolver().update(created,values,null,null)!=1)throw new IOException("Downloads publication failed");
            published=true;return name(context,created,source.mime.equals("application/zip")?ZIP:source.mime.equals("text/plain")?TXT:USR);
        } finally { if(!published)context.getContentResolver().delete(created,null,null); }
    }
}
