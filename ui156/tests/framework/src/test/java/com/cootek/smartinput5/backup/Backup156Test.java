package com.cootek.smartinput5.backup;

import android.app.*;
import android.content.*;
import android.graphics.*;
import android.net.Uri;
import android.os.*;
import android.preference.*;
import android.view.*;
import android.widget.*;
import java.io.*;
import java.lang.reflect.*;
import java.nio.file.Files;
import java.util.*;
import org.junit.*;
import org.junit.runner.RunWith;
import org.robolectric.*;
import org.robolectric.android.controller.ActivityController;
import org.robolectric.annotation.*;
import org.robolectric.shadows.*;
import static org.junit.Assert.*;
import static org.robolectric.Shadows.shadowOf;

/** Real Android UI, URI resolution and file IO; the native controller is an explicit double. */
@RunWith(RobolectricTestRunner.class)
@Config(sdk=34,manifest=Config.NONE,qualifiers="ru-w394dp-h853dp-hdpi")
@GraphicsMode(GraphicsMode.Mode.NATIVE) @LooperMode(LooperMode.Mode.PAUSED)
public class Backup156Test {
    public static class SettingsPage extends PreferenceActivity {
        @Override public void onCreate(Bundle state){super.onCreate(state);setPreferenceScreen(getPreferenceManager().createPreferenceScreen(this));PreferenceCategory additions=new PreferenceCategory(this);additions.setKey("tp_additions");getPreferenceScreen().addPreference(additions);}
    }
    ActivityController<BackupActivity> controller;
    Context context;
    @Before public void before() {
        context=RuntimeEnvironment.getApplication();
        PreferenceManager.getDefaultSharedPreferences(context).edit().clear().putBoolean("option_dark_theme",true).commit();
        ShadowEnvironment.setExternalStorageState(Environment.MEDIA_MOUNTED);
        BackupController.reset();WesternImport137.reset();com.cootek.smartinput5.engine.Engine.initialized=true;com.cootek.smartinput5.engine.Engine.busy=false;com.cootek.smartinput5.func.z.core=new com.cootek.smartinput5.engine.Okinawa();android.support.v4.content.FileProvider.fail=false;com.cootek.smartinput5.ui.settings.UsrFileParser.fail=false;try{TextRecovery155.clear(context);}catch(Exception e){throw new AssertionError(e);}
    }
    @After public void after(){if(controller!=null)controller.pause().stop().destroy();}
    private BackupActivity page(){controller=Robolectric.buildActivity(BackupActivity.class).setup();shadowOf(Looper.getMainLooper()).idle();return controller.get();}
    private void texts(View view,List<TextView> out){if(view instanceof TextView)out.add((TextView)view);if(view instanceof ViewGroup){ViewGroup g=(ViewGroup)view;for(int n=0;n<g.getChildCount();n++)texts(g.getChildAt(n),out);}}
    private List<TextView> texts(BackupActivity page){List<TextView> result=new ArrayList<>();texts(page.findViewById(android.R.id.content),result);return result;}
    private Button button(BackupActivity page,String title){int wanted=title.equals("Создать полную копию")?0:title.equals("Сохранить western.usr")?1:title.equals("Сохранить слова в TXT")?2:-1;int n=0;for(TextView t:texts(page))if(t instanceof Button){if(wanted>=0&&"Сохранить".equals(t.getText().toString())&&n++==wanted)return (Button)t;if(wanted<0&&title.equals(t.getText().toString()))return (Button)t;}throw new AssertionError(title);}
    private TextView text(BackupActivity page,String title){for(TextView t:texts(page))if(title.equals(t.getText().toString()))return t;throw new AssertionError(title);}
    private void result(BackupActivity p,int request,int code,Intent intent)throws Exception{Method m=BackupActivity.class.getDeclaredMethod("onActivityResult",int.class,int.class,Intent.class);m.setAccessible(true);m.invoke(p,request,code,intent);}
    private ShadowActivity.IntentForResult picker(BackupActivity p)throws Exception{
        for(int n=0;n<500;n++){shadowOf(Looper.getMainLooper()).idle();ShadowActivity.IntentForResult r=shadowOf(p).getNextStartedActivityForResult();if(r!=null&&r.requestCode>=0)return r;Thread.sleep(10);}throw new AssertionError("Picker did not open");
    }
    private void ready()throws Exception{for(int n=0;n<100;n++){shadowOf(Looper.getMainLooper()).idle();Thread.sleep(2);}}
    private Intent target(Intent intent){return Intent.ACTION_CHOOSER.equals(intent.getAction())?(Intent)intent.getParcelableExtra(Intent.EXTRA_INTENT):intent;}
    private Object field(BackupActivity p,String name)throws Exception{Field f=BackupActivity.class.getDeclaredField(name);f.setAccessible(true);return f.get(p);}
    @Test public void mainEntryIsRenamedAndInstalledOnlyOnce(){
        ActivityController<SettingsPage> c=Robolectric.buildActivity(SettingsPage.class).setup();try{
            SettingsPage p=c.get();for(int n=0;n<4;n++)BackupSettings.install(p);
            PreferenceGroup additions=(PreferenceGroup)p.findPreference("tp_additions");assertEquals(1,additions.getPreferenceCount());Preference entry=additions.getPreference(0);
            assertEquals("Резервная копия и восстановление",entry.getTitle());assertEquals(BackupSettings.KEY,entry.getKey());assertEquals(BackupActivity.class.getName(),entry.getIntent().getComponent().getClassName());
        }finally{c.pause().stop().destroy();}
    }
    @Test public void fourSectionsAndDirectTextActionsReplaceDuplicates() {
        BackupActivity p=page();assertEquals("Резервная копия и восстановление",p.getTitle());
        for(String title:new String[]{"Полная копия","Пользовательский словарь","Слова в текстовом файле","Перенос старых данных"})assertNotNull(text(p,title));
        int buttons=0;for(TextView t:texts(p))if(t instanceof Button){buttons++;assertFalse(t.getText().toString().contains("папку Backup"));assertFalse(t.getText().toString().contains("исправить"));}
        assertEquals(13,buttons);assertEquals(0,BackupController.captures+BackupController.westernCaptures);
        assertNotNull(button(p,"Сохранить слова в TXT"));assertNotNull(button(p,"Добавить слова из TXT"));
    }
    @Test public void rawAndZipPickersAllStartInTheSameSharedFolderAndCanBeCancelled()throws Exception {
        BackupActivity p=page();
        for(String title:new String[]{"Сохранить western.usr","Восстановить western.usr","Создать полную копию","Восстановить полную копию","Сохранить слова в TXT","Добавить слова из TXT"}){
            button(p,title).performClick();ShadowActivity.IntentForResult opened=picker(p);Intent intent=target(opened.intent);
            Uri initial=intent.getParcelableExtra("android.provider.extra.INITIAL_URI");assertNotNull(title,initial);
            assertEquals("primary:TouchPalG/Backup",initial.getLastPathSegment());
            assertFalse(initial.toString().contains("Android%2Fdata"));assertFalse(initial.toString().contains("Download"));
            if(title.equals("Сохранить western.usr"))assertEquals("western.usr",intent.getStringExtra(Intent.EXTRA_TITLE));
            result(p,opened.requestCode,Activity.RESULT_CANCELED,null);assertTrue(button(p,title).isEnabled());
        }
        assertEquals(2,BackupController.westernCaptures);assertEquals(1,BackupController.captures);assertEquals(0,WesternImport137.stages);
    }
    @Test public void cancelDiscardsPreparedUsrWithoutCreatingADestination()throws Exception {
        BackupActivity p=page();button(p,"Сохранить western.usr").performClick();ShadowActivity.IntentForResult opened=picker(p);
        CopyFiles155.Prepared prepared=(CopyFiles155.Prepared)field(p,"prepared");assertTrue(prepared.file.isFile());
        result(p,opened.requestCode,Activity.RESULT_CANCELED,null);assertFalse(prepared.file.exists());assertNull(field(p,"prepared"));assertEquals(0,WesternImport137.stages);
    }
    @Test public void selectedUsrDestinationOutsideDefaultFolderReceivesTheOriginalSnapshot()throws Exception {
        BackupActivity p=page();button(p,"Сохранить western.usr").performClick();ShadowActivity.IntentForResult opened=picker(p);
        File chosen=File.createTempFile("chosen155_",".usr",context.getCacheDir());chosen.delete();
        result(p,opened.requestCode,Activity.RESULT_OK,new Intent().setData(Uri.fromFile(chosen)));
        for(int n=0;n<500&&!chosen.isFile();n++){shadowOf(Looper.getMainLooper()).idle();Thread.sleep(10);}ready();
        assertArrayEquals(BackupController.CURRENT,Files.readAllBytes(chosen.toPath()));assertEquals(1,BackupController.westernCaptures);assertEquals(0,WesternImport137.stages);
        chosen.delete();
    }
    @Test public void chosenUsrIsReadAndOnlyAppliedAfterExistingConfirmation()throws Exception {
        BackupActivity p=page();button(p,"Восстановить western.usr").performClick();ShadowActivity.IntentForResult opened=picker(p);
        File chosen=File.createTempFile("any-readable-name155_",".usr",context.getCacheDir());byte[] supplied={71,72,73,74,75};Files.write(chosen.toPath(),supplied);
        result(p,opened.requestCode,Activity.RESULT_OK,new Intent().setData(Uri.fromFile(chosen)));ready();
        assertEquals(0,WesternImport137.stages);AlertDialog dialog=ShadowAlertDialog.getLatestAlertDialog();assertNotNull(dialog);
        dialog.getButton(DialogInterface.BUTTON_POSITIVE).performClick();
        for(int n=0;n<500&&WesternImport137.stages==0;n++){shadowOf(Looper.getMainLooper()).idle();Thread.sleep(10);}
        assertEquals(1,WesternImport137.stages);assertArrayEquals(supplied,WesternImport137.incoming);assertArrayEquals(BackupController.CURRENT,WesternImport137.previous);chosen.delete();
    }
    @Test public void captureFailureNeverOpensADestinationPicker() {
        BackupActivity p=page();BackupController.failCapture=true;button(p,"Сохранить western.usr").performClick();
        assertNull(shadowOf(p).getNextStartedActivityForResult());assertNotNull(ShadowAlertDialog.getLatestAlertDialog());assertTrue(button(p,"Сохранить western.usr").isEnabled());
    }
    private Button share(BackupActivity p,int which){int n=0;for(TextView v:texts(p))if(v instanceof Button&&"Сохранить и отправить".contentEquals(v.getContentDescription()==null?"":v.getContentDescription())){if(n++==which)return (Button)v;}throw new AssertionError();}
    private Intent sent(BackupActivity p)throws Exception{for(int n=0;n<500;n++){shadowOf(Looper.getMainLooper()).idle();Intent i=shadowOf(p).getNextStartedActivity();if(i!=null&&Intent.ACTION_CHOOSER.equals(i.getAction())&&Intent.ACTION_SEND.equals(target(i).getAction()))return i;Thread.sleep(10);}throw new AssertionError("No share chooser");}
    @Test public void threeFormatsShareTheSamePersistentBytesAndReadGrant()throws Exception{
        BackupActivity p=page();shadowOf(p).grantPermissions("android.permission.WRITE_EXTERNAL_STORAGE");
        String[] saves={"Создать полную копию","Сохранить western.usr","Сохранить слова в TXT"};String[] mimes={"application/zip","application/octet-stream","text/plain"};
        for(int kind=0;kind<3;kind++){
            button(p,saves[kind]).performClick();ShadowActivity.IntentForResult opened=picker(p);CopyFiles155.Prepared ordinary=(CopyFiles155.Prepared)field(p,"prepared");byte[] expected=Files.readAllBytes(ordinary.file.toPath());
            result(p,opened.requestCode,Activity.RESULT_CANCELED,null);share(p,kind).performClick();Intent chooser=sent(p);assertEquals(Intent.ACTION_CHOOSER,chooser.getAction());Intent send=target(chooser);
            assertEquals(Intent.ACTION_SEND,send.getAction());assertEquals(mimes[kind],send.getType());assertEquals(Intent.FLAG_GRANT_READ_URI_PERMISSION,send.getFlags()&Intent.FLAG_GRANT_READ_URI_PERMISSION);
            Uri uri=send.getParcelableExtra(Intent.EXTRA_STREAM);assertEquals("content",uri.getScheme());assertEquals(uri,send.getClipData().getItemAt(0).getUri());
            File saved=android.support.v4.content.FileProvider.files.get(uri);assertEquals(BackupLocations155.safeFolder(),saved.getParentFile());assertArrayEquals(expected,Files.readAllBytes(saved.toPath()));
            // Dismissing a generic chooser has no delivery callback; saved copies remain readable.
            ready();assertTrue(saved.isFile());saved.delete();
        }
    }
    @Test public void providerFailureAndDestroyKeepAnAlreadySavedCopy()throws Exception{
        BackupActivity p=page();shadowOf(p).grantPermissions("android.permission.WRITE_EXTERNAL_STORAGE");android.support.v4.content.FileProvider.fail=true;
        File folder=BackupLocations155.safeFolder();Set<String> before=new HashSet<>(Arrays.asList(folder.list()));share(p,1).performClick();ready();
        File saved=null;for(File f:folder.listFiles())if(!before.contains(f.getName())&&f.getName().endsWith(".usr"))saved=f;
        assertNotNull(saved);assertArrayEquals(BackupController.CURRENT,Files.readAllBytes(saved.toPath()));assertNotNull(ShadowAlertDialog.getLatestAlertDialog());
        controller.pause().stop().destroy();controller=null;assertTrue(saved.isFile());saved.delete();
    }
    @Test public void approvedStripHasThreeSeparateAccessibleTargetsAndEqualIconZones(){
        BackupActivity p=page();int rows=0;
        for(TextView value:texts(p))if(value instanceof Button&&"Открыть папку копий".contentEquals(value.getContentDescription()==null?"":value.getContentDescription())){
            LinearLayout row=(LinearLayout)value.getParent();assertEquals(LinearLayout.HORIZONTAL,row.getOrientation());assertEquals(3,row.getChildCount());
            assertEquals("Сохранить",((Button)row.getChildAt(0)).getText());assertEquals("Сохранить и отправить",row.getChildAt(2).getContentDescription());
            assertEquals(row.getChildAt(1).getLayoutParams().width,row.getChildAt(2).getLayoutParams().width);assertTrue(row.getChildAt(1).getLayoutParams().width>=40*context.getResources().getDisplayMetrics().density);rows++;
        }
        assertEquals(3,rows);
    }
    @Test public void folderOpensCopiesWithoutCreatingSnapshotOrEnteringRestore(){
        BackupActivity p=page();Button folder=null;for(TextView value:texts(p))if(value instanceof Button&&"Открыть папку копий".contentEquals(value.getContentDescription()==null?"":value.getContentDescription())){folder=(Button)value;break;}
        assertNotNull(folder);folder.performClick();Intent view=shadowOf(p).getNextStartedActivity();assertEquals(Intent.ACTION_VIEW,view.getAction());assertEquals("vnd.android.document/directory",view.getType());assertEquals("primary:TouchPalG/Backup",view.getData().getLastPathSegment());
        assertEquals(0,BackupController.captures+BackupController.westernCaptures);assertEquals(0,WesternImport137.stages);assertFalse(p.isFinishing());
    }
    @Test public void deniedWritePermissionDoesNotCaptureOrCreateACopy(){
        BackupActivity p=page();shadowOf(p).denyPermissions("android.permission.WRITE_EXTERNAL_STORAGE");share(p,1).performClick();
        p.onRequestPermissionsResult(15503,new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"},new int[]{android.content.pm.PackageManager.PERMISSION_DENIED});
        assertEquals(0,BackupController.westernCaptures);Intent request=shadowOf(p).getNextStartedActivity();assertTrue(request==null||!Intent.ACTION_SEND.equals(request.getAction()));assertTrue(share(p,1).isEnabled());
    }
    @Test public void textImportNeedsConfirmationAndAddsOnlyNewWords()throws Exception{
        BackupActivity p=page();com.cootek.smartinput5.engine.Okinawa core=com.cootek.smartinput5.func.z.core;core.words.add("старое");
        File input=File.createTempFile("incoming155_",".txt",context.getCacheDir());Files.write(input.toPath(),"старое\nновое\nНОВОЕ\nещё\n".getBytes("UTF-8"));
        button(p,"Добавить слова из TXT").performClick();ShadowActivity.IntentForResult opened=picker(p);result(p,opened.requestCode,Activity.RESULT_OK,new Intent().setData(Uri.fromFile(input)));ready();
        assertEquals(0,core.adds);AlertDialog confirm=ShadowAlertDialog.getLatestAlertDialog();confirm.getButton(DialogInterface.BUTTON_NEGATIVE).performClick();assertEquals(0,core.adds);assertFalse(TextRecovery155.pending(context));
        button(p,"Добавить слова из TXT").performClick();opened=picker(p);result(p,opened.requestCode,Activity.RESULT_OK,new Intent().setData(Uri.fromFile(input)));ready();ShadowAlertDialog.getLatestAlertDialog().getButton(DialogInterface.BUTTON_POSITIVE).performClick();ready();
        assertEquals(Arrays.asList("старое","новое","ещё"),core.words);assertEquals(2,core.adds);assertFalse(TextRecovery155.pending(context));assertFalse(com.cootek.smartinput5.engine.Engine.busy);input.delete();
    }
    @Test public void failedTextImportOffersVerifiedPreImportRestoration()throws Exception{
        BackupActivity p=page();com.cootek.smartinput5.engine.Okinawa core=com.cootek.smartinput5.func.z.core;core.words.add("было");core.failAt=1;
        File input=File.createTempFile("failed155_",".txt",context.getCacheDir());Files.write(input.toPath(),"один\nдва\n".getBytes("UTF-8"));
        button(p,"Добавить слова из TXT").performClick();ShadowActivity.IntentForResult opened=picker(p);result(p,opened.requestCode,Activity.RESULT_OK,new Intent().setData(Uri.fromFile(input)));ready();ShadowAlertDialog.getLatestAlertDialog().getButton(DialogInterface.BUTTON_POSITIVE).performClick();ready();
        assertTrue(TextRecovery155.pending(context));assertArrayEquals(BackupController.CURRENT,TextRecovery155.read(context));assertFalse(com.cootek.smartinput5.engine.Engine.busy);
        assertEquals("Восстановить до импорта",ShadowAlertDialog.getLatestAlertDialog().getButton(DialogInterface.BUTTON_POSITIVE).getText());
        ShadowAlertDialog.getLatestAlertDialog().getButton(DialogInterface.BUTTON_POSITIVE).performClick();ready();assertEquals(1,WesternImport137.stages);assertArrayEquals(BackupController.CURRENT,WesternImport137.incoming);assertFalse(TextRecovery155.pending(context));input.delete();
    }
    @Test public void sharedTxtFolderCopiesOnlyMissingTxtAndLeavesAllWorkingUsrBytesAlone()throws Exception {
        File oldFolder=new File(context.getExternalFilesDir(null),"TouchPalG/Backup");assertTrue(oldFolder.isDirectory()||oldFolder.mkdirs());
        String suffix=UUID.randomUUID().toString();File oldTxt=new File(oldFolder,"western_dict_"+suffix+".txt");byte[] oldWords="старое\nслово\n".getBytes("UTF-8");Files.write(oldTxt.toPath(),oldWords);
        File workingUsr=new File(oldFolder.getParentFile(),"western.usr");byte[] live={1,2,3,4,5};Files.write(workingUsr.toPath(),live);
        final File[] result={null};Thread worker=new Thread(()->result[0]=BackupLocations155.textDirectory(context));worker.start();worker.join();
        assertEquals(new File(Environment.getExternalStorageDirectory(),"TouchPalG/Backup").getCanonicalFile(),result[0].getCanonicalFile());
        assertFalse(result[0].getPath().contains("Android/data"));File copied=new File(result[0],oldTxt.getName());assertArrayEquals(oldWords,Files.readAllBytes(copied.toPath()));
        byte[] newer="новые слова\n".getBytes("UTF-8");Files.write(copied.toPath(),newer);Thread repeat=new Thread(()->BackupLocations155.textDirectory(context));repeat.start();repeat.join();
        assertArrayEquals(newer,Files.readAllBytes(copied.toPath()));assertArrayEquals(oldWords,Files.readAllBytes(oldTxt.toPath()));assertArrayEquals(live,Files.readAllBytes(workingUsr.toPath()));
        copied.delete();oldTxt.delete();workingUsr.delete();
    }
    @Test public void captionsStayTwoLinesAndPathsWrapWithoutShrinking()throws Exception {
        ShadowEnvironment.setExternalStorageDirectory(java.nio.file.Paths.get("/storage/emulated/0"));BackupActivity p=page();View root=p.findViewById(android.R.id.content);root.measure(View.MeasureSpec.makeMeasureSpec(591,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(1200,View.MeasureSpec.EXACTLY));root.layout(0,0,591,1200);
        TextView path=text(p,BackupLocations155.folder().getPath());assertNull(path.getEllipsize());assertEquals(14*context.getResources().getDisplayMetrics().scaledDensity,path.getTextSize(),.1);
        for(TextView t:texts(p))if(!(t instanceof Button)&&t.getMaxLines()==2){assertTrue(t.getLineCount()<=2);if(t.getLayout()!=null)for(int line=0;line<t.getLineCount();line++)assertEquals(t.getText().toString(),0,t.getLayout().getEllipsisCount(line));}
        LinearLayout content=(LinearLayout)((ScrollView)((ViewGroup)root).getChildAt(0)).getChildAt(0);int height=0;
        for(int n=0;n<content.getChildCount();n++){View v=content.getChildAt(n);v.measure(View.MeasureSpec.makeMeasureSpec(531,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(0,View.MeasureSpec.UNSPECIFIED));height+=v.getMeasuredHeight()+20;}
        content.measure(View.MeasureSpec.makeMeasureSpec(591,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(height,View.MeasureSpec.AT_MOST));content.layout(0,0,591,content.getMeasuredHeight());
        Bitmap bitmap=Bitmap.createBitmap(591,content.getHeight(),Bitmap.Config.ARGB_8888);Canvas canvas=new Canvas(bitmap);canvas.drawColor(0xff222222);content.draw(canvas);
        File output=new File("../../research/framework-capture/backup156-dark.png");output.getParentFile().mkdirs();try(FileOutputStream stream=new FileOutputStream(output)){bitmap.compress(Bitmap.CompressFormat.PNG,100,stream);}bitmap.recycle();
    }
}
