package com.cootek.smartinput5.settings;
import android.app.Activity;
import android.content.*;
import android.content.pm.ActivityInfo;
import android.content.res.Configuration;
import android.os.*;
import android.preference.*;
import android.view.*;
import android.view.inputmethod.*;
import android.widget.*;
import java.util.*;
import org.junit.*;
import org.junit.runner.RunWith;
import org.robolectric.*;
import org.robolectric.annotation.*;
import org.robolectric.shadows.ShadowInputMethodManager;
import static org.junit.Assert.*;
import static org.robolectric.Shadows.shadowOf;

/** Framework preferences/Android selectors; native Settings/geometry are explicit doubles. */
@RunWith(RobolectricTestRunner.class)
@Config(sdk=34,manifest=Config.NONE,shadows={Settings152Test.Picker.class})
@LooperMode(LooperMode.Mode.PAUSED)
public class Settings152Test {
 @Implements(InputMethodManager.class) public static class Picker extends ShadowInputMethodManager {
  static int calls;
  @Implementation protected void showInputMethodPicker(){calls++;}
 }
 public static class Page extends PreferenceActivity {
  public void onCreate(Bundle b){super.onCreate(b);setPreferenceScreen(getPreferenceManager().createPreferenceScreen(this));
   PreferenceCategory block=new PreferenceCategory(this);block.setKey("tp_system_settings_block");getPreferenceScreen().addPreference(block);
   Preference anchor=new Preference(this);anchor.setKey("tp_system_keyboard_settings");anchor.setTitle("Системные настройки клавиатуры");block.addPreference(anchor);
   Preference tail=new Preference(this);tail.setKey("tail");tail.setTitle("После");block.addPreference(tail);
  }
 }
 @Before public void reset(){com.cootek.smartinput5.engine.Settings.reset();Picker.calls=0;}
 private Page page(){Page p=Robolectric.buildActivity(Page.class).setup().get();CompactSettings.install(p);shadowOf(Looper.getMainLooper()).idle();return p;}
 private void enabled(Page p,boolean value){
  InputMethodManager manager=(InputMethodManager)p.getSystemService(Context.INPUT_METHOD_SERVICE);
  shadowOf(manager).setEnabledInputMethodInfoList(value?Arrays.asList(new InputMethodInfo(p.getPackageName(),"com.cootek.smartinput5.TouchPalIME","TouchPal",null)):Collections.<InputMethodInfo>emptyList());
 }
 private View row(Page p,String key){ListAdapter a=p.getListView().getAdapter();for(int n=0;n<a.getCount();n++)if(key.equals(((Preference)a.getItem(n)).getKey()))return a.getView(n,null,p.getListView());throw new AssertionError(key);}
 private void click(Page p,String key){Preference preference=p.findPreference(key);assertTrue(preference.getOnPreferenceClickListener().onPreferenceClick(preference));}
 @Test public void inactiveSettingsOpenWithoutActivationAndRowIsUniqueImmediatelyBelowSystem(){
  Page p=page();enabled(p,false);for(int n=0;n<4;n++){CompactSettings.install(p);shadowOf(Looper.getMainLooper()).idle();}
  assertFalse(p.isFinishing());assertNull(shadowOf(p).getNextStartedActivity());assertEquals(0,Picker.calls);
  PreferenceGroup block=(PreferenceGroup)p.findPreference("tp_system_settings_block");assertEquals(3,block.getPreferenceCount());
  assertEquals("tp_system_keyboard_settings",block.getPreference(0).getKey());assertEquals(KeyboardActivation152.KEY,block.getPreference(1).getKey());
  assertEquals("Включить TouchPal",p.findPreference(KeyboardActivation152.KEY).getTitle());
  assertEquals(KeyboardActivation152.RED,((TextView)row(p,KeyboardActivation152.KEY).findViewById(android.R.id.title)).getCurrentTextColor());
 }
 @Test public void explicitDisabledClickOpensAndroidEnableScreen(){
  Page p=page();enabled(p,false);click(p,KeyboardActivation152.KEY);
  assertEquals(android.provider.Settings.ACTION_INPUT_METHOD_SETTINGS,shadowOf(p).getNextStartedActivity().getAction());assertEquals(0,Picker.calls);
 }
 @Test public void enabledButUnselectedClickOpensPickerAndReturningSelectedRestoresNormalColour(){
  Page p=page();enabled(p,true);
  android.provider.Settings.Secure.putString(p.getContentResolver(),android.provider.Settings.Secure.DEFAULT_INPUT_METHOD,"other/.Keyboard");
  assertFalse(KeyboardActivation152.active(p));click(p,KeyboardActivation152.KEY);assertEquals(1,Picker.calls);assertNull(shadowOf(p).getNextStartedActivity());
  String selected=new ComponentName(p.getPackageName(),"com.cootek.smartinput5.TouchPalIME").flattenToShortString();
  android.provider.Settings.Secure.putString(p.getContentResolver(),android.provider.Settings.Secure.DEFAULT_INPUT_METHOD,selected);
  CompactSettings.install(p);shadowOf(Looper.getMainLooper()).idle();assertTrue(KeyboardActivation152.active(p));
  assertNotEquals(KeyboardActivation152.RED,((TextView)row(p,KeyboardActivation152.KEY).findViewById(android.R.id.title)).getCurrentTextColor());
  enabled(p,false);CompactSettings.install(p);shadowOf(Looper.getMainLooper()).idle();assertFalse(KeyboardActivation152.active(p));
  assertEquals(KeyboardActivation152.RED,((TextView)row(p,KeyboardActivation152.KEY).findViewById(android.R.id.title)).getCurrentTextColor());
 }
 @Test public void landscapeDefaultIs550AndDoesNotReplacePortraitOrSavedLandscape(){
  Context context=RuntimeEnvironment.getApplication();com.cootek.smartinput5.engine.Settings settings=com.cootek.smartinput5.engine.Settings.getInstance();
  settings.setIntSetting(0x102,900,-1,null,new com.cootek.smartinput5.engine.Config(1),true);
  LandscapeHeight152.seed(context);
  assertEquals(450,settings.getIntSetting(0x102,-1,null,new com.cootek.smartinput5.engine.Config(2)));
  assertEquals(900,settings.getIntSetting(0x102,-1,null,new com.cootek.smartinput5.engine.Config(1)));
  assertEquals(550,FreshDefaults137.pixels(SizeModel.HEIGHT_LANDSCAPE));
  settings.setIntSetting(0x102,510,-1,null,new com.cootek.smartinput5.engine.Config(2),true);
  int before=com.cootek.smartinput5.engine.Settings.writes;LandscapeHeight152.seed(context);assertEquals(before,com.cootek.smartinput5.engine.Settings.writes);
  assertEquals(510,new SizeRuntimeStore(context,SizeModel.HEIGHT_LANDSCAPE).read(SizeModel.HEIGHT_LANDSCAPE));
 }
 @Test public void landscapeDefaultAccountsForNumberRowAndWindowMode(){
  Context context=RuntimeEnvironment.getApplication();com.cootek.smartinput5.engine.Settings settings=com.cootek.smartinput5.engine.Settings.getInstance();
  for(int window:new int[]{0,2,4}){com.cootek.smartinput5.engine.Settings.reset();com.cootek.smartinput5.engine.Settings.numberRow=true;
   settings.setIntSetting(0x239,window,-1,null,new com.cootek.smartinput5.engine.Config(2),true);LandscapeHeight152.seed(context);
   int raw=new SizeRuntimeStore(context,SizeModel.HEIGHT_LANDSCAPE).read(SizeModel.HEIGHT_LANDSCAPE);assertEquals(375,raw);assertEquals(550,(int)(raw*1.2f)+100);
  }
 }
 @Test public void heightEntriesStayTogetherInGeneralAndRepeatedMenuOpeningDoesNotDuplicate(){
  Page p=page();PreferenceCategory general=new PreferenceCategory(p);general.setKey("general");p.getPreferenceScreen().addPreference(general);
  SizeSettingsPage.configure(p);Preference portrait=p.findPreference(SizeModel.preferenceKey(SizeModel.HEIGHT));
  p.getPreferenceScreen().removePreference(portrait);general.addPreference(portrait);
  for(int n=0;n<3;n++){SizeSettingsPage.configure(p);CompactSettings.install(p);shadowOf(Looper.getMainLooper()).idle();}
  assertEquals(2,general.getPreferenceCount());assertSame(portrait,general.getPreference(0));
  Preference land=general.getPreference(1);assertEquals(SizeModel.preferenceKey(SizeModel.HEIGHT_LANDSCAPE),land.getKey());
  assertEquals("Высота клавиатуры: портрет",portrait.getTitle());assertEquals("Высота клавиатуры: альбом",land.getTitle());
  assertEquals("550 px (по умолчанию)",land.getSummary());
  assertTrue(land.getOnPreferenceClickListener().onPreferenceClick(land));
  Intent opened=shadowOf(p).getNextStartedActivity();assertEquals(SizeModel.HEIGHT_LANDSCAPE,opened.getIntExtra(SizeSettingsPage.EXTRA_MODE,-1));
 }
 @Test public void independentPagesUseTheSamePresetsDragAndSaveOnlyTheirOrientation(){
  for(int mode:new int[]{SizeModel.HEIGHT,SizeModel.HEIGHT_LANDSCAPE}){
   String qualifier=mode==SizeModel.HEIGHT?"port":"land";RuntimeEnvironment.setQualifiers(qualifier);
   Activity p=Robolectric.buildActivity(Activity.class,new Intent().putExtra(SizeSettingsPage.EXTRA_MODE,mode)).setup().get();
   assertTrue(SizeSettingsPage.create(p));shadowOf(Looper.getMainLooper()).idle();
   assertEquals(mode==SizeModel.HEIGHT?ActivityInfo.SCREEN_ORIENTATION_SENSOR_PORTRAIT:ActivityInfo.SCREEN_ORIENTATION_SENSOR_LANDSCAPE,p.getRequestedOrientation());
   View content=p.findViewById(android.R.id.content);TextView defaults=findButton(content,FreshDefaults137.pixels(mode));assertNotNull(defaults);assertTrue(defaults.getContentDescription().toString().contains("По умолчанию"));
   assertTrue(defaults.performClick());int afterDefault=new SizeRuntimeStore(p,mode).read(mode);
   assertEquals(FreshDefaults137.pixels(mode),afterDefault+100);
   SizeDrag134 drag=findDrag(content);assertNotNull(drag);assertEquals(5,drag.listener.step());assertTrue(drag.listener.available());
   int before=com.cootek.smartinput5.engine.Settings.writes;drag.listener.change(600,false);assertEquals(before,com.cootek.smartinput5.engine.Settings.writes);
   drag.listener.change(600,true);assertEquals(500,new SizeRuntimeStore(p,mode).read(mode));
   SizeSettingsPage.pause(p);SizeSettingsPage.destroy(p);p.finish();assertTrue(p.isFinishing());
  }
 }
 private static TextView findButton(View v,int value){if(v instanceof TextView && Integer.valueOf(value).equals(v.getTag()))return (TextView)v;if(v instanceof ViewGroup){ViewGroup g=(ViewGroup)v;for(int i=0;i<g.getChildCount();i++){TextView b=findButton(g.getChildAt(i),value);if(b!=null)return b;}}return null;}
 private static SizeDrag134 findDrag(View v){if(v instanceof SizeDrag134)return (SizeDrag134)v;if(v instanceof ViewGroup){ViewGroup g=(ViewGroup)v;for(int i=0;i<g.getChildCount();i++){SizeDrag134 b=findDrag(g.getChildAt(i));if(b!=null)return b;}}return null;}
}
