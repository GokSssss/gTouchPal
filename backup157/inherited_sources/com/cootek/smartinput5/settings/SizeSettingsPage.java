package com.cootek.smartinput5.settings;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.content.res.Configuration;
import android.content.pm.ActivityInfo;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.ColorFilter;
import android.graphics.PixelFormat;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ColorDrawable;
import android.preference.PreferenceManager;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceGroup;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import com.cootek.smartinput5.sizes.CandidateDividers;
import com.cootek.smartinput5.sizes.SizePixels130;
import java.util.TreeMap;
import java.util.Map;
import java.util.ArrayList;
import com.cootek.smartinput5.ui.settings.KeyboardCustomizeActivity;
import com.cootek.smartinput5.ui.SizePreviewBridge;

/** Scoped entry points for the already registered Activity. Changes save immediately. */
public final class SizeSettingsPage {
    public static final String EXTRA_MODE="touchpal.size.mode";
    private interface PageHost {void create();void reload();void cancelDrag();}
    private static final WeakHashMap<Activity,PageHost> PAGES=new WeakHashMap<Activity,PageHost>();
    private static final WeakHashMap<Preference,Boolean> OPENED=new WeakHashMap<Preference,Boolean>();
    private SizeSettingsPage() {}
    public static void keyboardHidden(View view) {SizeRuntimeStore.scheduleKeyboardHidden(view); }
    public static void configure(final PreferenceActivity activity) {
        Preference scale=activity.findPreference(SizeModel.preferenceKey(SizeModel.KEYBOARD));
        if(scale!=null) scale.setTitle(SizeModel.title(SizeModel.KEYBOARD));
        for(int heightMode:new int[]{SizeModel.HEIGHT,SizeModel.HEIGHT_LANDSCAPE}) {
            Preference item=activity.findPreference(SizeModel.preferenceKey(heightMode));
            if(item==null) {
                item=new Preference(activity);item.setKey(SizeModel.preferenceKey(heightMode));
                item.setPersistent(false);
                Preference anchor=activity.findPreference(SizeModel.preferenceKey(SizeModel.KEYBOARD));
                if(anchor!=null) {item.setOrder(anchor.getOrder()+heightMode-SizeModel.HEIGHT+1);item.setLayoutResource(anchor.getLayoutResource());}
                item.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener(){
                    public boolean onPreferenceClick(Preference preference) {return open(preference);}
                });
                Preference group=activity.findPreference("option_genreal_screen_category_candidates");
                if(group instanceof PreferenceGroup) ((PreferenceGroup)group).addPreference(item);
                else activity.getPreferenceScreen().addPreference(item);
            }
            item.setTitle(SizeModel.title(heightMode));
        }
        LandscapeHeight152.seed(activity);
        arrangeGap(activity);
        updateSummaries(activity);
        CandidatePanel141.configure(activity);
    }
    private static PreferenceGroup containing(PreferenceGroup group,Preference target){
        if(group==null)return null;
        for(int i=0;i<group.getPreferenceCount();i++){
            Preference child=group.getPreference(i);
            if(child==target)return group;
            if(child instanceof PreferenceGroup){PreferenceGroup found=containing((PreferenceGroup)child,target);if(found!=null)return found;}
        }
        return null;
    }
    private static void arrangeGap(PreferenceActivity activity){
        Preference gap=activity.findPreference(SizeModel.preferenceKey(SizeModel.GAP));
        if(gap==null)return;
        gap.setTitle(SizeModel.title(SizeModel.GAP));
        // GeneralHelp137 owns the numbered panel order. A caption refresh must
        // not move the gap preference back next to the font-size entry.
    }

    /** Read-only captions in the parent menu, refreshed after native onResume. */
    private static void updateSummaries(PreferenceActivity activity) {
        SizePreview preview=null,landscapePreview=null;
        for(int entry=0;entry<=SizeModel.HEIGHT_LANDSCAPE+1;entry++) {
            int mode=entry>SizeModel.HEIGHT_LANDSCAPE?SizeModel.CANDIDATE:entry;
            Preference item=activity.findPreference(entry>SizeModel.HEIGHT_LANDSCAPE
                    ?"option_customize_keyboard_size":SizeModel.preferenceKey(mode));
            if(item==null)continue;
            try {
                int fine=SizePixels130.read(activity,mode);
                if(fine>0){item.setSummary(fine+" px"+(fine==FreshDefaults137.pixels(mode)?" (по умолчанию)":""));continue;}
                SizePreview resolved;
                if(mode==SizeModel.HEIGHT_LANDSCAPE) {
                    if(landscapePreview==null)landscapePreview=new SizePreview(LandscapeHeight152.context(activity,mode));
                    resolved=landscapePreview;
                } else {
                    if(preview==null)preview=new SizePreview(activity);
                    resolved=preview;
                }
                int raw=new SizeRuntimeStore(activity,mode).read(mode);
                // resolvedCaption uses the requested panel orientation, not
                // the current page mode. fast_candidate_height is43dp in
                // both port/land resources; do not reconfigure shared assets.
                String caption=resolved.resolvedCaption(SizeModel.isHeight(mode)?SizeModel.HEIGHT:mode,raw,SizeModel.themeDefault(mode,raw));
                Matcher match=Pattern.compile("([0-9]+) px").matcher(caption);
                if(match.find()){int px=Integer.parseInt(match.group(1));boolean defaults=FreshDefaults137.pixels(mode)>0?px==FreshDefaults137.pixels(mode):SizeModel.isDefault(mode,raw);item.setSummary(px+" px"+(defaults?" (по умолчанию)":""));}
            } catch(RuntimeException unavailable) { /* Keep the original summary until size data is ready. */ }
        }
    }
    public static boolean open(Preference preference) {
        if(CandidatePanel141.COUNT_KEY.equals(preference.getKey())){
            if(!CandidatePanel141.openCount(preference))return false;
            OPENED.put(preference,Boolean.TRUE);return true;
        }
        int mode=SizeModel.modeForKey(preference.getKey());
        if(mode<0) return false;
        try {
            Context context=preference.getContext();
            Intent intent=new Intent(context,KeyboardCustomizeActivity.class);
            intent.putExtra(EXTRA_MODE,mode);
            if(!(context instanceof Activity)) intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            context.startActivity(intent);
            OPENED.put(preference,Boolean.TRUE);
            return true;
        } catch(RuntimeException error) {return false;}
    }
    public static boolean create(Activity activity) {
        Intent intent=activity.getIntent();
        if(intent==null) return false;
        if(intent.getBooleanExtra(CandidatePanel141.EXTRA_COUNT,false)){
            CountPage page=new CountPage(activity);PAGES.put(activity,page);page.create();return true;
        }
        if(intent.getBooleanExtra(CandidatePanel141.EXTRA_BUTTONS,false)){
            ToolbarPage page=new ToolbarPage(activity,true);PAGES.put(activity,page);page.create();return true;
        }
        if(intent.getBooleanExtra(ToolbarConfig140.EXTRA_PAGE,false)){
            ToolbarPage page=new ToolbarPage(activity,false);PAGES.put(activity,page);page.create();return true;
        }
        int mode=intent.hasExtra(EXTRA_MODE)?intent.getIntExtra(EXTRA_MODE,-1):SizeModel.CANDIDATE;
        if(!SizeModel.validMode(mode)) return false;
        int orientation=mode==SizeModel.PANEL_LANDSCAPE || mode==SizeModel.HEIGHT_LANDSCAPE?ActivityInfo.SCREEN_ORIENTATION_SENSOR_LANDSCAPE:
            mode==SizeModel.PANEL_PORTRAIT || mode==SizeModel.KEYBOARD || SizeModel.isHeight(mode)?ActivityInfo.SCREEN_ORIENTATION_SENSOR_PORTRAIT:
            ActivityInfo.SCREEN_ORIENTATION_UNSPECIFIED;
        if(activity.getRequestedOrientation()!=orientation) activity.setRequestedOrientation(orientation);
        Page page=new Page(activity,mode);
        PAGES.put(activity,page);
        page.create();
        return true;
    }
    public static boolean isActive(Activity activity) {return PAGES.containsKey(activity);}
    public static void resume(Activity activity) {
        PageHost page=PAGES.get(activity);if(page!=null) page.reload();
    }
    public static void pause(Activity activity) {PageHost page=PAGES.get(activity);if(page!=null)page.cancelDrag();SizeRuntimeStore.flushPendingHeight();}
    public static void destroy(Activity activity) {
        PageHost closing=PAGES.remove(activity);if(closing!=null)closing.cancelDrag();
        // onResume refreshes the full parent list. Also update the original
        // source item when returning before that callback has run.
        for(Preference preference:OPENED.keySet()) {
            Context context=preference.getContext();
            if(context instanceof PreferenceActivity){updateSummaries((PreferenceActivity)context);CandidatePanel141.configure((PreferenceActivity)context);}
        }
    }

    private static final class Page implements PageHost {
        private final WeakReference<Activity> owner;
        private final int mode;
        private final SizeModel.Session session;
        private final SizeRuntimeStore store;
        private SettingsTheme theme;
        private SizeDrag134 drag;
        private NativeLayout layout;
        private final TreeMap<Integer,Integer> heightValues=new TreeMap<Integer,Integer>();
        private int transientValue=-1,transientRaw;
        private TextView current, status;
        private SizePreview preview;
        private CheckBox separators;
        private SeekBar fontSlider;
        private PresetGrid choices;
        private boolean syncing;
        private SizePixels130.Steps steps;
        private int defaultValue;
        private int[] quickValues, quickRaw;

        Page(Activity activity,int mode) {
            owner=new WeakReference<Activity>(activity);
            this.mode=mode;
            store=new SizeRuntimeStore(activity,mode);
            session=SizeModel.isHeight(mode)
                ?new SizeModel.Session(mode,store,store.height().values,-1)
                :new SizeModel.Session(mode,store);
        }
        private Activity activity() {return owner.get();}
        private int dp(float value) {return Math.round(value*activity().getResources().getDisplayMetrics().density);}
        private TextView label(String text,float sp,int color) {
            TextView view=new TextView(activity());
            view.setText(text);view.setTextSize(sp);view.setTextColor(color);
            return view;
        }
        public void create() {
            final Activity activity=activity();
            activity.setTitle(SizeModel.title(mode));
            theme=new SettingsTheme(activity);
            preview=new SizePreview(LandscapeHeight152.context(activity,mode));
            prepareDomain();
            LinearLayout controls=new LinearLayout(activity);
            controls.setOrientation(LinearLayout.VERTICAL);
            controls.setPadding(dp(10),0,dp(10),dp(8));
            controls.setBackgroundDrawable(theme.newBackground(activity));
            LinearLayout header=new LinearLayout(activity);
            header.setGravity(Gravity.CENTER_VERTICAL);
            PresetButton back=new PresetButton(activity,theme);
            back.setText("‹");back.setTextSize(28);back.setContentDescription("Назад");
            back.setOnClickListener(new View.OnClickListener(){public void onClick(View view){activity.finish();}});
            header.addView(back,new LinearLayout.LayoutParams(dp(48),dp(48)));
            TextView title=label(SizeModel.title(mode),18,theme.text);
            title.setPadding(dp(8),dp(4),0,dp(4));
            header.addView(title,new LinearLayout.LayoutParams(0,-2,1));
            controls.addView(header,new LinearLayout.LayoutParams(-1,-2));
            current=label("",15,theme.text);
            current.setPadding(0,dp(3),0,dp(2));controls.addView(current);
            if(usesSlider()) {
                fontSlider=new SeekBar(activity);
                fontSlider.setMax(steps.count()-1);
                fontSlider.setKeyProgressIncrement(1);
                fontSlider.setThumb(new ControlDrawable(activity,theme,ControlDrawable.THUMB));
                fontSlider.setProgressDrawable(new ControlDrawable(activity,theme,ControlDrawable.TRACK));
                fontSlider.setContentDescription(SizeModel.title(mode)+". Шаг "+steps.step+" px");
                controls.addView(fontSlider,new LinearLayout.LayoutParams(-1,dp(44)));
                fontSlider.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener(){
                    public void onStartTrackingTouch(SeekBar slider) { }
                    public void onStopTrackingTouch(SeekBar slider) { }
                    public void onProgressChanged(SeekBar slider,int progress,boolean fromUser) {
                        if(!syncing&&fromUser)choose(steps.at(progress),0);
                    }
                });
            }
            choices=new PresetGrid(activity);
            for(int i=0;i<quickValues.length;i++) {
                final int value=quickValues[i];
                final int nativeRaw=quickRaw[i];
                PresetButton choice=new PresetButton(activity,theme);
                choice.setTag(Integer.valueOf(value));
                choice.setOnClickListener(new View.OnClickListener(){public void onClick(View view){choose(value,nativeRaw);}});
                choices.addView(choice);
            }
            controls.addView(choices,new LinearLayout.LayoutParams(-1,-2));
            if(mode==SizeModel.CANDIDATE || mode==SizeModel.GAP) {
                separators=new CheckBox(activity);
                separators.setText("Вертикальные разделители");
                separators.setTextSize(14);separators.setTextColor(theme.text);
                separators.setButtonDrawable(new ControlDrawable(activity,theme,ControlDrawable.CHECKBOX));
                separators.setPadding(dp(2),dp(4),0,dp(4));
                controls.addView(separators,new LinearLayout.LayoutParams(-1,-2));
                separators.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(){
                    public void onCheckedChanged(CompoundButton button,boolean enabled) {
                        if(syncing) return;
                        boolean saved=true;
                        try {CandidateDividers.setEnabled(activity,enabled);}
                        catch(RuntimeException unavailable) {saved=false;}
                        boolean actual=CandidateDividers.isEnabled(activity);
                        syncing=true;button.setChecked(actual);syncing=false;
                        preview.setDividers(actual);
                        if(!saved) Toast.makeText(activity,"Не удалось сохранить разделители",Toast.LENGTH_SHORT).show();
                    }
                });
            }
            status=label("",11,theme.muted);
            status.setPadding(0,dp(3),0,0);controls.addView(status);
            ScrollView scrolling=new ScrollView(activity);
            scrolling.setFillViewport(false);scrolling.setHorizontalScrollBarEnabled(false);
            scrolling.addView(controls,new ViewGroup.LayoutParams(-1,-2));
            drag=new SizeDrag134(activity,new SizeDrag134.Listener(){
                public int value(){return transientValue>=0?transientValue:currentValue();}
                public int minimum(){return steps.first;}
                public int maximum(){return steps.last;}
                public int step(){return steps.step;}
                public boolean available(){return preview.hasNativeGeometry()&&(!SizeModel.isHeight(mode)||store.height().available);}
                public void change(int value,boolean finished){
                    int raw=SizeModel.isHeight(mode)?heightRaw(value):0;
                    int resolved=SizeModel.isHeight(mode)?legacyValue(raw):steps.nearest(value);
                    if(finished){transientValue=-1;choose(resolved,raw);}
                    else {transientValue=resolved;transientRaw=raw;render();}
                }
                public void cancel(){transientValue=-1;render();}
            });
            drag.setContentDescription(SizeModel.title(mode)+". Изменение за край, шаг "+steps.step+" px");
            if(usesSlider())drag.setVisibility(View.GONE);
            layout=new NativeLayout(activity,scrolling,preview,drag,mode,theme);
            activity.setContentView(layout);
            render();
        }
        public void reload() {transientValue=-1;session.reload();render();}
        private boolean usesSlider(){return mode==SizeModel.FONT||mode==SizeModel.CANDIDATE||mode==SizeModel.GAP;}
        public void cancelDrag(){if(drag!=null)drag.cancelGesture();transientValue=-1;}
        private void choose(int value,int nativeRaw) {
            transientValue=-1;
            boolean saved=false;
            try {
                if(value==defaultValue) {
                    if(SizeModel.isHeight(mode)) saved=session.choose(heightRaw(defaultValue));
                    else if(FreshDefaults137.pixels(mode)>0) saved=SizePixels130.set(activity(),mode,defaultValue);
                    else {saved=session.choose(SizeModel.defaultRaw(mode));saved=SizePixels130.clear(activity(),mode)&&saved;}
                } else if(SizeModel.isHeight(mode)) saved=session.choose(nativeRaw);
                else saved=SizePixels130.set(activity(),mode,value);
            } catch(RuntimeException unavailable) {session.reload();}
            try {SizeRuntimeStore.refresh(mode);} catch(RuntimeException unavailable) { }
            render();
            if(!saved) Toast.makeText(activity(),"Не удалось подтвердить сохранение настройки",Toast.LENGTH_SHORT).show();
        }
        private int legacyValue(int raw) {
            String caption=preview.resolvedCaption(SizeModel.isHeight(mode)?SizeModel.HEIGHT:mode,raw,SizeModel.themeDefault(mode,raw));
            Pattern pattern=Pattern.compile("([0-9]+) px");
            Matcher match=pattern.matcher(caption);
            return match.find()?Integer.parseInt(match.group(1)):0;
        }
        private int heightRaw(int value) {
            Map.Entry<Integer,Integer> lower=heightValues.floorEntry(Integer.valueOf(value));
            Map.Entry<Integer,Integer> upper=heightValues.ceilingEntry(Integer.valueOf(value));
            if(lower==null)return upper==null?session.raw():upper.getValue().intValue();
            if(upper==null)return lower.getValue().intValue();
            return value-lower.getKey().intValue()<=upper.getKey().intValue()-value?lower.getValue().intValue():upper.getValue().intValue();
        }
        private int nice(int value,int quantum) {
            int rounded=Math.round(value/(float)quantum)*quantum;
            int low=((steps.first+quantum-1)/quantum)*quantum;
            int high=(steps.last/quantum)*quantum;
            return low<=high?Math.max(low,Math.min(high,rounded)):steps.nearest(value);
        }
        private void prepareDomain() {
            preview.setValue(SizeModel.isHeight(mode)?SizeModel.HEIGHT:mode,session.raw(),SizeModel.themeDefault(mode,session.raw()));
            defaultValue=legacyValue(SizeModel.defaultRaw(mode));
            int requested=FreshDefaults137.pixels(mode);
            if(requested>0)defaultValue=requested;
            int[] rawValues=session.values();
            int maximum=Math.max(defaultValue,1);
            for(int value:rawValues)maximum=Math.max(maximum,legacyValue(value));
            if(SizeModel.isHeight(mode)) {
                SizePreviewBridge.HeightSpec spec=store.height();
                for(int raw:rawValues) {
                    int value=legacyValue(raw);
                    Integer previous=heightValues.get(Integer.valueOf(value));
                    if(value>0&&(previous==null||Math.abs(spec.totalForRaw(raw)-value)<Math.abs(spec.totalForRaw(previous.intValue())-value)))
                        heightValues.put(Integer.valueOf(value),Integer.valueOf(raw));
                }
                int low=heightValues.isEmpty()?5:heightValues.firstKey().intValue();
                int high=heightValues.isEmpty()?Math.max(5,defaultValue):heightValues.lastKey().intValue();
                defaultValue=Math.max(low,Math.min(high,defaultValue));
                steps=new SizePixels130.Steps(low,Math.max(low,high),5,defaultValue);
            } else {
                int step=mode==SizeModel.KEYBOARD||mode==SizeModel.PANEL_PORTRAIT||mode==SizeModel.PANEL_LANDSCAPE?5:mode==SizeModel.GAP?1:2;
                int minimum=mode==SizeModel.GAP?1:mode==SizeModel.FONT||mode==SizeModel.CANDIDATE?8:Math.max(5,dp(12));
                int limit=mode==SizeModel.GAP?Math.max(maximum*3,dp(32)):mode==SizeModel.KEYBOARD||mode==SizeModel.PANEL_PORTRAIT||mode==SizeModel.PANEL_LANDSCAPE?Math.max(maximum,Math.min(activity().getResources().getDisplayMetrics().heightPixels/3,maximum*2)):maximum*2;
                steps=new SizePixels130.Steps(Math.min(minimum,Math.max(1,defaultValue)),Math.max(limit,defaultValue),step,defaultValue);
            }
            TreeMap<Integer,Integer> unique=new TreeMap<Integer,Integer>();
            int count=SizeModel.isHeight(mode)?Math.min(7,rawValues.length):rawValues.length;
            for(int i=0;i<count;i++) {
                int index=SizeModel.isHeight(mode)&&count>1?Math.round(i*(rawValues.length-1)/(float)(count-1)):i;
                int value=steps.nearest(legacyValue(rawValues[index]));
                if(SizeModel.isHeight(mode))value=nice(value,50);
                else if(mode==SizeModel.KEYBOARD||mode==SizeModel.PANEL_PORTRAIT||mode==SizeModel.PANEL_LANDSCAPE)value=nice(value,10);
                if(value>0)unique.put(Integer.valueOf(value),Integer.valueOf(SizeModel.isHeight(mode)?heightRaw(value):rawValues[index]));
            }
            if(defaultValue>0)unique.put(Integer.valueOf(defaultValue),Integer.valueOf(SizeModel.defaultRaw(mode)));
            if(mode==SizeModel.CANDIDATE) {
                unique.clear();
                for(int offset=-4;offset<=4;offset++) {
                    int value=steps.nearest(defaultValue+offset*8);
                    unique.put(Integer.valueOf(value),Integer.valueOf(0));
                }
                unique.put(Integer.valueOf(defaultValue),Integer.valueOf(SizeModel.defaultRaw(mode)));
            }
            if(mode==SizeModel.FONT||mode==SizeModel.GAP){
                unique.clear();
                int[] presets=mode==SizeModel.FONT?new int[]{44,50,56,62,68,74,80,86,92}
                    :new int[]{1,2,3,4,5,8,12,20,28};
                for(int value:presets)unique.put(Integer.valueOf(value),Integer.valueOf(0));
                unique.put(Integer.valueOf(defaultValue),Integer.valueOf(SizeModel.defaultRaw(mode)));
            }
            quickValues=new int[unique.size()];quickRaw=new int[unique.size()];int n=0;
            for(Map.Entry<Integer,Integer> entry:unique.entrySet()) {
                quickValues[n]=entry.getKey().intValue();quickRaw[n]=entry.getValue().intValue();n++;
            }
        }
        private int currentValue() {
            int fine=SizePixels130.read(activity(),mode);
            if(fine>0)return fine;
            int value=legacyValue(session.raw());
            return mode==SizeModel.PANEL_PORTRAIT||mode==SizeModel.PANEL_LANDSCAPE
                ?SizePixels130.panelWithoutAbsolute(activity(),value):value;
        }
        private String unit() {return " px";}
        private void render() {
            if(drag==null)return;
            syncing=true;
            int raw=transientValue>=0?transientRaw:session.raw(),value=transientValue>=0?transientValue:currentValue();
            boolean isDefault=transientValue<0&&value==defaultValue;
            if(transientValue>=0)preview.setPreviewPixels(SizeModel.isHeight(mode)?SizeModel.HEIGHT:mode,value,raw);
            else preview.setValue(SizeModel.isHeight(mode)?SizeModel.HEIGHT:mode,raw,SizeModel.themeDefault(mode,raw));
            preview.setDividers(CandidateDividers.isEnabled(activity()));
            String prefix=mode==SizeModel.FONT?"Базовый шрифт: ":mode==SizeModel.CANDIDATE?"Шрифт: ":mode==SizeModel.GAP?"Отступ: ":mode==SizeModel.KEYBOARD?"Высота панели: ":"Высота: ";
            current.setText((isDefault?"По умолчанию · ":"")+prefix+value+unit());
            if(fontSlider!=null)fontSlider.setProgress(steps.index(value));
            int step=steps.step;
            status.setText((transientValue>=0?"Отпустите, чтобы сохранить":mode==SizeModel.GAP?"Потяните за край между словами":"Потяните за верхний край рамки")+" · шаг "+step+unit());
            if(usesSlider())status.setText("Ползунок · шаг "+step+unit());
            if(!preview.hasNativeGeometry()) {
                String note=preview.geometryNote();
                if(note!=null&&note.length()!=0) status.setText(note);
            }
            for(int i=0;i<choices.getChildCount();i++) {
                PresetButton choice=(PresetButton)choices.getChildAt(i);
                int preset=quickValues[i];boolean defaults=preset==defaultValue;
                boolean landscape=activity().getResources().getConfiguration().orientation==Configuration.ORIENTATION_LANDSCAPE;
                choice.setTextSize(landscape?12:14);
                choice.setMaxLines(landscape?1:2);
                choice.setText(preset+unit()+(defaults?(landscape?" ↺":"\nПо умолчанию"):""));
                choice.setContentDescription(preset+unit()+(defaults?". По умолчанию, сброс":""));
                choice.setSelected(preset==value);
                if(SizeModel.isHeight(mode)) choice.setEnabled(store.height().available);
            }
            if(separators!=null) separators.setChecked(CandidateDividers.isEnabled(activity()));
            choices.requestLayout();drag.invalidate();syncing=false;
        }
    }

    private static void pageHeader(final Activity activity,LinearLayout controls,String caption,SettingsTheme theme){
        float density=activity.getResources().getDisplayMetrics().density;
        activity.setTitle(caption);LinearLayout header=new LinearLayout(activity);header.setGravity(Gravity.CENTER_VERTICAL);
        PresetButton back=new PresetButton(activity,theme);back.setText("‹");back.setTextSize(28);back.setContentDescription("Назад");
        back.setOnClickListener(new View.OnClickListener(){public void onClick(View view){activity.finish();}});
        header.addView(back,new LinearLayout.LayoutParams(Math.round(48*density),Math.round(48*density)));
        TextView title=new TextView(activity);title.setText(caption);title.setTextSize(18);title.setTextColor(theme.text);title.setPadding(Math.round(8*density),Math.round(4*density),0,Math.round(4*density));
        header.addView(title,new LinearLayout.LayoutParams(0,-2,1));controls.addView(header);
    }
    private static SizeDrag134 inactiveDrag(Context context){
        SizeDrag134 drag=new SizeDrag134(context,new SizeDrag134.Listener(){
            public int value(){return 0;}public int minimum(){return 0;}public int maximum(){return 0;}public int step(){return 1;}
            public boolean available(){return false;}public void change(int value,boolean finished){}public void cancel(){}
        });drag.setVisibility(View.GONE);return drag;
    }
    private static final class ToolbarPage implements PageHost {
        private final WeakReference<Activity> owner;
        private final boolean candidates;
        private int selected;
        private SettingsTheme theme;
        private SizePreview preview;
        private PresetGrid actions;
        private TextView current;
        private PanelTargets targets;
        ToolbarPage(Activity activity,boolean candidates){owner=new WeakReference<Activity>(activity);this.candidates=candidates;}
        private Activity activity(){return owner.get();}
        private int dp(float value){return Math.round(value*activity().getResources().getDisplayMetrics().density);}
        private int storedSlot(){return candidates?selected+3:selected;}
        public void create(){
            final Activity activity=activity();theme=new SettingsTheme(activity);preview=new SizePreview(activity);
            LinearLayout controls=new LinearLayout(activity);controls.setOrientation(LinearLayout.VERTICAL);controls.setPadding(dp(10),0,dp(10),dp(8));controls.setBackgroundDrawable(theme.newBackground(activity));
            pageHeader(activity,controls,candidates?"Кнопки панели предлагаемых слов":"Порядок кнопок на панели",theme);
            current=new TextView(activity);current.setTextSize(15);current.setTextColor(theme.text);current.setPadding(0,dp(4),0,dp(4));controls.addView(current);
            TextView status=new TextView(activity);status.setTextSize(12);status.setTextColor(theme.muted);status.setPadding(0,0,0,dp(8));
            if(candidates){status.setText("Левая и правая кнопки панели предлагаемых слов.");controls.addView(status);}
            actions=new PresetGrid(activity,2);
            for(int i=0;i<ToolbarConfig140.choices();i++){
                final String type=ToolbarConfig140.type(i);PresetButton button=new ActionChoiceButton(activity,theme,type);button.setTag("toolbar-action-"+type);
                button.setOnClickListener(new View.OnClickListener(){public void onClick(View view){
                    boolean saved=ToolbarConfig140.select(activity,storedSlot(),type);reload();
                    if(!saved)Toast.makeText(activity,"Не удалось подтвердить сохранение настройки",Toast.LENGTH_SHORT).show();
                }});actions.addView(button);
            }
            controls.addView(actions,new LinearLayout.LayoutParams(-1,-2));
            ScrollView scroll=new ScrollView(activity);scroll.setFillViewport(false);scroll.setHorizontalScrollBarEnabled(false);scroll.addView(controls,new ViewGroup.LayoutParams(-1,-2));
            targets=new PanelTargets(activity,preview,candidates,new PanelTargets.Selection(){public void select(int slot){selected=slot;reload();}});
            NativeLayout layout=new NativeLayout(activity,scroll,preview,inactiveDrag(activity),SizeModel.CANDIDATE,theme);layout.targets(targets);activity.setContentView(layout);reload();
        }
        public void reload(){
            if(actions==null)return;
            String[] names=candidates?new String[]{"Левая кнопка","Правая кнопка"}:new String[]{"Левая кнопка","Средняя кнопка","Правая кнопка"};
            String chosen=ToolbarConfig140.read(activity(),storedSlot());current.setText(names[selected]+": "+ToolbarConfig140.label(chosen));
            for(int i=0;i<actions.getChildCount();i++)actions.getChildAt(i).setSelected(ToolbarConfig140.type(i).equals(chosen));
            if(candidates)preview.setCandidateButtonsPreview(selected);else preview.setToolbarPreview(selected);
            preview.setDividers(CandidateDividers.isEnabled(activity()));targets.refresh(selected);actions.requestLayout();
        }
        public void cancelDrag(){}
    }
    /** Real accessible Buttons overlay only the editable icons, never the controls or keyboard body. */
    private static final class PanelTargets extends ViewGroup {
        interface Selection{void select(int slot);}
        private final SizePreview preview;private final boolean candidates;private int offsetX,offsetY,controlsBottom;
        PanelTargets(Context context,SizePreview preview,boolean candidates,final Selection selection){
            super(context);this.preview=preview;this.candidates=candidates;
            for(int i=0;i<(candidates?2:3);i++){
                final int slot=i;Button target=new Button(context);target.setText("");target.setPadding(0,0,0,0);target.setMinWidth(0);target.setMinimumWidth(0);target.setMinHeight(0);target.setMinimumHeight(0);
                target.setBackgroundDrawable(new ColorDrawable(0));target.setTag((candidates?"candidate-target-":"toolbar-target-")+i);
                target.setOnClickListener(new View.OnClickListener(){public void onClick(View view){selection.select(slot);}});addView(target);
            }
        }
        void refresh(int selected){
            String[] names=candidates?new String[]{"Левая кнопка строки слов","Правая кнопка строки слов"}:new String[]{"Левая кнопка панели","Средняя кнопка панели","Правая кнопка панели"};
            for(int i=0;i<getChildCount();i++){
                View target=getChildAt(i);target.setSelected(i==selected);target.setContentDescription(names[i]+": "+ToolbarConfig140.label(ToolbarConfig140.read(getContext(),candidates?i+3:i))+". Выбрать действие");
            }requestLayout();
        }
        void place(int x,int y,int bottom){offsetX=x;offsetY=y;controlsBottom=bottom;}
        protected void onMeasure(int widthSpec,int heightSpec){
            RectF[] bounds=preview.editableButtonBounds();
            for(int i=0;i<getChildCount();i++){RectF b=i<bounds.length?bounds[i]:new RectF();getChildAt(i).measure(MeasureSpec.makeMeasureSpec(Math.max(0,Math.round(b.width())),MeasureSpec.EXACTLY),MeasureSpec.makeMeasureSpec(Math.max(0,Math.round(b.height())),MeasureSpec.EXACTLY));}
            setMeasuredDimension(MeasureSpec.getSize(widthSpec),MeasureSpec.getSize(heightSpec));
        }
        protected void onLayout(boolean changed,int left,int top,int right,int bottom){
            RectF[] bounds=preview.editableButtonBounds();
            for(int i=0;i<getChildCount();i++){
                RectF b=i<bounds.length?new RectF(bounds[i]):new RectF();b.offset(offsetX,offsetY);
                int l=Math.max(0,Math.round(b.left)),t=Math.max(controlsBottom,Math.round(b.top)),r=Math.min(right-left,Math.round(b.right)),end=Math.min(bottom-top,Math.round(b.bottom));
                View target=getChildAt(i);boolean visible=r>l&&end>t;target.setVisibility(visible?View.VISIBLE:View.GONE);target.layout(l,t,Math.max(l,r),Math.max(t,end));
            }
        }
    }
    private static final class CountPage implements PageHost {
        private final WeakReference<Activity> owner;private SizePreview preview;private PresetGrid choices;private TextView current,status;
        CountPage(Activity activity){owner=new WeakReference<Activity>(activity);}
        private Activity activity(){return owner.get();}
        private int dp(float value){return Math.round(value*activity().getResources().getDisplayMetrics().density);}
        public void create(){
            final Activity activity=activity();SettingsTheme theme=new SettingsTheme(activity);preview=new SizePreview(activity);
            LinearLayout controls=new LinearLayout(activity);controls.setOrientation(LinearLayout.VERTICAL);controls.setPadding(dp(10),0,dp(10),dp(8));controls.setBackgroundDrawable(theme.newBackground(activity));
            pageHeader(activity,controls,"Количество предлагаемых слов",theme);
            current=new TextView(activity);current.setTextSize(15);current.setTextColor(theme.text);current.setPadding(0,dp(4),0,dp(6));controls.addView(current);
            choices=new PresetGrid(activity,6);
            for(int n=3;n<=8;n++){
                final int count=n;PresetButton button=new PresetButton(activity,theme);button.setText(String.valueOf(n));button.setTag("candidate-count-"+n);button.setContentDescription(n+" предлагаемых слов");
                button.setOnClickListener(new View.OnClickListener(){public void onClick(View view){boolean saved=CandidatePanel141.choose(activity,count);reload();if(!saved)Toast.makeText(activity,"Не удалось подтвердить сохранение настройки",Toast.LENGTH_SHORT).show();}});choices.addView(button);
            }controls.addView(choices,new LinearLayout.LayoutParams(-1,-2));
            status=new TextView(activity);status.setTextSize(12);status.setTextColor(theme.muted);status.setPadding(0,dp(6),0,0);controls.addView(status);
            ScrollView scroll=new ScrollView(activity);scroll.setFillViewport(false);scroll.addView(controls,new ViewGroup.LayoutParams(-1,-2));
            activity.setContentView(new NativeLayout(activity,scroll,preview,inactiveDrag(activity),SizeModel.CANDIDATE,theme));reload();
        }
        public void reload(){
            if(choices==null)return;int count=CandidatePanel141.count(activity());current.setText("Предлагаемых слов: "+count);
            for(int i=0;i<choices.getChildCount();i++)choices.getChildAt(i).setSelected(count==i+3);
            boolean supported=count>=3&&count<=8;preview.setCandidateCountPreview(Math.max(3,Math.min(8,count)));preview.setDividers(CandidateDividers.isEnabled(activity()));
            status.setText(supported?"На макете — примеры, подобранные под ширину панели.":"Сохранённое значение вне диапазона3–8. Макет показывает ближайшее доступное количество; выберите новое значение.");choices.requestLayout();
        }
        public void cancelDrag(){}
    }

    /** One native pixel is one View/Canvas pixel. Controls scroll above the bottom IME area. */
    private static final class NativeLayout extends ViewGroup {
        private final ScrollView controls;
        private final SizePreview keyboard;
        private final int minimumControls,handleGap;
        private final SizeDrag134 drag;
        private PanelTargets targets;
        private final int mode;
        NativeLayout(Context context,ScrollView controls,SizePreview keyboard,SizeDrag134 drag,int mode,SettingsTheme theme) {
            super(context);this.controls=controls;this.keyboard=keyboard;this.drag=drag;this.mode=mode;
            float density=context.getResources().getDisplayMetrics().density;
            float scaled=context.getResources().getDisplayMetrics().scaledDensity;
            boolean landscape=context.getResources().getConfiguration().orientation==Configuration.ORIENTATION_LANDSCAPE;
            minimumControls=landscape?Math.round(28*density):Math.max(Math.round(64*density),(int)Math.ceil(36*scaled+10*density));
            handleGap=mode==SizeModel.FONT||mode==SizeModel.CANDIDATE||mode==SizeModel.GAP?0:Math.round(28*density);
            setBackgroundDrawable(theme.newBackground(context));
            addView(controls,new ViewGroup.LayoutParams(-1,-1));
            addView(keyboard,new ViewGroup.LayoutParams(-1,-1));
            addView(drag,new ViewGroup.LayoutParams(-1,-1));
        }
        void targets(PanelTargets value){targets=value;addView(value,new ViewGroup.LayoutParams(-1,-1));}
        protected void onMeasure(int widthSpec,int heightSpec) {
            int width=MeasureSpec.getSize(widthSpec),height=MeasureSpec.getSize(heightSpec);
            int nativeHeight=Math.max(1,keyboard.nativeHeightPx());
            keyboard.measure(MeasureSpec.makeMeasureSpec(width,MeasureSpec.EXACTLY),
                MeasureSpec.makeMeasureSpec(nativeHeight,MeasureSpec.EXACTLY));
            // Oversized legacy/multiwindow values may overlap at the top, never shrink the keyboard.
            int controlsHeight=Math.max(Math.min(minimumControls,height),height-nativeHeight-handleGap);
            controls.measure(MeasureSpec.makeMeasureSpec(width,MeasureSpec.EXACTLY),
                MeasureSpec.makeMeasureSpec(controlsHeight,MeasureSpec.EXACTLY));
            drag.measure(MeasureSpec.makeMeasureSpec(width,MeasureSpec.EXACTLY),MeasureSpec.makeMeasureSpec(height,MeasureSpec.EXACTLY));
            if(targets!=null)targets.measure(MeasureSpec.makeMeasureSpec(width,MeasureSpec.EXACTLY),MeasureSpec.makeMeasureSpec(height,MeasureSpec.EXACTLY));
            setMeasuredDimension(width,height);
        }
        protected void onLayout(boolean changed,int left,int top,int right,int bottom) {
            int width=right-left,height=bottom-top;
            keyboard.layout(0,height-keyboard.getMeasuredHeight(),width,height);
            controls.layout(0,0,width,controls.getMeasuredHeight());
            drag.layout(0,0,width,height);
            RectF bounds=keyboard.adjustmentBounds(SizeModel.isHeight(mode)?SizeModel.HEIGHT:mode);bounds.offset(keyboard.getLeft(),keyboard.getTop());
            drag.bounds(bounds,mode==SizeModel.GAP,keyboard.adjustmentColor(),controls.getBottom());
            if(targets!=null){targets.place(keyboard.getLeft(),keyboard.getTop()+keyboard.getHeight()-keyboard.nativeHeightPx(),controls.getBottom());targets.layout(0,0,width,height);}
        }
    }

    /** One compact landscape row; two or three equal columns in portrait. */
    private static final class PresetGrid extends ViewGroup {
        private final int gap;
        private int columns=3,rowHeight;private final int portraitColumns;
        PresetGrid(Context context){this(context,0);}
        PresetGrid(Context context,int portraitColumns){super(context);this.portraitColumns=portraitColumns;gap=Math.round(4*context.getResources().getDisplayMetrics().density);}
        protected void onMeasure(int widthSpec,int heightSpec) {
            int width=MeasureSpec.getSize(widthSpec),count=getChildCount();
            boolean landscape=getResources().getConfiguration().orientation==Configuration.ORIENTATION_LANDSCAPE;
            columns=landscape?Math.max(1,count):portraitColumns>0?portraitColumns:count<=4?2:3;
            float density=getResources().getDisplayMetrics().density;
            rowHeight=Math.round((landscape?28:44)*density);
            int cell=Math.max(1,(width-gap*(columns-1))/columns);
            for(int i=0;i<count;i++) {
                View child=getChildAt(i);
                child.measure(MeasureSpec.makeMeasureSpec(cell,MeasureSpec.EXACTLY),
                    MeasureSpec.makeMeasureSpec(0,MeasureSpec.UNSPECIFIED));
                rowHeight=Math.max(rowHeight,child.getMeasuredHeight());
            }
            for(int i=0;i<count;i++) getChildAt(i).measure(
                MeasureSpec.makeMeasureSpec(cell,MeasureSpec.EXACTLY),
                MeasureSpec.makeMeasureSpec(rowHeight,MeasureSpec.EXACTLY));
            int rows=(count+columns-1)/columns;
            setMeasuredDimension(width,rows*rowHeight+Math.max(0,rows-1)*gap);
        }
        protected void onLayout(boolean changed,int l,int t,int r,int b) {
            int width=r-l,cell=Math.max(1,(width-gap*(columns-1))/columns);
            for(int i=0;i<getChildCount();i++) {
                int x=(i%columns)*(cell+gap),y=(i/columns)*(rowHeight+gap);
                getChildAt(i).layout(x,y,x+cell,y+rowHeight);
            }
        }
    }

    /** Same fixed-height preset surface, with a compact icon and up to two label lines. */
    private static final class ActionChoiceButton extends PresetButton {
        private final Drawable glyph;
        private final boolean iconOnly;
        private final float density;
        ActionChoiceButton(Context context,SettingsTheme theme,String action){
            super(context,theme);density=context.getResources().getDisplayMetrics().density;iconOnly="undo".equals(action);
            glyph=new ActionGlyph(action,"none".equals(action)?theme.muted:theme.text);
            setContentDescription(ToolbarConfig140.label(action));setIncludeFontPadding(false);setLineSpacing(0,1);setMaxLines(2);
            setText(iconOnly?"":"clipboard".equals(action)?"Буфер\nобмена":"none".equals(action)?"Не показывать\nкнопку":ToolbarConfig140.label(action));
        }
        protected void onMeasure(int widthSpec,int heightSpec){
            int width=MeasureSpec.getSize(widthSpec),height=Math.round((getResources().getConfiguration().orientation==Configuration.ORIENTATION_LANDSCAPE?28:44)*density);
            int icon=Math.max(1,Math.round(Math.min(18*density,Math.min(Math.max(1,width-8*density)*0.25f,height-6*density))));
            if(!iconOnly){
                glyph.setBounds(0,0,icon,icon);setCompoundDrawables(glyph,null,null,null);setCompoundDrawablePadding(Math.round(4*density));
                float base=14*getResources().getDisplayMetrics().scaledDensity;setTextSize(android.util.TypedValue.COMPLEX_UNIT_PX,base);
                String[] lines=getText().toString().split("\n");float widest=1;for(String line:lines)widest=Math.max(widest,getPaint().measureText(line));
                float room=Math.max(1,width-getPaddingLeft()-getPaddingRight()-icon-getCompoundDrawablePadding());
                float space=Math.max(1,height-getPaddingTop()-getPaddingBottom());
                float scale=Math.min(1,Math.min(room/widest,space/(getPaint().getFontSpacing()*lines.length)));
                setTextSize(android.util.TypedValue.COMPLEX_UNIT_PX,Math.max(1,base*scale));
            }
            super.onMeasure(widthSpec,MeasureSpec.makeMeasureSpec(height,MeasureSpec.EXACTLY));
        }
        protected void onDraw(Canvas canvas){
            super.onDraw(canvas);
            if(iconOnly){int side=Math.max(1,Math.round(Math.min(22*density,Math.min(getWidth(),getHeight())-8*density)));int left=(getWidth()-side)/2,top=(getHeight()-side)/2;glyph.setBounds(left,top,left+side,top+side);glyph.draw(canvas);}
        }
    }
    /** Monochrome action symbols follow the settings palette, without external image assets. */
    private static final class ActionGlyph extends Drawable {
        private final String action;private final Paint paint=new Paint(Paint.ANTI_ALIAS_FLAG);private final Path path=new Path();
        ActionGlyph(String action,int color){this.action=action;paint.setColor(color);paint.setStyle(Paint.Style.STROKE);paint.setStrokeWidth(1.8f);paint.setStrokeCap(Paint.Cap.ROUND);paint.setStrokeJoin(Paint.Join.ROUND);}
        public void draw(Canvas canvas){
            android.graphics.Rect b=getBounds();int save=canvas.save();float side=Math.min(b.width(),b.height());canvas.translate(b.centerX()-side/2,b.centerY()-side/2);canvas.scale(side/24f,side/24f);path.reset();
            if("language".equals(action)){canvas.drawCircle(12,12,9,paint);canvas.drawLine(3,12,21,12,paint);canvas.drawOval(new RectF(8,3,16,21),paint);}
            else if("clipboard".equals(action)){canvas.drawRoundRect(new RectF(5,5,19,22),2,2,paint);canvas.drawRoundRect(new RectF(8,2,16,7),1,1,paint);canvas.drawLine(8,11,16,11,paint);canvas.drawLine(8,15,16,15,paint);canvas.drawLine(8,19,14,19,paint);}
            else if("editor".equals(action)){canvas.drawLine(12,4,12,20,paint);canvas.drawLine(9,4,15,4,paint);canvas.drawLine(9,20,15,20,paint);path.moveTo(6,9);path.lineTo(3,12);path.lineTo(6,15);path.moveTo(18,9);path.lineTo(21,12);path.lineTo(18,15);canvas.drawPath(path,paint);}
            else if("emoji".equals(action)){canvas.drawCircle(12,12,9,paint);canvas.drawPoint(9,9,paint);canvas.drawPoint(15,9,paint);canvas.drawArc(new RectF(7,9,17,17),20,140,false,paint);}
            else if("undo".equals(action)){path.moveTo(7,7);path.lineTo(3,11);path.lineTo(7,15);path.moveTo(3,11);path.lineTo(14,11);path.cubicTo(22,11,22,21,14,21);canvas.drawPath(path,paint);}
            else canvas.drawLine(7,12,17,12,paint);
            canvas.restoreToCount(save);
        }
        public void setAlpha(int alpha){paint.setAlpha(alpha);invalidateSelf();}public void setColorFilter(ColorFilter filter){paint.setColorFilter(filter);invalidateSelf();}public int getOpacity(){return PixelFormat.TRANSLUCENT;}
        public int getIntrinsicWidth(){return 24;}public int getIntrinsicHeight(){return 24;}
    }

    private static class PresetButton extends TextView {
        private final SettingsTheme theme;
        private final Paint outline=new Paint(3);
        private final RectF bounds=new RectF();
        private final float density;
        PresetButton(Context context,SettingsTheme theme) {
            super(context);this.theme=theme;
            density=context.getResources().getDisplayMetrics().density;
            setTextSize(14);setTextColor(theme.text);setGravity(Gravity.CENTER);
            setPadding(Math.round(4*density),Math.round(3*density),Math.round(4*density),Math.round(3*density));
            setMaxLines(2);setClickable(true);setFocusable(true);
        }
        protected void drawableStateChanged() {
            super.drawableStateChanged();
            invalidate();
        }
        protected void onDraw(Canvas canvas) {
            paintButton(canvas,this,theme,outline,bounds,density);
            super.onDraw(canvas);
        }
    }

    /** Shared settings button: same palette, corners and outline as size presets. */
    public static Button actionButton(Context context,CharSequence title){
        Button button=new ActionButton(context,new SettingsTheme(context));button.setText(title);return button;
    }
    private static void paintButton(Canvas canvas,View view,SettingsTheme theme,Paint paint,RectF bounds,float density){
        boolean active=view.isEnabled()&&(view.isSelected()||view.isPressed()||view.isFocused());
        bounds.set(density/2,density/2,view.getWidth()-density/2,view.getHeight()-density/2);
        paint.setStyle(Paint.Style.FILL);paint.setColor(active?SettingsTheme.mix(theme.surface,theme.accent,0.18f):theme.button);
        canvas.drawRoundRect(bounds,9*density,9*density,paint);
        paint.setStyle(Paint.Style.STROKE);paint.setColor(active?theme.accent:theme.line);
        paint.setStrokeWidth(Math.max(1,density*(view.isSelected()?1.5f:0.6f)));float inset=paint.getStrokeWidth()/2;
        bounds.set(inset,inset,view.getWidth()-inset,view.getHeight()-inset);canvas.drawRoundRect(bounds,9*density,9*density,paint);
    }
    private static final class ActionButton extends Button {
        private final SettingsTheme theme;private final Paint outline=new Paint(3);private final RectF bounds=new RectF();private final float density;
        ActionButton(Context context,SettingsTheme theme){
            super(context);this.theme=theme;density=getResources().getDisplayMetrics().density;
            setAllCaps(false);setTextSize(16);setGravity(Gravity.CENTER);setMaxLines(2);setHorizontallyScrolling(false);
            setTextColor(new android.content.res.ColorStateList(new int[][]{new int[]{-android.R.attr.state_enabled},new int[]{}},new int[]{SettingsTheme.mix(theme.surface,theme.text,0.4f),theme.text}));
            setBackgroundDrawable(new ColorDrawable(0x00000000));setMinWidth(0);setMinimumWidth(0);setMinHeight(Math.round(48*density));setMinimumHeight(Math.round(48*density));
            setPadding(Math.round(12*density),Math.round(8*density),Math.round(12*density),Math.round(8*density));
        }
        protected void drawableStateChanged(){super.drawableStateChanged();invalidate();}
        protected void onDraw(Canvas canvas){paintButton(canvas,this,theme,outline,bounds,density);super.onDraw(canvas);}
    }

    /** Settings colors are independent of the selected keyboard skin. */
    private static final class SettingsTheme {
        final int surface,text,muted,accent,line,button;
        SettingsTheme(Context context) {
            boolean dark=false;
            try {dark=PreferenceManager.getDefaultSharedPreferences(context).getBoolean("option_dark_theme",false);}
            catch(RuntimeException unavailable) { }
            int bg=dark?0xff212121:0xfffafafa;
            int primary=dark?0xfff5f5f5:0xff202020;
            int secondary=dark?0xffbdbdbd:0xff666666;
            int highlight=0xff49b2e8;
            // Public Activity theme attributes, never a keyboard key drawable.
            int[] attrs={android.R.attr.colorBackground,android.R.attr.textColorPrimary,
                android.R.attr.textColorSecondary,android.R.attr.textColorLink,0x01010435};
            TypedArray values=null;
            try {
                values=context.obtainStyledAttributes(attrs);
                bg=values.getColor(0,bg);primary=values.getColor(1,primary);
                secondary=values.getColor(2,secondary);
                highlight=values.getColor(4,values.getColor(3,highlight));
            } catch(RuntimeException unavailable) { }
            finally {if(values!=null)values.recycle();}
            surface=bg|0xff000000;text=primary;muted=secondary;accent=highlight;
            line=mix(surface,text,0.22f);button=mix(surface,text,0.055f);
        }
        Drawable newBackground(Context context){return new ColorDrawable(surface);}
        static int mix(int a,int b,float amount) {
            int r=Math.round(((a>>>16)&255)*(1-amount)+((b>>>16)&255)*amount);
            int g=Math.round(((a>>>8)&255)*(1-amount)+((b>>>8)&255)*amount);
            int blue=Math.round((a&255)*(1-amount)+(b&255)*amount);
            return 0xff000000|(r<<16)|(g<<8)|blue;
        }
    }

    /** Slider and checkbox use the settings Activity's own accent. */
    private static final class ControlDrawable extends Drawable {
        static final int THUMB=0,TRACK=1,PROGRESS=2,CHECKBOX=3;
        private final SettingsTheme theme;
        private final int kind;
        private final float density;
        private final Paint paint=new Paint(3);
        private int alpha=255;
        ControlDrawable(Context context,SettingsTheme theme,int kind) {
            this.theme=theme;this.kind=kind;density=context.getResources().getDisplayMetrics().density;
        }
        public int getIntrinsicWidth(){return Math.round((kind==CHECKBOX?24:kind==THUMB?18:1)*density);}
        public int getIntrinsicHeight(){return Math.round((kind==CHECKBOX?24:kind==THUMB?18:4)*density);}
        public boolean isStateful(){return kind==CHECKBOX;}
        protected boolean onStateChange(int[] state){invalidateSelf();return true;}
        public void draw(Canvas canvas) {
            android.graphics.Rect rect=getBounds();
            paint.setStyle(Paint.Style.FILL);
            color(kind==TRACK?theme.line:theme.accent);
            float cx=rect.exactCenterX(),cy=rect.exactCenterY();
            if(kind==THUMB) canvas.drawCircle(cx,cy,7*density,paint);
            else if(kind==CHECKBOX) {
                float side=16*density;RectF box=new RectF(cx-side/2,cy-side/2,cx+side/2,cy+side/2);
                paint.setStyle(Paint.Style.STROKE);paint.setStrokeWidth(Math.max(1,1.3f*density));
                color(theme.line);canvas.drawRoundRect(box,2*density,2*density,paint);
                boolean checked=false;for(int s:getState()) if(s==android.R.attr.state_checked) checked=true;
                if(checked) {color(theme.accent);paint.setStrokeWidth(2*density);
                    canvas.drawLine(box.left+3*density,cy,box.left+7*density,box.bottom-3*density,paint);
                    canvas.drawLine(box.left+7*density,box.bottom-3*density,box.right-2*density,box.top+3*density,paint);}
            } else canvas.drawRect(rect.left,cy-density,rect.right,cy+density,paint);
        }
        private void color(int value){paint.setColor(value);paint.setAlpha(((value>>>24)*alpha+127)/255);}
        public void setAlpha(int value){alpha=value;invalidateSelf();}
        public void setColorFilter(ColorFilter filter){paint.setColorFilter(filter);invalidateSelf();}
        public int getOpacity(){return PixelFormat.TRANSLUCENT;}
    }
}
