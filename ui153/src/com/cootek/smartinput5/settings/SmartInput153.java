package com.cootek.smartinput5.settings;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PixelFormat;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceCategory;
import android.preference.PreferenceGroup;
import android.view.View;

/** Presentation of the existing native preferences; no replacement settings or listeners. */
public final class SmartInput153 {
    static final String WAVE="tp153_wave", T9="tp153_t9", GENERAL="tp153_smart_general";
    static final String CONTEXT="option_advanced_prediction", SPACE="option_space_to_input_nextword";
    private static final String[] WAVE_KEYS={"option_curve","option_wave","option_wave_without_next_word_on_candidate"};
    private static final String[] T9_KEYS={"option_predict","option_auto_correction"};
    private static final String[] GENERAL_KEYS={"option_auto_save",CONTEXT,SPACE,"option_auto_space","smartdash","option_emoji_prediction","option_auto_capitalization"};
    private SmartInput153(){}

    public static void install(PreferenceActivity page){
        Preference prediction=page.findPreference("option_predict");
        if(prediction==null)return;
        PreferenceGroup root=page.getPreferenceScreen();
        Preference section=page.findPreference(WAVE);
        if(section==null)section=page.findPreference(T9);
        PreferenceGroup owner=KeyboardActivation152.parent(root,section==null?prediction:section);
        if(owner==null)return;
        PreferenceCategory waveGroup=present(page,WAVE_KEYS)?category(page,owner,WAVE,"Wave",0):null;
        PreferenceCategory t9Group=category(page,owner,T9,"T9",10);
        PreferenceCategory generalGroup=category(page,owner,GENERAL,"Общие настройки",20);
        move(page,waveGroup,WAVE_KEYS);move(page,t9Group,T9_KEYS);move(page,generalGroup,GENERAL_KEYS);
        label(page,"option_predict","Предугадывание/Т9","Т9 клавиатура: подбор слова по группам букв. Полная: дополнять набираемое слово.");
        label(page,"option_auto_correction","Автозамена","Пробелом автоматически исправлять опечатки и ошибки при наборе текста.");
        label(page,CONTEXT,"Контекстное прогнозирование","Предлагать следующее слово по контексту.");
        label(page,SPACE,"Выбирать след. слово пробелом","До начала набора пробел выбирает первый вариант контекстного прогноза.");
        label(page,"option_curve",null,"Ведите пальцем по буквам одного слова. Отпустите палец, чтобы завершить ввод.");
        label(page,"option_wave",null,"Вводите фразы жестами, выбирая слова из подсказок без обычного набора.");
        label(page,"option_wave_without_next_word_on_candidate",null,"Скрывать следующие слова в предложке Wave. Доступно, когда включён режим Wave.");
        label(page,"option_auto_save",null,"Автоматически сохранять новые слова в пользовательский словарь.");
        label(page,"smartdash",null,"Расставлять пробелы вокруг тире и убирать пробел перед дефисом.");
        label(page,"option_auto_space",null,"Добавлять пробел после выбранного слова для продолжения ввода следующего.");
        label(page,"option_auto_capitalization",null,"Начинать предложения с заглавной буквы при вводе на любой раскладке.");
        label(page,"option_emoji_prediction",null,"Показывать подходящие эмодзи рядом со словами в панели подсказок.");
        label(page,"option_import_contact",null,"Добавить имена из контактов в словарь для подсказок при дальнейшем наборе.");
        label(page,"option_manage_user_word",null,"Просматривать и редактировать сохранённые пользовательские слова.");
        Preference dictionary=page.findPreference("option_category_manager_dictionary");
        if(dictionary!=null)dictionary.setOrder(30);
        Preference space=page.findPreference(SPACE);
        // Android's native dependency only changes availability. The stored checked value stays intact.
        if(space!=null&&page.findPreference(CONTEXT)!=null&&!CONTEXT.equals(space.getDependency()))space.setDependency(CONTEXT);
    }
    private static boolean present(PreferenceActivity page,String[] keys){for(String key:keys)if(page.findPreference(key)!=null)return true;return false;}
    private static PreferenceCategory category(PreferenceActivity page,PreferenceGroup owner,String key,String title,int order){
        Preference existing=page.findPreference(key);
        PreferenceCategory group;
        if(existing instanceof PreferenceCategory)group=(PreferenceCategory)existing;
        else {group=new PreferenceCategory(page);group.setKey(key);group.setPersistent(false);owner.addPreference(group);}
        group.setTitle(title);group.setOrder(order);return group;
    }
    private static void move(PreferenceActivity page,PreferenceGroup target,String[] keys){
        if(target==null)return;
        for(int n=0;n<keys.length;n++){
            Preference item=page.findPreference(keys[n]);if(item==null)continue;
            PreferenceGroup old=KeyboardActivation152.parent(page.getPreferenceScreen(),item);
            if(old!=target){if(old==null||!old.removePreference(item))continue;target.addPreference(item);}
            item.setOrder(n);
        }
    }
    private static void label(PreferenceActivity page,String key,String title,String summary){
        Preference item=page.findPreference(key);if(item==null)return;
        if(title!=null)item.setTitle(title);if(summary!=null)item.setSummary(summary);
    }
    static boolean ownHeading(String key){return WAVE.equals(key)||T9.equals(key)||GENERAL.equals(key)||"option_category_manager_dictionary".equals(key);}
    static boolean ownRow(String key){
        if(key==null)return false;
        for(String[] keys:new String[][]{WAVE_KEYS,T9_KEYS,GENERAL_KEYS})for(String candidate:keys)if(candidate.equals(key))return true;
        return key.equals("option_import_contact")||key.equals("option_manage_user_word")||key.equals("option_edit_dictionary")||key.equals("option_backup_dictionary")||key.equals("option_restore_dictionary")||key.equals("option_rebuild_language_data")||key.equals("option_clear_language_data");
    }
    static void heading(View view,String key){
        Drawable base=view.getBackground();if(base instanceof SectionLine)base=((SectionLine)base).base;
        if(ownHeading(key)&&!WAVE.equals(key))view.setBackgroundDrawable(new SectionLine(base,view));
        else if(view.getBackground() instanceof SectionLine)view.setBackgroundDrawable(base);
    }
    private static final class SectionLine extends Drawable {
        final Drawable base;final Paint paint=new Paint(Paint.ANTI_ALIAS_FLAG);final float inset;
        SectionLine(Drawable base,View view){this.base=base;float density=view.getResources().getDisplayMetrics().density;inset=14*density;paint.setColor(SettingsIcons149.dark(view.getContext())?0xff5b5b5b:0xffbdbdbd);paint.setStrokeWidth(Math.max(1,density));}
        protected void onBoundsChange(Rect r){if(base!=null)base.setBounds(r);}
        public void draw(Canvas canvas){if(base!=null)base.draw(canvas);Rect r=getBounds();canvas.drawLine(r.left+inset,r.top+paint.getStrokeWidth()/2,r.right-inset,r.top+paint.getStrokeWidth()/2,paint);}
        public void setAlpha(int alpha){paint.setAlpha(alpha);if(base!=null)base.setAlpha(alpha);}
        public void setColorFilter(ColorFilter filter){paint.setColorFilter(filter);if(base!=null)base.setColorFilter(filter);}
        public int getOpacity(){return PixelFormat.TRANSLUCENT;}
    }
}
