package com.cootek.smartinput5.settings;

import android.app.Activity;
import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.*;
import android.os.*;
import android.preference.*;
import android.view.*;
import android.widget.*;
import java.io.*;
import org.junit.*;
import org.junit.runner.RunWith;
import org.robolectric.*;
import org.robolectric.annotation.*;
import static org.junit.Assert.*;
import static org.robolectric.Shadows.shadowOf;

/** Platform row measurement and local UI capture, not a closed IME/ART launch. */
@RunWith(RobolectricTestRunner.class)
@Config(sdk=34,manifest=Config.NONE)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@LooperMode(LooperMode.Mode.PAUSED)
public class Settings149VisualTest {
    public static class MainPage extends PreferenceActivity {
        private void add(PreferenceGroup group,String key,String title,String summary){
            Preference item=key.equals("option_dark_theme")?new CheckBoxPreference(this):new Preference(this);
            item.setKey(key);item.setTitle(title);item.setSummary(summary);group.addPreference(item);
        }
        public void onCreate(Bundle state){
            super.onCreate(state);PreferenceScreen root=getPreferenceManager().createPreferenceScreen(this);setPreferenceScreen(root);
            PreferenceCategory main=new PreferenceCategory(this);main.setTitle("Основные настройки");main.setKey("tp_main_category144");root.addPreference(main);
            add(main,"option_general_screen","Настройки клавиатуры","Ввод, звук, буфер и панель слов");
            add(main,"advanced","Дополнительно","Умный ввод и жесты");
            add(main,"tp_keyboard_theme132","Тема клавиатуры","Выбрать тему клавиатуры");
            add(main,"language","Языки","Языки и раскладки");
            add(main,"option_about_screen","О приложении","Основа, авторы и ссылки проекта");
            add(root,"tp_system_keyboard_settings","Системные настройки","Клавиатуры и способы ввода Android");
            PreferenceCategory addons=new PreferenceCategory(this);addons.setTitle("Дополнения gTouchPal");addons.setKey("tp_additions");root.addPreference(addons);
            add(addons,"option_dark_theme","Тёмная тема","Оформление настроек");
            add(addons,"tp_physical_keyboard","Физическая клавиатура","Русский · English");
            add(addons,"tp_spelling","Орфография","Для физической клавиатуры");
            add(addons,"tp_diagnostics","Диагностика","Запись по кнопке");
            add(addons,"tp_restart","Перезапустить клавиатуру","Без сброса данных");
            add(addons,"tp_backup","Резервная копия","Словари и настройки · ZIP");
            add(root,"tp_development_history","Журнал новых функций · 149","Возможности и история изменений");
        }
    }
    private void save(View view,String name,int width,int height)throws Exception{
        view.measure(View.MeasureSpec.makeMeasureSpec(width,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(height,View.MeasureSpec.EXACTLY));
        view.layout(0,0,width,height);
        Bitmap bitmap=Bitmap.createBitmap(width,height,Bitmap.Config.ARGB_8888);
        view.draw(new Canvas(bitmap));File path=new File("../../research/framework-capture/"+name+".png");
        path.getParentFile().mkdirs();try(FileOutputStream stream=new FileOutputStream(path)){bitmap.compress(Bitmap.CompressFormat.PNG,100,stream);}
    }
    @Test public void normalMainMenuFitsAndBothThemesRender()throws Exception{
        Context app=RuntimeEnvironment.getApplication();
        int cookie=(Integer)AssetManager.class.getMethod("addAssetPath",String.class).invoke(app.getAssets(),System.getProperty("touchpal.apk"));assertTrue(cookie>0);
        for(boolean dark:new boolean[]{true,false}){
            PreferenceManager.getDefaultSharedPreferences(app).edit().clear().putBoolean("option_dark_theme",dark).putInt("eng_candidate_max_words_custom",6).commit();
            MainPage page=Robolectric.buildActivity(MainPage.class).setup().get();
            CompactSettings.install(page);shadowOf(Looper.getMainLooper()).idle();
            LinearLayout rows=new LinearLayout(page);rows.setOrientation(LinearLayout.VERTICAL);rows.setBackgroundColor(dark?0xff202020:0xfffafafa);
            ListAdapter adapter=page.getListView().getAdapter();int total=0;
            int width=Math.round(394*page.getResources().getDisplayMetrics().density);
            for(int i=0;i<adapter.getCount();i++){
                View view=adapter.getView(i,null,page.getListView());
                view.measure(View.MeasureSpec.makeMeasureSpec(width,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(0,View.MeasureSpec.UNSPECIFIED));
                total+=view.getMeasuredHeight();rows.addView(view);
            }
            float dp=total/page.getResources().getDisplayMetrics().density;
            assertTrue("Main list requires "+dp+"dp",dp<=750);
            save(rows,"main-"+(dark?"dark":"light"),width,total);
            Activity about=Robolectric.buildActivity(Activity.class).setup().get();AboutPage149.install(about);
            save(((android.view.ViewGroup)about.findViewById(android.R.id.content)).getChildAt(0),"about-"+(dark?"dark":"light"),width,Math.round(760*page.getResources().getDisplayMetrics().density));
            page.finish();about.finish();
        }
    }
}
