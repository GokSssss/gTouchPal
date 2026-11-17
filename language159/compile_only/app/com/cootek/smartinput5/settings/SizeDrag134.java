package com.cootek.smartinput5.settings;
import android.content.Context;import android.graphics.RectF;import android.view.View;
public final class SizeDrag134 extends View{
 public interface Listener{int value();int minimum();int maximum();int step();boolean available();void change(int value,boolean finished);void cancel();}
 public SizeDrag134(Context context,Listener listener){super(context);}public void bounds(RectF b,boolean horizontal,int color,int top){}public void cancelGesture(){}
}
