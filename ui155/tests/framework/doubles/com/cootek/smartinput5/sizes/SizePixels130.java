package com.cootek.smartinput5.sizes;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.preference.PreferenceManager;

/** Fine sizes are physical pixels; legacy DP keys and native enums stay intact. */
public final class SizePixels130 {
    private SizePixels130() { }
    private static final String[] KEYS={"tp_size130_font_px","tp_size130_panel_port_px",
        "tp_size130_panel_land_px",null,"tp_size130_candidate_px","tp_size130_gap_px"};
    // The old percentage page controls the same portrait candidate panel.
    // Both pages now use the same exact pixel override, never a native enum.
    private static int slot(int mode){return mode==3?1:mode;}
    public static boolean isPreferenceKey(String key) {
        for(String candidate:KEYS)if(candidate!=null&&candidate.equals(key))return true;
        return false;
    }
    public static int read(Context context,int mode) {
        mode=slot(mode);
        if(context==null||mode<0||mode>=KEYS.length)return -1;
        try {
            int value=PreferenceManager.getDefaultSharedPreferences(context).getInt(KEYS[mode],-1);
            return value>0&&value<=32768?value:-1;
        } catch(RuntimeException invalid){return -1;}
    }
    public static boolean set(Context context,int mode,int value) {
        mode=slot(mode);
        if(mode<0||mode>=KEYS.length||value<=0||value>32768)return false;
        boolean saved=PreferenceManager.getDefaultSharedPreferences(context).edit().putInt(KEYS[mode],value).commit();
        return saved&&read(context,mode)==value;
    }
    public static boolean clear(Context context,int mode) {
        mode=slot(mode);
        if(mode<0||mode>=KEYS.length)return false;
        boolean saved=PreferenceManager.getDefaultSharedPreferences(context).edit().remove(KEYS[mode]).commit();
        return saved&&read(context,mode)<0;
    }
    public static int font(Context context,int legacy) {int value=read(context,0);return value>0?value:legacy;}
    public static int candidate(Context context,int legacy,int legacyMain) {
        int value=read(context,4);
        if(value<=0||legacy<=0||legacyMain<=0)return legacy;
        return Math.max(1,Math.round((float)legacy*value/legacyMain));
    }
    public static int gap(Context context,int legacy) {int value=read(context,5);return value>0?value:legacy;}
    public static int panel(Context context,int legacy) {
        boolean landscape=context.getResources().getConfiguration().orientation==Configuration.ORIENTATION_LANDSCAPE;
        int value=read(context,landscape?2:1);
        return value>0?value:legacy;
    }
    public static int panelWithoutAbsolute(Context context,int legacy) {return legacy;}

    /** A fixed arithmetic grid, unrelated to the quick preset buttons. */
    public static final class Steps {
        public final int first,last,step,defaultValue;
        public Steps(int minimum,int maximum,int step,int defaultValue) {
            if(step<=0||minimum>maximum)throw new IllegalArgumentException("size range");
            this.step=step;this.defaultValue=defaultValue;
            first=((minimum+step-1)/step)*step;
            last=first+Math.max(0,(maximum-first)/step)*step;
        }
        public int count(){return (last-first)/step+1;}
        public int at(int progress){return first+Math.max(0,Math.min(count()-1,progress))*step;}
        public int index(int value){return Math.max(0,Math.min(count()-1,Math.round((value-first)/(float)step)));}
        public int nearest(int value){return at(index(value));}
        public boolean accepts(int value){return value>=first&&value<=last&&(value-first)%step==0;}
    }
}
