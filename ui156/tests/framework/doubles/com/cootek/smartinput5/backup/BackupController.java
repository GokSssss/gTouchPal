package com.cootek.smartinput5.backup;
/** Explicit closed-engine boundary. These fixtures are not native save/restore validation. */
public final class BackupController {
 public static final String ENGINE="7b1928d971073eb35b49fd5e1df20caa2d9769bcff92bec64b9aebee0b5190b2";
 public static final byte[] CURRENT={17,18,19,20};
 public static volatile int captures,westernCaptures,restarts;
 public static boolean failCapture;
 public static void reset(){captures=westernCaptures=restarts=0;failCapture=false;}
 static BackupTransaction.Resolver resolver(android.content.Context c){return null;}
 static BackupTransaction.Preferences preferences(android.content.Context c){return null;}
 static java.util.Map<String,byte[]> preferencesOnly(java.util.Map<String,byte[]>m)throws java.io.IOException{return m;}
 public static java.util.Map<String,byte[]> capture(android.content.Context c)throws java.io.IOException{
  captures++;if(failCapture)throw new java.io.IOException("fixture");
  java.util.Map<String,byte[]> result=new java.util.HashMap<>();result.put("dictionary/western.usr",CURRENT.clone());return result;
 }
 public static byte[] captureWestern(android.content.Context c)throws java.io.IOException{
  westernCaptures++;if(failCapture)throw new java.io.IOException("fixture");return CURRENT.clone();
 }
 public static java.util.Map<String,String> metadata(android.content.Context c){java.util.Map<String,String> m=new java.util.HashMap<>();m.put("appVersion","155");m.put("createdUTC","2026-11-16T12:00:00Z");return m;}
 public static String captureError(Throwable t){return "Не удалось подготовить словарь.";}
 public static String status(android.content.Context c){return "";}
 public static void validate(BackupArchive.Archive a)throws java.io.IOException{}
 public static void stage(android.content.Context c,BackupArchive.Archive a)throws java.io.IOException{}
 public static void restart(android.content.Context c){restarts++;}
}
