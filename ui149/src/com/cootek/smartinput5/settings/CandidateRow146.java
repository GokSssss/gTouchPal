package com.cootek.smartinput5.settings;

import android.view.View;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import java.util.WeakHashMap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.cootek.smartinput5.ui.CandidateBar;
import com.cootek.smartinput5.ui.CandidateCollapseButton;
import com.cootek.smartinput5.ui.RendingColorPosition;
import com.cootek.smartinput5.func.z;

/** Shared side-action geometry for the single candidate row, regardless of word count. */
public final class CandidateRow146 {
    private CandidateRow146(){}
    public static boolean owns(View view){return view instanceof CandidateBar;}
    public static int rightWidth(View view){return ToolbarReflow145.hidden(view,4)?0:CandidateCollapseButton.leftWidth(view);}
    private static final WeakHashMap<View,Press> presses=new WeakHashMap<View,Press>();
    private static final class Press {final float x,y;final int pointer,width,height;boolean armed=true;Press(MotionEvent event,View view){x=event.getX();y=event.getY();pointer=event.getPointerId(0);width=view.getWidth();height=view.getHeight();}}
    private static boolean inside(View view,float x,float y){int right=view.getWidth()-CandidateCollapseButton.width(view),width=rightWidth(view);return width>0&&x>=right-width&&x<right&&y>=0&&y<view.getHeight();}
    /** Local viewport hitbox, independent of native candidate drawing and scroll offsets. */
    public static int touch(View view,MotionEvent event){
        if(view==null||event==null||!owns(view))return 0;
        int action=event.getActionMasked();Press press=presses.get(view);
        if(action==MotionEvent.ACTION_DOWN){presses.remove(view);if(event.getPointerCount()!=1||!inside(view,event.getX(),event.getY()))return 0;presses.put(view,new Press(event,view));return 1;}
        if(press==null)return 0;
        if(action==MotionEvent.ACTION_CANCEL){presses.remove(view);return 1;}
        int pointer=event.findPointerIndex(press.pointer),slop=ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        if(pointer<0||event.getPointerCount()!=1||action==MotionEvent.ACTION_POINTER_DOWN||action==MotionEvent.ACTION_POINTER_UP||view.getWidth()!=press.width||view.getHeight()!=press.height)press.armed=false;
        if(pointer>=0&&(Math.abs(event.getX(pointer)-press.x)>slop||Math.abs(event.getY(pointer)-press.y)>slop||!inside(view,event.getX(pointer),event.getY(pointer))))press.armed=false;
        if(action==MotionEvent.ACTION_UP){presses.remove(view);return press.armed?2:1;}
        return 1;
    }
    public static void draw(View view,Canvas canvas){
        if(canvas==null||rightWidth(view)<=0)return;
        String type=ToolbarConfig140.read(view.getContext(),4);
        int id="clipboard".equals(type)?0x7f08055f:"editor".equals(type)?0x7f080560:"language".equals(type)?0x7f080564:0x7f08056d;
        Drawable icon=null;
        try{icon=z.b0().v0().V(id,RendingColorPosition.PLUGIN_BAR);}catch(RuntimeException unavailable){}
        if(icon!=null&&icon.getConstantState()!=null){icon=icon.getConstantState().newDrawable(view.getResources()).mutate();icon.setAlpha(255);}
        icon=ToolbarActions143.candidateIcon(view.getContext(),4,icon);if(icon==null)return;
        int viewWidth=view.getWidth()>0?view.getWidth():view.getMeasuredWidth(),height=view.getHeight()>0?view.getHeight():view.getMeasuredHeight();
        int width=rightWidth(view),right=view.getScrollX()+viewWidth-CandidateCollapseButton.width(view);
        int side=Math.max(1,Math.round(Math.min(width,height)*.55f));Rect before=new Rect(icon.getBounds());
        int left=right-width+(width-side)/2,top=(height-side)/2;
        try{icon.setBounds(left,top,left+side,top+side);icon.draw(canvas);}finally{icon.setBounds(before);}
    }
}
