package com.cootek.smartinput5.settings;
import android.app.Activity;
import android.os.Looper;
/** Delegate to the same native T-shirt action used by the keyboard. */
public final class ThemePicker156 {
 private ThemePicker156(){}
 public static void open(Activity page){
  if(page==null||page.isFinishing()||Looper.myLooper()!=Looper.getMainLooper())return;
  new com.cootek.smartinput5.pluginwidget.t().c(page);
 }
}
