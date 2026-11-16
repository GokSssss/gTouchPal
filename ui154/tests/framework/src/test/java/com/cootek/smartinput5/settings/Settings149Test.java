package com.cootek.smartinput5.settings;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Looper;
import android.preference.*;
import android.view.*;
import android.widget.*;
import org.junit.*;
import org.junit.runner.RunWith;
import org.robolectric.*;
import org.robolectric.android.controller.ActivityController;
import org.robolectric.annotation.*;
import static org.junit.Assert.*;
import static org.robolectric.Shadows.shadowOf;

/** Real Android preferences/views; closed IME/cache/resize boundaries are doubles. */
@RunWith(RobolectricTestRunner.class)
@Config(sdk=34,manifest=Config.NONE)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@LooperMode(LooperMode.Mode.PAUSED)
public class Settings149Test {
    Context context; SharedPreferences prefs;
    @Before public void setup() throws Exception {
        context=RuntimeEnvironment.getApplication();
        int cookie=(Integer)android.content.res.AssetManager.class.getMethod("addAssetPath",String.class).invoke(context.getAssets(),System.getProperty("touchpal.apk"));
        assertTrue(cookie>0);
        prefs=PreferenceManager.getDefaultSharedPreferences(context);prefs.edit().clear().commit();
    }
    public static class Page extends PreferenceActivity {
        public void onCreate(Bundle state){
            super.onCreate(state);setPreferenceScreen(getPreferenceManager().createPreferenceScreen(this));
            Preference p=new Preference(this);p.setKey("sample");p.setTitle("Параметр");p.setSummary("Описание");getPreferenceScreen().addPreference(p);
            CheckBoxPreference check=new CheckBoxPreference(this);check.setKey("check");check.setTitle("Переключатель");getPreferenceScreen().addPreference(check);
        }
    }
    private Page page(){
        Page page=Robolectric.buildActivity(Page.class).setup().get();
        CompactSettings.install(page);shadowOf(Looper.getMainLooper()).idle();return page;
    }
    private int position(Page page,Preference preference){
        ListAdapter adapter=page.getListView().getAdapter();
        for(int i=0;i<adapter.getCount();i++)if(adapter.getItem(i)==preference)return i;
        throw new AssertionError("Preference is missing");
    }
    @Test public void explicitCountWinsOverLegacyFlagOnEveryActivation(){
        prefs.edit().putInt("eng_candidate_max_words_custom",6).putBoolean("option_forbid_simple_candidate_style",false).commit();
        for(int i=0;i<3;i++){
            assertEquals(6,CandidatePanel141.count(context));CandidatePanel141.migrate(context);
            assertEquals(6,prefs.getInt("eng_candidate_max_words_custom",0));
            assertEquals(6,com.cootek.smartinput5.ui.settings.EngCandidateMaxWordsListPreference.cached);
            prefs.edit().putBoolean("option_forbid_simple_candidate_style",false).commit();
        }
    }
    @Test public void legacyThreeMigratesOnlyWhenNoSavedCountExists(){
        prefs.edit().putBoolean("option_forbid_simple_candidate_style",false).commit();
        CandidatePanel141.migrate(context);assertEquals(3,CandidatePanel141.count(context));
        assertTrue(CandidatePanel141.choose(context,8));
        prefs.edit().putBoolean("option_forbid_simple_candidate_style",false).commit();
        CandidatePanel141.migrate(context);assertEquals(8,CandidatePanel141.count(context));
    }
    @Test public void everyAllowedCountSurvivesCacheLossAndReactivation(){
        for(int n=3;n<=8;n++){
            assertTrue(CandidatePanel141.choose(context,n));
            com.cootek.smartinput5.ui.settings.EngCandidateMaxWordsListPreference.cached=0;
            prefs.edit().putBoolean("option_forbid_simple_candidate_style",false).commit();
            CandidatePanel141.migrate(context);
            assertEquals(n,CandidatePanel141.count(context));assertEquals(String.valueOf(n),prefs.getString(CandidatePanel141.COUNT_KEY,""));
            assertEquals(n,com.cootek.smartinput5.ui.settings.EngCandidateMaxWordsListPreference.cached);
        }
        assertFalse(CandidatePanel141.choose(context,2));assertFalse(CandidatePanel141.choose(context,9));
        assertEquals(8,CandidatePanel141.count(context));
    }
    @Test public void restoredCountIsPreserved(){
        assertTrue(CandidatePanel141.choose(context,5));
        prefs.edit().putInt("eng_candidate_max_words_custom",7).putString(CandidatePanel141.COUNT_KEY,"7").putBoolean("option_forbid_simple_candidate_style",false).commit();
        CandidatePanel141.migrate(context);assertEquals(7,CandidatePanel141.count(context));
    }
    @Test public void invalidSavedCountUsesValidListValue(){
        prefs.edit().putInt("eng_candidate_max_words_custom",99).putString(CandidatePanel141.COUNT_KEY,"5").commit();
        CandidatePanel141.migrate(context);assertEquals(5,CandidatePanel141.count(context));
    }
    @Test public void adapterPreservesPreferenceObjectsAndCheckboxClick(){
        Page page=page();CheckBoxPreference check=(CheckBoxPreference)page.findPreference("check");
        int index=position(page,check);ListAdapter adapter=page.getListView().getAdapter();
        assertSame(check,adapter.getItem(index));assertFalse(check.isChecked());
        View row=adapter.getView(index,null,page.getListView());
        page.getListView().performItemClick(row,index,adapter.getItemId(index));
        assertTrue(check.isChecked());
    }
    @Test public void nestedRowsHaveSameTypographyAndRecycleOneFrame(){
        Page page=page();Preference pref=page.findPreference("sample");ListAdapter adapter=page.getListView().getAdapter();
        int index=position(page,pref);View row=adapter.getView(index,null,page.getListView());
        float scaled=page.getResources().getDisplayMetrics().scaledDensity;
        assertEquals(16,((TextView)row.findViewById(android.R.id.title)).getTextSize()/scaled,.01f);
        assertEquals(13,((TextView)row.findViewById(android.R.id.summary)).getTextSize()/scaled,.01f);
        View recycled=adapter.getView(index,row,page.getListView());assertSame(row,recycled);
        assertEquals(2,((ViewGroup)recycled).getChildCount());
        assertNotNull(((ImageView)((ViewGroup)row).getChildAt(0)).getDrawable());
    }
    @Test public void presentationDoesNotRemoveDisabledStateOrHandlers(){
        Page page=page();Preference pref=page.findPreference("sample");final boolean[] clicked={false};
        pref.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener(){public boolean onPreferenceClick(Preference value){clicked[0]=true;return true;}});
        shadowOf(Looper.getMainLooper()).idle();
        int index=position(page,pref);ListAdapter adapter=page.getListView().getAdapter();
        page.getListView().performItemClick(adapter.getView(index,null,page.getListView()),index,adapter.getItemId(index));
        assertTrue(clicked[0]);pref.setEnabled(false);shadowOf(Looper.getMainLooper()).idle();
        assertFalse(pref.isEnabled());View disabled=adapter.getView(index,null,page.getListView());assertFalse(disabled.isEnabled());
        clicked[0]=false;page.getListView().performItemClick(disabled,index,adapter.getItemId(index));assertFalse(clicked[0]);
    }
    @Test public void rootKeepsJournalBeforeLastSectionAndShortcutWorks(){
        Page page=page();PreferenceScreen root=page.getPreferenceScreen();
        Preference about=new Preference(page);about.setKey("option_about_screen");root.addPreference(about);
        Preference journal=new Preference(page);journal.setKey("tp_development_history");journal.setTitle("Журнал");root.addPreference(journal);
        CompactSettings.install(page);shadowOf(Looper.getMainLooper()).idle();
        Preference section=page.findPreference("tp_recent_category146"),shortcut=page.findPreference("tp_recent_setting146");
        assertTrue(journal.getOrder()<section.getOrder());assertSame(journal,page.findPreference("tp_development_history"));
        assertTrue(shortcut.getOnPreferenceClickListener().onPreferenceClick(shortcut));
        Intent intent=shadowOf(page).getNextStartedActivity();
        assertTrue(intent.getBooleanExtra(CandidatePanel141.EXTRA_COUNT,false));
        assertEquals("Количество предлагаемых слов",shortcut.getTitle());
    }
    @Test public void correctedIconNamesMatchApprovedSymbols(){
        String[][] cases={{"","Цвет системной панели","panel-top"},{"","Всплывающие символы","popup-square"},{"option_eng_candidate_max_words_list","","candidate-count"},{"","Размер шрифта клавиш","font-size"},{"tp_backup","","save"}};
        for(String[] row:cases){Preference p=new Preference(context);p.setKey(row[0]);p.setTitle(row[1]);assertEquals(row[2],SettingsIcons149.name(p));}
    }
    @Test public void allLocalIconsLoadWithoutNetwork()throws Exception{
        String[] files=context.getAssets().list("settings149");assertEquals(32,files.length);
        for(String file:files)assertNotNull(file,SettingsIcons149.drawable(context,file.substring(0,file.length()-4),0xffbbbbbb));
    }
    private TextView find(View view,String text){
        if(view instanceof TextView&&text.equals(((TextView)view).getText().toString()))return (TextView)view;
        if(view instanceof ViewGroup){ViewGroup group=(ViewGroup)view;for(int i=0;i<group.getChildCount();i++){TextView result=find(group.getChildAt(i),text);if(result!=null)return result;}}
        return null;
    }
    @Test public void aboutShowsCreditsAndOnlySuppliedProjectLinks(){
        Activity page=Robolectric.buildActivity(Activity.class).setup().get();AboutPage149.install(page);
        View content=page.findViewById(android.R.id.content);
        assertNotNull(find(content,"gTouchPal"));assertNotNull(find(content,"TouchPal Keyboard 6.2.7.1"));
        assertEquals(Gravity.CENTER_HORIZONTAL,find(content,"gTouchPal").getGravity()&Gravity.HORIZONTAL_GRAVITY_MASK);
        assertNotNull(find(content,"С благодарностью за создание и развитие"));assertNotNull(find(content,"Tanh"));assertNotNull(find(content,"GokS"));
        find(content,"gTouchPal на GitHub").getParent().getParent();
        ((View)find(content,"gTouchPal на GitHub").getParent().getParent()).performClick();
        assertEquals(AboutPage149.GITHUB,shadowOf(page).getNextStartedActivity().getDataString());
        ((View)find(content,"Мод Tanh на 4PDA").getParent().getParent()).performClick();
        assertEquals(AboutPage149.TANH,shadowOf(page).getNextStartedActivity().getDataString());
        assertNull(find(content,"Политика конфиденциальности"));
    }
    @Test public void darkAndLightRowsKeepReadableText(){
        for(boolean dark:new boolean[]{false,true}){
            prefs.edit().putBoolean("option_dark_theme",dark).commit();Page page=page();
            ListAdapter adapter=page.getListView().getAdapter();int n=position(page,page.findPreference("sample"));
            TextView title=(TextView)adapter.getView(n,null,page.getListView()).findViewById(android.R.id.title);
            assertEquals(dark?0xffefefef:0xff202020,title.getCurrentTextColor());
            page.finish();
        }
    }
}
