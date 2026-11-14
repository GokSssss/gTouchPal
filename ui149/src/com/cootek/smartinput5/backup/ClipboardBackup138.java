package com.cootek.smartinput5.backup;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.cootek.smartinput5.engine.ClipboardDbHelper;
import java.io.*;
import java.util.*;

/** Logical SQLite snapshot: text, aliases, timestamps and pin flags; never copies an open DB/WAL. */
public final class ClipboardBackup138 {
    public static final String KEY = "settings/clipboard.bin";
    private static final int MAGIC = 0x43423138;
    private static final int LIMIT = 16 * 1024 * 1024;
    private static final int MAX_ROWS = 100000;
    private ClipboardBackup138() { }
    static final class Failure extends IOException { Failure(String message) { super(message); } }
    static String failureDetails(Throwable error) {
        for (int i=0;i<10 && error!=null;i++,error=error.getCause()) if(error instanceof Failure)return error.getMessage();
        return "";
    }
    private static final class Row {
        long id,time; boolean pinned; String text,shortcut;
    }
    private static void writeText(DataOutputStream out,String value)throws IOException {
        if(value==null){out.writeInt(-1);return;}
        byte[] bytes=value.getBytes("UTF-8");
        if(bytes.length>4*1024*1024)throw new Failure("CB01 · Одна запись буфера слишком велика для копии.");
        out.writeInt(bytes.length);out.write(bytes);
    }
    private static String readText(DataInputStream input)throws IOException {
        int length=input.readInt();if(length==-1)return null;
        if(length<0 || length>4*1024*1024 || length>input.available())throw new IOException("Invalid clipboard text length");
        byte[] bytes=new byte[length];input.readFully(bytes);String value=new String(bytes,"UTF-8");
        if(!Arrays.equals(bytes,value.getBytes("UTF-8")))throw new IOException("Invalid clipboard UTF-8");
        return value;
    }
    public static byte[] capture(Context context)throws IOException {
        ClipboardDbHelper helper=new ClipboardDbHelper(context);SQLiteDatabase database=null;Cursor cursor=null;boolean transaction=false;
        try {
            database=helper.getReadableDatabase();database.beginTransactionNonExclusive();transaction=true;
            cursor=database.query("clipboard",new String[]{"_id","text","shortcut","timestamp","locked"},null,null,null,null,"_id ASC");
            int count=cursor.getCount();if(count<0 || count>MAX_ROWS)throw new Failure("CB02 · Слишком много записей буфера для одной копии.");
            ByteArrayOutputStream bytes=new ByteArrayOutputStream();DataOutputStream output=new DataOutputStream(bytes);output.writeInt(MAGIC);output.writeInt(count);
            while(cursor.moveToNext()) {
                long id=cursor.getLong(0);int pinned=cursor.getInt(4);
                if(id<=0 || id==Long.MAX_VALUE || cursor.isNull(1) || (pinned!=0 && pinned!=1))throw new IOException("Invalid clipboard row");
                output.writeLong(id);output.writeLong(cursor.getLong(3));output.writeBoolean(pinned==1);
                writeText(output,cursor.getString(1));writeText(output,cursor.isNull(2)?null:cursor.getString(2));
                if(bytes.size()>LIMIT)throw new Failure("CB03 · Текстовый буфер больше 16 МБ.");
            }
            output.flush();byte[] result=bytes.toByteArray();decode(result);database.setTransactionSuccessful();return result;
        } catch(Failure failure){throw failure;}
        catch(Exception failure){throw new Failure("CB04 · Не удалось прочитать текстовый буфер и сокращения. Копия не создана.");}
        finally {if(cursor!=null)cursor.close();if(transaction)database.endTransaction();helper.close();}
    }
    private static List<Row> decode(byte[] bytes)throws IOException {
        if(bytes==null || bytes.length<8 || bytes.length>LIMIT)throw new IOException("Invalid clipboard snapshot size");
        DataInputStream input=new DataInputStream(new ByteArrayInputStream(bytes));
        if(input.readInt()!=MAGIC)throw new IOException("Unsupported clipboard snapshot");
        int count=input.readInt();if(count<0 || count>MAX_ROWS)throw new IOException("Invalid clipboard row count");
        List<Row> rows=new ArrayList<Row>();Set<Long> ids=new HashSet<Long>();
        for(int i=0;i<count;i++) {
            Row row=new Row();row.id=input.readLong();row.time=input.readLong();int pinned=input.readUnsignedByte();
            row.pinned=pinned==1;row.text=readText(input);row.shortcut=readText(input);
            if(row.id<=0 || row.id==Long.MAX_VALUE || pinned>1 || row.text==null || !ids.add(Long.valueOf(row.id)))throw new IOException("Invalid clipboard row");
            rows.add(row);
        }
        if(input.read()!=-1)throw new IOException("Unexpected clipboard snapshot tail");return rows;
    }
    public static void validate(byte[] bytes)throws IOException {decode(bytes);}
    public static void restore(Context context,byte[] bytes)throws IOException {
        List<Row> rows=decode(bytes);ClipboardDbHelper helper=new ClipboardDbHelper(context);SQLiteDatabase database=null;boolean transaction=false;
        try {
            database=helper.getWritableDatabase();database.beginTransaction();transaction=true;database.delete("clipboard",null,null);
            for(Row row:rows) {
                ContentValues values=new ContentValues();values.put("_id",Long.valueOf(row.id));values.put("text",row.text);
                if(row.shortcut==null)values.putNull("shortcut");else values.put("shortcut",row.shortcut);
                values.put("timestamp",Long.valueOf(row.time));values.put("locked",Integer.valueOf(row.pinned?1:0));database.insertOrThrow("clipboard",null,values);
            }
            database.setTransactionSuccessful();
        } catch(Exception failure){throw new Failure("CB05 · Не удалось восстановить текстовый буфер и сокращения.");}
        finally {if(transaction)database.endTransaction();helper.close();}
    }
    static Map<String,byte[]> settingsOnly(Map<String,byte[]> entries) {
        Map<String,byte[]> result=new TreeMap<String,byte[]>(entries);result.remove(KEY);return result;
    }
}
