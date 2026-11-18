package com.cootek.smartinput5.backup;

import android.content.Intent;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceGroup;
import android.preference.PreferenceScreen;

/** Adds the backup entry to the existing TouchPal additions group. */
public final class BackupSettings {
    public static final String KEY = "touchpal_full_backup";
    public static final String DICTIONARY_KEY = "tp_dictionary_backup154";

    private BackupSettings() { }

    public static void install(PreferenceActivity activity) {
        if (activity == null || activity.findPreference(KEY) != null) return;
        PreferenceScreen root = activity.getPreferenceScreen();
        if (root == null) return;
        Preference additions = activity.findPreference("tp_additions");
        PreferenceGroup parent = additions instanceof PreferenceGroup
                ? (PreferenceGroup) additions : root;
        Preference item = new DictionaryShortcut(activity);
        item.setKey(KEY);
        item.setPersistent(false);
        item.setTitle("Резервная копия и восстановление");
        item.setSummary("western.usr · словари и настройки · ZIP");
        item.setOrder(parent == root ? 1055 : 55);
        item.setIntent(new Intent(activity, BackupActivity.class));
        parent.addPreference(item);
    }

    /** Replace only the duplicate file tools; keep management, contacts and clear untouched. */
    public static void installDictionaryShortcut(PreferenceActivity activity) {
        Preference marker = activity.findPreference("option_category_manager_dictionary");
        if (!(marker instanceof PreferenceGroup)) return;
        PreferenceGroup parent = (PreferenceGroup) marker;
        String[] removed = {"option_edit_dictionary", "option_backup_dictionary",
                "option_restore_dictionary", "option_rebuild_language_data"};
        int order = Integer.MAX_VALUE;
        for (String key : removed) {
            Preference item = activity.findPreference(key);
            if (item != null) {
                order = Math.min(order, item.getOrder());
                PreferenceGroup owner = findParent(activity.getPreferenceScreen(), item);
                if (owner != null) owner.removePreference(item);
            }
        }
        Preference existing = activity.findPreference(DICTIONARY_KEY);
        if (existing != null) return;
        Preference item = new DictionaryShortcut(activity);
        item.setKey(DICTIONARY_KEY); item.setPersistent(false);
        item.setTitle("Сохранение и восстановление пользовательского словаря");
        item.setSummary("Файл western.usr с выбором пути или слова в TXT.");
        item.setOrder(order == Integer.MAX_VALUE ? 25 : order);
        item.setIntent(new Intent(activity, BackupActivity.class));
        parent.addPreference(item);
    }

    private static final class DictionaryShortcut extends Preference {
        DictionaryShortcut(android.content.Context context) { super(context); }
        @Override protected void onBindView(android.view.View view) {
            super.onBindView(view);
            android.widget.TextView title = (android.widget.TextView) view.findViewById(android.R.id.title);
            if (title != null) {
                title.setSingleLine(false); title.setMaxLines(2);
                title.setEllipsize(android.text.TextUtils.TruncateAt.END);
            }
        }
    }

    private static PreferenceGroup findParent(PreferenceGroup root, Preference target) {
        if (root == null) return null;
        for (int n = 0; n < root.getPreferenceCount(); n++) {
            Preference item = root.getPreference(n);
            if (item == target) return root;
            if (item instanceof PreferenceGroup) {
                PreferenceGroup result = findParent((PreferenceGroup) item, target);
                if (result != null) return result;
            }
        }
        return null;
    }
}
