package com.cootek.smartinput5.settings;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceGroup;
import android.preference.PreferenceManager;
import android.preference.PreferenceCategory;
import android.preference.CheckBoxPreference;
import java.util.ArrayList;
import com.cootek.smartinput5.engine.ClipboardBackend;
import java.lang.ref.WeakReference;

/** Explain the gesture and show actual clipboard values after every selection. */
public final class GeneralHelp137 {
    private static WeakReference<PreferenceActivity> active = new WeakReference<PreferenceActivity>(null);
    private static SharedPreferences listened;
    private static boolean arranging;
    private static final SharedPreferences.OnSharedPreferenceChangeListener LISTENER =
        new SharedPreferences.OnSharedPreferenceChangeListener() {
            public void onSharedPreferenceChanged(SharedPreferences preferences, String key) {
                PreferenceActivity activity = active.get();
                if (activity != null && !activity.isFinishing()) refresh(activity);
            }
        };
    private GeneralHelp137() { }

    /** Older ZIPs kept the numeric caches but omitted their stock ListPreference keys. */
    public static void reconcile(Context context) {
        if (context == null) return;
        SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
        String[][] pairs = {
            {"clipboard_slot_num", "option_clipboard_slot_num_list"},
            {"clipboard_max_length", "option_clipboard_max_length_list"},
            {"keyboard_text_size_custom", "option_keyboard_text_size_list"},
            {"keyboard_panel_height_portrait_custom", "option_keyboard_panel_height_portrait_list"},
            {"keyboard_panel_height_custom", "option_keyboard_panel_height_list"},
            {"candidate_gap_custom", "option_candidate_gap_list"}
        };
        SharedPreferences.Editor editor = null;
        java.util.Map<String, ?> values = preferences.getAll();
        for (String[] pair : pairs) {
            Object value = values.get(pair[0]);
            if (!(value instanceof Integer)) continue;
            String selected = value.toString();
            if (!selected.equals(values.get(pair[1]))) {
                if (editor == null) editor = preferences.edit();
                editor.putString(pair[1], selected);
            }
        }
        if (editor != null) editor.commit();
    }

    public static void configure(PreferenceActivity activity) {
        if (activity == null) return;
        active = new WeakReference<PreferenceActivity>(activity);
        SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(activity);
        if (listened != preferences) {
            if (listened != null) listened.unregisterOnSharedPreferenceChangeListener(LISTENER);
            listened = preferences;
            preferences.registerOnSharedPreferenceChangeListener(LISTENER);
        }
        refresh(activity);
    }

    private static void refresh(PreferenceActivity activity) {
        arrangeSections(activity);
        Preference gesture = activity.findPreference("swipe_downt9_enabled");
        if (gesture != null) {
            gesture.setTitle("Свайп вниз по клавишам на раскладке T9");
            gesture.setSummary("Вводит цифру, указанную на этой клавише.");
        }
        SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(activity);
        Preference slots = activity.findPreference("option_clipboard_slot_num_list");
        if (slots != null) slots.setSummary("Слотов: " + preferences.getInt("clipboard_slot_num", ClipboardBackend.clipboardSlotNum));
        Preference length = activity.findPreference("option_clipboard_max_length_list");
        if (length != null) length.setSummary("Символов в слоте: " + preferences.getInt("clipboard_max_length", ClipboardBackend.CLIPBOARD_ITEM_MAX_LENGTH));
        normalize(activity.getPreferenceScreen());
    }

    private static PreferenceGroup parent(PreferenceGroup group,Preference target){
        if(group==null||target==null)return null;
        for(int i=0;i<group.getPreferenceCount();i++){
            Preference child=group.getPreference(i);if(child==target)return group;
            if(child instanceof PreferenceGroup){PreferenceGroup found=parent((PreferenceGroup)child,target);if(found!=null)return found;}
        }return null;
    }
    /** Move the same Preference objects: keys, handlers and persisted state stay intact. */
    private static void arrangeSections(PreferenceActivity activity){
        if(arranging)return;
        arranging=true;
        try{arrangeSectionsOnce(activity);}finally{arranging=false;}
    }
    private static void arrangeSectionsOnce(PreferenceActivity activity){
        PreferenceGroup root=activity.getPreferenceScreen();if(root==null)return;
        Preference header=activity.findPreference("tp_general_category142");
        if(header==null){
            // Legacy Preference.compareTo subtracts orders. MIN_VALUE/MAX_VALUE
            // can overflow and put a new heading last; give existing rows safe
            // ascending orders while preserving their exact relative order.
            for(int i=0;i<root.getPreferenceCount();i++)root.getPreference(i).setOrder(i+1);
            PreferenceCategory category=new PreferenceCategory(activity);category.setKey("tp_general_category142");category.setPersistent(false);category.setTitle("Общие настройки");category.setOrder(0);
            Preference model=activity.findPreference("option_general_screen_category_sounds_and_vibration");
            if(model!=null)category.setLayoutResource(model.getLayoutResource());root.addPreference(category);
        }
        Preference height=activity.findPreference("option_keyboard_height_page");
        Preference font=activity.findPreference("option_keyboard_font_selector");
        PreferenceGroup general=parent(root,font);
        if(height!=null&&general!=null){
            ArrayList<Preference> ordered=new ArrayList<Preference>();
            for(int i=0;i<general.getPreferenceCount();i++){
                Preference item=general.getPreference(i);if(item==height)continue;
                if(item==font)ordered.add(height);ordered.add(item);
            }place(root,general,ordered);
        }
        Preference target=activity.findPreference("option_genreal_screen_category_candidates");
        if(!(target instanceof PreferenceGroup))return;
        PreferenceGroup panel=(PreferenceGroup)target;
        String[] keys={"option_keyboard_panel_height_portrait_list","option_keyboard_panel_height_list",
            "option_buttons_config","option_candidate_buttons_config",
            "long_press_actions_enabled","option_customize_keyboard_size","option_forbid_simple_candidate_style","option_eng_candidate_max_words_list",
            "option_candidate_gap_list","option_skip_first_candidate"};
        ArrayList<Preference> desired=new ArrayList<Preference>();
        for(String key:keys){
            Preference item=activity.findPreference(key);
            if(item==null&&"option_customize_keyboard_size".equals(key))item=activity.findPreference("option_candidate_size_list");
            if(item!=null&&!desired.contains(item))desired.add(item);
        }
        for(int i=0;i<panel.getPreferenceCount();i++){
            Preference item=panel.getPreference(i);if(!desired.contains(item))desired.add(item);
        }place(root,panel,desired);
    }
    /** Keep the original instances, listeners, checkbox state and selected list values. */
    private static void place(PreferenceGroup root,PreferenceGroup destination,ArrayList<Preference> desired){
        boolean same=destination.getPreferenceCount()==desired.size();
        if(same)for(int i=0;i<desired.size();i++)if(destination.getPreference(i)!=desired.get(i))same=false;
        if(same)return;
        for(int i=0;i<desired.size();i++)if(parent(root,desired.get(i))==destination)desired.get(i).setOrder(i);
        for(int i=0;i<desired.size();i++){
            Preference item=desired.get(i);PreferenceGroup previous=parent(root,item);
            if(previous!=destination){
                boolean checked=item instanceof CheckBoxPreference&&((CheckBoxPreference)item).isChecked();
                String value=item instanceof ListPreference?((ListPreference)item).getValue():null;
                if(previous!=null)previous.removePreference(item);item.setOrder(i);destination.addPreference(item);
                if(item instanceof CheckBoxPreference&&((CheckBoxPreference)item).isChecked()!=checked)((CheckBoxPreference)item).setChecked(checked);
                if(item instanceof ListPreference){String current=((ListPreference)item).getValue();if(value==null?current!=null:!value.equals(current))((ListPreference)item).setValue(value);}
            }else item.setOrder(i);
        }
    }

    private static String text(CharSequence value) {
        return value == null ? "" : value.toString().replaceAll("(?i)\\bdefault\\b", "по умолчанию");
    }

    private static void normalize(Preference item) {
        if (item == null) return;
        CharSequence summary = item.getSummary();
        String normalized = text(summary);
        if (summary != null && !normalized.equals(summary.toString())) item.setSummary(normalized);
        if (item instanceof ListPreference) {
            ListPreference list = (ListPreference) item;
            CharSequence[] entries = list.getEntries();
            if (entries != null) {
                CharSequence[] changed = entries.clone();
                boolean different = false;
                for (int i = 0; i < entries.length; i++) {
                    changed[i] = text(entries[i]);
                    different |= !changed[i].toString().equals(entries[i].toString());
                }
                if (different) list.setEntries(changed);
            }
            if (normalized.length() == 0 && list.getEntry() != null) item.setSummary(text(list.getEntry()));
        }
        if (item instanceof PreferenceGroup) {
            PreferenceGroup group = (PreferenceGroup) item;
            for (int i = 0; i < group.getPreferenceCount(); i++) normalize(group.getPreference(i));
        }
    }
}
