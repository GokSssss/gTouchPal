package com.cootek.smartinput5.settings;
import android.os.Looper;
import android.preference.*;
import android.view.View;
import android.widget.*;
import org.junit.*;
import org.junit.runner.RunWith;
import org.robolectric.*;
import org.robolectric.annotation.Config;
import static org.junit.Assert.*;
import static org.robolectric.Shadows.shadowOf;
/** Real PreferenceScreen navigation; no recorder/backend execution is claimed. */
@RunWith(RobolectricTestRunner.class)
@Config(sdk=34,manifest=Config.NONE)
public class Service150Test {
 private Settings149Test.Page page(){return Robolectric.buildActivity(Settings149Test.Page.class).setup().get();}
 private Preference journal(Settings149Test.Page page,final int[] clicks){
  Preference p=new Preference(page);p.setKey("tp_development_history");p.setTitle("Журнал новых функций");
  p.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener(){public boolean onPreferenceClick(Preference p){clicks[0]++;return true;}});
  page.getPreferenceScreen().addPreference(p);return p;
 }
 private PreferenceScreen diagnostics(Settings149Test.Page page,final int[] clicks){
  PreferenceCategory group=new PreferenceCategory(page);group.setTitle("Дополнения");page.getPreferenceScreen().addPreference(group);
  PreferenceScreen screen=page.getPreferenceManager().createPreferenceScreen(page);screen.setKey("tp_diagnostics");screen.setTitle("Диагностика");group.addPreference(screen);
  screen.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener(){public boolean onPreferenceClick(Preference p){clicks[0]++;return false;}});
  Preference action=new Preference(page);action.setTitle("Начать запись");
  action.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener(){public boolean onPreferenceClick(Preference p){clicks[1]++;return true;}});
  screen.addPreference(action);return screen;
 }
 private int position(ListView list,Preference p){for(int i=0;i<list.getAdapter().getCount();i++)if(list.getAdapter().getItem(i)==p)return i;throw new AssertionError("missing row");}
 @Test public void holdJournalOpensOriginalHiddenScreenAndKeepsActions(){
  Settings149Test.Page page=page();int[] shortClicks={0},diagnosticClicks={0,0};Preference journal=journal(page,shortClicks);PreferenceScreen diagnostics=diagnostics(page,diagnosticClicks);
  CompactSettings.install(page);shadowOf(Looper.getMainLooper()).idle();
  assertNull(page.findPreference("tp_diagnostics"));assertNull(page.findPreference("tp_service_settings150"));
  ListView list=page.getListView();int index=position(list,journal);View row=list.getAdapter().getView(index,null,list);
  assertTrue(list.getOnItemLongClickListener().onItemLongClick(list,row,index,list.getAdapter().getItemId(index)));
  assertEquals(0,shortClicks[0]);assertEquals(1,diagnosticClicks[0]);assertNotNull(diagnostics.getDialog());assertTrue(diagnostics.getDialog().isShowing());
  diagnostics.onItemClick(null,null,0,0);assertEquals(1,diagnosticClicks[1]);diagnostics.getDialog().dismiss();
  list.performItemClick(row,index,list.getAdapter().getItemId(index));assertEquals(1,shortClicks[0]);
  assertFalse(diagnostics.getDialog()!=null&&diagnostics.getDialog().isShowing());
 }
 @Test public void repeatInstallAndReopenDoNotLoseHiddenScreenOrOrdinaryClicks(){
  Settings149Test.Page page=page();int[] shortClicks={0},diagnosticClicks={0,0};Preference journal=journal(page,shortClicks);PreferenceScreen diagnostics=diagnostics(page,diagnosticClicks);
  for(int i=0;i<3;i++){
   CompactSettings.install(page);shadowOf(Looper.getMainLooper()).idle();ListView list=page.getListView();int index=position(list,journal);
   assertTrue(list.getOnItemLongClickListener().onItemLongClick(list,null,index,0));assertTrue(diagnostics.getDialog().isShowing());diagnostics.getDialog().dismiss();
   assertNull(page.findPreference("tp_diagnostics"));assertSame(journal,page.findPreference("tp_development_history"));
  }
  assertEquals(3,diagnosticClicks[0]);assertEquals(0,shortClicks[0]);
 }
 @Test public void unrelatedHoldsAndOriginalShortHandlersArePreserved(){
  Settings149Test.Page page=page();int[] shortClicks={0},diagnosticClicks={0,0};journal(page,shortClicks);diagnostics(page,diagnosticClicks);
  final int[] holds={0};page.getListView().setOnItemLongClickListener(new AdapterView.OnItemLongClickListener(){public boolean onItemLongClick(AdapterView<?> parent,View view,int position,long id){holds[0]++;return true;}});
  CompactSettings.install(page);shadowOf(Looper.getMainLooper()).idle();ListView list=page.getListView();Preference sample=page.findPreference("sample");int index=position(list,sample);
  assertTrue(list.getOnItemLongClickListener().onItemLongClick(list,null,index,0));assertEquals(1,holds[0]);assertEquals(0,diagnosticClicks[0]);
  CheckBoxPreference check=(CheckBoxPreference)page.findPreference("check");index=position(list,check);list.performItemClick(list.getAdapter().getView(index,null,list),index,0);assertTrue(check.isChecked());
 }
 @Test public void missingJournalDoesNotMakeDiagnosticsInaccessible(){
  Settings149Test.Page page=page();PreferenceScreen diagnostics=diagnostics(page,new int[]{0,0});ServiceSettings150.install(page);assertSame(diagnostics,page.findPreference("tp_diagnostics"));
 }
}
