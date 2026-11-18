package com.cootek.smartinput5.settings;

import android.app.Activity;
import android.content.Intent;
import android.os.Looper;
import android.widget.Toast;

/** Open the original installed-theme grid and keep its previews and selection callbacks. */
public final class ThemePicker156 {
    private ThemePicker156(){}
    public static void open(Activity page){
        if(page==null||page.isFinishing()||Looper.myLooper()!=Looper.getMainLooper())return;
        Intent intent=new Intent();
        intent.setClassName(page.getPackageName(),"com.cootek.smartinput5.func.mainentrance.MainEntranceActivity");
        // The original activity's tab0 is native mainentrance.f (installed skins).
        // No data/source URL: its alternative WebView page is not selected.
        intent.putExtra("tabNumber",0);
        try{page.startActivity(intent);}
        catch(android.content.ActivityNotFoundException unavailable){Toast.makeText(page,"Не удалось открыть штатные темы клавиатуры.",Toast.LENGTH_LONG).show();}
    }
}
