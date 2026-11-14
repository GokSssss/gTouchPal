package com.cootek.smartinput5.settings;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.preference.Preference;
import android.preference.PreferenceManager;
import com.cootek.smartinput5.ui.settings.KeyboardCustomizeActivity;

/** The existing toolbar assignments, with readback and the existing hidden-view refresh. */
public final class ToolbarConfig140 {
    public static final String EXTRA_PAGE="touchpal.toolbar.page";
    private static final String[] KEYS={"first_button_type","second_button_type",
        "third_button_type","candidate_first_button_type","candidate_second_button_type"};
    private static final String[] DEFAULTS={"editor","clipboard","emoji","editor","emoji"};
    private static final String[] TYPES={"language","clipboard","editor","emoji","undo","none"};
    private static final String[] LABELS={"Язык","Буфер обмена","Редактор","Эмодзи","Отмена последнего действия","Не показывать кнопку"};
    private ToolbarConfig140() { }
    public static int count(){return KEYS.length;}
    public static int choices(){return TYPES.length;}
    public static String type(int choice){return TYPES[choice];}
    public static String label(String type){
        for(int i=0;i<TYPES.length;i++)if(TYPES[i].equals(type))return LABELS[i];
        return "Другое действие";
    }
    public static String read(Context context,int slot){
        if(slot<0||slot>=KEYS.length)throw new IllegalArgumentException("toolbar slot");
        try{return PreferenceManager.getDefaultSharedPreferences(context).getString(KEYS[slot],DEFAULTS[slot]);}
        catch(RuntimeException unavailable){return DEFAULTS[slot];}
    }
    public static boolean select(Context context,int slot,String type){
        if(slot<0||slot>=KEYS.length)return false;
        boolean known=false;for(String value:TYPES)if(value.equals(type))known=true;
        if(!known)return false;
        SharedPreferences prefs=PreferenceManager.getDefaultSharedPreferences(context);
        if(!type.equals(read(context,slot)) && !prefs.edit().putString(KEYS[slot],type).commit())return false;
        if(!type.equals(read(context,slot)))return false;
        // FunctionBar creates its icon/listener pairs in its constructor. Rebuild
        // the existing widget cache while the IME is hidden, using the same
        // guarded/deferred path as height settings. No service/process restart.
        try{SizeRuntimeStore.refresh(SizeModel.HEIGHT);}catch(RuntimeException unavailable){ }
        return true;
    }
    public static boolean open(Preference preference){
        try{
            Context context=preference.getContext();
            Intent intent=new Intent(context,KeyboardCustomizeActivity.class);
            intent.putExtra(EXTRA_PAGE,true);
            if(!(context instanceof Activity))intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            context.startActivity(intent);return true;
        }catch(RuntimeException unavailable){return false;}
    }
}
