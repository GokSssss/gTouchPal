package com.cootek.smartinput5.settings;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

/** Credits and owner-supplied project links, using only local UI assets. */
public final class AboutPage149 {
    public static final String TANH="https://4pda.to/forum/index.php?showtopic=256287&view=findpost&p=139436147";
    public static final String GITHUB="https://github.com/GokSssss/gTouchPal-";
    private final Activity activity;
    private final int primary,secondary,accent,line;
    private AboutPage149(Activity activity){
        this.activity=activity;
        boolean dark=SettingsIcons149.dark(activity);
        primary=dark?0xffefefef:0xff202020;secondary=dark?0xffb8b8b8:0xff666666;
        accent=dark?0xff59b6de:0xff24799f;line=dark?0xff404040:0xffdddddd;
    }
    private int dp(float value){return Math.round(value*activity.getResources().getDisplayMetrics().density);}
    private TextView text(String value,float size,int color){
        TextView label=new TextView(activity);label.setText(value);
        label.setTextSize(TypedValue.COMPLEX_UNIT_SP,size);label.setTextColor(color);return label;
    }
    private LinearLayout vertical(){
        LinearLayout layout=new LinearLayout(activity);layout.setOrientation(LinearLayout.VERTICAL);return layout;
    }
    private void gap(LinearLayout parent,int size){parent.addView(new View(activity),new LinearLayout.LayoutParams(1,dp(size)));}
    private void section(LinearLayout parent,String label){
        View divider=new View(activity);divider.setBackgroundColor(line);
        LinearLayout.LayoutParams rule=new LinearLayout.LayoutParams(-1,dp(1));rule.topMargin=dp(14);rule.bottomMargin=dp(15);
        parent.addView(divider,rule);
        TextView title=text(label,13,accent);parent.addView(title);gap(parent,9);
    }
    private void credit(LinearLayout parent,String label,String name){
        LinearLayout row=new LinearLayout(activity);row.setGravity(Gravity.CENTER_VERTICAL);
        row.setMinimumHeight(dp(43));
        row.addView(text(label,14,secondary),new LinearLayout.LayoutParams(0,-2,1));
        TextView author=text(name,17,primary);author.setPadding(dp(12),0,0,0);
        row.addView(author,new LinearLayout.LayoutParams(-2,-2));parent.addView(row);
    }
    private void link(LinearLayout parent,String icon,String title,String summary,final String url){
        LinearLayout row=new LinearLayout(activity);row.setGravity(Gravity.CENTER_VERTICAL);row.setMinimumHeight(dp(60));
        row.setPadding(0,dp(8),0,dp(8));
        ImageView mark=new ImageView(activity);mark.setImageDrawable(SettingsIcons149.drawable(activity,icon,accent));
        LinearLayout.LayoutParams markSize=new LinearLayout.LayoutParams(dp(21),dp(21));markSize.rightMargin=dp(13);
        row.addView(mark,markSize);
        LinearLayout labels=vertical();labels.addView(text(title,16,primary));labels.addView(text(summary,13,secondary));
        row.addView(labels,new LinearLayout.LayoutParams(0,-2,1));
        ImageView external=new ImageView(activity);external.setImageDrawable(SettingsIcons149.drawable(activity,"arrow-up-right",secondary));
        row.addView(external,new LinearLayout.LayoutParams(dp(18),dp(18)));
        TypedValue value=new TypedValue();
        if(activity.getTheme().resolveAttribute(android.R.attr.selectableItemBackground,value,true)&&value.resourceId!=0)row.setBackgroundResource(value.resourceId);
        row.setContentDescription(title+", "+summary);row.setFocusable(true);
        row.setOnClickListener(new View.OnClickListener(){public void onClick(View view){
            try{activity.startActivity(new Intent(Intent.ACTION_VIEW,Uri.parse(url)));}
            catch(ActivityNotFoundException absent){Toast.makeText(activity,"Для открытия ссылки нужен браузер",Toast.LENGTH_SHORT).show();}
        }});
        parent.addView(row,new LinearLayout.LayoutParams(-1,-2));
    }
    public static String modVersion(Context context){
        try{
            String version=context.getPackageManager().getPackageInfo(context.getPackageName(),0).versionName;
            int split=version.lastIndexOf('-');return split>=0?version.substring(split+1):version;
        }catch(Exception absent){return "—";}
    }
    public static void install(Activity activity){new AboutPage149(activity).show();}
    private void show(){
        boolean dark=SettingsIcons149.dark(activity);
        if(activity.getActionBar()!=null)activity.getActionBar().hide();
        LinearLayout root=vertical();root.setBackgroundColor(dark?0xff202020:0xfffafafa);
        LinearLayout header=new LinearLayout(activity);header.setGravity(Gravity.CENTER_VERTICAL);
        header.setPadding(dp(10),0,dp(14),0);header.setBackgroundColor(dark?0xff151515:0xffeeeeee);
        ImageButton back=new ImageButton(activity);back.setImageDrawable(SettingsIcons149.drawable(activity,"arrow-left",primary));
        back.setBackgroundColor(Color.TRANSPARENT);back.setContentDescription("Назад");
        back.setPadding(dp(11),dp(11),dp(11),dp(11));
        back.setScaleType(ImageView.ScaleType.FIT_CENTER);
        back.setOnClickListener(new View.OnClickListener(){public void onClick(View view){activity.finish();}});
        header.addView(back,new LinearLayout.LayoutParams(dp(44),dp(44)));
        TextView heading=text("О приложении",20,primary);heading.setPadding(dp(10),0,0,0);header.addView(heading);
        root.addView(header,new LinearLayout.LayoutParams(-1,dp(56)));
        ScrollView scroll=new ScrollView(activity);scroll.setFillViewport(true);
        LinearLayout content=vertical();content.setPadding(dp(20),dp(24),dp(20),dp(18));
        scroll.addView(content,new ScrollView.LayoutParams(-1,-2));root.addView(scroll,new LinearLayout.LayoutParams(-1,0,1));
        LinearLayout brand=vertical();brand.setGravity(Gravity.CENTER_HORIZONTAL);
        ImageView logo=new ImageView(activity);
        try{logo.setImageDrawable(activity.getPackageManager().getApplicationIcon(activity.getPackageName()));}catch(Exception absent){}
        brand.addView(logo,new LinearLayout.LayoutParams(dp(76),dp(76)));
        gap(brand,12);TextView brandName=text("gTouchPal",26,primary);brandName.setGravity(Gravity.CENTER);
        brand.addView(brandName);gap(brand,5);
        TextView version=text("Версия модификации · "+modVersion(activity),13,secondary);version.setGravity(Gravity.CENTER);
        brand.addView(version);
        content.addView(brand,new LinearLayout.LayoutParams(-1,-2));gap(content,12);
        section(content,"Основано на");content.addView(text("TouchPal Keyboard 6.2.7.1",17,primary));
        section(content,"Разработка");
        credit(content,"С благодарностью за создание и развитие","Tanh");
        credit(content,"Продолжение и развитие","GokS");
        section(content,"Проект");
        link(content,"messages-square","Мод Tanh на 4PDA","Исходная модификация",TANH);
        link(content,"github-logo","gTouchPal на GitHub","Репозиторий проекта",GITHUB);
        content.addView(new View(activity),new LinearLayout.LayoutParams(1,0,1));
        TextView footer=text("Основа TouchPal Keyboard — CooTek",12,secondary);
        footer.setGravity(Gravity.CENTER);footer.setPadding(0,dp(24),0,0);content.addView(footer,new LinearLayout.LayoutParams(-1,-2));
        activity.setTitle("О приложении");activity.setContentView(root);
    }
}
