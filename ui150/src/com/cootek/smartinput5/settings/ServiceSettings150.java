package com.cootek.smartinput5.settings;
import android.preference.*;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;

/** Open the original diagnostic screen by holding the journal row. */
public final class ServiceSettings150 {
    private ServiceSettings150(){}
    public static void install(PreferenceActivity activity){
        PreferenceScreen root=activity.getPreferenceScreen();if(root==null)return;
        Preference journal=activity.findPreference("tp_development_history");
        Preference diagnostics=activity.findPreference("tp_diagnostics");
        if(journal==null||!(diagnostics instanceof PreferenceScreen))return;
        ListView list=activity.getListView();
        AdapterView.OnItemLongClickListener previous=list.getOnItemLongClickListener();
        if(previous instanceof JournalHold)previous=((JournalHold)previous).previous;
        PreferenceScreen hidden=activity.getPreferenceManager().createPreferenceScreen(activity);
        hidden.setPersistent(false);
        if(!remove(root,diagnostics))return;
        hidden.addPreference(diagnostics);
        list.setOnItemLongClickListener(new JournalHold(journal,hidden,previous));
        list.setLongClickable(true);
    }
    private static boolean remove(PreferenceGroup parent,Preference target){
        for(int i=0;i<parent.getPreferenceCount();i++){
            Preference item=parent.getPreference(i);
            if(item==target)return parent.removePreference(item);
            if(item instanceof PreferenceGroup&&remove((PreferenceGroup)item,target))return true;
        }
        return false;
    }
    private static final class JournalHold implements AdapterView.OnItemLongClickListener {
        final Preference journal;
        final PreferenceScreen hidden;
        final AdapterView.OnItemLongClickListener previous;
        JournalHold(Preference journal,PreferenceScreen hidden,AdapterView.OnItemLongClickListener previous){
            this.journal=journal;this.hidden=hidden;this.previous=previous;
        }
        public boolean onItemLongClick(AdapterView<?> parent,View view,int position,long id){
            if(parent.getAdapter().getItem(position)!=journal)
                return previous!=null&&previous.onItemLongClick(parent,view,position,id);
            // Android's normal click path preserves the refresh listener,
            // native diagnostic dialog and all original action handlers.
            hidden.onItemClick(null,null,0,0);
            return true;
        }
    }
}
