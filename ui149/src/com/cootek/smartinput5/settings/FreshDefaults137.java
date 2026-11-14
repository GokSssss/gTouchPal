package com.cootek.smartinput5.settings;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.preference.PreferenceManager;
import com.cootek.smartinput5.engine.Config;
import com.cootek.smartinput5.engine.Settings;

/** Seed first-install defaults and missing factory sizes; preserve restored choices. */
public final class FreshDefaults137 {
    private static final String LOCAL = "touchpal_install138";
    private FreshDefaults137() { }

    public static void seed(Context context) {
        try {
            CandidatePanel141.migrate(context);
            SharedPreferences local = context.getSharedPreferences(LOCAL, 0);
            if (local.getBoolean("checked", false)) return;
            SharedPreferences nativePrefs = context.getSharedPreferences("TouchPalOptions", 0);
            Object first = nativePrefs.getAll().get("FIRST_START_INPUTMETHOD");
            boolean fresh = Boolean.TRUE.equals(first) || "true".equalsIgnoreCase(String.valueOf(first))
                    || (!nativePrefs.contains("IME_CUR_VERSION") && !nativePrefs.contains("CURRENT_LANGUAGE")
                    && first == null);
            if (fresh && !nativePrefs.contains("EMOJI_PREDICTION")
                    && !nativePrefs.edit().putBoolean("EMOJI_PREDICTION", false).commit()) return;
            SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(context);
            SharedPreferences.Editor editor = preferences.edit();
            if(fresh || factory(preferences,"keyboard_text_size_custom",26)) putMissing(preferences,editor,"tp_size130_font_px",80);
            if(fresh || factory(preferences,"keyboard_panel_height_portrait_custom",43)) putMissing(preferences,editor,"tp_size130_panel_port_px",100);
            if(fresh || factory(preferences,"keyboard_panel_height_custom",43)) putMissing(preferences,editor,"tp_size130_panel_land_px",100);
            if(fresh || factory(preferences,"candidate_gap_custom",10)) putMissing(preferences,editor,"tp_size130_gap_px",5);
            if(!preferences.contains("candidate_vertical_separators")) editor.putBoolean("candidate_vertical_separators",true);
            if(!editor.commit())return;
            boolean stockHeight=true;
            for(java.util.Map.Entry<String,?> value:nativePrefs.getAll().entrySet()) {
                if(value.getKey().startsWith("KEYBOARD_HEIGHT_NORMAL") && !"-1".equals(String.valueOf(value.getValue())))stockHeight=false;
            }
            if((fresh || stockHeight) && !local.edit().putBoolean("height_pending",true).commit())return;
            local.edit().putBoolean("checked", true).commit();
        } catch (RuntimeException unavailable) { }
    }

    /** Physical defaults shared by first installation and the reset buttons. */
    public static int pixels(int mode) {
        return mode == 0 ? 80 : mode == 1 || mode == 2 || mode == 3 ? 100
                : mode == 5 ? 5 : mode == 6 ? 1000 : -1;
    }

    /** Explicit ZIP restoration wins over pending first-install initialization. */
    public static void restored(Context context) {
        context.getSharedPreferences(LOCAL, 0).edit().putBoolean("checked", true)
                .putBoolean("height_pending", false).commit();
    }

    private static void putMissing(SharedPreferences preferences, SharedPreferences.Editor editor, String key, int value) {
        if (!preferences.contains(key)) editor.putInt(key, value);
    }
    private static boolean factory(SharedPreferences preferences,String key,int value) {
        Object current=preferences.getAll().get(key);
        return current==null || String.valueOf(value).equals(String.valueOf(current));
    }

    public static void afterSettings(Context context) {
        try {
            CandidatePanel141.migrate(context);
            SharedPreferences local = context.getSharedPreferences(LOCAL, 0);
            if (!local.getBoolean("height_pending", false)) return;
            Settings settings = Settings.getInstance();
            if (settings == null) return;
            int screen = Math.max(context.getResources().getDisplayMetrics().heightPixels,
                    context.getResources().getDisplayMetrics().widthPixels);
            int total = Math.min(1000, (int) (screen * .65f / 5) * 5);
            if (total <= 100) return;
            boolean numberRow = settings.getBoolSetting(0x18d);
            int body = Math.round((total - 100) / (numberRow ? 1.2f : 1f));
            Config portrait = new Config(Configuration.ORIENTATION_PORTRAIT);
            settings.setIntSetting(0x102, body, -1, null, portrait, true);
            settings.writeBack();
            if (settings.getIntSetting(0x102, -1, null, portrait) == body)
                local.edit().putBoolean("height_pending", false).commit();
        } catch (RuntimeException unavailable) { }
    }
}
