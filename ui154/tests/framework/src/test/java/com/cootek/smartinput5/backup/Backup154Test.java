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
public class Backup154Test {
    public static class SettingsPage extends PreferenceActivity {
        @Override public void onCreate(Bundle state){super.onCreate(state);setPreferenceScreen(getPreferenceManager().createPreferenceScreen(this));PreferenceCategory additions=new PreferenceCategory(this);additions.setKey("tp_additions");getPreferenceScreen().addPreference(additions);}
    }
    ActivityController<BackupActivity> controller;
    Context context;
    @Before public void before() {
        context=RuntimeEnvironment.getApplication();
        PreferenceManager.getDefaultSharedPreferences(context).edit().clear().putBoolean("option_dark_theme",true).commit();
        ShadowEnvironment.setExternalStorageState(Environment.MEDIA_MOUNTED);
        BackupController.reset();WesternImport137.reset();
    }
    @After public void after(){if(controller!=null)controller.pause().stop().destroy();}
    private BackupActivity page(){controller=Robolectric.buildActivity(BackupActivity.class).setup();shadowOf(Looper.getMainLooper()).idle();return controller.get();}
    private void texts(View view,List<TextView> out){if(view instanceof TextView)out.add((TextView)view);if(view instanceof ViewGroup){ViewGroup g=(ViewGroup)view;for(int n=0;n<g.getChildCount();n++)texts(g.getChildAt(n),out);}}
    private List<TextView> texts(BackupActivity page){List<TextView> result=new ArrayList<>();texts(page.findViewById(android.R.id.content),result);return result;}
    private Button button(BackupActivity page,String title){for(TextView t:texts(page))if(t instanceof Button&&title.equals(t.getText().toString()))return (Button)t;throw new AssertionError(title);}
    private TextView text(BackupActivity page,String title){for(TextView t:texts(page))if(title.equals(t.getText().toString()))return t;throw new AssertionError(title);}
    private void result(BackupActivity p,int request,int code,Intent intent)throws Exception{Method m=BackupActivity.class.getDeclaredMethod("onActivityResult",int.class,int.class,Intent.class);m.setAccessible(true);m.invoke(p,request,code,intent);}
    private ShadowActivity.IntentForResult picker(BackupActivity p)throws Exception{
        for(int n=0;n<500;n++){shadowOf(Looper.getMainLooper()).idle();ShadowActivity.IntentForResult r=shadowOf(p).getNextStartedActivityForResult();if(r!=null)return r;Thread.sleep(10);}throw new AssertionError("Picker did not open");
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
    @Test public void fourSectionsReplaceDuplicateBlockAndTextToolOpensItsExistingScreen() {
        BackupActivity p=page();assertEquals("Резервная копия и восстановление",p.getTitle());
        for(String title:new String[]{"Полная копия","Пользовательский словарь","Слова в текстовом файле","Перенос старых данных"})assertNotNull(text(p,title));
        int buttons=0;for(TextView t:texts(p))if(t instanceof Button){buttons++;assertFalse(t.getText().toString().contains("папку Backup"));assertFalse(t.getText().toString().contains("исправить"));}
        assertEquals(6,buttons);assertEquals(0,BackupController.captures+BackupController.westernCaptures);
        button(p,"Импорт-экспорт словаря").performClick();Intent started=shadowOf(p).getNextStartedActivity();assertEquals("com.cootek.smartinput5.ui.settings.DictionaryEditorActivity",started.getComponent().getClassName());
    }
    @Test public void rawAndZipPickersAllStartInTheSameSharedFolderAndCanBeCancelled()throws Exception {
        BackupActivity p=page();
        for(String title:new String[]{"Сохранить western.usr","Восстановить western.usr","Создать полную копию","Восстановить полную копию"}){
            button(p,title).performClick();ShadowActivity.IntentForResult opened=picker(p);Intent intent=target(opened.intent);
            Uri initial=intent.getParcelableExtra("android.provider.extra.INITIAL_URI");assertNotNull(title,initial);
            assertEquals("primary:TouchPalG/Backup",initial.getLastPathSegment());
            assertFalse(initial.toString().contains("Android%2Fdata"));assertFalse(initial.toString().contains("Download"));
            if(title.equals("Сохранить western.usr"))assertEquals("western.usr",intent.getStringExtra(Intent.EXTRA_TITLE));
            result(p,opened.requestCode,Activity.RESULT_CANCELED,null);assertTrue(button(p,title).isEnabled());
        }
        assertEquals(1,BackupController.westernCaptures);assertEquals(1,BackupController.captures);assertEquals(0,WesternImport137.stages);
    }
    @Test public void cancelDiscardsPreparedUsrWithoutCreatingADestination()throws Exception {
        BackupActivity p=page();button(p,"Сохранить western.usr").performClick();ShadowActivity.IntentForResult opened=picker(p);
        WesternExport135.Prepared prepared=(WesternExport135.Prepared)field(p,"preparedWestern");assertTrue(prepared.file.isFile());
        result(p,opened.requestCode,Activity.RESULT_CANCELED,null);assertFalse(prepared.file.exists());assertNull(field(p,"preparedWestern"));assertEquals(0,WesternImport137.stages);
    }
    @Test public void selectedUsrDestinationOutsideDefaultFolderReceivesTheOriginalSnapshot()throws Exception {
        BackupActivity p=page();button(p,"Сохранить western.usr").performClick();ShadowActivity.IntentForResult opened=picker(p);
        File chosen=File.createTempFile("chosen154_",".usr",context.getCacheDir());chosen.delete();
        result(p,opened.requestCode,Activity.RESULT_OK,new Intent().setData(Uri.fromFile(chosen)));
        for(int n=0;n<500&&!chosen.isFile();n++){shadowOf(Looper.getMainLooper()).idle();Thread.sleep(10);}ready();
        assertArrayEquals(BackupController.CURRENT,Files.readAllBytes(chosen.toPath()));assertEquals(1,BackupController.westernCaptures);assertEquals(0,WesternImport137.stages);
        chosen.delete();
    }
    @Test public void chosenUsrIsReadAndOnlyAppliedAfterExistingConfirmation()throws Exception {
        BackupActivity p=page();button(p,"Восстановить western.usr").performClick();ShadowActivity.IntentForResult opened=picker(p);
        File chosen=File.createTempFile("any-readable-name154_",".usr",context.getCacheDir());byte[] supplied={71,72,73,74,75};Files.write(chosen.toPath(),supplied);
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
    @Test public void sharedTxtFolderCopiesOnlyMissingTxtAndLeavesAllWorkingUsrBytesAlone()throws Exception {
        File oldFolder=new File(context.getExternalFilesDir(null),"TouchPalG/Backup");assertTrue(oldFolder.isDirectory()||oldFolder.mkdirs());
        String suffix=UUID.randomUUID().toString();File oldTxt=new File(oldFolder,"western_dict_"+suffix+".txt");byte[] oldWords="старое\nслово\n".getBytes("UTF-8");Files.write(oldTxt.toPath(),oldWords);
        File workingUsr=new File(oldFolder.getParentFile(),"western.usr");byte[] live={1,2,3,4,5};Files.write(workingUsr.toPath(),live);
        final File[] result={null};Thread worker=new Thread(()->result[0]=BackupLocations154.textDirectory(context));worker.start();worker.join();
        assertEquals(new File(Environment.getExternalStorageDirectory(),"TouchPalG/Backup").getCanonicalFile(),result[0].getCanonicalFile());
        assertFalse(result[0].getPath().contains("Android/data"));File copied=new File(result[0],oldTxt.getName());assertArrayEquals(oldWords,Files.readAllBytes(copied.toPath()));
        byte[] newer="новые слова\n".getBytes("UTF-8");Files.write(copied.toPath(),newer);Thread repeat=new Thread(()->BackupLocations154.textDirectory(context));repeat.start();repeat.join();
        assertArrayEquals(newer,Files.readAllBytes(copied.toPath()));assertArrayEquals(oldWords,Files.readAllBytes(oldTxt.toPath()));assertArrayEquals(live,Files.readAllBytes(workingUsr.toPath()));
        copied.delete();oldTxt.delete();workingUsr.delete();
    }
    @Test public void captionsStayTwoLinesAndPathsWrapWithoutShrinking()throws Exception {
        BackupActivity p=page();View root=p.findViewById(android.R.id.content);root.measure(View.MeasureSpec.makeMeasureSpec(591,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(1200,View.MeasureSpec.EXACTLY));root.layout(0,0,591,1200);
        TextView path=text(p,BackupLocations154.folder().getPath());assertNull(path.getEllipsize());assertEquals(14*context.getResources().getDisplayMetrics().scaledDensity,path.getTextSize(),.1);
        for(TextView t:texts(p))if(!(t instanceof Button)&&t.getMaxLines()==2){assertTrue(t.getLineCount()<=2);if(t.getLayout()!=null)for(int line=0;line<t.getLineCount();line++)assertEquals(t.getText().toString(),0,t.getLayout().getEllipsisCount(line));}
        LinearLayout content=(LinearLayout)((ScrollView)((ViewGroup)root).getChildAt(0)).getChildAt(0);int height=0;
        for(int n=0;n<content.getChildCount();n++){View v=content.getChildAt(n);v.measure(View.MeasureSpec.makeMeasureSpec(531,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(0,View.MeasureSpec.UNSPECIFIED));height+=v.getMeasuredHeight()+20;}
        content.measure(View.MeasureSpec.makeMeasureSpec(591,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(height,View.MeasureSpec.AT_MOST));content.layout(0,0,591,content.getMeasuredHeight());
        Bitmap bitmap=Bitmap.createBitmap(591,content.getHeight(),Bitmap.Config.ARGB_8888);Canvas canvas=new Canvas(bitmap);canvas.drawColor(0xff222222);content.draw(canvas);
        File output=new File("../../research/framework-capture/backup154-dark.png");output.getParentFile().mkdirs();try(FileOutputStream stream=new FileOutputStream(output)){bitmap.compress(Bitmap.CompressFormat.PNG,100,stream);}bitmap.recycle();
    }
}
