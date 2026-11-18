package com.cootek.smartinput5.ui;
import android.content.Context;
import com.cootek.smartinput5.engine.Settings;
import com.cootek.smartinput5.engine.Config;
/** Geometry at the closed-native boundary; actual drawing is inherited, not tested here. */
public class SizePreviewBridge {
 public static HeightSpec heightSpec(Context context){
  HeightSpec s=new HeightSpec();s.orientation=context.getResources().getConfiguration().orientation;
  Config c=new Config(s.orientation);Settings nativeSettings=Settings.getInstance();
  int window=nativeSettings.getIntSetting(0x239,-1,null,c);
  s.nativeId=window==2?0x235:window==4?0x267:0x102;s.numberLine=Settings.numberRow;
  s.raw=nativeSettings.getIntSetting(s.nativeId,-1,null,c);s.panelPx=100;s.defaultPx=450;
  s.minPx=150;s.maxPx=1000;s.stepPx=5;s.available=Settings.ready;s.reason="";
  s.values=new int[851];for(int i=0;i<s.values.length;i++)s.values[i]=150+i;
  return s;
 }
 public static class HeightSpec {
  public int nativeId,raw,defaultPx,minPx,maxPx,stepPx,effectivePx,orientation,windowMode,panelPx;
  public boolean available,exact,numberLine;public String reason;public int[] values;
  public int totalForRaw(int raw){return (int)((raw==-1?defaultPx:raw)*(numberLine?1.2f:1f))+panelPx;}
 }
}
