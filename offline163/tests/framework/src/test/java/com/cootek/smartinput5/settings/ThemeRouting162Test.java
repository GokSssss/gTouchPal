package com.cootek.smartinput5.settings;
import android.app.*;
import android.content.*;
import android.preference.*;
import org.junit.*;
import org.junit.runner.RunWith;
import org.robolectric.*;
import org.robolectric.annotation.*;
import org.robolectric.android.controller.ActivityController;
import org.robolectric.shadows.ShadowAlertDialog;
import static org.junit.Assert.*;
import static org.robolectric.Shadows.shadowOf;

@RunWith(RobolectricTestRunner.class)
@Config(sdk=34,manifest=Config.NONE)
public class ThemeRouting162Test {
 public static class SettingsPage extends PreferenceActivity {}
 ActivityController<SettingsPage> controller;
 PreferenceActivity page;
 @Before public void setup(){controller=Robolectric.buildActivity(SettingsPage.class).setup();page=controller.get();page.setPreferenceScreen(page.getPreferenceManager().createPreferenceScreen(page));}
 @After public void close(){if(controller!=null)controller.pause().stop().destroy();}
 Preference item(PreferenceGroup parent,String key){Preference value=new Preference(page);value.setKey(key);value.setTitle(key);parent.addPreference(value);return value;}
 PreferenceCategory additions(){PreferenceCategory group=new PreferenceCategory(page);group.setKey("tp_additions");page.getPreferenceScreen().addPreference(group);return group;}
 void mainModel(){item(page.getPreferenceScreen(),"option_general_screen");item(page.getPreferenceScreen(),"option_about_screen");}
 @Test public void directRouteUsesOriginalInstalledPageWithoutDialogOrUrl(){
  ThemePicker156.open(page);Intent intent=shadowOf(page).getNextStartedActivity();assertNotNull(intent);
  assertEquals("com.cootek.smartinput5.ui.skinappshop.StoreActivity",intent.getComponent().getClassName());assertEquals(page.getPackageName(),intent.getComponent().getPackageName());
  assertEquals(11,intent.getIntExtra("StoreActivity.EXTRA_START_PAGE",-1));assertTrue(com.cootek.smartinput5.pluginwidget.t.clicks>0);assertEquals(1,intent.getExtras().size());assertNull(intent.getData());assertNull(intent.getAction());assertEquals(0,intent.getFlags());assertNull(ShadowAlertDialog.getLatestAlertDialog());assertFalse(page.isFinishing());
 }
 @Test public void existingThemeMovesToFirstAdditionAndRepeatedBindingIsIdempotent(){
  mainModel();PreferenceCategory group=additions();item(group,"option_dark_theme");item(group,"tp_physical_keyboard");Preference theme=item(group,"tp_keyboard_theme132");
  SettingsIcons149.configureRoot(page);assertSame(theme,group.getPreference(0));assertEquals("Дополнения TouchPalG",group.getTitle());assertEquals("TouchPalG",page.getTitle());
  int count=group.getPreferenceCount();SettingsIcons149.configureRoot(page);assertEquals(count,group.getPreferenceCount());assertSame(theme,group.getPreference(0));
  assertTrue(theme.getOnPreferenceClickListener().onPreferenceClick(theme));assertEquals("com.cootek.smartinput5.ui.skinappshop.StoreActivity",shadowOf(page).getNextStartedActivity().getComponent().getClassName());
 }
 @Test public void rootThemeMigratesIntoAdditionsWithoutDuplicate(){
  mainModel();PreferenceCategory group=additions();item(group,"option_dark_theme");Preference theme=item(page.getPreferenceScreen(),"tp_keyboard_theme132");
  SettingsIcons149.configureRoot(page);assertSame(theme,group.getPreference(0));assertEquals(2,group.getPreferenceCount());int copies=0;for(int i=0;i<page.getPreferenceScreen().getPreferenceCount();i++)if(page.getPreferenceScreen().getPreference(i)==theme)copies++;assertEquals(0,copies);
 }
 @Test public void nonMainPageIsNotGivenAThemeEntry(){item(page.getPreferenceScreen(),"other");SettingsIcons149.configureRoot(page);assertNull(page.findPreference("tp_keyboard_theme132"));}
 @Test public void finishingSettingsDoNotStartAnotherActivity(){page.finish();ThemePicker156.open(page);assertNull(shadowOf(page).getNextStartedActivity());}
}
