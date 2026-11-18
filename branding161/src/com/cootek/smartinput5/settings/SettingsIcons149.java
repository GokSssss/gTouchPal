package com.cootek.smartinput5.settings;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.PorterDuff;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceManager;
import android.preference.PreferenceGroup;
import java.io.InputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/** Local monochrome assets; no icon fonts, network requests or new permissions. */
public final class SettingsIcons149 {
    private static final Map<String,Bitmap> BITMAPS=new HashMap<String,Bitmap>();
    private SettingsIcons149(){}
    public static boolean dark(Context context){
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean("option_dark_theme",false);
    }
    public static Drawable drawable(Context context,String name,int color){
        Drawable vector=SettingsGlyphs153.drawable(context,name,color);
        if(vector!=null)return vector;
        Bitmap bitmap;
        synchronized(BITMAPS){
            bitmap=BITMAPS.get(name);
            if(bitmap==null){
                try{
                    InputStream stream=context.getAssets().open("settings149/"+name+".png");
                    try{bitmap=BitmapFactory.decodeStream(stream);}finally{stream.close();}
                }catch(IOException absent){return null;}
                if(bitmap==null)return null;
                BITMAPS.put(name,bitmap);
            }
        }
        BitmapDrawable icon=new BitmapDrawable(context.getResources(),bitmap);
        int size=Math.round(22*context.getResources().getDisplayMetrics().density);
        icon.setBounds(0,0,size,size);
        icon.setColorFilter(color,PorterDuff.Mode.SRC_IN);
        return icon;
    }
    public static String name(Preference preference){
        String key=preference.getKey()==null?"":preference.getKey().toLowerCase(Locale.US);
        String title=String.valueOf(preference.getTitle()).toLowerCase(Locale.US);
        String smart=SettingsGlyphs153.name(key);if(smart!=null)return smart;
        if(key.equals("tp_recent_setting146"))return "history";
        if(key.equals("option_general_screen"))return "keyboard";
        if(key.equals("option_about_screen"))return "info";
        if(key.equals("tp_keyboard_theme132")||title.contains("тема клавиатуры"))return "palette";
        if(key.equals("option_dark_theme"))return "moon";
        if(key.contains("physical")||title.contains("физическая"))return "laptop";
        if(key.contains("spell")||title.contains("орфограф"))return "spell-check";
        if(key.contains("diagnos")||title.contains("диагност"))return "activity";
        if(key.contains("restart")||title.contains("перезапуст"))return "rotate-cw";
        if(key.contains("backup")||title.contains("резервн"))return "save";
        if(key.contains("history")||title.contains("журнал новых"))return "notebook-text";
        if(key.contains("candidate_max_words")||title.contains("количество")&&title.contains("слов"))return "candidate-count";
        if(key.contains("font")||key.contains("text_size")||title.contains("шрифт")){
            if(key.contains("size")||title.contains("размер"))return "font-size";
            return "type";
        }
        if(key.contains("navigation")||title.contains("цвет системной")||title.contains("навигации под цвет"))return "panel-top";
        if(key.contains("popup")||title.contains("всплывающ"))return "popup-square";
        if(key.contains("height")||title.contains("высота клавиатуры"))return "move-vertical";
        if(key.contains("swipe_down")||title.contains("свайп вниз"))return "move-down";
        if(key.contains("swipe_up")||title.contains("свайп вверх"))return "move-up";
        if(key.contains("voice")||title.contains("голосов"))return "mic";
        if(key.contains("vibr")||title.contains("вибрац"))return "vibrate";
        if(key.contains("sound")||title.contains("звук"))return "volume-2";
        if(key.contains("delay")||key.contains("long_press")||title.contains("задержка"))return "timer";
        if(key.contains("clipboard")||title.contains("буфер"))return "clipboard";
        if(key.contains("language")||title.contains("язык"))return "languages";
        if(key.equals("tp_system_keyboard_settings")||key.startsWith("tp_system_"))return "settings";
        if(title.contains("дополнительно"))return "sliders-horizontal";
        return "sliders-horizontal";
    }
    private static void describe(PreferenceActivity page,String key,String summary){
        Preference preference=page.findPreference(key);if(preference!=null)preference.setSummary(summary);
    }
    public static void configurePage(PreferenceActivity page){
        compactLabels(page.getPreferenceScreen());
        configureRoot(page);
    }
    private static void compactLabels(PreferenceGroup group){
        if(group==null)return;
        for(int i=0;i<group.getPreferenceCount();i++){
            Preference item=group.getPreference(i);
            String title=String.valueOf(item.getTitle());
            if(title.equals("Панель навигации под цвет скина")){
                item.setTitle("Цвет системной панели");item.setSummary("Использовать цвет темы клавиатуры");
            }else if(title.equals("Свайп вниз по клавишам на раскладке T9"))item.setTitle("Свайп вниз по клавишам T9");
            else if(title.equals("Задержка долгого нажатия на клавишу"))item.setTitle("Задержка удержания");
            else if(title.equals("Голосовой ввод"))item.setSummary("При удержании пробела");
            if(item instanceof PreferenceGroup)compactLabels((PreferenceGroup)item);
        }
    }
    public static void configureRoot(PreferenceActivity page){
        if(page.findPreference("option_about_screen")==null)return;
        page.setTitle("TouchPalG");
        try{page.getClass().getMethod("r",CharSequence.class).invoke(page,"TouchPalG");}catch(Exception absent){}
        describe(page,"option_general_screen","Ввод, звук, буфер и панель слов");
        describe(page,"tp_keyboard_theme132","Выбрать тему клавиатуры");
        describe(page,"option_dark_theme","Оформление настроек");
        describe(page,"tp_physical_keyboard","Русский · English");
        describe(page,"tp_spelling","Для физической клавиатуры");
        describe(page,"tp_diagnostics","Запись по кнопке");
        Preference about=page.findPreference("option_about_screen");
        about.setTitle("О приложении");about.setSummary("Основа, авторы и ссылки проекта");
        Preference addons=page.findPreference("tp_additions");if(addons!=null)addons.setTitle("Дополнения TouchPalG");
    }
}
