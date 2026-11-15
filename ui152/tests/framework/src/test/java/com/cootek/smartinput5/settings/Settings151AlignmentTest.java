package com.cootek.smartinput5.settings;
import android.content.Context;
import android.os.*;
import android.preference.*;
import android.view.*;
import android.widget.*;
import org.junit.*;
import org.junit.runner.RunWith;
import org.robolectric.*;
import org.robolectric.annotation.*;
import static org.junit.Assert.*;
import static org.robolectric.Shadows.shadowOf;
/** Mixed platform/custom preference geometry, matching the differing legacy insets. */
@RunWith(RobolectricTestRunner.class) @Config(sdk=34,manifest=Config.NONE)
@LooperMode(LooperMode.Mode.PAUSED)
public class Settings151AlignmentTest {
 static View insetRow(Context c,boolean heading){
  LinearLayout row=new LinearLayout(c);row.setPadding(18,3,7,3);
  if(!heading){
   LinearLayout iconFrame=new LinearLayout(c);int id=c.getResources().getIdentifier("icon_frame","id","android");assertTrue(id!=0);iconFrame.setId(id);
   ImageView icon=new ImageView(c);icon.setId(android.R.id.icon);iconFrame.addView(icon,new LinearLayout.LayoutParams(22,22));row.addView(iconFrame,new LinearLayout.LayoutParams(30,30));
  }
  LinearLayout labels=new LinearLayout(c);labels.setOrientation(LinearLayout.VERTICAL);labels.setPadding(11,0,6,0);
  LinearLayout.LayoutParams block=new LinearLayout.LayoutParams(0,-2,1);block.leftMargin=13;row.addView(labels,block);
  for(int id:new int[]{android.R.id.title,android.R.id.summary}){
   TextView label=new TextView(c);label.setId(id);label.setPadding(id==android.R.id.title?7:9,0,0,0);
   LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(-1,-2);lp.leftMargin=5;labels.addView(label,lp);
  }
  return row;
 }
 public static class InsetPreference extends Preference {
  InsetPreference(Context c){super(c);}
  @Override protected View onCreateView(ViewGroup parent){return insetRow(getContext(),false);}
 }
 public static class InsetCategory extends PreferenceCategory {
  InsetCategory(Context c){super(c);}
  @Override protected View onCreateView(ViewGroup parent){return insetRow(getContext(),true);}
 }
 public static class Page extends PreferenceActivity {
  public void onCreate(Bundle state){
   super.onCreate(state);PreferenceScreen root=getPreferenceManager().createPreferenceScreen(this);setPreferenceScreen(root);
   PreferenceCategory heading=new PreferenceCategory(this);heading.setKey("plain_heading");heading.setTitle("Основные настройки");root.addPreference(heading);
   Preference plain=new Preference(this);plain.setKey("plain");plain.setTitle("Настройки клавиатуры");plain.setSummary("Ввод, звук и панель слов");heading.addPreference(plain);
   InsetPreference inset=new InsetPreference(this);inset.setKey("system");inset.setTitle("Системные настройки клавиатуры");inset.setSummary("Клавиатуры и способы ввода Android");root.addPreference(inset);
   InsetCategory custom=new InsetCategory(this);custom.setKey("inset_heading");custom.setTitle("Дополнения gTouchPal");root.addPreference(custom);
   CheckBoxPreference check=new CheckBoxPreference(this);check.setKey("checked");check.setTitle("Тёмная тема");check.setSummary("Оформление настроек");check.setChecked(true);custom.addPreference(check);
  }
 }
 static int textLeft(View row,TextView text){
  int x=text.getCompoundPaddingLeft();View part=text;
  while(part!=row){x+=part.getLeft();assertTrue(part.getParent() instanceof View);part=(View)part.getParent();}
  return x;
 }
 @Test public void platformAndInsetRowsShareOneTextColumnAndHeadersShareOneEdge(){
  Page page=Robolectric.buildActivity(Page.class).setup().get();CompactSettings.install(page);shadowOf(Looper.getMainLooper()).idle();
  ListAdapter adapter=page.getListView().getAdapter();float density=page.getResources().getDisplayMetrics().density;
  for(int n=0;n<adapter.getCount();n++){
   Preference pref=(Preference)adapter.getItem(n);View row=adapter.getView(n,null,page.getListView());
   int width=Math.round(394*density);row.measure(View.MeasureSpec.makeMeasureSpec(width,View.MeasureSpec.EXACTLY),View.MeasureSpec.makeMeasureSpec(0,View.MeasureSpec.UNSPECIFIED));row.layout(0,0,width,row.getMeasuredHeight());
   TextView title=row instanceof TextView?(TextView)row:(TextView)row.findViewById(android.R.id.title);if(title==null)continue;
   int expected=Math.round((pref instanceof PreferenceCategory?14:48)*density);assertEquals(pref.getKey()+" title",expected,textLeft(row,title));
   TextView summary=(TextView)row.findViewById(android.R.id.summary);if(!(pref instanceof PreferenceCategory)&&summary!=null&&summary.getVisibility()==View.VISIBLE)assertEquals(pref.getKey()+" summary",expected,textLeft(row,summary));
   if(pref.getKey().equals("checked")){assertTrue(((CheckBoxPreference)pref).isChecked());View checkbox=row.findViewById(android.R.id.checkbox);assertNotNull(checkbox);assertEquals(View.VISIBLE,checkbox.getVisibility());}
   View recycled=adapter.getView(n,row,page.getListView());assertSame(row,recycled);
  }
 }
}
