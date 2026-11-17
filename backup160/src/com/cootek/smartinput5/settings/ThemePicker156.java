package com.cootek.smartinput5.settings;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Looper;
import android.widget.Toast;
import com.cootek.smartinput5.engine.Settings;
import com.cootek.smartinput5.func.h;
import com.cootek.smartinput5.func.h0;
import com.cootek.smartinput5.func.i0;
import com.cootek.smartinput5.func.z;
import com.cootek.smartinput5.skin.BundledGateTheme;
import java.util.ArrayList;
import java.util.LinkedHashMap;

/** Installed skins through the original native manager; no store, WebView or new task. */
public final class ThemePicker156 {
    private ThemePicker156(){}
    static final class Choice {
        final String id,title;
        Choice(String id,String title){this.id=id;this.title=title;}
    }
    static ArrayList<Choice> choices(Activity page,i0 manager){
        ArrayList<h> original=manager.B0();
        ArrayList<h> installed=original==null?new ArrayList<h>():new ArrayList<h>(original);
        BundledGateTheme.append(page,installed);
        LinkedHashMap<String,Choice> result=new LinkedHashMap<String,Choice>();
        for(h skin:installed){
            if(skin==null||skin.b==null||skin.b.length()==0)continue;
            h0 details=skin instanceof h0?(h0)skin:manager.i0(skin.b);
            if(details!=null&&details.i)continue;
            String title=details==null?null:details.g;
            if(title==null||title.trim().length()==0)title=skin.b;
            if(!result.containsKey(skin.b))result.put(skin.b,new Choice(skin.b,title));
        }
        return new ArrayList<Choice>(result.values());
    }
    public static void open(final Activity page){
        if(page==null||page.isFinishing()||Looper.myLooper()!=Looper.getMainLooper())return;
        try{
            if(!z.J0())z.G0(page);
            if(!z.J0())throw new IllegalStateException("Skins unavailable");
            final i0 manager=z.b0().v0();if(manager==null)throw new IllegalStateException("Skins unavailable");
            final ArrayList<Choice> items=choices(page,manager);
            if(items.isEmpty())throw new IllegalStateException("No installed skins");
            String selected=Settings.getInstance().getStringSetting(0x54);
            String[] titles=new String[items.size()];int checked=-1;
            for(int n=0;n<items.size();n++){titles[n]=items.get(n).title;if(items.get(n).id.equals(selected))checked=n;}
            new AlertDialog.Builder(page).setTitle("Тема клавиатуры")
                .setSingleChoiceItems(titles,checked,new DialogInterface.OnClickListener(){
                    public void onClick(DialogInterface dialog,int position){
                        if(page.isFinishing()||position<0||position>=items.size())return;
                        try{
                            if(!z.J0()||z.b0().v0()!=manager)throw new IllegalStateException("Skins changed");
                            String id=items.get(position).id;
                            if(!manager.U0(id)){restoreChecked(dialog,items);message(page,"Не удалось применить тему. Выбери другую установленную тему.");return;}
                            Settings settings=Settings.getInstance();settings.setStringSetting(0x54,id);settings.writeBack();
                            if(!id.equals(settings.getStringSetting(0x54))){restoreChecked(dialog,items);message(page,"Тема выбрана, но сохранение не подтверждено. Повтори выбор.");return;}
                            dialog.dismiss();
                        }catch(Exception failed){restoreChecked(dialog,items);message(page,"Не удалось завершить выбор темы. Повтори открытие списка.");}
                        catch(LinkageError unavailable){message(page,"Движок темы недоступен. Открой клавиатуру и повтори выбор.");}
                    }
                }).setNegativeButton("Отмена",null).show();
        }catch(Exception failed){message(page,"Не удалось открыть установленные темы. Открой клавиатуру и повтори.");}
        catch(LinkageError unavailable){message(page,"Движок темы недоступен. Открой клавиатуру и повтори.");}
    }
    private static void restoreChecked(DialogInterface dialog,ArrayList<Choice> items){
        if(!(dialog instanceof AlertDialog))return;
        try{String current=Settings.getInstance().getStringSetting(0x54);android.widget.ListView list=((AlertDialog)dialog).getListView();list.clearChoices();for(int n=0;n<items.size();n++)if(items.get(n).id.equals(current)){list.setItemChecked(n,true);break;}}
        catch(RuntimeException unavailable){}
    }
    private static void message(Activity page,String text){if(!page.isFinishing())Toast.makeText(page,text,Toast.LENGTH_LONG).show();}
}
