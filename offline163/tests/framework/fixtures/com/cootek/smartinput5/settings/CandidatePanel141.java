package com.cootek.smartinput5.settings;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceManager;
import com.cootek.smartinput5.ui.settings.EngCandidateMaxWordsListPreference;
import com.cootek.smartinput5.ui.settings.KeyboardCustomizeActivity;

/** One3..8 row, preserving a legacy simple-three choice as count3 on migration. */
public final class CandidatePanel141 {
    public static final String EXTRA_BUTTONS="touchpal.candidate.buttons";
    public static final String EXTRA_COUNT="touchpal.candidate.count";
    public static final String COUNT_KEY="option_eng_candidate_max_words_list";
    private static final String COUNT_STORE="eng_candidate_max_words_custom";
    private static final String MIGRATED="tp_unified_candidate_count149";
    private CandidatePanel141(){}
    public static int count(Context context){
        try{
            SharedPreferences preferences=PreferenceManager.getDefaultSharedPreferences(context);
            return storedCount(preferences);
        }
        catch(RuntimeException unavailable){return 4;}
    }
    public static void migrate(Context context){
        if(context==null)return;
        SharedPreferences preferences=PreferenceManager.getDefaultSharedPreferences(context);
        int count=storedCount(preferences);
        // The old flag is also rewritten by stock initialization. It must never
        // override an explicit saved count on later IME activations.
        boolean ready=preferences.getBoolean(MIGRATED,false);
        if(!ready||!preferences.getBoolean("option_forbid_simple_candidate_style",true)
                ||!String.valueOf(count).equals(preferences.getString(COUNT_KEY,""))){
            if(!preferences.edit().putBoolean("option_forbid_simple_candidate_style",true)
                    .putInt(COUNT_STORE,count).putString(COUNT_KEY,String.valueOf(count))
                    .putBoolean(MIGRATED,true).commit())return;
        }
        EngCandidateMaxWordsListPreference.setCachedValue(count);
    }
    private static int storedCount(SharedPreferences preferences){
        Object saved=preferences.getAll().get(COUNT_STORE);
        if(saved instanceof Number){int value=((Number)saved).intValue();if(value>=3&&value<=8)return value;}
        Object value=preferences.getAll().get(COUNT_KEY);
        try{int number=Integer.parseInt(String.valueOf(value));if(number>=3&&number<=8)return number;}catch(NumberFormatException absent){}
        if(!preferences.getBoolean(MIGRATED,false)
                &&preferences.contains("option_forbid_simple_candidate_style")
                &&!preferences.getBoolean("option_forbid_simple_candidate_style",true))return 3;
        return 4;
    }
    public static boolean choose(Context context,int count){
        if(count<3||count>8)return false;
        SharedPreferences prefs=PreferenceManager.getDefaultSharedPreferences(context);
        if(!prefs.edit().putBoolean("option_forbid_simple_candidate_style",true).putInt(COUNT_STORE,count).putString(COUNT_KEY,String.valueOf(count)).putBoolean(MIGRATED,true).commit())return false;
        if(count(context)!=count||!String.valueOf(count).equals(prefs.getString(COUNT_KEY,"")))return false;
        EngCandidateMaxWordsListPreference.setCachedValue(count);
        try{SizeRuntimeStore.refresh(SizeModel.HEIGHT);}catch(RuntimeException unavailable){}
        return true;
    }
    public static boolean openCount(Preference preference){return open(preference,EXTRA_COUNT);}
    public static boolean openButtons(Preference preference){return open(preference,EXTRA_BUTTONS);}
    private static boolean open(Preference preference,String extra){
        try{
            Context context=preference.getContext();Intent intent=new Intent(context,KeyboardCustomizeActivity.class).putExtra(extra,true);
            if(!(context instanceof Activity))intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            context.startActivity(intent);return true;
        }catch(RuntimeException unavailable){return false;}
    }
    public static void configure(PreferenceActivity activity){
        migrate(activity);
        Preference legacy=activity.findPreference("option_forbid_simple_candidate_style");
        if(legacy instanceof android.preference.CheckBoxPreference)((android.preference.CheckBoxPreference)legacy).setChecked(true);
        // The stock gap preference also depends on this switch. Detach every
        // dependent before removing it, including before PreferenceScreen.bind.
        if(legacy!=null)detachDependencies(activity.getPreferenceScreen(),legacy);
        Preference category=activity.findPreference("option_genreal_screen_category_candidates");
        if(category!=null)category.setTitle("Панель предлагаемых слов");
        Preference count=activity.findPreference(COUNT_KEY);
        if(count!=null){count.setDependency(null);count.setEnabled(true);count.setTitle("Количество предлагаемых слов");count.setSummary(String.valueOf(count(activity)));}
        Preference buttons=activity.findPreference("option_candidate_buttons_config");
        if(buttons!=null){buttons.setDependency(null);buttons.setEnabled(true);buttons.setTitle("Кнопки панели предлагаемых слов");buttons.setSummary("Левая и правая кнопки — выбор на макете для любого количества слов");}
        if(legacy!=null)remove(activity.getPreferenceScreen(),legacy);
    }
    private static void detachDependencies(android.preference.PreferenceGroup group,Preference legacy){
        if(group==null)return;
        for(int i=0;i<group.getPreferenceCount();i++){
            Preference child=group.getPreference(i);
            if(legacy.getKey().equals(child.getDependency())){child.setDependency(null);child.onDependencyChanged(legacy,false);}
            if(child instanceof android.preference.PreferenceGroup)detachDependencies((android.preference.PreferenceGroup)child,legacy);
        }
    }
    private static boolean remove(android.preference.PreferenceGroup group,Preference item){
        if(group==null)return false;
        for(int i=0;i<group.getPreferenceCount();i++){Preference child=group.getPreference(i);if(child==item)return group.removePreference(item);if(child instanceof android.preference.PreferenceGroup&&remove((android.preference.PreferenceGroup)child,item))return true;}
        return false;
    }
}
