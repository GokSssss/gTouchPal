package com.cootek.smartinput5.settings;
public class SizePreview extends android.view.View {
 public SizePreview(android.content.Context c){super(c);}
 public void setValue(int mode,int raw,boolean isDefault){}
 public void setPreviewPixels(int mode,int pixel,int raw){}
 public android.graphics.RectF adjustmentBounds(int mode){return new android.graphics.RectF();}
 public int adjustmentColor(){return 0xff49b2e8;}
 public void setCandidateButtonsPreview(int side){}
 public void setCandidateCountPreview(int count){}
 public android.graphics.RectF[] editableButtonBounds(){return new android.graphics.RectF[0];}
 public void setToolbarPreview(int slot){}
 public void setDividers(boolean enabled){}
 public String resolvedCaption(int mode,int raw,boolean isDefault){return mode==6?"Высота: "+(Math.round(com.cootek.smartinput5.ui.SizePreviewBridge.heightSpec(getContext()).totalForRaw(raw)/5f)*5)+" px":"Размер: 80 px";}
 public boolean hasNativeGeometry(){return true;}
 public String geometryNote(){return "";}
 public int nativeHeightPx(){return 550;}
 public int nativeWidthPx(){return 1080;}
 public static ThemeSnapshot loadTheme(android.content.Context c){return new ThemeSnapshot();}
 public static final class ThemeSnapshot {
  public int surface=0xff202020,text=-1,muted=0xffaaaaaa,accent=0xff49b2e8,line=0xff777777;
  public android.graphics.drawable.Drawable newBackground(android.content.Context c){return new android.graphics.drawable.ColorDrawable(0xff202020);}
  public android.graphics.drawable.Drawable newButtonBackground(android.content.Context c){return new android.graphics.drawable.ColorDrawable(0xff202020);}
 }
}
