package com.cootek.smartinput5.settings;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PixelFormat;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;

/** The approved settings symbols share one 22dp canvas and one outline weight. */
public final class SettingsGlyphs153 extends Drawable {
    private final String name;private final Paint paint=new Paint(Paint.ANTI_ALIAS_FLAG);private final int size;
    private SettingsGlyphs153(Context context,String name,int color){this.name=name;size=Math.round(22*context.getResources().getDisplayMetrics().density);paint.setColor(color);paint.setStrokeWidth(1.65f);paint.setStrokeCap(Paint.Cap.ROUND);paint.setStrokeJoin(Paint.Join.ROUND);paint.setTypeface(Typeface.create("sans-serif",Typeface.NORMAL));setBounds(0,0,size,size);}
    public static String name(String key){
        if("option_curve".equals(key))return "smart-curve";
        if("option_wave".equals(key))return "smart-wave";
        if("option_wave_without_next_word_on_candidate".equals(key))return "smart-wave-off";
        if("option_predict".equals(key))return "smart-t9";
        if("option_auto_correction".equals(key))return "smart-replace";
        if("option_auto_save".equals(key))return "smart-save";
        if("smartdash".equals(key))return "smart-dash";
        if("option_auto_space".equals(key))return "smart-space";
        if("option_auto_capitalization".equals(key))return "smart-caps";
        if("option_space_to_input_nextword".equals(key))return "smart-next";
        if("option_emoji_prediction".equals(key))return "smart-emoji";
        if("option_advanced_prediction".equals(key))return "smart-context";
        if("option_import_contact".equals(key))return "smart-contacts";
        if("option_manage_user_word".equals(key))return "smart-book";
        if("option_edit_dictionary".equals(key))return "smart-import";
        if("option_backup_dictionary".equals(key))return "smart-backup";
        if("option_restore_dictionary".equals(key))return "smart-restore";
        if("option_rebuild_language_data".equals(key))return "smart-repair";
        if("option_clear_language_data".equals(key))return "smart-clear";
        return null;
    }
    static Drawable drawable(Context context,String name,int color){return name!=null&&name.startsWith("smart-")?new SettingsGlyphs153(context,name,color):null;}
    public int getIntrinsicWidth(){return size;}public int getIntrinsicHeight(){return size;}
    public int getOpacity(){return PixelFormat.TRANSLUCENT;}
    public void setAlpha(int alpha){paint.setAlpha(alpha);invalidateSelf();}
    public void setColorFilter(ColorFilter filter){paint.setColorFilter(filter);invalidateSelf();}
    private void line(Canvas c,float x1,float y1,float x2,float y2){paint.setStyle(Paint.Style.STROKE);c.drawLine(x1,y1,x2,y2,paint);}
    private void path(Canvas c,Path p){paint.setStyle(Paint.Style.STROKE);c.drawPath(p,paint);}
    private void text(Canvas c,String value,float x,float y,float height){paint.setStyle(Paint.Style.FILL);paint.setTextSize(height);paint.setTextAlign(Paint.Align.CENTER);c.drawText(value,x,y,paint);paint.setStyle(Paint.Style.STROKE);}
    private void space(Canvas c,float left,float top,float right){Path p=new Path();p.moveTo(left,top);p.lineTo(left,top+3);p.lineTo(right,top+3);p.lineTo(right,top);path(c,p);}
    private void arrow(Canvas c,float left,float y,float right){line(c,left,y,right,y);line(c,right-3,y-3,right,y);line(c,right-3,y+3,right,y);}
    private void wave(Canvas c){for(int n=0;n<2;n++){float y=8+7*n;Path p=new Path();p.moveTo(3,y);p.cubicTo(9,y-6,15,y+6,21,y);path(c,p);}}
    private void book(Canvas c){Path p=new Path();p.moveTo(12,6);p.cubicTo(8,3,5,4,3,5);p.lineTo(3,19);p.cubicTo(6,18,9,18,12,21);p.cubicTo(15,18,18,18,21,19);p.lineTo(21,5);p.cubicTo(18,4,15,3,12,6);p.lineTo(12,21);path(c,p);}
    public void draw(Canvas canvas){
        Rect b=getBounds();if(b.isEmpty())return;int save=canvas.save();canvas.clipRect(b);canvas.translate(b.left,b.top);canvas.scale(b.width()/24f,b.height()/24f);paint.setStyle(Paint.Style.STROKE);
        if(name.equals("smart-curve")){Path p=new Path();p.moveTo(6,18);p.cubicTo(14,17,16,12,19,7);path(canvas,p);canvas.drawCircle(4,19,1.8f,paint);canvas.drawCircle(20,5,1.8f,paint);}
        else if(name.equals("smart-wave")||name.equals("smart-wave-off")){wave(canvas);if(name.endsWith("off"))line(canvas,5,21,20,3);}
        else if(name.equals("smart-t9")){canvas.drawRoundRect(new RectF(3.5f,3.5f,20.5f,20.5f),1,1,paint);text(canvas,"A",12,17,14);}
        else if(name.equals("smart-replace")){
            Path p=new Path();p.moveTo(5,6.5f);p.cubicTo(8,2,16,2,19,6.5f);path(canvas,p);line(canvas,5,6.5f,5.5f,3);line(canvas,5,6.5f,8.5f,6.5f);
            p.reset();p.moveTo(5,17.5f);p.cubicTo(8,22,16,22,19,17.5f);path(canvas,p);line(canvas,19,17.5f,18.5f,21);line(canvas,19,17.5f,15.5f,17.5f);
            text(canvas,"А",6.5f,15.5f,10.5f);text(canvas,"о",17.5f,15.5f,12);
        }else if(name.equals("smart-save")||name.equals("smart-backup")){
            Path p=new Path();p.moveTo(4,3);p.lineTo(17,3);p.lineTo(20,6);p.lineTo(20,21);p.lineTo(4,21);p.close();path(canvas,p);canvas.drawRect(7,3,15,9,paint);canvas.drawRect(8,14,16,18,paint);
        }else if(name.equals("smart-dash")){line(canvas,9,10,15,10);space(canvas,3,14,6);space(canvas,18,14,21);}
        else if(name.equals("smart-space")){space(canvas,3,16,21);arrow(canvas,8,8,17);}
        else if(name.equals("smart-caps")){text(canvas,"a",7,18,14);text(canvas,"A",17,18,17);}
        else if(name.equals("smart-next")){space(canvas,3,17,21);arrow(canvas,3,9,12);line(canvas,17,9,21,9);}
        else if(name.equals("smart-emoji")){canvas.drawCircle(12,12,8,paint);paint.setStyle(Paint.Style.FILL);canvas.drawCircle(9,9,0.85f,paint);canvas.drawCircle(15,9,0.85f,paint);paint.setStyle(Paint.Style.STROKE);canvas.drawArc(new RectF(7,8,17,17),25,130,false,paint);}
        else if(name.equals("smart-context")){Path p=new Path();p.moveTo(5,4);p.lineTo(19,4);p.quadTo(21,4,21,6);p.lineTo(21,16);p.quadTo(21,18,19,18);p.lineTo(11,18);p.lineTo(5,22);p.lineTo(5,18);p.quadTo(3,18,3,16);p.lineTo(3,6);p.quadTo(3,4,5,4);path(canvas,p);line(canvas,7,8,11,8);line(canvas,7,12,10,12);arrow(canvas,13,12,18);}
        else if(name.equals("smart-contacts")){canvas.drawCircle(10,6.5f,3.5f,paint);Path p=new Path();p.moveTo(3,21);p.quadTo(3,13,10,13);p.quadTo(17,13,17,21);p.close();path(canvas,p);line(canvas,20,12,20,20);line(canvas,17,17,20,20);line(canvas,23,17,20,20);}
        else if(name.equals("smart-book")){book(canvas);line(canvas,16,21,22,15);line(canvas,14,22,16,21);}
        else if(name.equals("smart-import")){Path p=new Path();p.moveTo(5,3);p.lineTo(15,3);p.lineTo(19,7);p.lineTo(19,17);p.lineTo(5,17);p.close();path(canvas,p);line(canvas,15,3,15,7);line(canvas,15,7,19,7);line(canvas,12,12,12,22);line(canvas,8,18,12,22);line(canvas,16,18,12,22);}
        else if(name.equals("smart-restore")){book(canvas);line(canvas,17,22,17,14);line(canvas,14,17,17,14);line(canvas,20,17,17,14);}
        else if(name.equals("smart-repair")){book(canvas);canvas.drawArc(new RectF(14,14,22,22),45,270,false,paint);line(canvas,21,15,18,15);}
        else if(name.equals("smart-clear")){book(canvas);line(canvas,16,16,22,22);line(canvas,22,16,16,22);}
        canvas.restoreToCount(save);
    }
}
