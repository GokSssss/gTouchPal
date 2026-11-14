package com.cootek.smartinput5.settings;

import android.content.Context;
import android.graphics.*;
import android.graphics.drawable.*;
import android.os.SystemClock;
import android.view.*;
import android.view.inputmethod.InputConnection;
import android.preference.PreferenceManager;
import com.cootek.smartinput5.engine.Engine;
import com.cootek.smartinput5.TouchPalIME;
import com.cootek.smartinput5.ui.F;
import com.cootek.smartinput5.ui.RendingColorPosition;
import com.cootek.smartinput5.func.z;

/** Two extra assignments; ordinary assignments retain their original native objects/actions. */
public final class ToolbarActions143 {
    private ToolbarActions143(){}
    private static final String[] KEYS={"first_button_type","second_button_type","third_button_type","candidate_first_button_type","candidate_second_button_type"};
    private static String read(Context context,int slot){
        try{return PreferenceManager.getDefaultSharedPreferences(context).getString(KEYS[slot],"");}
        catch(RuntimeException unavailable){return "";}
    }
    public static F button(Context context,int slot,F original){
        String type=read(context,slot);
        return special(type)?new SpecialButton(context,type):original;
    }
    private static boolean special(String type){return "undo".equals(type)||"none".equals(type);}
    public static boolean handleCandidate(Context context,int slot){
        String type=read(context,slot);if(!special(type))return false;
        if("undo".equals(type))undo();return true;
    }
    public static Drawable candidateIcon(Context context,int slot,Drawable original){
        String type=read(context,slot);
        return "undo".equals(type)?new UndoIcon(color(original)):"none".equals(type)?new EmptyIcon():original;
    }
    private static Drawable originalIcon(){
        try{return z.b0().v0().V(0x7f08055f,RendingColorPosition.PLUGIN_BAR);}catch(RuntimeException unavailable){return null;}
    }
    private static int color(Drawable source){
        if(source==null)return Color.WHITE;
        Rect before=new Rect(source.getBounds());Bitmap b=Bitmap.createBitmap(32,32,Bitmap.Config.ARGB_8888);
        try{
            source.setBounds(0,0,32,32);source.draw(new Canvas(b));int best=Color.WHITE,alpha=0;
            for(int y=0;y<32;y++)for(int x=0;x<32;x++){int value=b.getPixel(x,y),a=Color.alpha(value);if(a>alpha){best=value;alpha=a;}}
            return alpha==0?Color.WHITE:Color.rgb(Color.red(best),Color.green(best),Color.blue(best));
        }finally{source.setBounds(before);b.recycle();}
    }
    public static boolean undo(){
        try{
            if(!Engine.isInitialized())return false;
            Engine engine=Engine.getInstance();TouchPalIME ime=engine==null?null:engine.getIms();
            return undo(ime==null?null:ime.getCurrentInputConnection());
        }catch(RuntimeException unavailable){return false;}
    }
    /** Use the editor's standard undo, or one balanced Ctrl+Z chord when it declines. */
    public static boolean undo(InputConnection editor){
        if(editor==null)return false;
        try{if(editor.performContextMenuAction(16908338))return true;}catch(RuntimeException unavailable){}
        long down=SystemClock.uptimeMillis();int ctrl=0x3000,flags=KeyEvent.FLAG_SOFT_KEYBOARD|KeyEvent.FLAG_KEEP_TOUCH_MODE;
        boolean zDown=false,zUp=false;
        try{
            editor.sendKeyEvent(key(down,KeyEvent.ACTION_DOWN,KeyEvent.KEYCODE_CTRL_LEFT,ctrl,flags));
            zDown=editor.sendKeyEvent(key(down,KeyEvent.ACTION_DOWN,KeyEvent.KEYCODE_Z,ctrl,flags));
        }catch(RuntimeException unavailable){}
        finally{
            try{zUp=editor.sendKeyEvent(key(down,KeyEvent.ACTION_UP,KeyEvent.KEYCODE_Z,ctrl,flags));}catch(RuntimeException unavailable){}
            try{editor.sendKeyEvent(key(down,KeyEvent.ACTION_UP,KeyEvent.KEYCODE_CTRL_LEFT,0,flags));}catch(RuntimeException unavailable){}
        }
        return zDown&&zUp;
    }
    private static KeyEvent key(long down,int action,int code,int meta,int flags){
        return new KeyEvent(down,SystemClock.uptimeMillis(),action,code,0,meta,KeyCharacterMap.VIRTUAL_KEYBOARD,0,flags,0x101);
    }
    private static final class SpecialButton extends F {
        private final boolean hidden;private Drawable icon;
        SpecialButton(Context context,String type){
            super(context,"PLUGIN_EDIT");hidden="none".equals(type);icon=hidden?new EmptyIcon():new UndoIcon(color(originalIcon()));
            super.a0(icon);super.Z(!hidden);super.b0(new View.OnClickListener(){public void onClick(View view){if(!hidden)undo();}});super.c0(null);
        }
        @Override public void a0(Drawable ignored){super.a0(icon);}
        @Override public void f0(Drawable themeHint){if(!hidden)icon=new UndoIcon(color(themeHint));super.a0(icon);super.f0(icon);}
        @Override public void e0(View view){
            super.e0(view);if(view!=null){view.setVisibility(hidden?View.INVISIBLE:View.VISIBLE);view.setClickable(!hidden);view.setLongClickable(false);view.setContentDescription(hidden?"":"Отмена последнего действия");}
        }
        @Override public View V(int width){View view=super.V(width);if(view!=null){view.setVisibility(hidden?View.INVISIBLE:View.VISIBLE);view.setClickable(!hidden);view.setContentDescription(hidden?"":"Отмена последнего действия");}return view;}
    }
    private static final class EmptyIcon extends ColorDrawable {
        EmptyIcon(){super(Color.TRANSPARENT);}
        @Override public int getIntrinsicWidth(){return 24;}@Override public int getIntrinsicHeight(){return 24;}
    }
    public static final class UndoIcon extends Drawable {
        private final Paint paint=new Paint(Paint.ANTI_ALIAS_FLAG);private final Path path=new Path();
        public UndoIcon(int color){paint.setColor(color);paint.setStyle(Paint.Style.STROKE);paint.setStrokeCap(Paint.Cap.ROUND);paint.setStrokeJoin(Paint.Join.ROUND);}
        @Override public void draw(Canvas canvas){
            Rect b=getBounds();int save=canvas.save();float side=Math.min(b.width(),b.height());canvas.translate(b.centerX()-side/2,b.centerY()-side/2);canvas.scale(side/24f,side/24f);paint.setStrokeWidth(2);
            path.reset();path.moveTo(7,7);path.lineTo(3,11);path.lineTo(7,15);path.moveTo(3,11);path.lineTo(14,11);path.cubicTo(22,11,22,21,14,21);canvas.drawPath(path,paint);canvas.restoreToCount(save);
        }
        @Override public void setAlpha(int alpha){paint.setAlpha(alpha);invalidateSelf();}
        @Override public void setColorFilter(ColorFilter filter){paint.setColorFilter(filter);invalidateSelf();}
        @Override public int getOpacity(){return PixelFormat.TRANSLUCENT;}
        @Override public int getIntrinsicWidth(){return 24;}@Override public int getIntrinsicHeight(){return 24;}
    }
}
