package com.cootek.smartinput5.backup;

import java.io.*;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Map;

/** One verified output shared by ordinary Save and Create-and-send. */
final class CopyFiles155 {
    private static final long LIMIT = 72L * 1024 * 1024;
    static final class Prepared {
        final File file;
        final String name, mime;
        final long length;
        final byte[] digest;
        Prepared(File file, String name, String mime) throws IOException {
            this.file=file; this.name=name; this.mime=mime;
            length=file.length(); digest=hash(file);
            if(length>LIMIT)throw new IOException("Copy size limit");
        }
        void verify() throws IOException {
            if(!file.isFile() || file.length()!=length || !Arrays.equals(digest,hash(file)))
                throw new IOException("Prepared copy changed");
        }
        void copy(OutputStream output) throws IOException {
            verify(); MessageDigest check=digest();long count=0;
            InputStream input=new FileInputStream(file);
            try {
                byte[] buffer=new byte[16384];int n;
                while((n=input.read(buffer))!=-1){
                    if((count+=n)>length)throw new IOException("Prepared copy changed");
                    output.write(buffer,0,n);check.update(buffer,0,n);
                }
            } finally { input.close(); }
            if(count!=length || !Arrays.equals(digest,check.digest()))throw new IOException("Prepared copy changed");
            output.flush();
        }
        void discard(){file.delete();}
    }
    private CopyFiles155(){}
    private static MessageDigest digest() throws IOException {
        try{return MessageDigest.getInstance("SHA-256");}
        catch(NoSuchAlgorithmException unavailable){throw new IOException("Digest unavailable");}
    }
    private static byte[] hash(File file)throws IOException {
        MessageDigest hash=digest();long count=0;
        InputStream input=new FileInputStream(file);
        try{byte[] buffer=new byte[16384];int n;while((n=input.read(buffer))!=-1){if((count+=n)>LIMIT)throw new IOException("Copy size limit");hash.update(buffer,0,n);}}
        finally{input.close();}return hash.digest();
    }
    static Prepared zip(File cache, Map<String,byte[]> entries, Map<String,String> metadata,String name)throws IOException {
        File file=BackupExport.prepare(cache,entries,metadata);
        try{return new Prepared(file,name,"application/zip");}catch(IOException failed){BackupExport.discard(file);throw failed;}
    }
    static Prepared western(File cache,byte[] bytes)throws IOException {
        WesternExport135.Prepared original=WesternExport135.prepare(cache,bytes);
        try{WesternExport135.verify(original);return new Prepared(original.file,"western.usr","application/octet-stream");}
        catch(IOException failed){WesternExport135.discard(original);throw failed;}
    }
    static Prepared text(File cache,byte[] usr)throws IOException {
        WesternExport135.Prepared snapshot=WesternExport135.prepare(cache,usr);File file=null;
        try{
            WesternExport135.verify(snapshot);
            byte[] words=TextDictionary155.export(snapshot.file);
            file=File.createTempFile("words155_",".tmp",cache);
            FileOutputStream out=new FileOutputStream(file);
            try{out.write(words);out.getFD().sync();}finally{out.close();}
            return new Prepared(file,"western_dict_full.txt","text/plain");
        }catch(IOException failed){if(file!=null)file.delete();throw failed;}
        finally{WesternExport135.discard(snapshot);}
    }
    private static File child(File dir,String name)throws IOException {
        if(name.length()>160||!name.matches("[A-Za-z0-9_.() -]+")||name.contains(".."))throw new IOException("Invalid copy name");
        File file=new File(dir.getCanonicalFile(),name);
        if(!file.equals(file.getCanonicalFile()))throw new IOException("Linked copy destination");
        return file;
    }
    /** Preserve existing copies; publish only a completely written, verified new file. */
    static synchronized File saveStandard(Prepared prepared,File folder)throws IOException {
        prepared.verify();File dir=folder.getCanonicalFile();
        if(!folder.equals(dir)||!dir.isDirectory())throw new IOException("Copy directory unavailable");
        File part=File.createTempFile(".gtouchpal155_",".part",dir);File target=null;boolean published=false;
        try{
            FileOutputStream output=new FileOutputStream(part);
            try{prepared.copy(output);output.getFD().sync();}finally{output.close();}
            if(part.length()!=prepared.length || !Arrays.equals(prepared.digest,hash(part)))throw new IOException("Saved copy verification failed");
            int dot=prepared.name.lastIndexOf('.');String stem=dot<0?prepared.name:prepared.name.substring(0,dot),ext=dot<0?"":prepared.name.substring(dot);
            for(int n=0;n<10000;n++){
                File candidate=child(dir,n==0?prepared.name:stem+" ("+n+")"+ext);
                if(candidate.createNewFile()){target=candidate;break;}
            }
            if(target==null)throw new IOException("Cannot choose copy name");
            if(!target.isFile()||target.length()!=0||!part.renameTo(target))throw new IOException("Cannot publish saved copy");
            published=true;return target;
        }finally{
            part.delete();
            if(!published && target!=null && target.isFile() && target.length()==0)target.delete();
        }
    }
}
