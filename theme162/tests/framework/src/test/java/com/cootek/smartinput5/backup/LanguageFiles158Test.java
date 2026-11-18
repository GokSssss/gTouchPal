package com.cootek.smartinput5.backup;
import android.content.*;import android.net.Uri;import android.os.Environment;import java.io.*;import java.nio.file.Files;import java.util.*;import java.util.zip.*;
import org.junit.*;import org.junit.runner.RunWith;import org.robolectric.*;import org.robolectric.annotation.*;import org.robolectric.shadows.ShadowEnvironment;import static org.junit.Assert.*;
/** Actual archive/file IO. Native language compatibility/activation is not emulated. */
@RunWith(RobolectricTestRunner.class) @Config(sdk=34,manifest=Config.NONE)
public class LanguageFiles158Test {
 Context context;
 @Before public void before(){context=RuntimeEnvironment.getApplication();ShadowEnvironment.setExternalStorageState(Environment.MEDIA_MOUNTED);BackupLocations155.bind(context);clean(new File(context.getExternalFilesDir(null),"TouchPalG"));}
 static void clean(File p){if(p.isDirectory()){File[] children=p.listFiles();if(children!=null)for(File child:children)clean(child);}p.delete();}
 byte[] language(String mark)throws Exception{ByteArrayOutputStream out=new ByteArrayOutputStream();ZipOutputStream zip=new ZipOutputStream(out);for(String name:new String[]{"AndroidManifest.xml","assets/english.lng.png","assets/english.rom.png"}){zip.putNextEntry(new ZipEntry(name));zip.write((mark+name).getBytes("UTF-8"));zip.closeEntry();}zip.close();return out.toByteArray();}
 File input(String name,byte[] bytes)throws Exception{File folder=new File(context.getCacheDir(),UUID.randomUUID().toString());assertTrue(folder.mkdir());File file=new File(folder,name);Files.write(file.toPath(),bytes);return file;}
 @Test public void normalizesOnlyTheApkSuffixOfTplAndRejectsOtherOrEscapingNames()throws Exception {
  assertEquals("english.tpl",LanguageFiles158.normalizedName("english.tpl.apk"));assertEquals("russian.tpl",LanguageFiles158.normalizedName("russian.TPL.APK"));assertEquals("english.tpl",LanguageFiles158.normalizedName("english.tpl"));
  for(String name:new String[]{"../english.tpl.apk","english.apk","western.usr","a/b.tpl.apk","english.tpl.apk.apk"})try{LanguageFiles158.normalizedName(name);fail(name);}catch(IOException expected){}
 }
 @Test public void newImportPreservesEveryByteAndTheOriginalAndUsesOnlyTheWorkingLanguageFolder()throws Exception {
  byte[] bytes=language("new");File file=input("english.tpl.apk",bytes);LanguageFiles158.Pending ready=LanguageFiles158.prepare(context,Uri.fromFile(file));assertFalse(ready.target.exists());assertEquals("english.tpl",ready.target.getName());
  File result=LanguageFiles158.commit(context,ready);ready.discard();assertEquals(new File(context.getExternalFilesDir(null),"TouchPalG/language/english.tpl").getCanonicalFile(),result);assertArrayEquals(bytes,Files.readAllBytes(result.toPath()));assertTrue(file.exists());assertFalse(new File(Environment.getExternalStorageDirectory(),"TouchPalG").exists());
 }
 @Test public void replacingAnExistingLanguagePreservesTheOldBytesInBackupAndLeavesOthersAlone()throws Exception {
  File target=new File(LanguageFiles158.folder(),"english.tpl");byte[] old=language("old"),next=language("new");Files.write(target.toPath(),old);File other=new File(target.getParentFile(),"russian.tpl");Files.write(other.toPath(),new byte[]{8});
  LanguageFiles158.Pending pending=LanguageFiles158.prepare(context,Uri.fromFile(input("english.tpl.apk",next)));assertNotNull(pending.previous);LanguageFiles158.commit(context,pending);pending.discard();assertArrayEquals(next,Files.readAllBytes(target.toPath()));assertArrayEquals(old,Files.readAllBytes(new File(BackupLocations155.safeFolder(),"Language/english.tpl").toPath()));assertArrayEquals(new byte[]{8},Files.readAllBytes(other.toPath()));
 }
 @Test public void cancellationDoesNotWriteOrReplaceTheWorkingFile()throws Exception {
  File target=new File(LanguageFiles158.folder(),"english.tpl");byte[] bytes=language("old");Files.write(target.toPath(),bytes);LanguageFiles158.Pending pending=LanguageFiles158.prepare(context,Uri.fromFile(input("english.tpl.apk",language("new"))));File temporary=pending.source.file;pending.discard();assertFalse(temporary.exists());assertArrayEquals(bytes,Files.readAllBytes(target.toPath()));
 }
 @Test public void changedOriginalOrChangedSnapshotIsRefusedBeforeAnyReplacement()throws Exception {
  File target=new File(LanguageFiles158.folder(),"english.tpl");Files.write(target.toPath(),language("old"));LanguageFiles158.Pending pending=LanguageFiles158.prepare(context,Uri.fromFile(input("english.tpl.apk",language("new"))));byte[] concurrent=language("concurrent");Files.write(target.toPath(),concurrent);try{LanguageFiles158.commit(context,pending);fail();}catch(IOException expected){}finally{pending.discard();}assertArrayEquals(concurrent,Files.readAllBytes(target.toPath()));
  pending=LanguageFiles158.prepare(context,Uri.fromFile(input("english.tpl.apk",language("again"))));Files.write(pending.source.file.toPath(),new byte[]{9});try{LanguageFiles158.commit(context,pending);fail();}catch(IOException expected){}finally{pending.discard();}assertArrayEquals(concurrent,Files.readAllBytes(target.toPath()));
 }
 @Test public void nonLanguageOrTruncatedArchivesCannotAffectTheWorkingDirectory()throws Exception {
  for(byte[] bytes:new byte[][]{new byte[]{1,2,3},Arrays.copyOf(language("ok"),32)})try{LanguageFiles158.prepare(context,Uri.fromFile(input("english.tpl.apk",bytes)));fail();}catch(IOException expected){}
  ByteArrayOutputStream out=new ByteArrayOutputStream();ZipOutputStream zip=new ZipOutputStream(out);zip.putNextEntry(new ZipEntry("classes.dex"));zip.write(new byte[]{1,2,3});zip.close();try{LanguageFiles158.prepare(context,Uri.fromFile(input("english.tpl.apk",out.toByteArray())));fail();}catch(IOException expected){}assertFalse(new File(LanguageFiles158.folder(),"english.tpl").exists());
 }
 @Test public void recoveryFailureDoesNotReplaceTheOnlyOldFile()throws Exception {
  File target=new File(LanguageFiles158.folder(),"english.tpl");byte[] old=language("old");Files.write(target.toPath(),old);File blocker=new File(BackupLocations155.safeFolder(),"Language");Files.write(blocker.toPath(),new byte[]{7});LanguageFiles158.Pending pending=LanguageFiles158.prepare(context,Uri.fromFile(input("english.tpl.apk",language("new"))));try{LanguageFiles158.commit(context,pending);fail();}catch(IOException expected){}finally{pending.discard();}assertArrayEquals(old,Files.readAllBytes(target.toPath()));
 }
 @Test public void realBundledLanguageArchiveCanBeImportedWithoutInstallingAnApk()throws Exception {
  byte[] bytes;try(ZipFile base=new ZipFile(new File("../../../output/161-TouchPalG-6.2.7.1.apk"))){ByteArrayOutputStream out=new ByteArrayOutputStream();try(InputStream input=base.getInputStream(base.getEntry("assets/touchpal_languages/russian.tpl"))){byte[] buffer=new byte[16384];int count;while((count=input.read(buffer))!=-1)out.write(buffer,0,count);}bytes=out.toByteArray();}
  File original=input("russian.tpl.apk",bytes);LanguageFiles158.Pending pending=LanguageFiles158.prepare(context,Uri.fromFile(original));File installed=LanguageFiles158.commit(context,pending);pending.discard();assertArrayEquals(bytes,Files.readAllBytes(installed.toPath()));assertTrue(original.exists());
 }
}
