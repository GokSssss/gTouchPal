package com.cootek.smartinput5.ui;
import android.graphics.*;
import android.graphics.drawable.Drawable;
public class ColdSchemaSnapshot {
 public static boolean isAdditionalRussian(android.content.Context c,String p){return false;}
    public static final class Cell {
        public int x, y, width, height, mainColor, altColor, titleFlags;
        public String name = "", main = "", alt = "";
        public float mainSize, altSize;
        public Drawable background, icon;
        public boolean normal, altInCorner, iconWithMainTitle;
        public Point mainPosition, altPosition;
        public Paint.Align mainXAlign, mainYAlign, altXAlign, altYAlign;
        public Rect padding = new Rect();
    }
    public static final class Result {
        public int width, height;
        public double textScale = 1, widthScale = 1, heightScale = 1;
        public float fallbackText, themeFallbackText;
        public String alias = "", reason = "Раскладка недоступна";
        public Cell[] cells = new Cell[0];
        public boolean exact, geometryExact, captionsExact;
    }
 public static Result read(android.content.Context c,int h){throw new UnsupportedOperationException();}
}
