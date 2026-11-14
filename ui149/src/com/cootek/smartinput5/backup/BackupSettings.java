package com.cootek.smartinput5.backup;

import android.content.Intent;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceGroup;
import android.preference.PreferenceScreen;

/** Adds the backup entry to the existing TouchPal additions group. */
public final class BackupSettings {
    public static final String KEY = "touchpal_full_backup";

    private BackupSettings() { }

    public static void install(PreferenceActivity activity) {
        if (activity == null || activity.findPreference(KEY) != null) return;
        PreferenceScreen root = activity.getPreferenceScreen();
        if (root == null) return;
        Preference additions = activity.findPreference("tp_additions");
        PreferenceGroup parent = additions instanceof PreferenceGroup
                ? (PreferenceGroup) additions : root;
        Preference item = new Preference(activity);
        item.setKey(KEY);
        item.setPersistent(false);
        item.setTitle("Резервная копия");
        item.setSummary("western.usr · словари и настройки · ZIP");
        item.setOrder(parent == root ? 1055 : 55);
        item.setIntent(new Intent(activity, BackupActivity.class));
        parent.addPreference(item);
    }
}
