package com.cootek.smartinput5.settings;

import android.content.Context;
import android.content.res.Configuration;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceGroup;
import com.cootek.smartinput5.engine.Config;
import com.cootek.smartinput5.engine.Settings;
import com.cootek.smartinput5.ui.SizePreviewBridge;

/** Separate orientation-scoped native height, sharing the existing resize page. */
public final class LandscapeHeight152 {
    private LandscapeHeight152() { }
    static Context context(Context source, int mode) {
        if (mode != SizeModel.HEIGHT_LANDSCAPE || source.getResources().getConfiguration().orientation == Configuration.ORIENTATION_LANDSCAPE) return source;
        try {
            Configuration configuration = new Configuration(source.getResources().getConfiguration());
            configuration.orientation = Configuration.ORIENTATION_LANDSCAPE;
            return (Context) Context.class.getMethod("createConfigurationContext", Configuration.class).invoke(source, configuration);
        } catch (Exception unavailable) { return source; } // API15/16 rotates the actual page before editing.
    }
    public static void seed(Context context) {
        try {
            if (!Settings.isInitialized()) return;
            Settings settings = Settings.getInstance();
            Config landscape = new Config(Configuration.ORIENTATION_LANDSCAPE);
            int windowMode = settings.getIntSetting(0x239, -1, null, landscape);
            int nativeId = windowMode == 2 ? 0x235 : windowMode == 4 ? 0x267 : 0x102;
            if (settings.getIntSetting(nativeId, -1, null, landscape) != -1) return;
            Context target = context(context, SizeModel.HEIGHT_LANDSCAPE);
            SizePreviewBridge.HeightSpec spec = SizePreviewBridge.heightSpec(target);
            if (!spec.available || spec.orientation != Configuration.ORIENTATION_LANDSCAPE) return;
            int body = Math.round((550 - spec.panelPx) / (spec.numberLine ? 1.2f : 1f));
            if (body <= 0) return;
            settings.setIntSetting(nativeId, body, -1, null, landscape, true);
            settings.writeBack();
        } catch (RuntimeException unavailable) { }
    }
    static void arrange(PreferenceActivity activity) {
        Preference portrait = activity.findPreference(SizeModel.preferenceKey(SizeModel.HEIGHT));
        Preference landscape = activity.findPreference(SizeModel.preferenceKey(SizeModel.HEIGHT_LANDSCAPE));
        if (portrait == null || landscape == null) return;
        portrait.setTitle(SizeModel.title(SizeModel.HEIGHT));
        PreferenceGroup target = KeyboardActivation152.parent(activity.getPreferenceScreen(), portrait);
        PreferenceGroup old = KeyboardActivation152.parent(activity.getPreferenceScreen(), landscape);
        if (target == null || old == null) return;
        if (old != target) { old.removePreference(landscape); target.addPreference(landscape); }
        for (int i = target.getPreferenceCount() - 1; i >= 0; i--) target.getPreference(i).setOrder(i * 2);
        landscape.setOrder(portrait.getOrder() + 1);
    }
}
