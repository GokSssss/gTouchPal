package com.cootek.smartinput5.settings;

import android.content.*;
import android.graphics.*;
import android.graphics.drawable.Drawable;
import android.os.*;
import android.preference.*;
import android.provider.Settings;
import android.view.*;
import android.view.inputmethod.*;
import android.widget.*;
import java.io.*;
import java.util.*;
import org.junit.*;
import org.junit.runner.RunWith;
import org.robolectric.*;
import org.robolectric.android.controller.ActivityController;
import org.robolectric.annotation.*;
import static org.junit.Assert.*;
import static org.robolectric.Shadows.shadowOf;

/** The Android widgets/resolver are real framework code; no IME/JNI execution is claimed. */
@RunWith(RobolectricTestRunner.class)
@Config(sdk=34,manifest=Config.NONE,qualifiers="ru-w394dp-h853dp-hdpi")
@GraphicsMode(GraphicsMode.Mode.NATIVE) @LooperMode(LooperMode.Mode.PAUSED)
public class Settings153Test {
    static final String[] KEYS={"option_curve","option_wave","option_wave_without_next_word_on_candidate","option_predict","option_auto_correction","option_auto_save","smartdash","option_auto_space","option_auto_capitalization",SmartInput153.SPACE,"option_emoji_prediction",SmartInput153.CONTEXT};
    static int nativeClicks;
    static String title(String key){
        String[][] labels={{"option_curve","Curve® — Ввод слов росчерком"},{"option_wave","Wave™ — ввод предложений росчерками"},{"option_wave_without_next_word_on_candidate","Не предсказывать слова"},{"option_auto_save","Автосохранение"},{"smartdash","Умное тире"},{"option_auto_space","Автоматический пробел"},{"option_auto_capitalization","Автом. заглавные буквы"},{"option_emoji_prediction","Эмодзи прогнозирование"},{"option_edit_dictionary","Импорт слов из текстового файла"},{"option_backup_dictionary","Сделать резервную копию словаря"},{"option_restore_dictionary","Восстановить пользовательский словарь"},{"option_rebuild_language_data","Исправить данные словаря"},{"option_clear_language_data","Очистить словарь пользователя"}};
        for(String[] label:labels)if(label[0].equals(key))return label[1];return key;
    }
    private final ArrayList<ActivityController<?>> pages=new ArrayList<ActivityController<?>>();
    public static class SmartPage extends PreferenceActivity {
        final Map<String,Preference> originals=new HashMap<String,Preference>();
        final Map<String,Preference.OnPreferenceClickListener> listeners=new HashMap<String,Preference.OnPreferenceClickListener>();
        public void onCreate(Bundle b){super.onCreate(b);setPreferenceScreen(getPreferenceManager().createPreferenceScreen(this));
            for(String key:KEYS){CheckBoxPreference item=new CheckBoxPreference(this);item.setKey(key);item.setTitle(title(key));item.setSummary("Исходное пояснение");getPreferenceScreen().addPreference(item);item.setChecked(!key.equals("option_wave"));Preference.OnPreferenceClickListener listener=new Preference.OnPreferenceClickListener(){public boolean onPreferenceClick(Preference p){nativeClicks++;return true;}};item.setOnPreferenceClickListener(listener);originals.put(key,item);listeners.put(key,listener);}
            findPreference("option_wave_without_next_word_on_candidate").setDependency("option_wave");
            findPreference("option_auto_correction").setDependency("option_predict");
            PreferenceCategory dictionary=new PreferenceCategory(this);dictionary.setKey("option_category_manager_dictionary");dictionary.setTitle("Словарь пользователя");getPreferenceScreen().addPreference(dictionary);
            for(String key:new String[]{"option_import_contact","option_manage_user_word","option_edit_dictionary","option_backup_dictionary","option_restore_dictionary","option_rebuild_language_data","option_clear_language_data"}){Preference item=new Preference(this);item.setKey(key);item.setTitle(key.equals("option_import_contact")?"Импортировать имена контактов":key.equals("option_manage_user_word")?"Управление пользовательским словарём":title(key));dictionary.addPreference(item);originals.put(key,item);}
        }
    }
    @Before public void reset(){PreferenceManager.getDefaultSharedPreferences(RuntimeEnvironment.getApplication()).edit().clear().putBoolean("option_dark_theme",true).commit();com.cootek.smartinput5.engine.Settings.reset();nativeClicks=0;}
    @After public void close(){for(ActivityController<?> c:pages){KeyboardActivation152.stopWatching((PreferenceActivity)c.get());c.pause().stop().destroy();}}
    private SmartPage smart(){ActivityController<SmartPage> c=Robolectric.buildActivity(SmartPage.class).setup();pages.add(c);CompactSettings.install(c.get());shadowOf(Looper.getMainLooper()).idle();return c.get();}
    private Settings152Test.Page main(){ActivityController<Settings152Test.Page> c=Robolectric.buildActivity(Settings152Test.Page.class).setup();pages.add(c);CompactSettings.install(c.get());shadowOf(Looper.getMainLooper()).idle();return c.get();}
    private View row(PreferenceActivity p,String key){ListAdapter a=p.getListView().getAdapter();for(int n=0;n<a.getCount();n++)if(a.getItem(n) instanceof Preference&&key.equals(((Preference)a.getItem(n)).getKey()))return a.getView(n,null,p.getListView());throw new AssertionError(key);}
    private void click(PreferenceActivity p,String key){ListAdapter a=p.getListView().getAdapter();for(int n=0;n<a.getCount();n++)if(a.getItem(n) instanceof Preference&&key.equals(((Preference)a.getItem(n)).getKey())){p.getListView().performItemClick(a.getView(n,null,p.getListView()),n,a.getItemId(n));shadowOf(Looper.getMainLooper()).idle();return;}throw new AssertionError(key);}
    private void enabled(PreferenceActivity p,boolean on){InputMethodManager manager=(InputMethodManager)p.getSystemService(Context.INPUT_METHOD_SERVICE);shadowOf(manager).setEnabledInputMethodInfoList(on?Arrays.asList(new InputMethodInfo(p.getPackageName(),"com.cootek.smartinput5.TouchPalIME","TouchPal",null)):Collections.<InputMethodInfo>emptyList());}
    private void select(PreferenceActivity p,String ime){Settings.Secure.putString(p.getContentResolver(),Settings.Secure.DEFAULT_INPUT_METHOD,ime);p.getContentResolver().notifyChange(Settings.Secure.getUriFor(Settings.Secure.DEFAULT_INPUT_METHOD),null);shadowOf(Looper.getMainLooper()).idle();}
    @Test public void sectionsAndOrderKeepNativeObjectsAndOriginalCallbacks(){
        SmartPage p=smart();for(int n=0;n<4;n++){CompactSettings.install(p);shadowOf(Looper.getMainLooper()).idle();}
        assertEquals(4,p.getPreferenceScreen().getPreferenceCount());
        assertEquals("Wave",p.getPreferenceScreen().getPreference(0).getTitle());assertEquals("T9",p.getPreferenceScreen().getPreference(1).getTitle());assertEquals("Общие настройки",p.getPreferenceScreen().getPreference(2).getTitle());
        PreferenceGroup general=(PreferenceGroup)p.findPreference(SmartInput153.GENERAL);String[] order={"option_auto_save",SmartInput153.CONTEXT,SmartInput153.SPACE,"option_auto_space","smartdash","option_emoji_prediction","option_auto_capitalization"};assertEquals(order.length,general.getPreferenceCount());for(int n=0;n<order.length;n++)assertSame(p.originals.get(order[n]),general.getPreference(n));
        for(String key:KEYS){assertSame(p.originals.get(key),p.findPreference(key));assertSame(p.listeners.get(key),p.findPreference(key).getOnPreferenceClickListener());}
        assertEquals("option_wave",p.findPreference("option_wave_without_next_word_on_candidate").getDependency());assertFalse(p.findPreference("option_wave_without_next_word_on_candidate").isEnabled());assertEquals("option_predict",p.findPreference("option_auto_correction").getDependency());assertEquals(0,nativeClicks);
    }
    @Test public void contextDisablesSpaceImmediatelyWithoutErasingItsCheckedChoice(){
        SmartPage p=smart();CheckBoxPreference space=(CheckBoxPreference)p.findPreference(SmartInput153.SPACE);assertTrue(space.isEnabled());assertTrue(space.isChecked());
        click(p,SmartInput153.CONTEXT);assertFalse(space.isEnabled());assertTrue(space.isChecked());assertTrue(PreferenceManager.getDefaultSharedPreferences(p).getBoolean(SmartInput153.SPACE,false));
        View disabled=row(p,SmartInput153.SPACE);assertFalse(disabled.isEnabled());assertEquals(0xff777777,((TextView)disabled.findViewById(android.R.id.title)).getCurrentTextColor());assertEquals(1,nativeClicks);
        CompactSettings.install(p);shadowOf(Looper.getMainLooper()).idle();assertFalse(space.isEnabled());assertTrue(space.isChecked());
        click(p,SmartInput153.CONTEXT);assertTrue(space.isEnabled());assertTrue(space.isChecked());assertEquals(2,nativeClicks);
    }
    @Test public void checkboxStillUsesNativeClickAndWordSelectionIsNotToggledByContext(){
        SmartPage p=smart();CheckBoxPreference prediction=(CheckBoxPreference)p.findPreference("option_predict");boolean old=prediction.isChecked();click(p,SmartInput153.CONTEXT);assertEquals(old,prediction.isChecked());click(p,SmartInput153.CONTEXT);click(p,SmartInput153.SPACE);assertFalse(((CheckBoxPreference)p.findPreference(SmartInput153.SPACE)).isChecked());assertEquals(3,nativeClicks);
    }
    @Test public void selectedImeChangesRecolourTheAlreadyBoundTitleWithoutReentering(){
        Settings152Test.Page p=main();enabled(p,true);select(p,new ComponentName(p.getPackageName(),"com.cootek.smartinput5.TouchPalIME").flattenToShortString());
        TextView title=(TextView)row(p,KeyboardActivation152.KEY).findViewById(android.R.id.title);assertNotEquals(KeyboardActivation152.RED,title.getCurrentTextColor());
        select(p,"ru.yandex.androidkeyboard/.OtherKeyboard");assertEquals(KeyboardActivation152.RED,title.getCurrentTextColor());assertEquals("Выбрать TouchPal для ввода",p.findPreference(KeyboardActivation152.KEY).getSummary());
        select(p,new ComponentName(p.getPackageName(),"com.cootek.smartinput5.TouchPalIME").flattenToShortString());assertNotEquals(KeyboardActivation152.RED,title.getCurrentTextColor());assertEquals("TouchPal включён",p.findPreference(KeyboardActivation152.KEY).getSummary());assertNull(shadowOf(p).getNextStartedActivity());
    }
    @Test public void enabledImeChangesAlsoRefreshWithoutDefaultChanging(){
        Settings152Test.Page p=main();enabled(p,true);select(p,new ComponentName(p.getPackageName(),"com.cootek.smartinput5.TouchPalIME").flattenToShortString());TextView title=(TextView)row(p,KeyboardActivation152.KEY).findViewById(android.R.id.title);
        enabled(p,false);p.getContentResolver().notifyChange(Settings.Secure.getUriFor(Settings.Secure.ENABLED_INPUT_METHODS),null);shadowOf(Looper.getMainLooper()).idle();assertEquals(KeyboardActivation152.RED,title.getCurrentTextColor());assertEquals("Разрешить TouchPal в настройках Android",p.findPreference(KeyboardActivation152.KEY).getSummary());
    }
    @Test public void recycledActivationTitleCannotColourAnotherSettingsRow(){
        Settings152Test.Page p=main();enabled(p,true);select(p,new ComponentName(p.getPackageName(),"com.cootek.smartinput5.TouchPalIME").flattenToShortString());View reused=row(p,KeyboardActivation152.KEY);ListAdapter adapter=p.getListView().getAdapter();
        for(int n=0;n<adapter.getCount();n++)if("tail".equals(((Preference)adapter.getItem(n)).getKey())){reused=adapter.getView(n,reused,p.getListView());break;}
        TextView title=(TextView)reused.findViewById(android.R.id.title);assertEquals("После",title.getText().toString());int normal=title.getCurrentTextColor();select(p,"ru.yandex.androidkeyboard/.OtherKeyboard");assertEquals(normal,title.getCurrentTextColor());
    }
    @Test public void hiddenNativeWaveRowsDoNotLeaveAnEmptyHeading(){
        ActivityController<SmartPage> c=Robolectric.buildActivity(SmartPage.class).setup();pages.add(c);SmartPage p=c.get();p.findPreference("option_wave_without_next_word_on_candidate").setDependency(null);
        for(String key:new String[]{"option_wave_without_next_word_on_candidate","option_wave","option_curve"})p.getPreferenceScreen().removePreference(p.findPreference(key));
        for(int n=0;n<4;n++){CompactSettings.install(p);shadowOf(Looper.getMainLooper()).idle();assertNull(p.findPreference(SmartInput153.WAVE));assertEquals(3,p.getPreferenceScreen().getPreferenceCount());}
    }
    @Test public void observingIsIdempotentAndUnregisteredOnDetach(){
        Settings152Test.Page p=main();for(int n=0;n<5;n++)KeyboardActivation152.install(p);android.net.Uri uri=Settings.Secure.getUriFor(Settings.Secure.DEFAULT_INPUT_METHOD);assertEquals(1,shadowOf(p.getContentResolver()).getContentObservers(uri).size());View decor=p.getWindow().getDecorView();org.robolectric.util.ReflectionHelpers.callInstanceMethod(decor,"dispatchDetachedFromWindow");assertEquals(0,shadowOf(p.getContentResolver()).getContentObservers(uri).size());
    }
    @Test public void rowsUseApprovedNamesAndNeverMoreThanTwoSummaryLines(){
        SmartPage p=smart();assertEquals("Предугадывание/Т9",p.findPreference("option_predict").getTitle());assertEquals("Автозамена",p.findPreference("option_auto_correction").getTitle());assertEquals("Предлагать следующее слово по контексту.",p.findPreference(SmartInput153.CONTEXT).getSummary());
        ListAdapter adapter=p.getListView().getAdapter();for(int n=0;n<adapter.getCount();n++){Object value=adapter.getItem(n);if(!(value instanceof Preference))continue;Preference item=(Preference)value;if(!SmartInput153.ownRow(item.getKey()))continue;View view=adapter.getView(n,null,p.getListView());view.measure(View.MeasureSpec.makeMeasureSpec(591,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(0,View.MeasureSpec.UNSPECIFIED));view.layout(0,0,591,view.getMeasuredHeight());TextView text=(TextView)view.findViewById(android.R.id.summary);if(text!=null&&text.getVisibility()==View.VISIBLE){assertEquals(2,text.getMaxLines());assertTrue(item.getKey(),text.getLineCount()<=2);}}
    }
    @Test public void individualIconsShareBoundsAndRenderInBothThemes()throws Exception{
        SmartPage p=smart();for(int color:new int[]{0xffb8b8b8,0xff666666})for(String key:p.originals.keySet()){String icon=SettingsIcons149.name(p.findPreference(key));Drawable d=SettingsIcons149.drawable(p,icon,color);assertNotNull(key,d);assertEquals(Math.round(22*p.getResources().getDisplayMetrics().density),d.getIntrinsicWidth());assertEquals(d.getIntrinsicWidth(),d.getIntrinsicHeight());Bitmap bitmap=Bitmap.createBitmap(48,48,Bitmap.Config.ARGB_8888);d.setBounds(0,0,48,48);d.draw(new Canvas(bitmap));boolean ink=false;for(int y=0;y<48;y++)for(int x=0;x<48;x++)ink|=(bitmap.getPixel(x,y)>>>24)!=0;assertTrue(key,ink);bitmap.recycle();}
    }
    @Test public void renderTheActualFrameworkRowsForReview()throws Exception{
        SmartPage p=smart();LinearLayout rows=new LinearLayout(p);rows.setOrientation(LinearLayout.VERTICAL);rows.setBackgroundColor(0xff202020);ListAdapter adapter=p.getListView().getAdapter();int width=591,height=0;
        for(int n=0;n<adapter.getCount();n++){View v=adapter.getView(n,null,p.getListView());v.jumpDrawablesToCurrentState();v.measure(View.MeasureSpec.makeMeasureSpec(width,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(0,View.MeasureSpec.UNSPECIFIED));height+=v.getMeasuredHeight();rows.addView(v);}
        rows.measure(View.MeasureSpec.makeMeasureSpec(width,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(height,View.MeasureSpec.EXACTLY));rows.layout(0,0,width,height);Bitmap bitmap=Bitmap.createBitmap(width,height,Bitmap.Config.ARGB_8888);rows.draw(new Canvas(bitmap));File out=new File("../../research/framework-capture/additional153-dark.png");out.getParentFile().mkdirs();try(FileOutputStream stream=new FileOutputStream(out)){bitmap.compress(Bitmap.CompressFormat.PNG,100,stream);}bitmap.recycle();
    }
}
