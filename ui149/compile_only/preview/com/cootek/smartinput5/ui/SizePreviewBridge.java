package com.cootek.smartinput5.ui;
import android.content.Context;
import android.graphics.*;
import android.graphics.drawable.Drawable;
public class SizePreviewBridge {
    public static final class Key {
        public final int x, y, width, height;
        public final String main, alt, name;
        public final float mainSize, altSize;
        public final int mainColor, altColor;
        public final Drawable background, icon;
        public final boolean normal, altInCorner;
        public final Point mainPosition, altPosition;
        public final Paint.Align mainXAlign, mainYAlign, altXAlign, altYAlign;
        public final Rect padding;
        Key(Context context, SoftKeyboardView view, T key, double textScale) { throw new UnsupportedOperationException();
        }

    }

    public static final class Snapshot {
        public final Key[] keys;
        public final int width, height;
        public final String alias;
        public final boolean loaded, fromSchema;
        public final String note;
        public final double textScale, heightScale, widthScale;
        public final float fallbackText, themeFallbackText;
        public final int keyboardSetting;
        Snapshot(Key[] keys, int width, int height, String alias,
                 double textScale, double heightScale, double widthScale,
                 float fallbackText, float themeFallbackText, int keyboardSetting) { throw new UnsupportedOperationException();
        }
        Snapshot(Key[] keys, int width, int height, String alias,
                 double textScale, double heightScale, double widthScale,
                 float fallbackText, float themeFallbackText, int keyboardSetting,
                 boolean fromSchema, String note) { throw new UnsupportedOperationException();
        }
    }

    public static final class HeightSpec { public int effectivePx,defaultPx,panelPx,windowMode,minPx,maxPx,schemaBasePx; public boolean available; public String reason; public int bodyForRaw(int value){throw new UnsupportedOperationException();} public int totalForRaw(int value){throw new UnsupportedOperationException();} }
 public static float keyboardPanelScale(Context c,int raw){throw new UnsupportedOperationException();}
 public static Snapshot capture(Context c){throw new UnsupportedOperationException();}
 public static HeightSpec heightSpec(Context c){throw new UnsupportedOperationException();}
 public static int setting(int id,int fallback){throw new UnsupportedOperationException();}
 public static Drawable own(Context c,Drawable d){throw new UnsupportedOperationException();}
}
