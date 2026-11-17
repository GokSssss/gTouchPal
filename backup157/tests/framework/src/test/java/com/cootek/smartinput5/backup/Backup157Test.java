package com.cootek.smartinput5.backup;

import android.app.*;
import android.content.*;
import android.database.*;
import android.graphics.*;
import android.net.Uri;
import android.os.*;
import android.preference.PreferenceManager;
import android.view.*;
import android.widget.*;
import java.io.*;
import java.lang.reflect.*;
import java.nio.file.Files;
import java.util.*;
import java.util.concurrent.Callable;
import org.junit.*;
import org.junit.runner.RunWith;
import org.robolectric.*;
import org.robolectric.android.controller.ActivityController;
import org.robolectric.annotation.*;
import org.robolectric.shadows.*;
import static org.junit.Assert.*;
import static org.robolectric.Shadows.shadowOf;

/** Actual app-owned filesystem, Android Views/Intents and a provider boundary. Native engine is a double. */
@RunWith(RobolectricTestRunner.class)
@Config(sdk=34,manifest=Config.NONE,qualifiers="ru-w394dp-h853dp-hdpi")
@GraphicsMode(GraphicsMode.Mode.NATIVE) @LooperMode(LooperMode.Mode.PAUSED)
public class Backup157Test {
    Context context;ActivityController<BackupActivity> controller;DownloadsProvider downloads;
    @Before public void before()throws Exception {
        context=RuntimeEnvironment.getApplication();
        ShadowEnvironment.setExternalStorageState(Environment.MEDIA_MOUNTED);
        PreferenceManager.getDefaultSharedPreferences(context).edit().clear().putBoolean("option_dark_theme",true).commit();
        BackupLocations155.bind(context);
        clean(new File(context.getExternalFilesDir(null),"TouchPalG"));
        clean(new File(Environment.getExternalStorageDirectory(),"TouchPalG"));
        BackupController.reset();WesternImport137.reset();android.support.v4.content.FileProvider.fail=false;
        com.cootek.smartinput5.engine.Engine.initialized=true;com.cootek.smartinput5.engine.Engine.busy=false;
        com.cootek.smartinput5.func.z.core=new com.cootek.smartinput5.engine.Okinawa();
        com.cootek.smartinput5.ui.settings.UsrFileParser.fail=false;TextRecovery155.clear(context);
        downloads=new DownloadsProvider();downloads.context=context;
        android.content.pm.ProviderInfo info=new android.content.pm.ProviderInfo();info.authority="media";info.exported=true;downloads.attachInfo(context,info);
        ShadowContentResolver.registerProviderInternal("media",downloads);
    }
    @After public void after(){if(controller!=null)controller.pause().stop().destroy();}
    static void clean(File file){if(file.isDirectory()){File[] children=file.listFiles();if(children!=null)for(File child:children)clean(child);}file.delete();}
    BackupActivity page()throws Exception {controller=Robolectric.buildActivity(BackupActivity.class).setup();await(()->!((TextView)field(controller.get(),"latestCopy")).getText().toString().contains("проверка"));return controller.get();}
    static Object field(Object instance,String key)throws Exception {Field f=instance.getClass().getDeclaredField(key);f.setAccessible(true);return f.get(instance);}
    static void await(Callable<Boolean> condition)throws Exception {for(int n=0;n<800;n++){shadowOf(Looper.getMainLooper()).idle();if(condition.call())return;Thread.sleep(5);}throw new AssertionError("Async operation did not finish");}
    void idle(BackupActivity p)throws Exception {await(()->!(Boolean)field(p,"busy"));}
    List<TextView> texts(BackupActivity p){List<TextView> out=new ArrayList<>();collect(p.findViewById(android.R.id.content),out);return out;}
    static void collect(View v,List<TextView> out){if(v instanceof TextView)out.add((TextView)v);if(v instanceof ViewGroup){ViewGroup group=(ViewGroup)v;for(int n=0;n<group.getChildCount();n++)collect(group.getChildAt(n),out);}}
    Button action(BackupActivity p,int row,int segment){int n=0;for(TextView text:texts(p))if(text instanceof Button&&"Сохранить".contentEquals(text.getText())){if(n++==row)return (Button)((ViewGroup)text.getParent()).getChildAt(segment);}throw new AssertionError();}
    Button restore(BackupActivity p,int kind){String title=kind==1?"Восстановить полную копию":kind==2?"Восстановить western.usr":"Добавить слова из TXT";for(TextView t:texts(p))if(t instanceof Button&&title.contentEquals(t.getText()))return (Button)t;throw new AssertionError(title);}
    void select(BackupActivity p,int kind,File file)throws Exception {
        restore(p,kind).performClick();ShadowActivity.IntentForResult opened=shadowOf(p).getNextStartedActivityForResult();assertNotNull(opened);
        Method result=BackupActivity.class.getDeclaredMethod("onActivityResult",int.class,int.class,Intent.class);result.setAccessible(true);result.invoke(p,opened.requestCode,Activity.RESULT_OK,new Intent().setData(Uri.fromFile(file)));idle(p);
    }
    File input(String name,byte[] data)throws Exception {File dir=new File(context.getCacheDir(),"input"+UUID.randomUUID());assertTrue(dir.mkdir());File file=new File(dir,name);Files.write(file.toPath(),data);return file;}
    byte[] zip()throws Exception {CopyFiles155.Prepared p=CopyFiles155.zip(context.getCacheDir(),BackupController.capture(context),BackupController.metadata(context),"source.zip");try{return Files.readAllBytes(p.file.toPath());}finally{p.discard();}}

    @Test public void defaultIsAppOwnedAndSavingAllFormatsNeverOpensAPickerOrCreatesPublicRoot()throws Exception {
        BackupActivity p=page();shadowOf(p).denyPermissions("android.permission.WRITE_EXTERNAL_STORAGE");
        File expected=new File(context.getExternalFilesDir(null),"TouchPalG/Backup").getCanonicalFile();assertEquals(expected,BackupLocations155.safeFolder());
        for(int row=0;row<3;row++){action(p,row,0).performClick();idle(p);assertNull(shadowOf(p).getNextStartedActivityForResult());}
        assertEquals(3,SavedCopies157.files().size());assertFalse(new File(Environment.getExternalStorageDirectory(),"TouchPalG").exists());
        File live=new File(expected.getParentFile(),"language/russian.tpl");assertTrue(live.getParentFile().mkdirs());Files.write(live.toPath(),new byte[]{9,8});
        assertEquals(expected,BackupLocations155.textDirectory(context));assertArrayEquals(new byte[]{9,8},Files.readAllBytes(live.toPath()));
    }
    @Test public void fourAccessibleTargetsHaveEqualIconSizesAndLongPressOnlyShowsHelp()throws Exception {
        BackupActivity p=page();String[] hints={"Открыть папку приложения с резервными копиями","Создать копию и открыть «Поделиться»","Сохранить копию в Загрузки"};
        for(int row=0;row<3;row++)for(int segment=1;segment<=3;segment++){
            Button b=action(p,row,segment);assertEquals(4,((ViewGroup)b.getParent()).getChildCount());assertEquals(action(p,row,1).getLayoutParams().width,b.getLayoutParams().width);
            assertTrue(b.performLongClick());assertEquals(hints[segment-1],ShadowToast.getTextOfLatestToast());
        }
        assertEquals(0,BackupController.captures+BackupController.westernCaptures);assertTrue(SavedCopies157.files().isEmpty());assertNull(shadowOf(p).getNextStartedActivity());
    }
    @Test public void sharingKeepsTheAppOwnedOriginalAndNarrowReadGrantEvenAfterDestroy()throws Exception {
        BackupActivity p=page();action(p,1,2).performClick();idle(p);Intent chooser=shadowOf(p).getNextStartedActivity();assertEquals(Intent.ACTION_CHOOSER,chooser.getAction());
        Intent send=chooser.getParcelableExtra(Intent.EXTRA_INTENT);assertEquals(Intent.ACTION_SEND,send.getAction());assertEquals(Intent.FLAG_GRANT_READ_URI_PERMISSION,send.getFlags()&Intent.FLAG_GRANT_READ_URI_PERMISSION);
        Uri uri=send.getParcelableExtra(Intent.EXTRA_STREAM);assertEquals(uri,send.getClipData().getItemAt(0).getUri());File saved=android.support.v4.content.FileProvider.files.get(uri);
        assertEquals(BackupLocations155.safeFolder(),saved.getParentFile());assertArrayEquals(BackupController.CURRENT,Files.readAllBytes(saved.toPath()));
        controller.pause().stop().destroy();controller=null;assertTrue(saved.isFile());
    }
    @Test public void providerDownloadRoundtripRetainsExactBytes()throws Exception {
        CopyFiles155.Prepared source=CopyFiles155.western(context.getCacheDir(),BackupController.CURRENT);
        try{assertEquals("western.usr",SavedCopies157.download(context,source));assertArrayEquals(BackupController.CURRENT,Files.readAllBytes(downloads.last.toPath()));}finally{source.discard();}
    }
    @Test public void downloadArrowPublishesVerifiedDownloadsWithoutOpeningASystemPicker()throws Exception {
        BackupActivity p=page();action(p,1,3).performClick();idle(p);
        assertEquals("insert",1,downloads.inserts);assertEquals("publish: "+((TextView)field(p,"status")).getText(),1,downloads.published);assertEquals("Download/",downloads.relativePath);assertArrayEquals(BackupController.CURRENT,Files.readAllBytes(downloads.last.toPath()));
        assertEquals(1,SavedCopies157.files().size());assertNull(shadowOf(p).getNextStartedActivity());assertNull(shadowOf(p).getNextStartedActivityForResult());
    }
    @Test public void failedDownloadsReadbackDeletesOnlyItsPendingRowAndKeepsTheInternalCopy()throws Exception {
        BackupActivity p=page();downloads.corrupt=true;action(p,1,3).performClick();idle(p);
        assertEquals(0,downloads.published);assertEquals(1,downloads.deleted);assertEquals(1,SavedCopies157.files().size());assertArrayEquals(BackupController.CURRENT,Files.readAllBytes(SavedCopies157.files().get(0).toPath()));
    }
    @Test @Config(sdk=28) public void oldAndroidDownloadsUsesThePublicDownloadsFolderWithoutReplacingAnExistingFile()throws Exception {
        BackupActivity p=page();shadowOf(p).grantPermissions("android.permission.WRITE_EXTERNAL_STORAGE");File folder=Environment.getExternalStoragePublicDirectory("Download");assertTrue(folder.isDirectory()||folder.mkdirs());File old=new File(folder,"western.usr");Files.write(old.toPath(),new byte[]{99});
        action(p,1,3).performClick();idle(p);assertArrayEquals(new byte[]{99},Files.readAllBytes(old.toPath()));assertArrayEquals(BackupController.CURRENT,Files.readAllBytes(new File(folder,"western (1).usr").toPath()));assertEquals(0,downloads.inserts);
    }
    @Test public void folderListsSavedCopiesInsideTheAppWithoutCaptureOrDocumentsUi()throws Exception {
        BackupActivity p=page();action(p,1,0).performClick();idle(p);int captures=BackupController.westernCaptures;action(p,1,1).performClick();idle(p);
        AlertDialog dialog=ShadowAlertDialog.getLatestAlertDialog();assertEquals("Копии — Backup",shadowOf(dialog).getTitle());assertNotNull(dialog.getListView());assertTrue(dialog.getListView().getAdapter().getItem(0).toString().contains("western.usr"));assertNull(shadowOf(p).getNextStartedActivity());assertEquals(captures,BackupController.westernCaptures);
    }
    @Test public void sourceIsNotRetainedOnCancelAndTemporaryIncomingSnapshotIsDiscarded()throws Exception {
        BackupActivity p=page();File file=input("incoming.usr",new byte[]{5,6,7});select(p,2,file);CopyFiles155.Prepared staged=(CopyFiles155.Prepared)field(p,"incoming");assertTrue(staged.file.exists());assertTrue(SavedCopies157.files().isEmpty());
        ShadowAlertDialog.getLatestAlertDialog().getButton(DialogInterface.BUTTON_NEGATIVE).performClick();await(()->!staged.file.exists());assertTrue(file.exists());assertTrue(SavedCopies157.files().isEmpty());assertEquals(0,WesternImport137.stages);
    }
    @Test public void confirmedUsrUsesTheCheckedBytesAndRetainsThemEvenIfTheOriginalProviderChanges()throws Exception {
        BackupActivity p=page();byte[] bytes={31,32,33};File file=input("Мой словарь.usr",bytes);select(p,2,file);Files.write(file.toPath(),new byte[]{90});
        ShadowAlertDialog.getLatestAlertDialog().getButton(DialogInterface.BUTTON_POSITIVE).performClick();await(()->WesternImport137.stages==1);
        assertArrayEquals(bytes,WesternImport137.incoming);assertEquals(1,SavedCopies157.files().size());assertEquals("Мой словарь.usr",SavedCopies157.files().get(0).getName());assertArrayEquals(bytes,Files.readAllBytes(SavedCopies157.files().get(0).toPath()));
    }
    @Test public void corruptConfirmedSnapshotDoesNotStageNativeRestoreOrTouchAnExistingCopy()throws Exception {
        BackupActivity p=page();File file=input("incoming.usr",new byte[]{4,5,6});select(p,2,file);CopyFiles155.Prepared staged=(CopyFiles155.Prepared)field(p,"incoming");Files.write(staged.file.toPath(),new byte[]{9,9,9});
        ShadowAlertDialog.getLatestAlertDialog().getButton(DialogInterface.BUTTON_POSITIVE).performClick();idle(p);assertEquals(0,WesternImport137.stages);assertTrue(SavedCopies157.files().isEmpty());assertFalse(staged.file.exists());
    }
    @Test public void confirmedZipRetainsTheExactArchiveAndCancelOrInvalidZipRetainsNothing()throws Exception {
        BackupActivity p=page();byte[] bytes=zip();File file=input("imported.zip",bytes);select(p,1,file);ShadowAlertDialog.getLatestAlertDialog().getButton(DialogInterface.BUTTON_NEGATIVE).performClick();assertTrue(SavedCopies157.files().isEmpty());
        select(p,1,input("broken.zip",new byte[]{1,2,3}));assertTrue(SavedCopies157.files().isEmpty());assertEquals(0,BackupController.stages);
        select(p,1,file);ShadowAlertDialog.getLatestAlertDialog().getButton(DialogInterface.BUTTON_POSITIVE).performClick();await(()->BackupController.stages==1);assertArrayEquals(bytes,Files.readAllBytes(SavedCopies157.files().get(0).toPath()));
    }
    @Test public void txtImportKeepsOriginalBytesAndExistingWords()throws Exception {
        BackupActivity p=page();com.cootek.smartinput5.func.z.core.words.add("старое");byte[] bytes="старое\nновое\n".getBytes("UTF-8");File file=input("my_words.txt",bytes);select(p,3,file);
        ShadowAlertDialog.getLatestAlertDialog().getButton(DialogInterface.BUTTON_POSITIVE).performClick();idle(p);assertEquals(Arrays.asList("старое","новое"),com.cootek.smartinput5.func.z.core.words);assertArrayEquals(bytes,Files.readAllBytes(SavedCopies157.files().get(0).toPath()));assertFalse(TextRecovery155.pending(context));
    }
    @Test public void oldPublicCopiesMoveOnlyAfterVerificationAndAnEmptyPublicRootDisappears()throws Exception {
        File folder=new File(Environment.getExternalStorageDirectory(),"TouchPalG/Backup");assertTrue(folder.mkdirs());byte[] bytes={1,2,3,4};File original=new File(folder,"western.usr");Files.write(original.toPath(),bytes);
        assertEquals(1,SavedCopies157.migratePublic());assertFalse(folder.getParentFile().exists());assertArrayEquals(bytes,Files.readAllBytes(new File(BackupLocations155.safeFolder(),"western.usr").toPath()));assertEquals(0,SavedCopies157.migratePublic());
    }
    @Test public void migrationPreservesDifferentSameNamedCopiesAndUnrelatedPublicFiles()throws Exception {
        File folder=new File(Environment.getExternalStorageDirectory(),"TouchPalG/Backup");assertTrue(folder.mkdirs());File old=new File(folder,"western.usr"),unknown=new File(folder,"leave.bin");Files.write(old.toPath(),new byte[]{1});Files.write(unknown.toPath(),new byte[]{7});
        File existing=new File(BackupLocations155.safeFolder(),"western.usr");Files.write(existing.toPath(),new byte[]{2});SavedCopies157.migratePublic();assertArrayEquals(new byte[]{2},Files.readAllBytes(existing.toPath()));assertArrayEquals(new byte[]{1},Files.readAllBytes(new File(existing.getParentFile(),"western (1).usr").toPath()));assertTrue(unknown.exists());
    }
    @Test public void migrationFailureLeavesTheOnlySourceUntouched()throws Exception {
        File folder=new File(Environment.getExternalStorageDirectory(),"TouchPalG/Backup");assertTrue(folder.mkdirs());File source=new File(folder,"western.usr");Files.write(source.toPath(),new byte[]{8,9});
        File work=new File(context.getExternalFilesDir(null),"TouchPalG");assertTrue(work.mkdirs());Files.write(new File(work,"Backup").toPath(),new byte[]{7});
        try{SavedCopies157.migratePublic();fail();}catch(IOException expected){}assertArrayEquals(new byte[]{8,9},Files.readAllBytes(source.toPath()));
    }
    @Test public void identicalIncomingCopyIsRetainedOnceAndLinkedDestinationsAreRefused()throws Exception {
        File file=input("saved.usr",new byte[]{1,2});CopyFiles155.Prepared source=SavedCopies157.read(context,Uri.fromFile(file),2);try{File one=SavedCopies157.remember(source);assertEquals(one,SavedCopies157.remember(source));assertEquals(1,SavedCopies157.files().size());}
        finally{source.discard();}
        File target=new File(BackupLocations155.safeFolder(),"linked.usr");Files.createSymbolicLink(target.toPath(),file.toPath());source=SavedCopies157.read(context,Uri.fromFile(input("linked.usr",new byte[]{3})),2);try{SavedCopies157.remember(source);fail();}catch(IOException expected){}finally{source.discard();}assertArrayEquals(new byte[]{1,2},Files.readAllBytes(file.toPath()));
    }
    @Test public void lastFullCopyShowsDateAndNameWithoutPathAndSkipsBrokenArchives()throws Exception {
        BackupActivity p=page();action(p,0,0).performClick();idle(p);await(()->((TextView)field(p,"latestCopy")).getText().toString().contains(".zip"));String label=((TextView)field(p,"latestCopy")).getText().toString();assertTrue(label.matches("[0-9]{2}\\.[0-9]{2}\\.[0-9]{4}.*\\.zip"));assertEquals(1,((TextView)field(p,"latestCopy")).getMaxLines());ViewGroup parent=(ViewGroup)action(p,0,0).getParent().getParent();assertTrue(parent.indexOfChild((View)field(p,"latestCopy"))<parent.indexOfChild((View)action(p,0,0).getParent()));assertTrue(((TextView)field(p,"latestCopy")).performLongClick());assertEquals(label,ShadowToast.getTextOfLatestToast());assertFalse(label.contains("/"));
        File saved=SavedCopies157.latestZip();File invalid=new File(BackupLocations155.safeFolder(),"newer.zip");Files.write(invalid.toPath(),new byte[]{1});invalid.setLastModified(System.currentTimeMillis()+60000);assertEquals(saved,SavedCopies157.latestZip());
    }
    @Test public void compactPageRendersWithFourZoneStrips()throws Exception {
        BackupActivity p=page();action(p,0,0).performClick();idle(p);View root=p.findViewById(android.R.id.content);root.measure(View.MeasureSpec.makeMeasureSpec(591,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(1800,View.MeasureSpec.AT_MOST));root.layout(0,0,591,1800);
        LinearLayout content=(LinearLayout)((ScrollView)((ViewGroup)root).getChildAt(0)).getChildAt(0);content.measure(View.MeasureSpec.makeMeasureSpec(591,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(4000,View.MeasureSpec.AT_MOST));content.layout(0,0,591,content.getMeasuredHeight());
        Bitmap bitmap=Bitmap.createBitmap(591,content.getHeight(),Bitmap.Config.ARGB_8888);Canvas canvas=new Canvas(bitmap);canvas.drawColor(0xff222222);content.draw(canvas);File out=new File("../../BACKUP_PAGE157.png");try(FileOutputStream stream=new FileOutputStream(out)){bitmap.compress(Bitmap.CompressFormat.PNG,100,stream);}assertTrue(out.length()>1000);
    }

    public static class DownloadsProvider extends ContentProvider {
        Context context;File last;boolean corrupt;int inserts,published,deleted;String relativePath;final Map<Uri,File> files=new HashMap<>();final Map<Uri,String> names=new HashMap<>();
        @Override public boolean onCreate(){return true;}
        @Override public Uri insert(Uri collection,ContentValues values){try{last=File.createTempFile("download157_",".bin",context.getCacheDir());Uri uri=Uri.withAppendedPath(collection,Integer.toString(++inserts));files.put(uri,last);names.put(uri,values.getAsString("_display_name"));relativePath=values.getAsString("relative_path");assertEquals(Integer.valueOf(1),values.getAsInteger("is_pending"));return uri;}catch(IOException e){throw new RuntimeException(e);}}
        @Override public Cursor query(Uri uri,String[] p,String selection,String[] args,String order){MatrixCursor cursor=new MatrixCursor(new String[]{"_display_name"});cursor.addRow(new Object[]{names.get(uri)});return cursor;}
        @Override public String getType(Uri uri){return "application/octet-stream";}
        @Override public int update(Uri uri,ContentValues values,String s,String[] args){assertEquals(Integer.valueOf(0),values.getAsInteger("is_pending"));published++;return 1;}
        @Override public int delete(Uri uri,String s,String[] args){deleted++;File file=files.remove(uri);if(file!=null)file.delete();return 1;}
        @Override public ParcelFileDescriptor openFile(Uri uri,String mode)throws FileNotFoundException {File file=files.get(uri);if(file==null)throw new FileNotFoundException();if(mode.startsWith("r")&&corrupt)try{File changed=File.createTempFile("corrupt157_",".bin",context.getCacheDir());Files.write(changed.toPath(),new byte[]{99});return ParcelFileDescriptor.open(changed,ParcelFileDescriptor.MODE_READ_ONLY);}catch(IOException e){throw new FileNotFoundException();}return ParcelFileDescriptor.open(file,mode.startsWith("w")?ParcelFileDescriptor.MODE_WRITE_ONLY|ParcelFileDescriptor.MODE_TRUNCATE:ParcelFileDescriptor.MODE_READ_ONLY);}
    }
}
