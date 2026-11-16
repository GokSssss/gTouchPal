package com.cootek.smartinput5.settings;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.*;
import android.preference.*;
import android.view.*;
import android.widget.*;
import com.cootek.smartinput5.func.*;
import java.util.*;
import org.junit.*;
import org.junit.runner.RunWith;
import org.robolectric.*;
import org.robolectric.android.controller.ActivityController;
import org.robolectric.annotation.*;
import org.robolectric.shadows.ShadowAlertDialog;
import static org.junit.Assert.*;
import static org.robolectric.Shadows.shadowOf;

/** Actual Android windows/preferences; installed-skin manager remains an explicit native double. */
@RunWith(RobolectricTestRunner.class) @Config(sdk=34,manifest=Config.NONE,qualifiers="ru-w394dp-h853dp-hdpi")
@LooperMode(LooperMode.Mode.PAUSED)
public class Settings156Test {
    ActivityController<?> controller;
    public static class MainPage extends PreferenceActivity {
        public void onCreate(Bundle b){super.onCreate(b);setPreferenceScreen(getPreferenceManager().createPreferenceScreen(this));for(String key:new String[]{"option_general_screen","option_about_screen"}){Preference p=new Preference(this);p.setKey(key);p.setTitle(key);getPreferenceScreen().addPreference(p);}}
    }
    @Before public void reset(){com.cootek.smartinput5.engine.Settings.reset();com.cootek.smartinput5.engine.Engine.initialized=true;z.skins=new i0();add("default","По умолчанию",false);add("dark","Flat gate white",false);com.cootek.smartinput5.engine.Settings.getInstance().setStringSetting(0x54,"dark");}
    @After public void close(){if(controller!=null)controller.pause().stop().destroy();}
    private h0 add(String id,String title,boolean incompatible){h0 p=new h0();p.b=id;p.g=title;p.i=incompatible;z.skins.installed.add(p);return p;}
    private MainPage main(){ActivityController<MainPage> c=Robolectric.buildActivity(MainPage.class).setup();controller=c;return c.get();}
    private AlertDialog themes(MainPage page){SettingsMenu132.install(page);Preference p=page.findPreference("tp_keyboard_theme132");assertNull(p.getIntent());assertTrue(p.getOnPreferenceClickListener().onPreferenceClick(p));return ShadowAlertDialog.getLatestAlertDialog();}
    @Test public void themeClickKeepsSettingsOpenAndSelectsThroughNativeManager(){
        MainPage p=main();AlertDialog dialog=themes(p);assertTrue(dialog.isShowing());assertFalse(p.isFinishing());assertNull(shadowOf(p).getNextStartedActivity());
        ListView list=dialog.getListView();assertEquals(1,list.getCheckedItemPosition());assertEquals("По умолчанию",list.getAdapter().getItem(0));
        list.performItemClick(null,0,0);assertEquals("default",com.cootek.smartinput5.engine.Settings.getInstance().getStringSetting(0x54));assertEquals(1,z.skins.applied);assertFalse(dialog.isShowing());assertFalse(p.isFinishing());assertNull(shadowOf(p).getNextStartedActivity());
    }
    @Test public void cancellingThemeOrNativeRefusalPreservesCurrentSelection(){
        MainPage p=main();AlertDialog dialog=themes(p);dialog.getButton(DialogInterface.BUTTON_NEGATIVE).performClick();assertEquals(0,z.skins.applied);assertEquals("dark",com.cootek.smartinput5.engine.Settings.getInstance().getStringSetting(0x54));
        z.skins.accept=false;dialog=themes(p);dialog.getListView().performItemClick(null,0,0);assertTrue(dialog.isShowing());assertEquals(1,dialog.getListView().getCheckedItemPosition());assertEquals(0,z.skins.applied);assertEquals("dark",com.cootek.smartinput5.engine.Settings.getInstance().getStringSetting(0x54));
    }
    @Test public void staleThemeManagerRefusesWithoutApplyingToAnotherInstance(){
        MainPage p=main();AlertDialog dialog=themes(p);i0 previous=z.skins;z.skins=new i0();dialog.getListView().performItemClick(null,0,0);assertEquals(0,previous.applied);assertEquals(0,z.skins.applied);assertTrue(dialog.isShowing());
    }
    @Test public void themeListDeduplicatesAndSkipsIncompatibleWithoutMutatingNativeList(){
        MainPage p=main();add("dark","Duplicate",false);add("bad","Несовместимая",true);int original=z.skins.installed.size();ArrayList<ThemePicker156.Choice> values=ThemePicker156.choices(p,z.skins);assertEquals(2,values.size());assertEquals(original,z.skins.installed.size());assertEquals("Flat gate white",values.get(1).title);
    }
    @Test public void additionalModelIsArrangedBeforeAnyPostedFrameAndResumeKeepsAdapter(){
        ActivityController<Settings153Test.SmartPage> c=Robolectric.buildActivity(Settings153Test.SmartPage.class).setup();controller=c;Settings153Test.SmartPage p=c.get();Preference original=p.findPreference("option_predict");
        CompactSettings.install(p);assertNotNull(p.findPreference(SmartInput153.WAVE));assertNotNull(p.findPreference(SmartInput153.GENERAL));assertSame(original,p.findPreference("option_predict"));
        int count=p.getPreferenceScreen().getPreferenceCount();shadowOf(Looper.getMainLooper()).idle();p.getWindow().getDecorView().getViewTreeObserver().dispatchOnPreDraw();
        ListAdapter adapter=p.getListView().getAdapter();assertTrue(adapter instanceof WrapperListAdapter);CompactSettings.install(p);assertSame(adapter,p.getListView().getAdapter());shadowOf(Looper.getMainLooper()).idle();assertEquals(count,p.getPreferenceScreen().getPreferenceCount());assertSame(original,p.findPreference("option_predict"));
    }
    @Test public void returningSettingsWindowHidesImeAndKeepsItsResizePolicy(){
        MainPage p=main();int resize=WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE;p.getWindow().setSoftInputMode(resize|WindowManager.LayoutParams.SOFT_INPUT_STATE_VISIBLE);CompactSettings.install(p);
        int mode=p.getWindow().getAttributes().softInputMode;assertEquals(WindowManager.LayoutParams.SOFT_INPUT_STATE_ALWAYS_HIDDEN,mode&WindowManager.LayoutParams.SOFT_INPUT_MASK_STATE);assertEquals(resize,mode&WindowManager.LayoutParams.SOFT_INPUT_MASK_ADJUST);
        p.getWindow().setSoftInputMode(resize|WindowManager.LayoutParams.SOFT_INPUT_STATE_VISIBLE);CompactSettings.install(p);assertEquals(WindowManager.LayoutParams.SOFT_INPUT_STATE_ALWAYS_HIDDEN,p.getWindow().getAttributes().softInputMode&WindowManager.LayoutParams.SOFT_INPUT_MASK_STATE);
    }
}
