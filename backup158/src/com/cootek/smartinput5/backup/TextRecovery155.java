package com.cootek.smartinput5.backup;

import android.content.Context;
import java.io.*;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/** Private pre-import recovery, never a share/export file or a replacement of live data. */
final class TextRecovery155 {
    private static File dir(Context context)throws IOException {
        File parent=BackupFiles.workspace(context),result=new File(parent,"txt_import155");
        if(!result.equals(result.getCanonicalFile()))throw new IOException("Linked recovery path");
        if(!result.isDirectory()&&!result.mkdir()&&!result.isDirectory())throw new IOException("Recovery folder unavailable");
        return result;
    }
    static boolean pending(Context context)throws IOException{return new File(dir(context),"ready").isFile();}
    private static byte[] digest(byte[] bytes)throws IOException {
        try{return MessageDigest.getInstance("SHA-256").digest(bytes);}
        catch(NoSuchAlgorithmException failed){throw new IOException("Digest unavailable");}
    }
    static synchronized void prepare(Context context,byte[] usr)throws IOException {
        if(pending(context))throw new IOException("Resolve previous TXT import first");
        WesternImport137.read(new ByteArrayInputStream(usr));
        File folder=dir(context),file=new File(folder,"before.usr"),marker=new File(folder,"ready");
        if(file.exists()&&!file.delete())throw new IOException("Recovery snapshot occupied");
        File tmp=File.createTempFile(".before155_",".part",folder);
        try{
            FileOutputStream out=new FileOutputStream(tmp);try{out.write(usr);out.getFD().sync();}finally{out.close();}
            byte[] actual=BackupFiles.read(tmp,BackupFiles.LIMIT);
            if(!Arrays.equals(digest(usr),digest(actual))||!tmp.renameTo(file))throw new IOException("Recovery verification failed");
            FileOutputStream ready=new FileOutputStream(marker);try{ready.write(digest(usr));ready.getFD().sync();}finally{ready.close();}
        }finally{tmp.delete();}
    }
    static synchronized byte[] read(Context context)throws IOException {
        if(!pending(context))throw new IOException("No TXT recovery snapshot");
        File folder=dir(context);byte[] bytes=BackupFiles.read(new File(folder,"before.usr"),BackupFiles.LIMIT);
        byte[] expected=BackupFiles.read(new File(folder,"ready"),32);
        if(expected.length!=32||!Arrays.equals(expected,digest(bytes)))throw new IOException("Recovery snapshot changed");
        return WesternImport137.read(new ByteArrayInputStream(bytes));
    }
    static synchronized void clear(Context context)throws IOException {
        File folder=dir(context),marker=new File(folder,"ready");
        if(marker.exists()&&!marker.delete())throw new IOException("Cannot finish TXT recovery");
        new File(folder,"before.usr").delete();
    }
}
