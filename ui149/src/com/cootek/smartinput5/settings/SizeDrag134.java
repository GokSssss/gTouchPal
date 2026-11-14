package com.cootek.smartinput5.settings;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.os.Bundle;

/** Direct manipulation of the highlighted preview part; no IME View is moved or reparented. */
public final class SizeDrag134 extends View {
    public interface Listener {
        int value(); int minimum(); int maximum(); int step();
        boolean available();
        void change(int value,boolean finished);
        void cancel();
    }
    private final Listener listener;
    private final Paint paint=new Paint(3);
    private final Path arrow=new Path();
    private final RectF target=new RectF();
    private final float density;
    private boolean horizontal,active,moved;
    private float grabX,grabY,startX,startY,fingerX,fingerY;
    private int color=0xff49b2e8,pointer=-1,startValue,lastValue,interactionTop;
    private ResizeHeightSnap snap;
    private final Drawable up,down;
    public SizeDrag134(Context context,Listener listener) {
        super(context);this.listener=listener;
        density=Math.max(0.1f,context.getResources().getDisplayMetrics().density);
        up=resource(context,0x7f08030f);down=resource(context,0x7f080302);
        setFocusable(true);setClickable(true);setWillNotDraw(false);
        setContentDescription("Изменение размера на макете");
    }
    public void bounds(RectF bounds,boolean horizontal,int color,int topLimit) {
        interactionTop=topLimit;
        target.set(bounds);this.horizontal=horizontal;this.color=color;
        float radius=14*density;
        grabX=horizontal?target.right:target.centerX();
        grabY=horizontal?target.centerY():target.top;
        grabX=Math.max(radius,Math.min(getWidth()-radius,grabX));
        grabY=Math.max(radius,Math.min(getHeight()-radius,grabY));
        invalidate();
    }
    private int quantize(int value) {
        int step=Math.max(1,listener.step());
        if(step==5) value=-snap.top(-Math.max(1,value),0); // Same5px hysteresis as the keyboard's resize mask.
        else value=Math.round(value/(float)step)*step;
        return Math.max(listener.minimum(),Math.min(listener.maximum(),value));
    }
    public void cancelGesture() {
        if(!active)return;
        active=false;pointer=-1;
        if(getParent()!=null)getParent().requestDisallowInterceptTouchEvent(false);
        if(moved)listener.cancel();moved=false;invalidate();
    }
    @Override public boolean onTouchEvent(MotionEvent event) {
        int action=event.getActionMasked();
        if(action==MotionEvent.ACTION_DOWN) {
            if(!listener.available()||target.isEmpty())return false;
            float x=event.getX(),y=event.getY(),hit=24*density;
            if(y<interactionTop)return false;
            boolean near=horizontal?Math.abs(x-target.right)<=hit&&y>=target.top-hit&&y<=target.bottom+hit
                :Math.abs(y-target.top)<=hit&&x>=target.left-hit&&x<=target.right+hit;
            if(!near&&Math.hypot(x-grabX,y-grabY)>hit)return false;
            active=true;moved=false;pointer=event.getPointerId(0);
            startX=fingerX=x;startY=fingerY=y;startValue=lastValue=listener.value();
            snap=new ResizeHeightSnap();
            if(getParent()!=null)getParent().requestDisallowInterceptTouchEvent(true);
            invalidate();return true;
        }
        if(!active)return false;
        if(action==MotionEvent.ACTION_CANCEL || action==MotionEvent.ACTION_POINTER_UP&&event.getPointerId(event.getActionIndex())==pointer) {
            cancelGesture();return true;
        }
        int index=event.findPointerIndex(pointer);
        if(index<0){cancelGesture();return true;}
        fingerX=event.getX(index);fingerY=event.getY(index);
        if(action==MotionEvent.ACTION_MOVE || action==MotionEvent.ACTION_UP) {
            float delta=horizontal?(fingerX-startX)/2f:startY-fingerY;
            if(Math.abs(delta)>=1) moved=true;
            if(moved) {
                int value=quantize(startValue+Math.round(delta));
                if(value!=lastValue){lastValue=value;listener.change(value,false);}
            }
            if(action==MotionEvent.ACTION_UP) {
                active=false;pointer=-1;
                if(moved)listener.change(lastValue,true);
                else performClick();
                moved=false;
                if(getParent()!=null)getParent().requestDisallowInterceptTouchEvent(false);
            }
            invalidate();return true;
        }
        return true;
    }
    @Override public boolean performClick(){return super.performClick();}
    private boolean nudge(int direction) {
        if(!listener.available())return false;
        snap=new ResizeHeightSnap();
        listener.change(quantize(listener.value()+direction*listener.step()),true);return true;
    }
    @Override public boolean onKeyDown(int key,KeyEvent event) {
        if(key==KeyEvent.KEYCODE_DPAD_UP||key==KeyEvent.KEYCODE_DPAD_RIGHT)return nudge(1);
        if(key==KeyEvent.KEYCODE_DPAD_DOWN||key==KeyEvent.KEYCODE_DPAD_LEFT)return nudge(-1);
        return super.onKeyDown(key,event);
    }
    @Override public boolean performAccessibilityAction(int action,Bundle arguments) {
        if(action==AccessibilityNodeInfo.ACTION_SCROLL_FORWARD)return nudge(1);
        if(action==AccessibilityNodeInfo.ACTION_SCROLL_BACKWARD)return nudge(-1);
        return super.performAccessibilityAction(action,arguments);
    }
    private static Drawable resource(Context context,int id){
        try{
            Drawable drawable=context.getResources().getDrawable(id);Drawable.ConstantState state=drawable.getConstantState();
            return (state==null?drawable:state.newDrawable(context.getResources())).mutate();
        }catch(RuntimeException unavailable){return null;}
    }
    @Override protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if(target.isEmpty()||!listener.available())return;
        int save=canvas.save();canvas.clipRect(0,Math.max(0,interactionTop),getWidth(),getHeight());
        paint.setStyle(Paint.Style.STROKE);paint.setStrokeWidth(Math.max(1,density));
        paint.setColor((color&0xffffff)|0xb0000000);
        canvas.drawRect(target,paint);
        float x=active?fingerX:grabX,y=active?fingerY:grabY;
        float height=up==null?8*density:Math.max(1,up.getIntrinsicHeight());
        float width=up==null?18*density:Math.max(1,up.getIntrinsicWidth());
        if(!horizontal){
            paint.setColor(active?0xff909090:0xff606060);paint.setStrokeWidth(Math.max(1,density));paint.setStrokeCap(Paint.Cap.ROUND);
            float half=Math.min(60*density,Math.max(0,(target.width()-12*density)/2));
            float lineY=y-1.5f*height-3*density;canvas.drawLine(x-half,lineY,x+half,lineY,paint);
            if(up!=null&&down!=null){
                up.setBounds(Math.round(x-width/2),Math.round(y-1.5f*height),Math.round(x+width/2),Math.round(y-0.5f*height));up.draw(canvas);
                down.setBounds(Math.round(x-width/2),Math.round(y+0.5f*height),Math.round(x+width/2),Math.round(y+1.5f*height));down.draw(canvas);
                paint.setStyle(Paint.Style.FILL);canvas.restoreToCount(save);return;
            }
        }
        paint.setStyle(Paint.Style.STROKE);paint.setColor(0xff009bd8);paint.setStrokeWidth(Math.max(1,1.5f*density));
        float a=5*density,b=3*density;arrow.reset();
        if(horizontal) {
            arrow.moveTo(x-a,y-b);arrow.lineTo(x-a-b,y);arrow.lineTo(x-a,y+b);
            arrow.moveTo(x+a,y-b);arrow.lineTo(x+a+b,y);arrow.lineTo(x+a,y+b);
        } else {
            arrow.moveTo(x-b,y-a);arrow.lineTo(x,y-a-b);arrow.lineTo(x+b,y-a);
            arrow.moveTo(x-b,y+a);arrow.lineTo(x,y+a+b);arrow.lineTo(x+b,y+a);
        }
        canvas.drawPath(arrow,paint);paint.setStyle(Paint.Style.FILL);canvas.restoreToCount(save);
    }
}
