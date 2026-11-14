package com.cootek.smartinput5.ui;
import android.content.Context;import android.graphics.Rect;import android.graphics.drawable.Drawable;
/** Exact public128 DTO contract; never packaged. */
public final class KeyboardPreview128 {
 public static final class Icon {public final Rect bounds;public final Drawable drawable;public final String fallback,label;private Icon(){throw new UnsupportedOperationException();}}
 public static final class Frame {public final SizePreviewBridge.Snapshot keyboard;public final SizePreviewBridge.Key[] filterKeys;public final Rect filterBounds,candidateContentBounds;public final int width,height,bodyTop,panelHeight;public final Drawable candidateBackground,filterBackground;public final Icon[] icons;public final boolean liveGeometry;public final String note;private Frame(){throw new UnsupportedOperationException();}}
 public static Frame capture(Context c,int body,int panel){throw new UnsupportedOperationException();}
}
