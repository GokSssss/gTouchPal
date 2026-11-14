package com.cootek.smartinput5.settings;

import android.database.DataSetObserver;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceCategory;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.WrapperListAdapter;
import java.lang.ref.WeakReference;

/** One presentation for native preferences; keep their objects and handlers. */
public final class CompactSettings {
    private CompactSettings(){}
    public static void install(PreferenceActivity activity){
        String name=activity.getClass().getName();
        if(name.equals("com.cootek.smartinput5.preference.AboutPreferenceActivity"))return;
        final WeakReference<PreferenceActivity> owner=new WeakReference<PreferenceActivity>(activity);
        activity.getWindow().getDecorView().post(new Runnable(){public void run(){
            PreferenceActivity page=owner.get();
            if(page==null||page.isFinishing()||page.getPreferenceScreen()==null)return;
            ServiceSettings150.install(page);
            RecentSettings146.install(page);
            SettingsIcons149.configurePage(page);
            ListView list=page.getListView();
            list.setBackgroundColor(SettingsIcons149.dark(page)?0xff202020:0xfffafafa);
            ListAdapter source=list.getAdapter();
            if(source!=null&&!(source instanceof Rows))list.setAdapter(new Rows(source));
        }});
    }
    private static void trim(View view,int gap){
        view.setPadding(view.getPaddingLeft(),Math.min(gap,view.getPaddingTop()),view.getPaddingRight(),Math.min(gap,view.getPaddingBottom()));
        ViewGroup.LayoutParams raw=view.getLayoutParams();
        if(raw instanceof ViewGroup.MarginLayoutParams){
            ViewGroup.MarginLayoutParams lp=(ViewGroup.MarginLayoutParams)raw;
            lp.topMargin=Math.min(gap,lp.topMargin);lp.bottomMargin=Math.min(gap,lp.bottomMargin);
        }
        if(view instanceof ViewGroup){
            view.setMinimumHeight(0);ViewGroup group=(ViewGroup)view;
            for(int i=0;i<group.getChildCount();i++)trim(group.getChildAt(i),gap);
        }
    }
    /** Remove legacy leading insets only from the title/summary branch. */
    private static boolean alignTextBranch(View view,View title,View summary){
        boolean contains=view==title||view==summary;
        if(view instanceof ViewGroup){
            ViewGroup group=(ViewGroup)view;
            for(int n=0;n<group.getChildCount();n++)contains=alignTextBranch(group.getChildAt(n),title,summary)||contains;
        }
        if(contains){
            view.setPadding(0,view.getPaddingTop(),view.getPaddingRight(),view.getPaddingBottom());
            ViewGroup.LayoutParams raw=view.getLayoutParams();
            if(raw instanceof ViewGroup.MarginLayoutParams)((ViewGroup.MarginLayoutParams)raw).leftMargin=0;
        }
        return contains;
    }
    private static void removeNativeIcon(View body){
        int frameId=body.getResources().getIdentifier("icon_frame","id","android");
        View frame=frameId==0?null:body.findViewById(frameId);
        if(frame!=null&&frame!=body)frame.setVisibility(View.GONE);
        View icon=body.findViewById(android.R.id.icon);
        if(icon!=null&&icon!=body)icon.setVisibility(View.GONE);
    }
    private static final class RowFrame extends LinearLayout {
        final ImageView icon;
        View body;
        RowFrame(android.content.Context context){
            super(context);setOrientation(HORIZONTAL);setGravity(android.view.Gravity.CENTER_VERTICAL);
            float d=getResources().getDisplayMetrics().density;
            setPadding(Math.round(14*d),0,0,0);
            icon=new ImageView(context);icon.setScaleType(ImageView.ScaleType.FIT_CENTER);
            icon.setFocusable(false);icon.setClickable(false);
            LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(Math.round(22*d),Math.round(22*d));
            lp.rightMargin=Math.round(12*d);addView(icon,lp);
            setFocusable(false);setClickable(false);
        }
        void body(View value){
            if(body==value)return;
            if(body!=null)removeView(body);
            body=value;addView(value,new LinearLayout.LayoutParams(0,ViewGroup.LayoutParams.WRAP_CONTENT,1));
        }
    }
    private static final class Rows implements WrapperListAdapter {
        private final ListAdapter source;
        Rows(ListAdapter source){this.source=source;}
        public ListAdapter getWrappedAdapter(){return source;}
        public int getCount(){return source.getCount();}
        public Object getItem(int position){return source.getItem(position);}
        public long getItemId(int position){return source.getItemId(position);}
        public boolean hasStableIds(){return source.hasStableIds();}
        public boolean areAllItemsEnabled(){return source.areAllItemsEnabled();}
        public boolean isEnabled(int position){return source.isEnabled(position);}
        public int getItemViewType(int position){return source.getItemViewType(position);}
        public int getViewTypeCount(){return source.getViewTypeCount();}
        public boolean isEmpty(){return source.isEmpty();}
        public void registerDataSetObserver(DataSetObserver observer){source.registerDataSetObserver(observer);}
        public void unregisterDataSetObserver(DataSetObserver observer){source.unregisterDataSetObserver(observer);}
        public View getView(int position,View convert,ViewGroup parent){
            RowFrame recycled=convert instanceof RowFrame?(RowFrame)convert:null;
            View raw=recycled==null?convert:recycled.body;
            View view=source.getView(position,raw,parent);
            float density=view.getResources().getDisplayMetrics().density;
            trim(view,Math.round(3*density));
            Object item=getItem(position);
            boolean heading=item instanceof PreferenceCategory;
            boolean dark=SettingsIcons149.dark(view.getContext());
            int primary=dark?0xffefefef:0xff202020,secondary=dark?0xffb8b8b8:0xff666666;
            TextView title=view instanceof TextView?(TextView)view:(TextView)view.findViewById(android.R.id.title);
            TextView summary=(TextView)view.findViewById(android.R.id.summary);
            if(title!=null){
                title.setTextSize(TypedValue.COMPLEX_UNIT_SP,heading?14:16);
                title.setTextColor(heading?(dark?0xff59b6de:0xff24799f):primary);
                title.setIncludeFontPadding(false);
            }
            if(summary!=null){
                summary.setTextSize(TypedValue.COMPLEX_UNIT_SP,13);summary.setTextColor(secondary);
                summary.setIncludeFontPadding(false);
            }
            removeNativeIcon(view);
            alignTextBranch(view,title,summary);
            String key=item instanceof Preference?((Preference)item).getKey():null;
            boolean recent="tp_recent_category146".equals(key);
            if(heading){
                view.setMinimumHeight(Math.round((recent?38:26)*density));
                view.setPadding(Math.round(14*density),Math.round((recent?12:5)*density),view.getPaddingRight(),Math.round(3*density));
                RecentSettings146.separator(view,recent);
                return view;
            }
            RecentSettings146.separator(view,false);
            view.setPadding(0,Math.round(3*density),view.getPaddingRight(),Math.round(3*density));
            RowFrame frame=recycled==null?new RowFrame(view.getContext()):recycled;
            frame.body(view);frame.setMinimumHeight(Math.round(46*density));
            if(item instanceof Preference)frame.icon.setImageDrawable(SettingsIcons149.drawable(view.getContext(),SettingsIcons149.name((Preference)item),secondary));
            else frame.icon.setImageDrawable(null);
            boolean enabled=item instanceof Preference?((Preference)item).isEnabled():isEnabled(position);
            frame.setEnabled(enabled);
            frame.icon.setAlpha(enabled?255:110);
            return frame;
        }
    }
}
