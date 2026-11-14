package com.cootek.smartinput5.settings;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.view.View;
import android.os.Handler;
import android.os.Looper;
import com.cootek.smartinput5.engine.Engine;
import com.cootek.smartinput5.engine.Settings;
import com.cootek.smartinput5.engine.Config;
import com.cootek.smartinput5.ui.SizePreviewBridge;
import com.cootek.smartinput5.ui.SoftKeyboardView;
import com.cootek.smartinput5.ui.CandidateBar;
import com.cootek.smartinput5.ui.g;
import com.cootek.smartinput5.ui.o0;
import com.cootek.smartinput5.ui.settings.CandidateGapListPreference;

/** Uses the original stores; no parallel setting keys or native enum interpolation. */
final class SizeRuntimeStore implements SizeModel.Store {
    private static boolean heightPending;
    private final SharedPreferences preferences;
    private final Context context;
    private SizePreviewBridge.HeightSpec height;
    private Config heightConfig;
    SizeRuntimeStore(Context context) {this.context=context;preferences=PreferenceManager.getDefaultSharedPreferences(context);}
    SizePreviewBridge.HeightSpec height() {
        if(height==null) {height=SizePreviewBridge.heightSpec(context);heightConfig=new Config(height.orientation);}
        return height;
    }
    private boolean allowedHeight(int raw) {
        if(!height().available) return false;
        if(raw==-1) return true;
        for(int value:height.values) if(value==raw) return true;
        return false;
    }
    public int read(int mode) {
        if(mode==SizeModel.HEIGHT) return height().available && Settings.isInitialized()
            ?Settings.getInstance().getIntSetting(height.nativeId,-1,null,heightConfig):Integer.MIN_VALUE;
        int nativeId=SizeModel.nativeId(mode);
        if(nativeId>=0) return Settings.isInitialized()?Settings.getInstance().getIntSetting(nativeId):Integer.MIN_VALUE;
        return preferences.getInt(SizeModel.storeKey(mode),SizeModel.defaultRaw(mode));
    }
    public boolean write(int mode,int raw) {
        if(mode==SizeModel.HEIGHT) {
            if(!allowedHeight(raw) || !Settings.isInitialized()) return false;
            Settings settings=Settings.getInstance();
            settings.setIntSetting(height.nativeId,raw,-1,null,heightConfig,true);
            settings.writeBack();
            return settings.getIntSetting(height.nativeId,-1,null,heightConfig)==raw;
        }
        if(SizeModel.indexOf(mode,raw)<0) return false;
        int nativeId=SizeModel.nativeId(mode);
        if(nativeId>=0) {
            if(!Settings.isInitialized()) return false;
            Settings settings=Settings.getInstance();
            settings.setIntSetting(nativeId,raw);
            settings.writeBack();
            return settings.getIntSetting(nativeId)==raw;
        }
        boolean saved=preferences.edit().putInt(SizeModel.storeKey(mode),raw).commit();
        if(mode==SizeModel.GAP) CandidateGapListPreference.setCachedValue(raw);
        return saved;
    }
    private static boolean clearPendingHeight(boolean windowHidden) {
        if(!heightPending || !Engine.isInitialized()) return false;
        Engine engine=Engine.getInstance();o0 widgets=engine.getWidgetManager();
        if(widgets==null || engine.getIms()==null) return false;
        if(!windowHidden && engine.getIms().isInputViewShown()) return false;
        // Clear first: z0() itself can detach the old keyboard and reenter the hook.
        heightPending=false;
        try {
            widgets.z0();
            if(engine.getWindowLayoutManager()!=null) engine.getWindowLayoutManager().j0();
            return true;
        } catch(RuntimeException unavailable) {
            heightPending=true;
            return false;
        }
    }
    static void flushPendingHeight() {
        if(clearPendingHeight(false)) Engine.getInstance().updateResult(16,-1);
    }
    static void scheduleKeyboardHidden(final View view) {
        if(!heightPending || view==null) return;
        // Wait for View dispatch to finish before tearing down its old parent/cache.
        new Handler(Looper.getMainLooper()).post(new Runnable(){
            public void run(){try {keyboardHidden(view);} catch(RuntimeException unavailable) {heightPending=true;}}
        });
    }
    static void keyboardHidden(View view) {
        if(!heightPending || view==null || !Engine.isInitialized()) return;
        o0 widgets=Engine.getInstance().getWidgetManager();
        if(widgets==null || widgets.y()!=view) return;
        boolean hidden=view.getWindowVisibility()!=View.VISIBLE
            || view.getWindowToken()==null && !view.isShown();
        if(hidden && clearPendingHeight(true)) Engine.getInstance().updateResult(16,-1);
    }
    static void refresh(int mode) {
        if(!Engine.isInitialized()) return;
        Engine engine=Engine.getInstance();o0 widgets=engine.getWidgetManager();
        if(widgets==null) return;
        if(mode==SizeModel.HEIGHT) {
            heightPending=true;
            clearPendingHeight(false);
            widgets=engine.getWidgetManager();
            if(widgets==null) return;
        }
        g candidates=widgets.u();
        if(candidates!=null) {
            candidates.x(); // invalidate the stock panel-height cache
            CandidateBar bar=candidates.c();
            if(bar!=null) {bar.Y0();bar.requestLayout();bar.invalidate();}
        }
        SoftKeyboardView keyboard=widgets.y();
        if(keyboard!=null) keyboard.size127RefreshPreferences();
        // Recompute the existing size/layout controller, using its normal setting reader.
        if((mode==SizeModel.KEYBOARD || mode==SizeModel.PANEL_PORTRAIT || mode==SizeModel.PANEL_LANDSCAPE || mode==SizeModel.HEIGHT)
                && widgets.O()!=null) widgets.O().r0();
        engine.updateResult(16,-1);
    }
}
