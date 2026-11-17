package com.cootek.smartinput5.backup;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.cootek.smartinput5.storage.StorageRoot135;
import java.io.*;
import java.nio.channels.*;
import java.util.*;
import java.util.zip.*;

/** Copy a language resource archive into the existing workspace; never install an application. */
final class LanguageFiles158 {
    private static final long MAX_FILE=64L*1024*1024,MAX_EXPANDED=256L*1024*1024;
    static final class Pending {
        final CopyFiles155.Prepared source,previous;
        final File target;
        Pending(CopyFiles155.Prepared source,CopyFiles155.Prepared previous,File target){this.source=source;this.previous=previous;this.target=target;}
        void discard(){source.discard();}
    }
    private LanguageFiles158() { }
    static String normalizedName(String name)throws IOException {
        if(name==null||name.length()>128)throw new IOException("Language filename unavailable");
        if(name.toLowerCase(Locale.US).endsWith(".tpl.apk"))name=name.substring(0,name.length()-4);
        if(!name.toLowerCase(Locale.US).endsWith(".tpl"))throw new IOException("Choose TPL or TPL.apk");
        name=name.substring(0,name.length()-4)+".tpl";
        if(!name.matches("[A-Za-z0-9_-]{1,100}\\.tpl"))throw new IOException("Invalid language filename");
        return name;
    }
    private static String displayName(Context context,Uri uri)throws IOException {
        String name=null;Cursor cursor=null;
        try{cursor=context.getContentResolver().query(uri,new String[]{"_display_name"},null,null,null);if(cursor!=null&&cursor.moveToFirst())name=cursor.getString(0);}
        catch(Exception ignored) { }
        finally{if(cursor!=null)cursor.close();}
        if(name==null&&"file".equals(uri.getScheme()))name=uri.getLastPathSegment();
        return normalizedName(name);
    }
    static File folder()throws IOException {
        File directory=StorageRoot135.directory("language",true);
        if(directory==null||!directory.isDirectory()||!directory.equals(directory.getCanonicalFile()))throw new IOException("Language folder unavailable");
        return directory;
    }
    private static File child(File directory,String name)throws IOException {
        File result=new File(directory.getCanonicalFile(),name);
        if(!result.equals(result.getCanonicalFile()))throw new IOException("Linked language file");
        if(result.exists()&&!result.isFile())throw new IOException("Language destination is not a file");
        return result;
    }
    static Pending prepare(Context context,Uri uri)throws IOException {
        BackupLocations155.bind(context);String name=displayName(context,uri);
        File file=File.createTempFile("language158_",".tmp",context.getCacheDir());boolean prepared=false;
        try{
            InputStream input=context.getContentResolver().openInputStream(uri);if(input==null)throw new IOException("Language unavailable");
            try{
                FileOutputStream output=new FileOutputStream(file);
                try{byte[] buffer=new byte[16384];int count;long bytes=0;while((count=input.read(buffer))!=-1){if((bytes+=count)>MAX_FILE)throw new IOException("Language too large");output.write(buffer,0,count);}output.getFD().sync();}
                finally{output.close();}
            }finally{input.close();}
            validateArchive(file);
            CopyFiles155.Prepared source=new CopyFiles155.Prepared(file,name,"application/octet-stream");
            File target=child(folder(),name);
            CopyFiles155.Prepared old=target.exists()?new CopyFiles155.Prepared(target,name,"application/octet-stream"):null;
            prepared=true;return new Pending(source,old,target);
        }finally{if(!prepared)file.delete();}
    }
    /** Validate the container and language resources without extracting or executing its contents. */
    static void validateArchive(File file)throws IOException {
        if(file.length()==0||file.length()>MAX_FILE)throw new IOException("Language size");
        Set<String> names=new HashSet<String>();boolean language=false,dictionary=false;long expanded=0;
        ZipInputStream input=new ZipInputStream(new FileInputStream(file));
        try{
            ZipEntry entry;byte[] buffer=new byte[16384];
            while((entry=input.getNextEntry())!=null){
                String name=entry.getName();
                if(names.size()>=4096||!names.add(name)||name.startsWith("/")||name.indexOf('\\')>=0||name.indexOf('\0')>=0)throw new IOException("Invalid language archive");
                for(String part:name.split("/"))if(part.equals(".")||part.equals(".."))throw new IOException("Invalid language path");
                long bytes=0;int count;
                while((count=input.read(buffer))!=-1){bytes+=count;expanded+=count;if(bytes>MAX_FILE||expanded>MAX_EXPANDED)throw new IOException("Expanded language limit");}
                if(name.startsWith("assets/")&&name.endsWith(".lng.png")&&bytes>0)language=true;
                if(name.startsWith("assets/")&&name.endsWith(".rom.png")&&bytes>0)dictionary=true;
                input.closeEntry();
            }
        }finally{input.close();}
        ZipFile complete=new ZipFile(file);
        try{
            if(complete.size()!=names.size())throw new IOException("Language directory mismatch");
            Enumeration<? extends ZipEntry> entries=complete.entries();while(entries.hasMoreElements())if(!names.contains(entries.nextElement().getName()))throw new IOException("Language directory mismatch");
        }finally{complete.close();}
        if(!language||!dictionary)throw new IOException("Not a TouchPal language package");
    }
    private static void verifyPrevious(Pending value)throws IOException {
        if(!value.target.equals(value.target.getCanonicalFile()))throw new IOException("Linked language target");
        if(value.previous==null){if(value.target.exists())throw new IOException("Language appeared during confirmation");}
        else value.previous.verify();
    }
    static synchronized File commit(Context context,Pending value)throws IOException {
        value.source.verify();File directory=folder();
        if(!value.target.getParentFile().equals(directory))throw new IOException("Language directory changed");
        File lockPath=new File(context.getFilesDir(),"language_import158.lock");
        RandomAccessFile stream=new RandomAccessFile(lockPath,"rw");FileLock lock=null;
        File temporary=null;boolean reserved=false,published=false;
        try{
            try{lock=stream.getChannel().tryLock();}catch(OverlappingFileLockException busy){throw new IOException("Language import busy");}
            if(lock==null)throw new IOException("Language import busy");
            verifyPrevious(value);
            if(value.previous!=null&&value.source.length==value.previous.length&&Arrays.equals(value.source.digest,value.previous.digest))return value.target;
            temporary=File.createTempFile("language158_",".part",directory);
            FileOutputStream output=new FileOutputStream(temporary);try{value.source.copy(output);output.getFD().sync();}finally{output.close();}
            CopyFiles155.Prepared checked=new CopyFiles155.Prepared(temporary,value.source.name,value.source.mime);
            if(checked.length!=value.source.length||!Arrays.equals(checked.digest,value.source.digest))throw new IOException("Language copy verification");
            if(value.previous!=null){
                File backup=new File(BackupLocations155.safeFolder(),"Language");
                if(!backup.equals(backup.getCanonicalFile())||(!backup.isDirectory()&&!backup.mkdirs()&&!backup.isDirectory()))throw new IOException("Language recovery folder unavailable");
                CopyFiles155.saveStandard(value.previous,backup);
            }
            value.source.verify();verifyPrevious(value);
            if(value.previous==null){if(!value.target.createNewFile())throw new IOException("Language target busy");reserved=true;}
            if(!temporary.renameTo(value.target))throw new IOException("Language publication failed");
            published=true;return value.target;
        }finally{
            if(temporary!=null)temporary.delete();
            if(reserved&&!published&&value.target.isFile()&&value.target.length()==0)value.target.delete();
            try{if(lock!=null)lock.release();}finally{stream.close();}
        }
    }
}
