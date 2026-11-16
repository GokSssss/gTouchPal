package com.cootek.smartinput5.backup;
/** Explicit native-format/transaction boundary; production bytes are independently compared. */
public final class WesternImport137 {
 public static volatile int stages;public static byte[] incoming,previous;
 public static void reset(){stages=0;incoming=previous=null;}
 public static void applyPending(android.content.Context c){}
 public static byte[] read(java.io.InputStream in)throws java.io.IOException{
  java.io.ByteArrayOutputStream out=new java.io.ByteArrayOutputStream();int n;
  while((n=in.read())!=-1)out.write(n);return out.toByteArray();
 }
 public static void stage(android.content.Context c,byte[] next,byte[] old)throws java.io.IOException{
  incoming=next.clone();previous=old.clone();stages++;
 }
}
