package com.cootek.smartinput5.settings;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ContentResolver;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceGroup;
import android.provider.Settings;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;
import android.view.View;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import java.util.Map;
import java.util.ArrayList;

/** Manual Android activation; entering settings never opens an activation flow. */
public final class KeyboardActivation152 {
    public static final String KEY = "tp_enable_touchpal152";
    public static final int RED = 0xffe55353;
    private static final String SERVICE = "com.cootek.smartinput5.TouchPalIME";
    private static final WeakHashMap<PreferenceActivity,Watcher> WATCHERS=new WeakHashMap<PreferenceActivity,Watcher>();
    private static final WeakHashMap<TextView,WeakReference<Activation>> TITLES=new WeakHashMap<TextView,WeakReference<Activation>>();
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
        Watcher watcher=WATCHERS.get(activity);
        if(watcher==null){watcher=new Watcher(activity,item);WATCHERS.put(activity,watcher);activity.getWindow().getDecorView().addOnAttachStateChangeListener(watcher);}
        watcher.start();
    }
    /** Rebinding a recycled title removes its former activation ownership. */
    public static void bindTitle(Preference item,TextView title){
        if(title==null)return;
        if(item instanceof Activation){Activation activation=(Activation)item;TITLES.put(title,new WeakReference<Activation>(activation));activation.color(title);}
        else TITLES.remove(title);
    }
    static void stopWatching(PreferenceActivity activity){Watcher watcher=WATCHERS.get(activity);if(watcher!=null)watcher.stop();}
    private static final class Activation extends Preference {
        Activation(Context context) { super(context); }
        void color(TextView view){view.setTextColor(active(getContext())?(SettingsIcons149.dark(getContext())?0xffefefef:0xff202020):RED);}
        void refresh() {
            setSummary(active(getContext()) ? "TouchPal включён" : enabled(getContext())
                    ? "Выбрать TouchPal для ввода" : "Разрешить TouchPal в настройках Android");
            for(Map.Entry<TextView,WeakReference<Activation>> entry:new ArrayList<Map.Entry<TextView,WeakReference<Activation>>>(TITLES.entrySet())){
                TextView view=entry.getKey();WeakReference<Activation> owner=entry.getValue();
                if(view!=null&&owner!=null&&owner.get()==this)color(view);
            }
            notifyChanged();
        }
    }
    private static final class Watcher extends ContentObserver implements View.OnAttachStateChangeListener,Runnable {
        final WeakReference<PreferenceActivity> owner;final WeakReference<Activation> item;
        final ContentResolver resolver;final Handler handler=new Handler(Looper.getMainLooper());
        boolean registered,posted;
        Watcher(PreferenceActivity page,Activation row){super(new Handler(Looper.getMainLooper()));owner=new WeakReference<PreferenceActivity>(page);item=new WeakReference<Activation>(row);resolver=page.getApplicationContext().getContentResolver();}
        void start(){
            if(registered)return;
            try{resolver.registerContentObserver(Settings.Secure.getUriFor(Settings.Secure.DEFAULT_INPUT_METHOD),false,this);resolver.registerContentObserver(Settings.Secure.getUriFor(Settings.Secure.ENABLED_INPUT_METHODS),false,this);registered=true;}
            catch(RuntimeException unavailable){try{resolver.unregisterContentObserver(this);}catch(RuntimeException ignored){}}
        }
        void stop(){handler.removeCallbacks(this);posted=false;if(registered){try{resolver.unregisterContentObserver(this);}catch(RuntimeException ignored){}registered=false;}}
        public void onChange(boolean self){schedule();}
        public void onChange(boolean self,Uri uri){schedule();}
        private void schedule(){if(registered&&!posted){posted=true;handler.post(this);}}
        public void run(){posted=false;if(!registered)return;PreferenceActivity page=owner.get();Activation row=item.get();if(page==null||page.isFinishing()||row==null){stop();return;}row.refresh();}
        public void onViewAttachedToWindow(View view){start();run();}
        public void onViewDetachedFromWindow(View view){stop();}
    }
}
