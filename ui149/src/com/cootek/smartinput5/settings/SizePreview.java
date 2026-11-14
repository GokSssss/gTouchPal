package com.cootek.smartinput5.settings;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ColorDrawable;
import android.preference.PreferenceManager;
import android.view.View;
import com.cootek.smartinput5.engine.Engine;
import com.cootek.smartinput5.func.i0;
import com.cootek.smartinput5.func.r0;
import com.cootek.smartinput5.func.z;
import com.cootek.smartinput5.sizes.CandidateDividers;
import com.cootek.smartinput5.sizes.SizePixels130;
import com.cootek.smartinput5.ui.RendingColorPosition;
import com.cootek.smartinput5.ui.SizePreviewBridge;
import com.cootek.smartinput5.ui.KeyboardPreview128;
import com.cootek.smartinput5.ui.TextColorPosition;
import com.cootek.smartinput5.ui.TopScrollView;
import com.cootek.smartinput5.ui.W;
import java.util.Locale;

/** Keyboard preview in native pixels, with read-only geometry for its adjustment overlay. Never opens or reparents the IME. */
public final class SizePreview extends View {
    private static final int INACTIVE_ALPHA=90;
    private static final int FONT = 0, PANEL_PORTRAIT = 1, PANEL_LANDSCAPE = 2;
    private static final int KEYBOARD = 3, CANDIDATE = 4, GAP = 5, HEIGHT = 6;
    private static final int TEXT_DIMEN = 0x7f0700cb;
    private static final int CANDIDATE_DIMEN = 0x7f0700d0;
    private static final int PANEL_DIMEN = 0x7f070195;
    private static final String[] WORDS = {"на", "об", "ма", "слово", "проверка", "привет"};
    private final Paint paint = new Paint(3);
    private final float density;
    private SizePreviewBridge.Snapshot geometry, current;
    private KeyboardPreview128.Frame frame;
    private Palette palette;
    private i0 skin;
    private Typeface typeface;
    private int mode = FONT, raw = 26;
    private boolean defaultValue = true, dividers;
    private float bodyHeight, bodyWidth, panelHeight, candidateText, candidateGap;
    private float bodyRatio = 1, textProjection = 1;
    private int temporaryPixel=-1;
    private int toolbarSlot=-1;
    private int candidateButton=-1,candidateCount=-1;

    public SizePreview(Context context) {
        super(context);
        density = Math.max(0.01f, context.getResources().getDisplayMetrics().density);
        setFocusable(false);
        setClickable(false);
        setContentDescription("Макет клавиатуры");
        current = geometry = SizePreviewBridge.capture(context);
        reloadTheme();
        compute();
        captureFrame();
    }

    /** Called after the page has persisted and refreshed native size state. */
    public void setValue(int mode, int raw, boolean defaultValue) {
        temporaryPixel=-1;
        this.mode = mode;
        this.raw = raw;
        this.defaultValue = defaultValue;
        SizePreviewBridge.Snapshot refreshed = SizePreviewBridge.capture(getContext());
        // Context rotation and persisted HEIGHT changes invalidate old warm geometry.
        geometry = refreshed;
        current = refreshed;
        reloadTheme();
        compute();
        captureFrame();
        requestLayout();
        invalidate();
    }

    /** Live drag preview; committing is exclusively the page's release action. */
    public void setPreviewPixels(int mode,int pixel,int raw) {
        this.mode=mode;this.raw=raw;this.defaultValue=false;temporaryPixel=pixel;
        current=geometry=SizePreviewBridge.capture(getContext());
        reloadTheme();compute();captureFrame();requestLayout();invalidate();
    }
    public int adjustmentColor(){return (palette.candidateAccent!=0?palette.candidateAccent:palette.text)|0xff000000;}
    private float mainPreviewRatio() {
        if(mode!=FONT||temporaryPixel<0)return 1;
        int fine=SizePixels130.read(getContext(),FONT);
        float base=fine>0?fine:pref("keyboard_text_size_custom",26)==26?current.themeFallbackText:pref("keyboard_text_size_custom",26)*density;
        if(base<=0)base=dimension(TEXT_DIMEN,15,true);
        return temporaryPixel/Math.max(1f,base);
    }
    /** Bounds use the same glyph positions and native1:1 pixels as onDraw. */
    public RectF adjustmentBounds(int mode) {
        if(!hasNativeGeometry())return new RectF();
        if(mode==HEIGHT)return new RectF(0,0,nativeWidthPx(),nativeHeightPx());
        if(mode==PANEL_PORTRAIT||mode==PANEL_LANDSCAPE||mode==KEYBOARD)return new RectF(0,0,nativeWidthPx(),panelHeight);
        paint.setTypeface(typeface);
        if(mode==CANDIDATE||mode==GAP) {
            paint.setTextSize(candidateText);
            RectF content=candidateContentBounds();
            float start=content.left+2*candidateGap;
            float baseline=(panelHeight-paint.ascent()-paint.descent())/2f;
            float end=start+paint.measureText(WORDS[0]);
            if(mode==GAP)return new RectF(end,Math.max(0,baseline+paint.ascent()),end+Math.max(2,2*candidateGap),Math.min(panelHeight,baseline+paint.descent()));
            return new RectF(start,Math.max(0,baseline+paint.ascent()),end,Math.min(panelHeight,baseline+paint.descent()));
        }
        if(geometry.loaded) {
            SizePreviewBridge.Key[] fonts=current.loaded&&current.keys.length==geometry.keys.length?current.keys:geometry.keys;
            for(int i=0;i<geometry.keys.length;i++) {
                SizePreviewBridge.Key key=geometry.keys[i],font=fonts[i];
                if(!key.normal||key.main.length()<2)continue;
                paint.setTextSize(Math.max(1,font.mainSize*textProjection*mainPreviewRatio()));paint.setTextAlign(Paint.Align.CENTER);
                float[] point=position(key,key.mainPosition,key.mainXAlign,key.mainYAlign,paint,key.main,false);
                float x=key.x+point[0],y=key.y*bodyRatio+point[1],width=paint.measureText(key.main);
                float left=paint.getTextAlign()==Paint.Align.CENTER?x-width/2:paint.getTextAlign()==Paint.Align.RIGHT?x-width:x;
                float top=frame==null?panelHeight:frame.bodyTop;
                return new RectF(Math.max(key.x,left),top+Math.max(key.y*bodyRatio,y+paint.ascent()),Math.min(key.x+key.width,left+width),top+Math.min((key.y+key.height)*bodyRatio,y+paint.descent()));
            }
        }
        return new RectF(0,0,nativeWidthPx(),Math.max(1,panelHeight));
    }

    public void setDividers(boolean enabled) {
        dividers = enabled;
        invalidate();
    }
    public void setToolbarPreview(int selectedSlot){
        if(selectedSlot<0||selectedSlot>2)throw new IllegalArgumentException("toolbar slot");
        toolbarSlot=selectedSlot;candidateButton=-1;candidateCount=-1;
        setValue(CANDIDATE,new SizeRuntimeStore(getContext()).read(CANDIDATE),false);
        setContentDescription("Макет клавиатуры. Панель кнопок");
    }
    public void setCandidateButtonsPreview(int selectedSide){
        if(selectedSide<0||selectedSide>1)throw new IllegalArgumentException("candidate side");
        toolbarSlot=-1;candidateButton=selectedSide;candidateCount=-1;
        setValue(CANDIDATE,new SizeRuntimeStore(getContext()).read(CANDIDATE),false);
        setContentDescription("Макет клавиатуры. Левая и правая кнопки строки слов");
    }
    public void setCandidateCountPreview(int count){
        if(count<3||count>8)throw new IllegalArgumentException("candidate count");
        toolbarSlot=-1;candidateButton=-1;candidateCount=count;
        setValue(CANDIDATE,new SizeRuntimeStore(getContext()).read(CANDIDATE),false);
        setContentDescription("Макет клавиатуры. "+count+" предлагаемых слов, демонстрационные примеры");
    }
    public RectF candidateContentBounds(){
        Rect content=frame==null?null:frame.candidateContentBounds;
        RectF bounds=content==null?new RectF(0,0,bodyWidth,panelHeight):new RectF(content);
        if(candidateButton<0&&ToolbarReflow145.hidden(this,3))bounds.left=0;
        if(frame!=null&&frame.icons!=null&&frame.icons.length>1)bounds.right=frame.icons[1].bounds.right-(candidateButton<0&&ToolbarReflow145.hidden(this,4)?0:frame.candidateContentBounds.left);
        return bounds;
    }
    /** Assignment pages retain every selectable slot, including a gray dash for none. */
    public RectF[] editableButtonBounds(){
        if(!hasNativeGeometry())return new RectF[0];
        if(toolbarSlot>=0){
            RectF[] bounds={new RectF(),new RectF(),new RectF()};
            int left=ToolbarReflow145.outerWidth(Math.round(bodyWidth)),area=Math.round(bodyWidth)-2*left,position=0;
            for(int i=0;i<3;i++){
                int width=ToolbarReflow145.width(area,3,position++);bounds[i].set(left,0,left+width,panelHeight);left+=width;
            }return bounds;
        }
        if(candidateButton>=0){
            RectF content=frame==null||frame.candidateContentBounds==null?new RectF(0,0,bodyWidth,panelHeight):new RectF(frame.candidateContentBounds);
            float right=frame!=null&&frame.icons!=null&&frame.icons.length>1?frame.icons[1].bounds.right:bodyWidth;
            content.right=right-content.left;
            return new RectF[]{new RectF(0,0,content.left,panelHeight),new RectF(content.right,0,right,panelHeight)};
        }return new RectF[0];
    }

    private void reloadTheme() {
        skin = null;
        try { z functions = z.b0(); if (functions != null) skin = functions.v0(); }
        catch (Throwable unavailable) { }
        try { typeface = r0.b(); } catch (Throwable unavailable) { typeface = Typeface.DEFAULT; }
        palette = new Palette(getContext(), skin);
    }

    private int pref(String key, int fallback) {
        try { return PreferenceManager.getDefaultSharedPreferences(getContext()).getInt(key, fallback); }
        catch (Throwable unavailable) { return fallback; }
    }

    private float dimension(int resource, float fallbackDp, boolean activeSkin) {
        try {
            int pixels = activeSkin && skin != null ? skin.S(resource)
                    : getResources().getDimensionPixelSize(resource);
            if (pixels > 0) return pixels;
        } catch (Throwable unavailable) { }
        return fallbackDp * density;
    }

    private float candidateFactor(int value) {
        try { return 1f + TopScrollView.H0(value) / 10f; }
        catch (Throwable unavailable) { return value == 4 ? 1.4f : value == 0 ? 1f : 1.2f; }
    }

    private float resolvedKeyboardFactor(int value) {
        return SizePreviewBridge.keyboardPanelScale(getContext(), value);
    }

    private float keyboardFactor(int value) {
        float factor = resolvedKeyboardFactor(value);
        return Float.isNaN(factor) || factor <= 0 ? 1 : factor;
    }

    private static boolean known(int mode, int value) {
        if (mode == HEIGHT) return value == -1 || value > 0;
        if (mode == FONT) return value == 26 || value == 28 || value == 30 || value == 32;
        if (mode == PANEL_PORTRAIT || mode == PANEL_LANDSCAPE)
            return value == 43 || value == 40 || value == 35 || value == 30 || value == 25;
        if (mode == KEYBOARD) return value >= -2 && value <= 2;
        if (mode == CANDIDATE) return value == 0 || value == 2 || value == 4;
        if (mode == GAP) return value >= 1 && value <= 6 || value == 8 || value == 10;
        return false;
    }

    private void compute() {
        int candidateValue = mode == CANDIDATE ? raw : SizePreviewBridge.setting(127, 0);
        float factor = candidateFactor(candidateValue);
        float heightZoom = (float) current.heightScale;
        float widthZoom = (float) current.widthScale;
        candidateText = (int) ((double) (dimension(CANDIDATE_DIMEN, 17, true) * factor) * current.heightScale);
        candidateText = SizePixels130.candidate(getContext(), (int) candidateText, (int) candidateText);
        int gap = mode == GAP ? raw : pref("candidate_gap_custom", 10);
        if (gap < 0 || gap > 1000) gap = 10;
        candidateGap = (int) ((double) (gap * density * (1 + (factor - 1) / 2f)) * current.widthScale);
        candidateGap = SizePixels130.gap(getContext(), (int) candidateGap);
        boolean landscape = mode == PANEL_LANDSCAPE || mode != PANEL_PORTRAIT && mode != KEYBOARD
                && getResources().getConfiguration().orientation == Configuration.ORIENTATION_LANDSCAPE;
        int panel = mode == PANEL_PORTRAIT || mode == PANEL_LANDSCAPE ? raw
                : pref(landscape ? "keyboard_panel_height_custom" : "keyboard_panel_height_portrait_custom", 43);
        float basePanel = panel == 43 ? dimension(PANEL_DIMEN, 43, false) : (int) (panel * density);
        if (basePanel <= 0 || basePanel > density * 1000) basePanel = dimension(PANEL_DIMEN, 43, false);
        int keyboardValue = mode == KEYBOARD ? raw : SizePreviewBridge.setting(85, 0);
        int scaledPanel = landscape ? (int) basePanel : (int) (basePanel * keyboardFactor(keyboardValue));
        panelHeight = SizePixels130.panel(getContext(), (int) (scaledPanel * current.heightScale + 0.5));
        bodyRatio = 1; textProjection = 1;
        SizePreviewBridge.HeightSpec actual = SizePreviewBridge.heightSpec(getContext());
        if (mode == HEIGHT && actual.available && geometry.loaded) {
            bodyRatio = actual.bodyForRaw(raw) / (float) Math.max(1, geometry.height);
            int targetBase = raw == -1 ? actual.defaultPx : raw;
            if (actual.schemaBasePx > 0 && current.textScale > 0) {
                double targetScale = Math.min(current.widthScale, (double) targetBase / actual.schemaBasePx);
                textProjection = (float) (targetScale / current.textScale);
            }
        }
        if (geometry.loaded) {
            bodyWidth = geometry.width;
            bodyHeight = geometry.height * bodyRatio;
        } else {
            bodyWidth = Math.max(1, getResources().getDisplayMetrics().widthPixels);
            int effective = mode == HEIGHT ? actual.bodyForRaw(raw) : actual.effectivePx;
            // Pure current schema/native measurements replace old fixed rows.
            bodyHeight = effective > 0 ? effective : Math.max(1, actual.defaultPx);
        }
        if(temporaryPixel>0) {
            if(mode==CANDIDATE)candidateText=temporaryPixel;
            else if(mode==GAP)candidateGap=temporaryPixel;
            else if(mode==PANEL_PORTRAIT||mode==PANEL_LANDSCAPE||mode==KEYBOARD)panelHeight=temporaryPixel;
        }
    }

    private void captureFrame() {
        frame = KeyboardPreview128.capture(getContext(), Math.round(bodyHeight), Math.round(panelHeight));
        if (frame != null && (frame.keyboard == null || !frame.keyboard.loaded)) {
            if (frame.keyboard != null) {
                current = geometry = frame.keyboard;
                }
            bodyWidth = Math.max(1, getResources().getDisplayMetrics().widthPixels);
            frame = null;
        }
        if (frame != null) {
            current = geometry = frame.keyboard;
            bodyWidth = frame.width;
            bodyHeight = frame.keyboard.height;
            panelHeight = frame.panelHeight;
            // The DTO already contains the target physical geometry and fonts.
            bodyRatio = textProjection = 1;
            setContentDescription("Макет клавиатуры в натуральном размере. " + frame.note);
        } else setContentDescription("Пример раскладки: текущая раскладка ещё недоступна; размеры настроек");
    }

    public int nativeHeightPx() {
        return frame == null ? Math.max(1, Math.round(bodyHeight + panelHeight)) : Math.max(1, frame.height);
    }

    public int nativeWidthPx() {
        return frame == null ? Math.max(1, Math.round(bodyWidth)) : Math.max(1, frame.width);
    }

    public boolean hasNativeGeometry() { return frame != null && frame.keyboard.loaded; }

    public String geometryNote() {
        if (hasNativeGeometry()) return frame.note == null ? "" : frame.note;
        String reason = current == null || current.note == null ? "" : current.note;
        return "Предпросмотр недоступен" + (reason.length() == 0 ? "" : ": " + reason);
    }

    /** Label for a chip/value, calculated in real keyboard units, never raw native enums as pixels. */
    public String resolvedCaption(int mode, int raw, boolean defaultValue) {
        if (mode == HEIGHT) {
            SizePreviewBridge.HeightSpec spec = SizePreviewBridge.heightSpec(getContext());
            if (!spec.available) return spec.reason;
            if (raw != -1 && (raw < spec.minPx || raw > spec.maxPx))
                return "Сохранённое значение: " + raw + " · вне диапазона";
            return "Высота: " + px(Math.round(spec.totalForRaw(raw)/5f)*5) + " · клавиши " + px(spec.bodyForRaw(raw));
        }
        if (!known(mode, raw)) return "Сохранённое значение: " + raw + " · вне списка";
        if (mode == FONT) {
            float pixels = defaultValue ? current.themeFallbackText : (int) (raw * density);
            if (pixels <= 0) pixels = dimension(TEXT_DIMEN, 15, true);
            String caption = "Базовый шрифт: " + px(pixels);
            if (mode == this.mode && raw == this.raw && current.loaded) {
                int smallest = Integer.MAX_VALUE, largest = 0;
                for (SizePreviewBridge.Key key : current.keys) if (key.main.length() > 0) {
                    int actual = Math.round(key.mainSize);
                    smallest = Math.min(smallest, actual); largest = Math.max(largest, actual);
                }
                if (largest > 0) caption += " · клавиши " + (smallest == largest ? px(largest)
                        : smallest + "–" + largest + " px");
            }
            return caption;
        }
        if (mode == CANDIDATE) {
            float factor = candidateFactor(raw);
            float pixels = (int) ((double) (dimension(CANDIDATE_DIMEN, 17, true) * factor) * current.heightScale);
            return "Шрифт: " + px(pixels) + " · " + Math.round(factor * 100) + "%";
        }
        if (mode == KEYBOARD) {
            float factor = resolvedKeyboardFactor(raw);
            if (Float.isNaN(factor) || factor <= 0) return "Масштаб после загрузки темы";
            String scale = "масштаб " + Math.round(factor * 100) + "%";
            int panel = pref("keyboard_panel_height_portrait_custom", 43);
            int base = panel == 43 ? (int) dimension(PANEL_DIMEN, 43, false) : (int) (panel * density);
            int pixels = (int) ((int) (base * factor) * current.heightScale + 0.5);
            return "Панель: " + px(pixels) + " · " + scale;
        }
        if (mode == GAP) {
            float factor = candidateFactor(SizePreviewBridge.setting(127, 0));
            float visible = (int) ((double) (raw * density * (1 + (factor - 1) / 2f)) * current.widthScale);
            return "Отступ: " + px(visible);
        }
        if (mode == PANEL_PORTRAIT || mode == PANEL_LANDSCAPE) {
            int base = raw == 43 ? (int) dimension(PANEL_DIMEN, 43, false) : (int) (raw * density);
            boolean landscape = mode == PANEL_LANDSCAPE;
            int scaled = landscape ? base : (int) (base * keyboardFactor(SizePreviewBridge.setting(85, 0)));
            int pixels = (int) (scaled * current.heightScale + 0.5);
            return "Высота панели: " + px(pixels);
        }
        return "Текущий размер";
    }

    private static String px(float pixels) { return Math.round(pixels) + " px"; }

    @Override protected void onMeasure(int widthSpec, int heightSpec) {
        setMeasuredDimension(resolveSize(nativeWidthPx(), widthSpec), resolveSize(nativeHeightPx(), heightSpec));
    }

    @Override protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int save = canvas.save();
        // Translation only: one recorded/native pixel remains one Canvas pixel.
        canvas.translate(0, getHeight() - nativeHeightPx());
        canvas.clipRect(0, 0, nativeWidthPx(), nativeHeightPx());
        canvas.drawColor(palette.surface);
        drawDrawable(canvas, palette.background, 0, 0, nativeWidthPx(), nativeHeightPx());
        if (!hasNativeGeometry()) { canvas.restoreToCount(save); return; }
        if(toolbarSlot>=0)drawToolbar(canvas);
        else if(candidateButton>=0){drawFittedCandidates(canvas,CandidatePanel141.count(getContext()));drawCandidateButtons(canvas);}
        else if(candidateCount>=3){drawFittedCandidates(canvas,candidateCount);drawChrome(canvas);}
        else{
            drawCandidates(canvas);drawChrome(canvas);
        }
        canvas.translate(0, frame == null ? panelHeight : frame.bodyTop);
        if (geometry.loaded) drawLoaded(canvas);
        if (frame != null && frame.filterKeys != null && frame.filterKeys.length != 0) {
            int clip = canvas.save();
            Rect bounds = frame.filterBounds;
            if (bounds != null) {
                canvas.clipRect(bounds.left, bounds.top, bounds.right, bounds.bottom);
                drawDrawable(canvas, frame.filterBackground, bounds.left, bounds.top, bounds.right, bounds.bottom);
            }
            drawKeys(canvas, frame.filterKeys, frame.filterKeys);
            canvas.restoreToCount(clip);
        }
        canvas.restoreToCount(save);
    }

    private void highlight(Canvas canvas,float left,float top,float right,float bottom){
        paint.setColor(adjustmentColor());paint.setStyle(Paint.Style.STROKE);paint.setStrokeWidth(Math.max(1,density));
        float inset=paint.getStrokeWidth()/2;
        canvas.drawRoundRect(new RectF(left+inset,top+inset,right-inset,bottom-inset),4*density,4*density,paint);
        paint.setStyle(Paint.Style.FILL);
    }
    private void drawToolbar(Canvas canvas){
        drawDrawable(canvas,frame!=null&&frame.candidateBackground!=null?frame.candidateBackground:palette.candidateBackground,0,0,bodyWidth,panelHeight);
        float cell=ToolbarReflow145.outerWidth(Math.round(bodyWidth));RectF[] editable=editableButtonBounds();
        for(int i=0;i<5;i++){
            RectF b=i==0?new RectF(0,0,cell,panelHeight):i==4?new RectF(bodyWidth-cell,0,bodyWidth,panelHeight):editable[i-1];
            if(b.isEmpty())continue;
            int passive=-1;
            if(i==0||i==4)passive=canvas.saveLayerAlpha(b.left,b.top,b.right,b.bottom,INACTIVE_ALPHA,Canvas.ALL_SAVE_FLAG);
            String type=i==0?"menu":i==4?"hide":ToolbarConfig140.read(getContext(),i-1);
            if("none".equals(type)){drawHiddenSlot(canvas,b.left,b.top,b.right,b.bottom);if(i==toolbarSlot+1)highlight(canvas,b.left,b.top,b.right,b.bottom);continue;}
            
            int id="editor".equals(type)?0x7f080560:"clipboard".equals(type)?0x7f08055f:
                "emoji".equals(type)?0x7f08056d:"language".equals(type)?0x7f080564:0;
            Drawable icon="undo".equals(type)?new ToolbarActions143.UndoIcon(palette.text):id==0?null:Palette.drawable(getContext(),skin,id,RendingColorPosition.PLUGIN_BAR);
            float center=b.centerX(),side=Math.min(cell,panelHeight)*0.55f;
            if(icon!=null)drawDrawable(canvas,icon,center-side/2,(panelHeight-side)/2,center+side/2,(panelHeight+side)/2);
            else{
                String fallback="menu".equals(type)?"☰":"hide".equals(type)?"▾":"editor".equals(type)?"↔":"clipboard".equals(type)?"▤":"emoji".equals(type)?"☺":"◎";
                paint.setStyle(Paint.Style.FILL);paint.setColor(palette.text);paint.setTypeface(typeface);paint.setTextSize(side);paint.setTextAlign(Paint.Align.CENTER);
                canvas.drawText(fallback,center,(panelHeight-paint.ascent()-paint.descent())/2,paint);
            }
            if(i==toolbarSlot+1)highlight(canvas,b.left,b.top,b.right,b.bottom);
            if(passive>=0)canvas.restoreToCount(passive);
        }
    }

    private void drawHiddenSlot(Canvas canvas,float left,float top,float right,float bottom){
        paint.setColor(palette.text);paint.setAlpha(INACTIVE_ALPHA);paint.setTextAlign(Paint.Align.CENTER);paint.setTextSize(Math.min(right-left,bottom-top)*0.35f);canvas.drawText("—",(left+right)/2,(top+bottom-paint.ascent()-paint.descent())/2,paint);paint.setAlpha(255);
    }
    private void drawAction(Canvas canvas,String type,RectF bounds){
        if("none".equals(type)){drawHiddenSlot(canvas,bounds.left,bounds.top,bounds.right,bounds.bottom);return;}
        int id="editor".equals(type)?0x7f080560:"clipboard".equals(type)?0x7f08055f:"emoji".equals(type)?0x7f08056d:0x7f080564;
        Drawable icon="undo".equals(type)?new ToolbarActions143.UndoIcon(palette.text):Palette.drawable(getContext(),skin,id,RendingColorPosition.PLUGIN_BAR);
        float side=Math.min(bounds.width(),bounds.height())*0.55f;
        if(icon!=null)drawDrawable(canvas,icon,bounds.centerX()-side/2,bounds.centerY()-side/2,bounds.centerX()+side/2,bounds.centerY()+side/2);
        else{
            paint.setStyle(Paint.Style.FILL);paint.setTextAlign(Paint.Align.CENTER);paint.setColor(palette.text);paint.setTypeface(typeface);paint.setTextSize(side);
            String fallback="editor".equals(type)?"↔":"clipboard".equals(type)?"▤":"emoji".equals(type)?"☺":"◎";
            canvas.drawText(fallback,bounds.centerX(),bounds.centerY()-(paint.ascent()+paint.descent())/2,paint);
        }
    }
    private void drawCandidateButtons(Canvas canvas){
        RectF[] bounds=editableButtonBounds();
        for(int i=0;i<bounds.length;i++){
            RectF b=bounds[i];if(b.isEmpty())continue;drawAction(canvas,ToolbarConfig140.read(getContext(),i+3),b);
            if(i==candidateButton)highlight(canvas,b.left,b.top,b.right,b.bottom);
        }
        // The final hide button is fixed, not one of the two editable actions.
        if(frame!=null&&frame.icons!=null&&frame.icons.length>2){
            KeyboardPreview128.Icon hide=frame.icons[frame.icons.length-1];Rect b=hide.bounds;
            if(b!=null&&hide.drawable!=null){
                int passive=canvas.saveLayerAlpha(b.left,b.top,b.right,b.bottom,INACTIVE_ALPHA,Canvas.ALL_SAVE_FLAG);
                drawDrawable(canvas,hide.drawable,b.left,b.top,b.right,b.bottom);canvas.restoreToCount(passive);
            }
        }
    }
    private void drawFittedCandidates(Canvas canvas,int count){
        drawDrawable(canvas,frame!=null&&frame.candidateBackground!=null?frame.candidateBackground:palette.candidateBackground,0,0,bodyWidth,panelHeight);
        RectF bounds=candidateContentBounds();if(bounds.isEmpty())return;
        int save=canvas.save();canvas.clipRect(bounds);float cell=bounds.width()/count;
        float padding=Math.min(Math.max(0,candidateGap),cell*0.15f),room=Math.max(1,cell-2*padding);
        String[][] samples={{"дом","сад","кот"},{"стол","стул","дом","сад"},{"дом","сад","кот","лес","мир"},
            {"да","он","мы","вы","не","ты"},{"я","ты","он","мы","вы","да","не"},{"я","ты","он","мы","вы","да","не","и"}};
        String[] words=samples[count-3],shortest={"я","и","в","к","с","у","о","а"};
        paint.setTypeface(typeface);paint.setTextSize(Math.max(1,candidateText));paint.setTextAlign(Paint.Align.CENTER);paint.setStyle(Paint.Style.FILL);
        float textHeight=paint.descent()-paint.ascent();if(textHeight>bounds.height()*0.9f)paint.setTextSize(paint.getTextSize()*bounds.height()*0.9f/textHeight);
        boolean fits=true;for(String word:words)if(paint.measureText(word)>room)fits=false;
        if(!fits)words=shortest;
        float widest=1;for(int i=0;i<count;i++)widest=Math.max(widest,paint.measureText(words[i]));
        // Only these demonstration glyphs may shrink at extreme font/width
        // combinations. The persisted candidate font and gap never change.
        if(widest>room)paint.setTextSize(paint.getTextSize()*room/widest);
        float baseline=(panelHeight-paint.ascent()-paint.descent())/2;
        for(int i=0;i<count;i++){
            paint.setColor(i==0?palette.candidateAccent:palette.candidateText);
            if(candidateButton>=0)paint.setAlpha(Math.round(Color.alpha(paint.getColor())*INACTIVE_ALPHA/255f));
            canvas.drawText(words[i],bounds.left+cell*(i+0.5f),baseline,paint);
            if(dividers&&i+1<count){paint.setColor(palette.line);if(candidateButton>=0)paint.setAlpha(Math.round(Color.alpha(paint.getColor())*INACTIVE_ALPHA/255f));paint.setStrokeWidth(Math.max(1,density*0.5f));float x=bounds.left+cell*(i+1);canvas.drawLine(x,0,x,panelHeight,paint);}
        }
        canvas.restoreToCount(save);
        if(candidateCount>=3&&candidateButton<0){
            paint.setColor(palette.text);paint.setStyle(Paint.Style.STROKE);paint.setStrokeWidth(Math.max(1,density*0.5f));canvas.drawLine(bounds.left,0,bounds.left,panelHeight,paint);canvas.drawLine(bounds.right,0,bounds.right,panelHeight,paint);paint.setStyle(Paint.Style.FILL);
        }
    }

    private void drawChrome(Canvas canvas) {
        if (frame == null || frame.icons == null) return;
        for (int index=0;index<frame.icons.length;index++) {
            KeyboardPreview128.Icon icon=frame.icons[index];
            String action=index==0?ToolbarConfig140.read(getContext(),3):index==1?ToolbarConfig140.read(getContext(),4):"";
            if("none".equals(action))continue;
            if(index==1&&frame.candidateContentBounds!=null){float right=frame.icons[1].bounds.right,width=frame.candidateContentBounds.left;drawAction(canvas,action,new RectF(right-width,0,right,panelHeight));continue;}
            Drawable glyph="undo".equals(action)?new ToolbarActions143.UndoIcon(palette.text):icon.drawable;
            Rect bounds = icon.bounds;
            if (bounds == null) continue;
            if (glyph != null) drawDrawable(canvas, glyph,
                    bounds.left, bounds.top, bounds.right, bounds.bottom);
            else if (icon.fallback != null && icon.fallback.length() > 0) {
                paint.setTypeface(typeface);
                paint.setTextAlign(Paint.Align.CENTER);
                paint.setTextSize(Math.max(1, Math.min(bounds.right-bounds.left, bounds.bottom-bounds.top) * 0.48f));
                paint.setColor(palette.text);
                canvas.drawText(icon.fallback, (bounds.left+bounds.right)/2f,
                        (bounds.top+bounds.bottom-paint.ascent()-paint.descent())/2f, paint);
            }
        }
    }

    private void drawCandidates(Canvas canvas) {
        int save = canvas.save();
        canvas.clipRect(0, 0, bodyWidth, panelHeight);
        drawDrawable(canvas, frame != null && frame.candidateBackground != null
                ? frame.candidateBackground : palette.candidateBackground, 0, 0, bodyWidth, panelHeight);
        RectF content = candidateContentBounds();
        if (content != null) canvas.clipRect(content.left, content.top, content.right, content.bottom);
        paint.setTypeface(typeface);
        paint.setTextSize(candidateText);
        paint.setTextAlign(Paint.Align.LEFT);
        paint.setStyle(Paint.Style.FILL);
        float x = (content == null ? 0 : content.left) + candidateGap;
        float baseline = (panelHeight - paint.ascent() - paint.descent()) / 2;
        for (int i = 0; i < WORDS.length; i++) {
            String word = WORDS[i];
            float extent = paint.measureText(word) + candidateGap * 2;
            if (x > bodyWidth) break;
            paint.setColor(i == 0 ? palette.candidateAccent : palette.candidateText);
            canvas.drawText(word, x + candidateGap, baseline, paint);
            x += extent;
            if (dividers && candidateGap >= 1 && i + 1 < WORDS.length && x < bodyWidth) {
                int boundary = Math.round(x);
                int lineWidth = Math.min((int) candidateGap, Math.max(1, Math.round(density * 0.5f)));
                int lineLeft = boundary - lineWidth / 2;
                int clipped = canvas.save();
                canvas.clipRect(lineLeft, 0, lineLeft + lineWidth, panelHeight);
                CandidateDividers.drawLine(getContext(), canvas, palette.divider,
                        boundary, Math.round(panelHeight), palette.line);
                canvas.restoreToCount(clipped);
            }
        }
        paint.setColor(palette.line);
        paint.setStrokeWidth(Math.max(1, density));
        canvas.drawLine(0, panelHeight - density / 2, bodyWidth, panelHeight - density / 2, paint);
        canvas.restoreToCount(save);
    }

    private void drawLoaded(Canvas canvas) {
        SizePreviewBridge.Key[] fonts = current.loaded && current.keys.length == geometry.keys.length
                ? current.keys : geometry.keys;
        drawKeys(canvas, geometry.keys, fonts);
    }

    private void drawKeys(Canvas canvas, SizePreviewBridge.Key[] keys, SizePreviewBridge.Key[] fonts) {
        for (int i = 0; i < keys.length; i++) {
            SizePreviewBridge.Key key = keys[i], resolved = fonts[i];
            float top = key.y * bodyRatio, bottom = (key.y + key.height) * bodyRatio;
            drawDrawable(canvas, resolved.background == null ? (key.normal ? palette.key : palette.functionKey)
                    : resolved.background, key.x, top, key.x + key.width, bottom);
            if (resolved.background == null && palette.key == null) {
                paint.setColor(palette.line);
                paint.setStrokeWidth(Math.max(1, density * 0.5f));
                paint.setStyle(Paint.Style.STROKE);
                canvas.drawRect(key.x, top, key.x + key.width, bottom, paint);
                paint.setStyle(Paint.Style.FILL);
            }
            int save = canvas.save();
            canvas.clipRect(key.x, top, key.x + key.width, bottom);
            float center = key.x + key.width / 2f;
            float middle = (top + bottom) / 2f;
            if (resolved.icon != null && key.main.length() == 0) {
                float iconSide = Math.min(key.width, bottom - top) * 0.38f;
                drawDrawable(canvas, resolved.icon, center - iconSide / 2, middle - iconSide / 2,
                        center + iconSide / 2, middle + iconSide / 2);
            } else {
                paint.setTypeface(typeface);
                paint.setTextSize(Math.max(1, (int) (resolved.mainSize * textProjection * mainPreviewRatio())));
                paint.setTextAlign(Paint.Align.CENTER);
                paint.setColor(resolved.mainColor == 0 ? palette.text : resolved.mainColor);
                String label = key.main.length() == 0 ? functionalLabel(key.name) : key.main;
                float[] point = position(key, key.mainPosition, key.mainXAlign, key.mainYAlign,
                        paint, label, false);
                canvas.drawText(label, key.x + point[0], top + point[1], paint);
            }
            // Long-press alternatives stay on the real IME; the size mockup
            // shows only the primary label/icon so enlarged letters stay clear.
            canvas.restoreToCount(save);
        }
    }

    /** Pure equivalents of native f/h/e and ordinary main/alt placement. */
    private float[] position(SizePreviewBridge.Key key, Point explicit,
                             Paint.Align xAlign, Paint.Align yAlign,
                             Paint paint, String label, boolean alt) {
        Rect padding = key.padding;
        int contentWidth = Math.max(0, key.width - padding.left - padding.right);
        int targetHeight = Math.max(1, Math.round(key.height * bodyRatio));
        int contentHeight = Math.max(0, targetHeight - padding.top - padding.bottom);
        Rect ink = new Rect();
        paint.getTextBounds(label, 0, label.length(), ink);
        float bearing = (ink.right + ink.left - paint.measureText(label)) / 2f;
        float x, y;
        if (explicit != null) {
            if (xAlign != null) {
                x = alignX(contentWidth, explicit.x, xAlign, paint) + padding.left - bearing;
            } else x = explicit.x - bearing;
            if (yAlign != null) y = alignY(contentHeight, explicit.y, yAlign, paint) + padding.top;
            else y = explicit.y;
        } else if (alt && key.altInCorner) {
            paint.setTextAlign(Paint.Align.RIGHT);
            x = contentWidth - padding.right - bearing;
            // Native computes this baseline before its corner-size clamp.
            y = (contentHeight * 72 / 100) + (paint.getTextSize() - paint.descent()) / 2;
            try { if (skin != null) y += skin.R(0x7f07005c); } catch (Throwable unavailable) { }
            if (paint.getTextSize() >= targetHeight * 0.25f) paint.setTextSize((int) (targetHeight * 0.25f));
        } else {
            Paint.Align horizontal = xAlign == null ? Paint.Align.CENTER : xAlign;
            x = alignX(contentWidth, 0, horizontal, paint) + padding.left - bearing;
            if (yAlign != null && yAlign != Paint.Align.CENTER)
                y = alignY(contentHeight, 0, yAlign, paint) + padding.top;
            else {
                y = (contentHeight * (alt ? 37 : 24) / 50)
                        + (paint.getTextSize() - paint.descent()) / 2 + padding.top;
                if (!alt) y = correctBaseline(paint, label, y);
            }
        }
        return new float[]{x, y};
    }

    private static float alignX(int width, int offset, Paint.Align align, Paint paint) {
        paint.setTextAlign(align);
        return align == Paint.Align.LEFT ? offset : align == Paint.Align.CENTER ? width / 2 + offset
                : width - offset;
    }

    private static float alignY(int height, int offset, Paint.Align align, Paint paint) {
        return align == Paint.Align.LEFT ? offset + paint.getTextSize() - paint.descent()
                : align == Paint.Align.CENTER ? height / 2 + offset + (paint.getTextSize() - paint.descent()) / 2
                : height - offset - paint.descent();
    }

    private static float correctBaseline(Paint paint, String label, float baseline) {
        Rect ink = new Rect();
        Paint.FontMetricsInt font = new Paint.FontMetricsInt();
        paint.getTextBounds(label, 0, label.length(), ink);
        paint.getFontMetricsInt(font);
        int above = font.ascent - ink.top, below = ink.bottom - font.descent;
        if (above > 0 && below > 0) return baseline + above - below;
        if (above > 0) return baseline + above;
        if (below > 0) return baseline - below;
        return baseline;
    }

    private static String functionalLabel(String name) {
        if (name == null) return "";
        String lower = name.toLowerCase(Locale.US);
        if (lower.indexOf("backspace") >= 0 || lower.indexOf("back_space") >= 0) return "⌫";
        if (lower.indexOf("enter") >= 0) return "↵";
        if (lower.indexOf("shift") >= 0) return "⇧";
        if (lower.indexOf("space") >= 0) return "Русский";
        if (lower.indexOf("comma") >= 0) return ",";
        if (lower.indexOf("dot") >= 0 || lower.indexOf("period") >= 0) return ".";
        if (lower.indexOf("sym") >= 0) return "12#";
        return "";
    }

    private static void drawDrawable(Canvas canvas, Drawable drawable, float left, float top, float right, float bottom) {
        if (drawable == null) return;
        Rect bounds = new Rect(drawable.getBounds());
        try {
            drawable.setBounds(Math.round(left), Math.round(top), Math.round(right), Math.round(bottom));
            drawable.draw(canvas);
        } finally { drawable.setBounds(bounds); }
    }

    /** Immutable active keyboard palette. Every background factory owns its drawable. */
    public static final class ThemeSnapshot {
        public final int surface, text, muted, accent, line;
        private final Drawable background, buttonBackground;
        private ThemeSnapshot(Palette palette) {
            surface = palette.surface; text = palette.text; muted = palette.muted;
            accent = palette.accent; line = palette.line;
            background = palette.background; buttonBackground = palette.key;
        }
        public Drawable newBackground(Context context) {
            Drawable copy = SizePreviewBridge.own(context, background);
            return copy == null ? new ColorDrawable(surface) : copy;
        }
        public Drawable newButtonBackground(Context context) {
            Drawable copy = SizePreviewBridge.own(context, buttonBackground);
            return copy == null ? new ColorDrawable(surface) : copy;
        }
    }

    public static ThemeSnapshot loadTheme(Context context) {
        i0 active = null;
        try { z functions = z.b0(); if (functions != null) active = functions.v0(); }
        catch (Throwable unavailable) { }
        return new ThemeSnapshot(new Palette(context, active));
    }

    private static final class Palette {
        final int text, muted, candidateText, candidateAccent, accent, line, surface;
        final Drawable background, candidateBackground, key, functionKey, divider;
        Palette(Context context, i0 skin) {
            int[] attributes = {0x7f040115, 0x7f0400ec, 0x7f040178, 0x7f04002e};
            int[] resources = {0x7f08026a, 0x7f0802b2, 0x7f06021b, 0x7f060215};
            TypedArray values = null;
            try {
                values = context.obtainStyledAttributes(null, attributes, 0x7f040120, 0);
                for (int i = 0; i < resources.length; i++) resources[i] = values.getResourceId(i, resources[i]);
            } catch (Throwable unavailable) { }
            finally { if (values != null) values.recycle(); }
            text = color(context, skin, resources[2], TextColorPosition.KEY_TEXT, themeText(context));
            muted = color(context, skin, resources[3], TextColorPosition.KEY_TEXT, (text & 0x00ffffff) | 0x99000000);
            candidateText = color(context, skin, 0x7f0600b5, TextColorPosition.CANDIDATE_NORMAL, text);
            candidateAccent = color(context, skin, 0x7f0600b3, TextColorPosition.CANDIDATE_HIGHLIGHT, text);
            accent = candidateAccent;
            divider = CandidateDividers.newDivider(context);
            line = dividerColor(divider, CandidateDividers.dividerColor(context));
            surface = luminance(text) > 0.5f ? Color.BLACK : Color.WHITE;
            Drawable image = null;
            try { if (skin != null) image = SizePreviewBridge.own(context, skin.b0(-1, -1)); }
            catch (Throwable unavailable) { }
            background = image != null ? image : drawable(context, skin, 0x7f0800a8, RendingColorPosition.KEYBOARD_BG);
            candidateBackground = drawable(context, skin, 0x7f0800f4, RendingColorPosition.CANDIDATE_BG);
            key = drawable(context, skin, resources[0], RendingColorPosition.KEY_BG);
            functionKey = drawable(context, skin, resources[1], RendingColorPosition.KEY_FUN_BG);
        }
        /** Sample the active divider asset, including its native Paint tint/alpha. */
        private static int dividerColor(Drawable source, int fallback) {
            if (source == null) return fallback;
            Bitmap bitmap = null;
            Rect original = new Rect(source.getBounds());
            try {
                bitmap = Bitmap.createBitmap(8, 8, Bitmap.Config.ARGB_8888);
                source.setBounds(0, 0, 8, 8);
                source.draw(new Canvas(bitmap));
                int selected = 0, alpha = 0;
                for (int y = 0; y < 8; y++) for (int x = 0; x < 8; x++) {
                    int pixel = bitmap.getPixel(x, y), opacity = pixel >>> 24;
                    if (opacity > alpha) { selected = pixel; alpha = opacity; }
                }
                return alpha > 0 ? selected : fallback;
            } catch (Throwable unavailable) { return fallback; }
            finally { source.setBounds(original); if (bitmap != null) bitmap.recycle(); }
        }
        private static int color(Context context, i0 skin, int id, TextColorPosition role, int fallback) {
            try { if (skin != null) return skin.z(id, role); } catch (Throwable unavailable) { }
            try { return context.getResources().getColor(id); } catch (Throwable unavailable) { return fallback; }
        }
        private static Drawable drawable(Context context, i0 skin, int id, RendingColorPosition role) {
            try { if (skin != null) return SizePreviewBridge.own(context, skin.V(id, role)); }
            catch (Throwable unavailable) { }
            try { return SizePreviewBridge.own(context, context.getResources().getDrawable(id)); }
            catch (Throwable unavailable) { return null; }
        }
        private static int themeText(Context context) {
            TypedArray values = context.obtainStyledAttributes(new int[]{android.R.attr.textColorPrimary});
            try { return values.getColor(0, Color.BLACK); } finally { values.recycle(); }
        }
        private static float luminance(int color) {
            return (Color.red(color) * 0.2126f + Color.green(color) * 0.7152f + Color.blue(color) * 0.0722f) / 255;
        }
    }
}
