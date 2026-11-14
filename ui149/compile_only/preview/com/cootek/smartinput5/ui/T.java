package com.cootek.smartinput5.ui;
import android.graphics.drawable.Drawable;
public class T {
 public int x,y,width,height;
 public String keyName;
 public int mKeyMainTextColor,mKeyAltTextColor;
 public Drawable mKeyBackground;
 SoftKeyInfo mSoftKeyInfo;
 boolean altTextInCorner;
 android.graphics.Point mainTextPos,altTextPos;
 android.graphics.Paint.Align mainTextXAlign,mainTextYAlign,altTextXAlign,altTextYAlign;
 int backgroundType;
 Drawable background,icon;
 protected Integer getForeColor(){throw new UnsupportedOperationException();}
}
