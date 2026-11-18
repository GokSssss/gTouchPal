package com.cootek.smartinput5.settings;

import android.preference.*;
import android.view.View;
import android.graphics.*;
import android.graphics.drawable.Drawable;

/** One bottom section linking to the most recently changed setting and the existing journal. */
public final class RecentSettings146 {
    private RecentSettings146(){}
    private static PreferenceGroup parent(PreferenceGroup root,Preference item){
        for(int i=0;i<root.getPreferenceCount();i++){Preference child=root.getPreference(i);if(child==item)return root;if(child instanceof PreferenceGroup){PreferenceGroup found=parent((PreferenceGroup)child,item);if(found!=null)return found;}}
        return null;
    }
    public static void install(PreferenceActivity activity){
        PreferenceScreen root=activity.getPreferenceScreen();if(root==null||activity.findPreference("option_about_screen")==null)return;
        Preference found=activity.findPreference("tp_recent_category146");PreferenceCategory section;
        if(found instanceof PreferenceCategory)section=(PreferenceCategory)found;
        else{
            PreferenceCategory model=null;for(int i=0;i<root.getPreferenceCount();i++){Preference item=root.getPreference(i);if(item instanceof PreferenceCategory)model=(PreferenceCategory)item;item.setOrder(i);}
            section=new PreferenceCategory(activity);section.setPersistent(false);section.setKey("tp_recent_category146");section.setTitle("Последняя изменённая настройка");section.setOrder(root.getPreferenceCount());if(model!=null)section.setLayoutResource(model.getLayoutResource());root.addPreference(section);
        }
        Preference journal=activity.findPreference("tp_development_history");
        int order=0;for(int i=0;i<root.getPreferenceCount();i++){Preference child=root.getPreference(i);if(child!=section&&child!=journal)child.setOrder(order++);}
        Preference shortcut=activity.findPreference("tp_recent_setting146");
        if(shortcut==null){shortcut=new Preference(activity);shortcut.setPersistent(false);shortcut.setKey("tp_recent_setting146");shortcut.setOrder(0);section.addPreference(shortcut);}
        shortcut.setTitle("Количество предлагаемых слов");
        shortcut.setSummary(CandidatePanel141.count(activity)+" слов · панель предлагаемых слов");
        shortcut.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener(){public boolean onPreferenceClick(Preference item){return CandidatePanel141.openCount(item);}});
        if(journal!=null){PreferenceGroup previous=parent(root,journal);if(previous!=root){if(previous!=null)previous.removePreference(journal);root.addPreference(journal);}journal.setOrder(order++);}
        section.setTitle("Последний изменённый параметр");section.setOrder(order);
    }
    public static void separator(View view,boolean enabled){
        Drawable background=view.getBackground();
        if(enabled){if(!(background instanceof TopLine))view.setBackgroundDrawable(new TopLine(background,view));}
        else if(background instanceof TopLine)view.setBackgroundDrawable(((TopLine)background).original);
    }
    private static final class TopLine extends Drawable {
        final Drawable original;final Paint line=new Paint();
        TopLine(Drawable original,View view){this.original=original;line.setColor(0x66888888);line.setStrokeWidth(Math.max(1,view.getResources().getDisplayMetrics().density));}
        public void draw(Canvas canvas){Rect bounds=getBounds();if(original!=null){Rect old=new Rect(original.getBounds());try{original.setBounds(bounds);original.draw(canvas);}finally{original.setBounds(old);}}for(int i=0;i<3;i++){float y=bounds.top+line.getStrokeWidth()*(0.5f+3*i);canvas.drawLine(bounds.left,y,bounds.right,y,line);}}
        public void setAlpha(int alpha){line.setAlpha(alpha);}public void setColorFilter(ColorFilter filter){line.setColorFilter(filter);}public int getOpacity(){return PixelFormat.TRANSLUCENT;}
    }
}
