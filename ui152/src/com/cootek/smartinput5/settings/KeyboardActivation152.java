package com.cootek.smartinput5.settings;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceGroup;
import android.provider.Settings;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;

/** Manual Android activation; entering settings never opens an activation flow. */
public final class KeyboardActivation152 {
    public static final String KEY = "tp_enable_touchpal152";
    public static final int RED = 0xffe55353;
    private static final String SERVICE = "com.cootek.smartinput5.TouchPalIME";
    private KeyboardActivation152() { }

    private static ComponentName component(Context context) {
        return new ComponentName(context.getPackageName(), SERVICE);
    }
    static boolean enabled(Context context) {
        InputMethodManager manager = (InputMethodManager) context.getSystemService(Context.INPUT_METHOD_SERVICE);
        if (manager == null) return false;
        for (InputMethodInfo info : manager.getEnabledInputMethodList()) {
            if (component(context).equals(new ComponentName(info.getPackageName(), info.getServiceName()))) return true;
        }
        return false;
    }
    public static boolean active(Context context) {
        try {
            String selected = Settings.Secure.getString(context.getContentResolver(), Settings.Secure.DEFAULT_INPUT_METHOD);
            return enabled(context) && component(context).equals(ComponentName.unflattenFromString(selected == null ? "" : selected));
        } catch (RuntimeException unavailable) { return false; }
    }
    static PreferenceGroup parent(PreferenceGroup group, Preference target) {
        if (group == null) return null;
        for (int i = 0; i < group.getPreferenceCount(); i++) {
            Preference child = group.getPreference(i);
            if (child == target) return group;
            if (child instanceof PreferenceGroup) {
                PreferenceGroup found = parent((PreferenceGroup) child, target);
                if (found != null) return found;
            }
        }
        return null;
    }
    /** Idempotent insertion, also used when the system changes our active state. */
    public static void install(final PreferenceActivity activity) {
        Preference anchor = activity.findPreference("tp_system_keyboard_settings");
        if (anchor == null) return;
        PreferenceGroup group = parent(activity.getPreferenceScreen(), anchor);
        if (group == null) return;
        Preference existing = activity.findPreference(KEY);
        Activation item;
        if (existing instanceof Activation) item = (Activation) existing;
        else {
            if (existing != null) return;
            item = new Activation(activity);
            item.setKey(KEY);
            item.setTitle("Включить TouchPal");
            item.setPersistent(false);
            item.setLayoutResource(anchor.getLayoutResource());
            for (int i = group.getPreferenceCount() - 1; i >= 0; i--) group.getPreference(i).setOrder(i * 2);
            item.setOrder(anchor.getOrder() + 1);
            item.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() {
                public boolean onPreferenceClick(Preference preference) {
                    try {
                        if (enabled(activity)) {
                            InputMethodManager manager = (InputMethodManager) activity.getSystemService(Context.INPUT_METHOD_SERVICE);
                            if (manager != null) manager.showInputMethodPicker();
                        } else activity.startActivity(new Intent(Settings.ACTION_INPUT_METHOD_SETTINGS));
                    } catch (RuntimeException unavailable) { return false; }
                    return true;
                }
            });
            group.addPreference(item);
        }
        item.refresh();
    }
    private static final class Activation extends Preference {
        Activation(Context context) { super(context); }
        void refresh() {
            setSummary(active(getContext()) ? "TouchPal включён" : enabled(getContext())
                    ? "Выбрать TouchPal для ввода" : "Разрешить TouchPal в настройках Android");
            notifyChanged();
        }
    }
}
