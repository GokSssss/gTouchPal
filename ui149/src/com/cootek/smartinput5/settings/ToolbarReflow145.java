package com.cootek.smartinput5.settings;

import android.preference.PreferenceManager;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import java.util.WeakHashMap;

/** Reflow only assigned toolbar cells; preserve stock outer controls and listeners. */
public final class ToolbarReflow145 {
    private ToolbarReflow145(){}
    private static int measuredToolbarWidth,measuredOuterWidth;
    /** Project the last real toolbar measurement onto its settings preview. */
    public static int outerWidth(int width){if(width<=0)return 0;return Math.min(width/2,Math.max(1,measuredToolbarWidth>0?(int)Math.round((double)measuredOuterWidth*width/measuredToolbarWidth):Math.round(width/5f)));}
    private static final String[] KEYS={"first_button_type","second_button_type","third_button_type","candidate_first_button_type","candidate_second_button_type"};
    // Values contain primitives only: keeping descendants here would retain weak keys via parents.
    private static final WeakHashMap<View,State> pending=new WeakHashMap<View,State>();
    private static final class State {final int[] ids,visibility,left,right;State(int[] ids,int[] visibility,int[] left,int[] right){this.ids=ids;this.visibility=visibility;this.left=left;this.right=right;}}
    public static boolean hidden(View view,int slot){
        try{return view!=null&&slot>=0&&slot<KEYS.length&&"none".equals(PreferenceManager.getDefaultSharedPreferences(view.getContext()).getString(KEYS[slot],""));}
        catch(RuntimeException unavailable){return false;}
    }
    /** Integer boundaries distribute the full area, including a possible remainder. */
    public static int width(int area,int count,int index){return count<=0?0:(int)((long)area*(index+1)/count-(long)area*index/count);}
    /** Restore stock visibility before stock measurement, never accumulate expanded widths. */
    public static void prepare(View root){
        State state=pending.remove(root);if(state==null)return;
        for(int i=0;i<state.ids.length;i++){
            View cell=root.findViewById(state.ids[i]);if(cell==null)continue;
            if(cell.getLayoutParams() instanceof LinearLayout.LayoutParams){LinearLayout.LayoutParams lp=(LinearLayout.LayoutParams)cell.getLayoutParams();lp.leftMargin=state.left[i];lp.rightMargin=state.right[i];}
            cell.setVisibility(state.visibility[i]);cell.forceLayout();
        }
    }
    /** Use the existing measured hide button as the width of both outer cells. */
    public static void apply(View root,boolean thirdOnRight){
        int[] ids={0x7f0a0180,0x7f0a0182,thirdOnRight?0x7f0a0181:0x7f0a0186,0x7f0a0183,thirdOnRight?0x7f0a0186:0x7f0a0181};
        View[] cells=new View[5];boolean[] hide=new boolean[3];int visible=0;
        LinearLayout parent=null;int[] visibility=new int[5],left=new int[5],right=new int[5];
        for(int i=0;i<5;i++){
            cells[i]=root.findViewById(ids[i]);if(cells[i]==null||!(cells[i].getParent() instanceof LinearLayout))return;
            if(parent==null)parent=(LinearLayout)cells[i].getParent();else if(cells[i].getParent()!=parent)return;
            if(!(cells[i].getLayoutParams() instanceof LinearLayout.LayoutParams)||cells[i].getVisibility()==View.GONE)return;
            if(i<3){hide[i]=hidden(root,i);if(!hide[i])visible++;}
            else if(cells[i].getVisibility()!=View.VISIBLE)return;
            visibility[i]=cells[i].getVisibility();LinearLayout.LayoutParams lp=(LinearLayout.LayoutParams)cells[i].getLayoutParams();
            left[i]=lp.leftMargin;right[i]=lp.rightMargin;
        }
        if(parent==null||parent.getMeasuredWidth()<=0||cells[4].getMeasuredWidth()<=0)return;
        int count=parent.getChildCount(),available=parent.getMeasuredWidth()-parent.getPaddingLeft()-parent.getPaddingRight();
        int[] savedWidth=new int[count];float[] savedWeight=new float[count];
        for(int i=0;i<count;i++){
            View child=parent.getChildAt(i);if(!(child.getLayoutParams() instanceof LinearLayout.LayoutParams))return;
            boolean assigned=false;for(View cell:cells)if(child==cell)assigned=true;
            if(!assigned&&child.getVisibility()!=View.GONE){LinearLayout.LayoutParams lp=(LinearLayout.LayoutParams)child.getLayoutParams();available-=child.getMeasuredWidth()+lp.leftMargin+lp.rightMargin;}
        }
        int outer=Math.min(cells[4].getMeasuredWidth(),Math.max(0,available/2)),area=Math.max(0,available-2*outer);
        boolean complete=false;try{
            for(int i=0;i<count;i++){
                View child=parent.getChildAt(i);LinearLayout.LayoutParams lp=(LinearLayout.LayoutParams)child.getLayoutParams();
                savedWidth[i]=lp.width;savedWeight[i]=lp.weight;lp.width=child.getMeasuredWidth();lp.weight=0;
            }
            int position=0;
            for(int i=0;i<5;i++){
                LinearLayout.LayoutParams lp=(LinearLayout.LayoutParams)cells[i].getLayoutParams();lp.leftMargin=0;lp.rightMargin=0;
                if(i<3){lp.width=hide[i]?0:width(area,visible,position++);cells[i].setVisibility(hide[i]?View.GONE:View.VISIBLE);}
                else lp.width=outer;
            }
            if(visible==0){((LinearLayout.LayoutParams)cells[0].getLayoutParams()).width=area;cells[0].setVisibility(View.INVISIBLE);}
            parent.forceLayout();
            parent.measure(View.MeasureSpec.makeMeasureSpec(parent.getMeasuredWidth(),View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(parent.getMeasuredHeight(),View.MeasureSpec.EXACTLY));
            pending.put(root,new State(ids,visibility,left,right));measuredToolbarWidth=parent.getMeasuredWidth();measuredOuterWidth=outer;complete=true;
        }finally{
            for(int i=0;i<count;i++){LinearLayout.LayoutParams lp=(LinearLayout.LayoutParams)parent.getChildAt(i).getLayoutParams();lp.width=savedWidth[i];lp.weight=savedWeight[i];}
            if(!complete)for(int i=0;i<5;i++){LinearLayout.LayoutParams lp=(LinearLayout.LayoutParams)cells[i].getLayoutParams();lp.leftMargin=left[i];lp.rightMargin=right[i];cells[i].setVisibility(visibility[i]);}
        }
    }
}
