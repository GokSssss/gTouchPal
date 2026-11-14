package com.cootek.smartinput5.settings;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.cootek.smartinput5.engine.Settings;
import com.cootek.smartinput5.func.i0;
import com.cootek.smartinput5.func.z;
import com.cootek.smartinput5.skin.BundledGateTheme;

/** Couple a settings-theme transition to the existing bundled dark keyboard. */
public final class ThemeSync137 {
    private ThemeSync137() { }

    public static void cold(Context context) { sync(context, false); }
    public static void live(Context context) { sync(context, true); }

    private static synchronized void sync(Context context, boolean live) {
        if (context == null) return;
        try {
            boolean dark = PreferenceManager.getDefaultSharedPreferences(context).getBoolean("option_dark_theme", false);
            SharedPreferences state = PreferenceManager.getDefaultSharedPreferences(context);
            if (state.getBoolean("tp_theme137_dark_applied", false) == dark) return;
            Settings settings = Settings.getInstance();
            if (settings == null) return;
            String current = settings.getStringSetting(0x54);
            String next = current;
            SharedPreferences.Editor editor = state.edit();
            if (dark) {
                // The shipped Flat gate archive already uses dark keys and light labels.
                if (BundledGateTheme.find(context, BundledGateTheme.ID) == null) return;
                if (!BundledGateTheme.ID.equals(current)) editor.putString("tp_theme137_previous_skin", current == null ? "" : current);
                next = BundledGateTheme.ID;
            } else if (BundledGateTheme.ID.equals(current)) {
                String previous = state.getString("tp_theme137_previous_skin", "");
                if (previous.length() != 0) next = previous;
            }
            if (next != null && !next.equals(current)) {
                if (live && z.J0()) {
                    i0 manager = z.b0().v0();
                    if (manager == null || !manager.U0(next)) return;
                }
                settings.setStringSetting(0x54, next);
                settings.writeBack();
            }
            editor.putBoolean("tp_theme137_dark_applied", dark).commit();
        } catch (RuntimeException unavailable) {
            // A later Settings initialization can retry; opening settings must remain possible.
        }
    }
}
