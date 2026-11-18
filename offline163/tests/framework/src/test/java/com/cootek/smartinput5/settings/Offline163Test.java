package com.cootek.smartinput5.settings;
import android.app.*;
import android.content.*;
import android.net.Uri;
import android.os.Bundle;
import android.view.*;
import android.widget.*;
import org.junit.*;
import org.junit.runner.RunWith;
import org.robolectric.*;
import org.robolectric.annotation.*;
import static org.junit.Assert.*;
import static org.robolectric.Shadows.shadowOf;

@RunWith(RobolectricTestRunner.class) @Config(sdk=34,manifest=Config.NONE)
public class Offline163Test {
 Activity page;
 @Before public void setup(){page=Robolectric.buildActivity(Activity.class).setup().get();}
 @Test public void themeRouteUsesNativeLocalStoreAndCannotCarryShopUrl(){
  Intent old=new Intent("com.cootek.smartinput5.ui.settings.MainEntranceActivity.action.HOTWORD",Uri.parse("https://invalid.invalid"));old.setClassName(page.getPackageName(),Offline163.THEMES);old.putExtra("StoreActivity.EXTRA_START_PAGE",9);old.putExtra("StoreActivity.EXTRA_DETAIL_DETAIL_URL","https://invalid.invalid");
  Intent local=Offline163.local(page,old);assertEquals(Offline163.THEMES,local.getComponent().getClassName());assertEquals(11,local.getIntExtra("StoreActivity.EXTRA_START_PAGE",0));assertNull(local.getData());assertNull(local.getAction());assertEquals(1,local.getExtras().size());assertEquals(9,old.getIntExtra("StoreActivity.EXTRA_START_PAGE",0));
 }
 @Test public void nonActivityThemeRouteHasNewTask(){Intent i=Offline163.themeIntent(RuntimeEnvironment.getApplication());assertTrue((i.getFlags()&Intent.FLAG_ACTIVITY_NEW_TASK)!=0);}
 @Test public void deprecatedScreensCannotBeLaunched(){
  for(String name:new String[]{"com.cootek.smartinput5.func.mainentrance.MainEntranceActivity","com.cootek.smartinput5.func.WebPageLoader","com.cootek.smartinput5.presentations.PresentationWebviewActivity","com.cootek.smartinput5.net.login.TLoginActivity","com.cootek.smartinput5.ui.skinappshop.StoreDetailActivity"}){
   assertNull(name,Offline163.local(page,new Intent().setClassName(page.getPackageName(),name)));
  }
  Offline163.start(page,new Intent().setClassName(page.getPackageName(),"com.cootek.smartinput5.func.WebPageLoader"));assertNull(shadowOf(page).getNextStartedActivity());
 }
 @Test public void retiredImplicitWebAndChoosersAreBlocked(){for(String u:new String[]{"https://example.invalid","http://example.invalid","market://details?id=old","intent://old"}){Intent i=new Intent(Intent.ACTION_VIEW,Uri.parse(u));assertNull(Offline163.local(page,i));assertNull(Offline163.local(page,Intent.createChooser(i,"Открыть")));}}
 @Test public void localFileChooserShareAndVoiceKeepExactIntentObjectsAndFlags(){
  Intent[] allowed={new Intent(Intent.ACTION_GET_CONTENT).setType("*/*").addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION),new Intent(Intent.ACTION_CREATE_DOCUMENT).setType("application/zip"),new Intent(Intent.ACTION_SEND).setType("application/octet-stream").putExtra(Intent.EXTRA_STREAM,Uri.parse("content://app/copy.zip")),new Intent("android.speech.action.RECOGNIZE_SPEECH"),new Intent(Intent.ACTION_VIEW,Uri.parse("content://app/copy.txt"))};
  for(Intent i:allowed){assertSame(i,Offline163.local(page,i));Offline163.start(page,i);assertEquals(i,shadowOf(page).getNextStartedActivity());}
 }
 @Test public void filePickerResultRequestCodeAndOptionsArePreserved(){Intent i=new Intent(Intent.ACTION_GET_CONTENT).setType("text/plain");Offline163.result(page,i,421,new Bundle());org.robolectric.shadows.ShadowActivity.IntentForResult pending=shadowOf(page).getNextStartedActivityForResult();assertEquals(i,pending.intent);assertEquals(421,pending.requestCode);}
 @Test public void aboutProjectLinksStillOpenExternalBrowser(){
  AboutPage149.install(page);View root=page.findViewById(android.R.id.content);assertTrue(click(root,"TouchPalG на GitHub, Репозиторий проекта"));Intent launched=shadowOf(page).getNextStartedActivity();assertEquals(Intent.ACTION_VIEW,launched.getAction());assertEquals(AboutPage149.GITHUB,launched.getDataString());assertNull(launched.getComponent());
 }
 static boolean click(View v,String description){if(description.contentEquals(v.getContentDescription()==null?"":v.getContentDescription()))return v.performClick();if(v instanceof ViewGroup)for(int n=0;n<((ViewGroup)v).getChildCount();n++)if(click(((ViewGroup)v).getChildAt(n),description))return true;return false;}
}
