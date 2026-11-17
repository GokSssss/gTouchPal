package com.cootek.smartinput5.ui.settings;

/** Native language-list boundary: real Android preferences, no vendor engine execution. */
public class LanguageListActivityInte extends android.preference.PreferenceActivity {
    @Override public void onCreate(android.os.Bundle state){
        super.onCreate(state);
        android.preference.PreferenceScreen root=getPreferenceManager().createPreferenceScreen(this);
        android.preference.PreferenceCategory installed=new android.preference.PreferenceCategory(this);
        installed.setKey("option_installed_language_list");installed.setTitle("Установленные языки");root.addPreference(installed);setPreferenceScreen(root);
    }
    @Override public void onResume(){super.onResume();com.cootek.smartinput5.settings.CompactSettings.install(this);}
}
