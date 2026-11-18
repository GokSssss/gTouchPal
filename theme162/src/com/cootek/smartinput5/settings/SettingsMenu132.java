package com.cootek.smartinput5.settings;
import android.content.Intent;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceScreen;
import android.preference.PreferenceCategory;
import android.preference.PreferenceGroup;

/** A direct shortcut to the existing stock keyboard-skin screen. */
public final class SettingsMenu132 {
    private static final String KEY="tp_keyboard_theme132";
    private SettingsMenu132() { }
    public static void install(PreferenceActivity activity) {
        Preference general=activity.findPreference("option_general_screen");
        if(general!=null)general.setSummary("Ввод, звук, буфер и панель слов");
        PreferenceScreen root=activity.getPreferenceScreen();
        Preference about=activity.findPreference("option_about_screen");
        if(root==null||about==null)return;
        Preference theme=activity.findPreference(KEY);
        if(theme==null){theme=new Preference(activity);theme.setKey(KEY);theme.setPersistent(false);root.addPreference(theme);}
        theme.setTitle("Тема клавиатуры");theme.setSummary("Выбрать тему клавиатуры");
        theme.setLayoutResource(about.getLayoutResource());
        theme.setIntent(null);
        theme.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener(){
            public boolean onPreferenceClick(Preference preference){ThemePicker156.open(activity);return true;}
        });
        Preference destination=activity.findPreference("tp_additions");
        if(destination instanceof PreferenceGroup){
            PreferenceGroup addons=(PreferenceGroup)destination;
            PreferenceGroup parent=parentOf(root,theme);
            if(parent!=null)parent.removePreference(theme);
            // Preference.compareTo subtracts orders: MIN_VALUE can overflow.
            for(int n=0;n<addons.getPreferenceCount();n++)addons.getPreference(n).setOrder(n+1);
            theme.setOrder(0);addons.addPreference(theme);
        }else theme.setOrder(about.getOrder()==Integer.MIN_VALUE?Integer.MIN_VALUE:about.getOrder()-1);
        if(activity.findPreference("tp_main_category144")==null){
            PreferenceCategory model=null;
            for(int i=0;i<root.getPreferenceCount();i++)if(root.getPreference(i) instanceof PreferenceCategory){model=(PreferenceCategory)root.getPreference(i);break;}
            for(int i=0;i<root.getPreferenceCount();i++)root.getPreference(i).setOrder(i+1);
            PreferenceCategory heading=new PreferenceCategory(activity);heading.setKey("tp_main_category144");heading.setPersistent(false);heading.setTitle("Основные настройки");heading.setOrder(0);
            if(model!=null)heading.setLayoutResource(model.getLayoutResource());root.addPreference(heading);
        }
    }
    private static PreferenceGroup parentOf(PreferenceGroup group,Preference item){
        for(int n=0;n<group.getPreferenceCount();n++){
            Preference child=group.getPreference(n);if(child==item)return group;
            if(child instanceof PreferenceGroup){PreferenceGroup found=parentOf((PreferenceGroup)child,item);if(found!=null)return found;}
        }
        return null;
    }
}
