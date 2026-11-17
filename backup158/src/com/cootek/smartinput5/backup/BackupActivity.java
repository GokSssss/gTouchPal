package com.cootek.smartinput5.backup;

import android.app.*;
import android.content.*;
import android.content.res.Configuration;
import android.content.pm.PackageManager;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.*;
import android.preference.PreferenceManager;
import android.view.*;
import android.widget.*;
import android.support.v4.content.FileProvider;
import com.cootek.smartinput5.storage.StorageRoot135;
import com.cootek.smartinput5.storage.StorageImport135;
import java.io.*;
import java.text.*;
import java.util.*;
import java.util.concurrent.atomic.AtomicBoolean;

/** Approved backup page. Persistent Create-and-send shares the same verified saved bytes. */
public final class BackupActivity extends Activity {
    private static final int ZIP=1,USR=2,TXT=3;
    private static final int OPEN_BACKUP=10502,OPEN_WESTERN=13701,OPEN_TEXT=15502,WRITE_PERMISSION=15503,OPEN_LANGUAGE=15801;
    private static final String MEMORY_ERROR="Не хватает памяти для этой копии. Закрой другие приложения и повтори.";
    private static final AtomicBoolean TEXT_RUNNING=new AtomicBoolean();
    private final Handler main=new Handler(Looper.getMainLooper());
    private final List<Button> actions=new ArrayList<Button>();
    private TextView status,latestCopy;private ProgressBar progress;
    private PopupWindow notice;private LinearLayout noticePanel;private int noticeSerial;private Segment activeSegment;
    private CopyFiles155.Prepared incoming;private LanguageFiles158.Pending languageIncoming;private int refreshSerial;
    private boolean busy;private volatile boolean destroyed;
    private int permissionKind;private String importLanguage;private File permissionFile;

    @Override public void onCreate(Bundle state){
        boolean dark=PreferenceManager.getDefaultSharedPreferences(this).getBoolean("option_dark_theme",false);
        setTheme(dark?0x0103006b:0x0103006e);super.onCreate(state);BackupLocations155.bind(this);
        setTitle("Резервная копия и восстановление");
        getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_STATE_ALWAYS_HIDDEN);
        getWindow().setBackgroundDrawable(new ColorDrawable(dark?0xff222222:0xfffafafa));
        ActionBar bar=getActionBar();
        if(bar!=null){bar.setDisplayHomeAsUpEnabled(true);TextView heading=new TextView(this);heading.setText(getTitle());heading.setTextSize(18);heading.setTextColor(dark?0xffeeeeee:0xff222222);heading.setMaxLines(2);bar.setDisplayShowTitleEnabled(false);bar.setCustomView(heading,new ActionBar.LayoutParams(-1,-2));bar.setDisplayShowCustomEnabled(true);}
        ScrollView scroll=new ScrollView(this);LinearLayout content=new LinearLayout(this);content.setOrientation(LinearLayout.VERTICAL);int pad=dp(20);content.setPadding(pad,pad,pad,pad);scroll.addView(content,new ScrollView.LayoutParams(-1,-2));
        int color=dark?0xffeeeeee:0xff222222;
        section(content,"Файлы языков",dark);
        caption(content,"TPL или TPL.apk → рабочая папка language.",color);
        button(content,"Загрузить словарь языка",new View.OnClickListener(){public void onClick(View v){openLanguagePicker();}});
        caption(content,"Папка для файлов резервного копирования:",color);
        String folder;try{folder=BackupLocations155.folder().getPath();}catch(RuntimeException unavailable){folder="Папка приложения недоступна";}
        path(content,folder,color);caption(content,"Стрелка вниз — сохранить в Загрузки.",color);

        section(content,"Полная копия",dark);
        caption(content,"Словари, настройки и буфер обмена — ZIP.\nБез изображений буфера обмена.",color);
        latestCopy=caption(content,"Последняя копия: проверка…",color);latestCopy.setMaxLines(1);
        latestCopy.setOnLongClickListener(new View.OnLongClickListener(){public boolean onLongClick(View v){Toast.makeText(BackupActivity.this,latestCopy.getText(),Toast.LENGTH_LONG).show();return true;}});
        createButtons(content,ZIP,"Создать полную копию");
        button(content,"Восстановить полную копию",new View.OnClickListener(){public void onClick(View v){openCopiesFolder(ZIP);}});

        section(content,"Пользовательский словарь",dark);
        caption(content,"Файл western.usr.\nПри восстановлении настройки сохраняются.",color);
        createButtons(content,USR,"Сохранить western.usr");
        button(content,"Восстановить western.usr",new View.OnClickListener(){public void onClick(View v){openCopiesFolder(USR);}});

        section(content,"Слова в текстовом файле",dark);
        caption(content,"Слова сохраняются в western_dict_full.txt.\nДобавление из TXT сохраняет прежние слова.",color);
        createButtons(content,TXT,"Сохранить слова в TXT");
        button(content,"Добавить слова из TXT",new View.OnClickListener(){public void onClick(View v){openCopiesFolder(TXT);}});

        section(content,"Перенос старых данных",dark);
        caption(content,"Добавляет недостающие файлы с SD.\nОригиналы сохраняются.",color);
        button(content,"Перенести данные из TouchPal2015",new View.OnClickListener(){public void onClick(View v){importOldData();}});
        caption(content,"TouchPal2015/ и TouchPalv5/",color);
        setContentView(scroll);prepareNotice(dark);showStoredStatus();refreshCopies(true);
        main.post(new Runnable(){public void run(){offerTextRecovery();}});
    }
    private void createButtons(LinearLayout parent,final int kind,String ignoredTitle){
        ActionStrip row=new ActionStrip(this);LinearLayout.LayoutParams wrap=new LinearLayout.LayoutParams(-1,dp(44));wrap.topMargin=dp(6);parent.addView(row,wrap);
        Button save=row.segment("Сохранить",0),folder=row.segment("Выбрать файл из другой папки",1),send=row.segment("Сохранить и отправить",2),download=row.segment("Сохранить в Загрузки",3);
        save.setOnClickListener(new View.OnClickListener(){public void onClick(View v){create(kind,0);}});
        folder.setOnClickListener(new View.OnClickListener(){public void onClick(View v){if(kind==TXT)chooseText();else openImportPicker(kind==ZIP?OPEN_BACKUP:OPEN_WESTERN);}});
        send.setOnClickListener(new View.OnClickListener(){public void onClick(View v){create(kind,1);}});
        download.setOnClickListener(new View.OnClickListener(){public void onClick(View v){create(kind,2);}});
        row.addView(save,new LinearLayout.LayoutParams(0,-1,1));
        for(Button icon:new Button[]{folder,send,download})row.addView(icon,new LinearLayout.LayoutParams(dp(52),-1));
        actions.add(save);actions.add(folder);actions.add(send);actions.add(download);
    }
    private void refreshCopies(final boolean migrate){
        final int serial=++refreshSerial;
        new Thread(new Runnable(){public void run(){
            String issue=null;int moved=0;File latest=null;
            if(migrate)try{moved=SavedCopies157.migratePublic();}catch(Exception failure){issue="Прежние копии сохранены в старой папке: перенос не завершён.";}
            try{latest=SavedCopies157.latestZip();}catch(Exception failure){if(issue==null)issue="Не удалось прочитать список копий.";}
            final String text=latest==null?"Полных копий пока нет.":SavedCopies157.label(latest);
            final String message=issue!=null?issue:moved>0?"Копии перенесены в папку приложения: "+moved+".":null;
            main.post(new Runnable(){public void run(){if(!alive()||serial!=refreshSerial)return;latestCopy.setText(text);if(message!=null&&!busy)showNotice(message,false);}});
        }},"TouchPalCopies157").start();
    }
    private void openCopiesFolder(final int kind){
        if(busy||!alive())return;setBusy(true,"Чтение папки копий…");
        new Thread(new Runnable(){public void run(){try{
            final List<File> files=new ArrayList<File>();for(File file:SavedCopies157.files())if(SavedCopies157.kind(file)==kind)files.add(file);
            final String[] labels=new String[files.size()];
            for(int n=0;n<labels.length;n++)labels[n]=files.get(n).getName()+"\n"+new SimpleDateFormat("dd.MM.yyyy HH:mm",Locale.getDefault()).format(new Date(files.get(n).lastModified()));
            main.post(new Runnable(){public void run(){setBusy(false,null);if(!alive())return;
                AlertDialog.Builder dialog=new AlertDialog.Builder(BackupActivity.this).setTitle(kind==ZIP?"Восстановить полную копию":kind==USR?"Восстановить western.usr":"Добавить слова из TXT").setNegativeButton("Закрыть",null);
                if(files.isEmpty())dialog.setMessage("В Backup пока нет подходящих файлов. Значок папки открывает системный выбор файла.");
                else dialog.setItems(labels,new DialogInterface.OnClickListener(){public void onClick(DialogInterface d,int which){restoreSaved(files.get(which),kind);}});
                dialog.show();
            }});
        }catch(Exception failure){postError("Не удалось открыть папку копий.");}}},"TouchPalCopiesList158").start();
    }
    private void restoreSaved(File file,int kind){
        if(busy||!alive())return;
        if(kind==ZIP)readBackup(Uri.fromFile(file));else if(kind==USR)readWestern(Uri.fromFile(file));else{
            try{if(TextRecovery155.pending(this)){offerTextRecovery();return;}importLanguage=TextDictionary155.language();readText(Uri.fromFile(file));}
            catch(Exception unavailable){showError("Словарь недоступен. Открой клавиатуру и повтори добавление слов.");}
        }
    }

    private void downloadSaved(final File file,final int kind){
        if(busy||!alive())return;
        if(Build.VERSION.SDK_INT<29){permissionFile=file;if(!writablePermission(kind))return;permissionFile=null;}
        setBusy(true,"Сохранение в Загрузки…");
        final Context context=getApplicationContext();
        new Thread(new Runnable(){public void run(){CopyFiles155.Prepared source=null;try{
            source=SavedCopies157.read(context,Uri.fromFile(file),kind);final String name=SavedCopies157.download(context,source);
            main.post(new Runnable(){public void run(){setBusy(false,downloadedMessage(name));}});
        }catch(Exception failed){postError("Не удалось сохранить в Загрузки. Копия в Backup сохранена.");}finally{if(source!=null)source.discard();}}},"TouchPalDownload157").start();
    }

    private static final class ActionStrip extends LinearLayout {
        final float density;final int surface,text,accent,line,separator,fill;
        final android.graphics.Paint paint=new android.graphics.Paint(3);final android.graphics.RectF bounds=new android.graphics.RectF();final android.graphics.Path clip=new android.graphics.Path();
        ActionStrip(Context context){
            super(context);setOrientation(HORIZONTAL);setWillNotDraw(false);density=getResources().getDisplayMetrics().density;
            boolean dark=PreferenceManager.getDefaultSharedPreferences(context).getBoolean("option_dark_theme",false);
            int bg=dark?0xff212121:0xfffafafa,fg=dark?0xfff5f5f5:0xff202020,highlight=0xff49b2e8;
            android.content.res.TypedArray values=null;
            try{values=context.obtainStyledAttributes(new int[]{android.R.attr.colorBackground,android.R.attr.textColorPrimary,android.R.attr.textColorLink,0x01010435});bg=values.getColor(0,bg);fg=values.getColor(1,fg);highlight=values.getColor(3,values.getColor(2,highlight));}
            catch(RuntimeException unavailable){}
            finally{if(values!=null)values.recycle();}
            surface=bg|0xff000000;text=fg;accent=highlight;line=mix(surface,text,.26f);separator=mix(surface,text,.46f);fill=mix(surface,text,.055f);
        }
        static int mix(int a,int b,float f){return 0xff000000|(Math.round(((a>>>16)&255)*(1-f)+((b>>>16)&255)*f)<<16)|(Math.round(((a>>>8)&255)*(1-f)+((b>>>8)&255)*f)<<8)|Math.round((a&255)*(1-f)+(b&255)*f);}
        Button segment(String title,int icon){return new Segment(getContext(),this,title,icon);}
        private void shape(){float inset=Math.max(1,density*.6f)/2;bounds.set(inset,inset,getWidth()-inset,getHeight()-inset);clip.reset();clip.addRoundRect(bounds,getHeight()/2f,getHeight()/2f,android.graphics.Path.Direction.CW);}
        protected void onDraw(android.graphics.Canvas canvas){shape();paint.setStyle(android.graphics.Paint.Style.FILL);paint.setColor(fill);canvas.drawPath(clip,paint);}
        protected void dispatchDraw(android.graphics.Canvas canvas){
            shape();canvas.save();canvas.clipPath(clip);super.dispatchDraw(canvas);canvas.restore();
            paint.setStyle(android.graphics.Paint.Style.STROKE);paint.setStrokeWidth(Math.max(1,density*.6f));paint.setColor(line);canvas.drawPath(clip,paint);
            paint.setColor(separator);paint.setStrokeWidth(Math.max(1,density));
            for(int n=1;n<getChildCount();n++){float x=getChildAt(n).getLeft();canvas.drawLine(x,8*density,x,getHeight()-8*density,paint);}
        }
    }
    private static final class Segment extends Button {
        final ActionStrip strip;final int icon;final android.graphics.Paint ink=new android.graphics.Paint(3);private long pressedUntil;private boolean working;
        Segment(Context context,ActionStrip strip,String title,int icon){
            super(context);this.strip=strip;this.icon=icon;setAllCaps(false);setTextSize(14);setGravity(Gravity.CENTER);setPadding(0,0,0,0);setMinHeight(0);setMinimumHeight(0);setMinWidth(0);setMinimumWidth(0);setMaxLines(1);setBackgroundDrawable(new ColorDrawable(0));
            setTextColor(new android.content.res.ColorStateList(new int[][]{new int[]{-android.R.attr.state_enabled},new int[]{}},new int[]{ActionStrip.mix(strip.surface,strip.text,.4f),strip.text}));
            setContentDescription(title);if(icon==0)setText(title);
            if(icon!=0)setOnLongClickListener(new View.OnLongClickListener(){public boolean onLongClick(View view){
                String help=Segment.this.icon==1?"Выбрать копию из другой папки":Segment.this.icon==2?"Создать копию и открыть «Поделиться»":"Сохранить копию в Загрузки";
                Toast.makeText(getContext(),help,Toast.LENGTH_SHORT).show();return true;
            }});
        }
        @Override public void setPressed(boolean pressed){super.setPressed(pressed);if(pressed)pressedUntil=SystemClock.uptimeMillis()+180;invalidate();}
        @Override public boolean performClick(){
            BackupActivity page=getContext() instanceof BackupActivity?(BackupActivity)getContext():null;
            if(page!=null&&page.busy)return false;
            if(page!=null)page.activeSegment=this;
            pressedUntil=SystemClock.uptimeMillis()+180;invalidate();postInvalidateDelayed(180);return super.performClick();
        }
        void working(boolean value){working=value;invalidate();}
        protected void onDraw(android.graphics.Canvas canvas){
            long now=SystemClock.uptimeMillis();
            if(isEnabled()&&(working||isPressed()||isFocused()||now<pressedUntil))canvas.drawColor(ActionStrip.mix(strip.surface,strip.accent,.30f));
            if(working){ink.setColor(strip.accent);ink.setStrokeWidth(2*strip.density);float width=getWidth()*.25f,x=(now%900)/900f*(getWidth()+width)-width;canvas.drawLine(Math.max(0,x),getHeight()-3*strip.density,Math.min(getWidth(),x+width),getHeight()-3*strip.density,ink);postInvalidateDelayed(32);}
            else if(now<pressedUntil)postInvalidateDelayed(pressedUntil-now);
            if(icon==0){super.onDraw(canvas);return;}
            canvas.save();float size=22*strip.density;canvas.translate((getWidth()-size)/2,(getHeight()-size)/2);canvas.scale(size/24,size/24);
            ink.setColor(getCurrentTextColor());ink.setStyle(android.graphics.Paint.Style.STROKE);ink.setStrokeWidth(1.8f);ink.setStrokeCap(android.graphics.Paint.Cap.ROUND);ink.setStrokeJoin(android.graphics.Paint.Join.ROUND);
            if(icon==1){android.graphics.Path path=new android.graphics.Path();path.moveTo(3,6);path.quadTo(3,4,5,4);path.lineTo(9,4);path.lineTo(11,6);path.lineTo(19,6);path.quadTo(21,6,21,8);path.lineTo(21,18);path.quadTo(21,20,19,20);path.lineTo(5,20);path.quadTo(3,20,3,18);path.close();canvas.drawPath(path,ink);}
            else if(icon==3){canvas.drawLine(12,3,12,16,ink);canvas.drawLine(7,11,12,16,ink);canvas.drawLine(17,11,12,16,ink);android.graphics.Path tray=new android.graphics.Path();tray.moveTo(4,17);tray.lineTo(4,21);tray.lineTo(20,21);tray.lineTo(20,17);canvas.drawPath(tray,ink);}
            else{canvas.drawLine(8.2f,10.7f,15.8f,6.3f,ink);canvas.drawLine(8.2f,13.3f,15.8f,17.7f,ink);canvas.drawCircle(18,5,2.5f,ink);canvas.drawCircle(6,12,2.5f,ink);canvas.drawCircle(18,19,2.5f,ink);}
            canvas.restore();
        }
    }
    private Button compactButton(String title,View.OnClickListener click){
        Button value=com.cootek.smartinput5.settings.SizeSettingsPage.actionButton(this,title);
        value.setTextSize(14);value.setMinHeight(dp(40));value.setMinimumHeight(dp(40));value.setPadding(dp(6),dp(4),dp(6),dp(4));value.setMaxLines(2);
        value.setOnClickListener(click);actions.add(value);return value;
    }
    private Button button(LinearLayout parent,String title,View.OnClickListener click){
        Button value=compactButton(title,click);LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(-1,-2);lp.topMargin=dp(6);parent.addView(value,lp);return value;
    }
    private void section(LinearLayout parent,String title,boolean dark){
        View line=new View(this);line.setBackgroundColor(dark?0xff5b5b5b:0xffbdbdbd);LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(-1,Math.max(1,dp(1)));lp.topMargin=dp(10);lp.bottomMargin=dp(4);parent.addView(line,lp);
        TextView heading=new TextView(this);heading.setText(title);heading.setTextSize(16);heading.setTypeface(null,android.graphics.Typeface.BOLD);heading.setTextColor(dark?0xff59b6de:0xff24799f);parent.addView(heading,new LinearLayout.LayoutParams(-1,-2));
    }
    private TextView caption(LinearLayout parent,String text,int color){
        TextView value=new TextView(this);value.setText(text);value.setTextSize(14);value.setTextColor(color);value.setMaxLines(2);value.setEllipsize(android.text.TextUtils.TruncateAt.END);value.setLineSpacing(dp(2),1f);LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(-1,-2);lp.topMargin=dp(3);parent.addView(value,lp);return value;
    }
    private void path(LinearLayout parent,String text,int color){TextView value=caption(parent,text,color);value.setMaxLines(Integer.MAX_VALUE);value.setEllipsize(null);value.setHorizontallyScrolling(false);value.setTextIsSelectable(true);}
    private int dp(int value){return Math.round(value*getResources().getDisplayMetrics().density);}
    private boolean alive(){return !destroyed&&!isFinishing();}
    private void prepareNotice(boolean dark){
        noticePanel=new LinearLayout(this);noticePanel.setOrientation(LinearLayout.VERTICAL);noticePanel.setPadding(dp(16),dp(10),dp(12),dp(12));
        android.graphics.drawable.GradientDrawable background=new android.graphics.drawable.GradientDrawable();background.setColor(dark?0xff303030:0xffeeeeee);background.setCornerRadius(dp(12));background.setStroke(Math.max(1,dp(1)),dark?0xff6c6c6c:0xff999999);noticePanel.setBackgroundDrawable(background);
        LinearLayout top=new LinearLayout(this);top.setOrientation(LinearLayout.HORIZONTAL);
        status=new TextView(this);status.setTextSize(14);status.setTextColor(dark?0xffeeeeee:0xff222222);status.setLineSpacing(dp(2),1f);status.setHorizontallyScrolling(false);top.addView(status,new LinearLayout.LayoutParams(0,-2,1));
        Button close=new Button(this);close.setText("×");close.setTextSize(22);close.setTextColor(dark?0xffeeeeee:0xff222222);close.setContentDescription("Закрыть уведомление");close.setBackgroundDrawable(new ColorDrawable(0));close.setPadding(0,0,0,0);close.setMinWidth(0);close.setMinimumWidth(0);close.setMinHeight(0);close.setMinimumHeight(0);top.addView(close,new LinearLayout.LayoutParams(dp(40),dp(40)));close.setOnClickListener(new View.OnClickListener(){public void onClick(View v){dismissNotice();}});
        noticePanel.addView(top,new LinearLayout.LayoutParams(-1,-2));progress=new ProgressBar(this,null,android.R.attr.progressBarStyleHorizontal);progress.setIndeterminate(true);progress.setVisibility(View.GONE);noticePanel.addView(progress,new LinearLayout.LayoutParams(-1,dp(4)));
        notice=new PopupWindow(noticePanel,-1,-2,false);notice.setBackgroundDrawable(new ColorDrawable(0));notice.setOutsideTouchable(true);notice.setInputMethodMode(PopupWindow.INPUT_METHOD_NOT_NEEDED);notice.setAnimationStyle(0);
    }
    private void dismissNotice(){noticeSerial++;if(notice!=null&&notice.isShowing())notice.dismiss();}
    private void showNotice(String message,boolean working){
        if(!alive()||notice==null||message==null||message.length()==0)return;
        final int serial=++noticeSerial;status.setText(message);progress.setVisibility(working?View.VISIBLE:View.GONE);
        int width=Math.max(dp(240),getResources().getDisplayMetrics().widthPixels-dp(32));
        try{notice.setWidth(width);if(notice.isShowing())notice.update(width,-2);else notice.showAtLocation((View)findViewById(android.R.id.content),Gravity.BOTTOM|Gravity.CENTER_HORIZONTAL,0,dp(16));}
        catch(RuntimeException unavailable){return;}
        if(!working)main.postDelayed(new Runnable(){public void run(){if(serial==noticeSerial)dismissNotice();}},8000);
    }
    private void setBusy(boolean value,String message){
        busy=value;if(!alive())return;
        if(activeSegment!=null){activeSegment.working(value);if(!value)activeSegment=null;}
        if(message!=null&&message.length()>0)showNotice(message,value);else if(!value)dismissNotice();
    }
    private void showStoredStatus(){final String value=BackupController.status(getApplicationContext());if(value!=null&&value.length()>0)main.post(new Runnable(){public void run(){showNotice(value,false);}});}
    private static String savedMessage(File file){return "Копия создана\n"+file.getName()+"\n\nПапка:\n"+file.getParentFile().getPath();}
    private static String downloadedMessage(String name){File folder=Environment.getExternalStoragePublicDirectory("Download");return "Сохранено в Загрузки\n"+name+"\n\nПапка:\n"+(folder==null?"Downloads":folder.getPath());}
    private boolean canChooseFile(){if(busy||!alive())return false;if(Build.VERSION.SDK_INT<19){showError("Выбор файла доступен начиная с Android4.4.");return false;}return true;}

    private boolean writablePermission(final int kind){
        if(checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE")==PackageManager.PERMISSION_GRANTED)return true;
        if(Build.VERSION.SDK_INT>=23){
            permissionKind=kind;setBusy(true,"Разреши сохранение в Загрузки.");
            try{Activity.class.getMethod("requestPermissions",String[].class,int.class).invoke(this,new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"},WRITE_PERMISSION);return false;}
            catch(Exception unavailable){permissionKind=0;setBusy(false,null);}
        }
        showError("Разреши доступ к файлам в настройках Android и повтори сохранение.");return false;
    }
    // New-platform callback, declared without an API23 super-method reference for API15 compatibility.
    public void onRequestPermissionsResult(int request,String[] names,int[] grants){
        if(request!=WRITE_PERMISSION)return;int kind=permissionKind;permissionKind=0;final File selected=permissionFile;permissionFile=null;setBusy(false,null);
        if(kind==0||!alive())return;
        if(grants!=null&&grants.length>0&&grants[0]==PackageManager.PERMISSION_GRANTED&&checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE")==PackageManager.PERMISSION_GRANTED){if(selected!=null)downloadSaved(selected,kind);else create(kind,2);}
        else showError("Без доступа к файлам сохранить в Загрузки не удалось.");
    }
    private void create(final int kind,final int mode){
        if(busy||!alive()||kind<ZIP||kind>TXT)return;
        if(mode==2&&Build.VERSION.SDK_INT<29&&!writablePermission(kind))return;
        setBusy(true,"Подготовка копии…");
        // Let the pressed state and progress panel reach a frame before the existing UI-thread native barrier.
        main.postDelayed(new Runnable(){public void run(){if(!alive()){setBusy(false,null);return;}captureAndCreate(kind,mode);}},40);
    }
    private void captureAndCreate(final int kind,final int mode){
        final Map<String,byte[]> entries;final Map<String,String> metadata;final byte[] usr;
        try{if(kind==ZIP){entries=BackupController.capture(this);metadata=BackupController.metadata(this);usr=null;}else{entries=null;metadata=null;usr=BackupController.captureWestern(this);}}
        catch(OutOfMemoryError failed){setBusy(false,null);showError(MEMORY_ERROR);return;}
        catch(Exception failed){setBusy(false,null);showError(BackupController.captureError(failed));return;}
        final Context context=getApplicationContext();
        new Thread(new Runnable(){public void run(){CopyFiles155.Prepared source=null;File retained=null;
            try{
                String name="TouchPal_backup_"+new SimpleDateFormat("yyyyMMdd_HHmmss",Locale.US).format(new Date())+".zip";
                source=kind==ZIP?CopyFiles155.zip(context.getCacheDir(),entries,metadata,name):kind==USR?CopyFiles155.western(context.getCacheDir(),usr):CopyFiles155.text(context.getCacheDir(),usr);
                if(destroyed)return;
                retained=SavedCopies157.remember(source);final File saved=retained;final String mime=source.mime;
                final String downloaded=mode==2?SavedCopies157.download(context,source):null;
                main.post(new Runnable(){public void run(){if(!alive())return;refreshCopies(false);if(mode==1)shareSaved(saved,mime);else setBusy(false,mode==2?downloadedMessage(downloaded):savedMessage(saved));}});
            }catch(OutOfMemoryError failed){postError(MEMORY_ERROR);}
            catch(Exception failed){postError(retained!=null?"Копия сохранена в Backup, но сохранить в Загрузки не удалось.":"Не удалось создать копию. Проверь свободное место и доступность папки приложения.");}
            finally{if(source!=null)source.discard();}
        }},"TouchPalCopy157").start();
    }

    private void shareSaved(File saved,String mime){
        setBusy(false,savedMessage(saved)+"\n\nОткроется «Поделиться».");
        try{
            Uri uri=FileProvider.getUriForFile(this,getPackageName()+".commitcontent.ime.inputcontent",saved);
            Intent send=new Intent(Intent.ACTION_SEND);send.setType(mime);send.putExtra(Intent.EXTRA_STREAM,uri);send.setClipData(ClipData.newUri(getContentResolver(),saved.getName(),uri));send.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
            Intent chooser=Intent.createChooser(send,"Поделиться копией");chooser.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);startActivity(chooser);
        }catch(Exception unavailable){showError("Копия сохранена: "+saved.getName()+". Системное меню «Поделиться» открыть не удалось.");}
        // This is a normal saved copy. No callback or lifecycle event deletes it.
    }
    private void choose(Intent intent,int request){
        setBusy(true,"Выбери файл или папку.");
        try{dismissNotice();startActivityForResult(intent,request);}
        catch(Exception unavailable){setBusy(false,null);showError("Не удалось открыть системный выбор файлов.");}
    }
    private void openImportPicker(int request){
        if(!canChooseFile())return;Intent content=new Intent(Intent.ACTION_GET_CONTENT);content.addCategory(Intent.CATEGORY_OPENABLE);content.setType("*/*");content.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);BackupLocations155.preparePicker(content);
        choose(Intent.createChooser(content,request==OPEN_WESTERN?"Выбрать western.usr":request==OPEN_TEXT?"Выбрать TXT со словами":"Выбрать ZIP-копию"),request);
    }
    private void chooseText(){
        if(busy||!alive())return;
        try{if(TextRecovery155.pending(this)){offerTextRecovery();return;}importLanguage=TextDictionary155.language();}
        catch(Exception unavailable){showError("Словарь недоступен. Открой клавиатуру TouchPal и повтори добавление слов.");return;}
        openImportPicker(OPEN_TEXT);
    }
    @Override protected void onActivityResult(int request,int result,Intent data){
        super.onActivityResult(request,result,data);
        if(request!=OPEN_BACKUP&&request!=OPEN_WESTERN&&request!=OPEN_TEXT&&request!=OPEN_LANGUAGE)return;
        if(result!=RESULT_OK||data==null||data.getData()==null){setBusy(false,null);if(alive())showStoredStatus();return;}
        if(request==OPEN_LANGUAGE)readLanguage(data.getData());else if(request==OPEN_BACKUP)readBackup(data.getData());else if(request==OPEN_WESTERN)readWestern(data.getData());else readText(data.getData());
    }
    private void openLanguagePicker(){
        if(!canChooseFile())return;discardLanguage();Intent content=new Intent(Intent.ACTION_GET_CONTENT).addCategory(Intent.CATEGORY_OPENABLE).setType("*/*").addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);BackupLocations155.preparePicker(content);choose(Intent.createChooser(content,"Выбрать TPL или TPL.apk"),OPEN_LANGUAGE);
    }
    private void discardLanguage(){if(languageIncoming!=null){languageIncoming.discard();languageIncoming=null;}}
    private void readLanguage(final Uri uri){
        setBusy(true,"Проверка файла языка…");final Context context=getApplicationContext();
        new Thread(new Runnable(){public void run(){LanguageFiles158.Pending prepared=null;try{
            prepared=LanguageFiles158.prepare(context,uri);final LanguageFiles158.Pending ready=prepared;prepared=null;
            main.post(new Runnable(){public void run(){setBusy(false,null);if(!alive()){ready.discard();return;}languageIncoming=ready;
                String message="Файл: "+ready.target.getName()+"\nПапка: "+ready.target.getParent()+"\n\n"+(ready.previous==null?"Добавить файл языка?":"Файл с таким именем уже есть. Заменить его? Прежний файл сохранится в Backup/Language.");
                new AlertDialog.Builder(BackupActivity.this).setTitle("Словарь языка").setMessage(message).setOnCancelListener(new DialogInterface.OnCancelListener(){public void onCancel(DialogInterface d){discardLanguage();}}).setNegativeButton("Отмена",new DialogInterface.OnClickListener(){public void onClick(DialogInterface d,int which){discardLanguage();}}).setPositiveButton(ready.previous==null?"Добавить":"Заменить",new DialogInterface.OnClickListener(){public void onClick(DialogInterface d,int which){installLanguage();}}).show();
            }});
        }catch(OutOfMemoryError failure){postError(MEMORY_ERROR);}catch(Exception failure){postError("Не удалось прочитать файл языка. Выбери целый пакет TPL или TPL.apk с данными языка и словаря.");}finally{if(prepared!=null)prepared.discard();}}},"TouchPalLanguageRead158").start();
    }
    private void installLanguage(){
        if(busy||!alive()||languageIncoming==null)return;final LanguageFiles158.Pending source=languageIncoming;languageIncoming=null;setBusy(true,"Сохранение файла языка…");final Context context=getApplicationContext();
        new Thread(new Runnable(){public void run(){try{final File installed=LanguageFiles158.commit(context,source);main.post(new Runnable(){public void run(){setBusy(false,"Файл языка сохранён\n"+installed.getName()+"\n\nПапка:\n"+installed.getParent()+"\n\nДля применения перезапусти клавиатуру.");}});}catch(Exception failure){postError("Не удалось добавить файл языка. Прежний файл сохранён; проверь свободное место и повтори.");}finally{source.discard();}}},"TouchPalLanguageSave158").start();
    }
    private void readText(final Uri uri){readIncomingFile(uri,TXT);}
    @SuppressWarnings("unchecked")
    private void readIncomingFile(final Uri uri,final int kind){
        if(!alive())return;discardIncoming();setBusy(true,"Чтение и проверка файла…");
        final Context context=getApplicationContext();final String language=importLanguage;
        new Thread(new Runnable(){public void run(){CopyFiles155.Prepared source=null;try{
            source=SavedCopies157.read(context,uri,kind);final Object payload;
            InputStream input=new FileInputStream(source.file);
            try{if(kind==ZIP){BackupArchive.Archive archive=BackupArchive.read(input);BackupController.validate(archive);payload=archive;}
                else if(kind==USR)payload=WesternImport137.read(input);else payload=TextDictionary155.parse(input);}
            finally{input.close();}
            final CopyFiles155.Prepared ready=source;source=null;
            main.post(new Runnable(){public void run(){
                setBusy(false,null);if(!alive()){ready.discard();return;}incoming=ready;
                if(kind==ZIP){confirmRestore((BackupArchive.Archive)payload);return;}
                try{
                    String message;
                    if(kind==TXT){TextDictionary155.Session preview=new TextDictionary155.Session((List<String>)payload,language);message="Новых слов: "+preview.words.size()+". Уже есть: "+preview.already+".\nСуществующие слова сохранятся. TXT останется в Backup.";}
                    else message="Текущий словарь будет заменён выбранным файлом. Настройки сохранятся. Файл останется в Backup. TouchPal перезапустится.";
                    new AlertDialog.Builder(BackupActivity.this).setTitle(kind==TXT?"Добавить слова из TXT":"Восстановить western.usr").setMessage(message)
                        .setOnCancelListener(new DialogInterface.OnCancelListener(){public void onCancel(DialogInterface d){discardIncoming();}})
                        .setNegativeButton("Отмена",new DialogInterface.OnClickListener(){public void onClick(DialogInterface d,int which){discardIncoming();}})
                        .setPositiveButton(kind==TXT?"Добавить":"Заменить словарь",new DialogInterface.OnClickListener(){public void onClick(DialogInterface dialog,int which){if(kind==TXT)startTextImport((List<String>)payload,language);else stageWestern((byte[])payload);}}).show();
                }catch(Exception unavailable){discardIncoming();showError("Словарь или язык изменился. Открой TouchPal и выбери файл ещё раз.");}
            }});
        }catch(OutOfMemoryError failed){postError(MEMORY_ERROR);}catch(Exception failed){postError(kind==TXT?"Не удалось прочитать TXT. Нужен список слов в UTF-8, по одному слову в строке.":"Файл повреждён, недоступен или несовместим. Данные клавиатуры не изменены.");}
        finally{if(source!=null)source.discard();}}},"TouchPalIncoming157").start();
    }

    private void startTextImport(final List<String> words,final String language){
        if(busy||!alive())return;if(!TEXT_RUNNING.compareAndSet(false,true)){showError("Добавление слов уже выполняется.");return;}
        setBusy(true,"Подготовка добавления слов…");final byte[] before;
        try{before=BackupController.captureWestern(this);}
        catch(Exception failed){TEXT_RUNNING.set(false);setBusy(false,null);showError(BackupController.captureError(failed));return;}
        catch(OutOfMemoryError failed){TEXT_RUNNING.set(false);setBusy(false,null);showError(MEMORY_ERROR);return;}
        final Context context=getApplicationContext();final CopyFiles155.Prepared retainedInput=takeIncoming();
        new Thread(new Runnable(){public void run(){try{
            if(retainedInput!=null)SavedCopies157.remember(retainedInput);
            TextRecovery155.prepare(context,before);
            main.post(new Runnable(){public void run(){
                if(!alive()){TEXT_RUNNING.set(false);return;}
                try{stepTextImport(new TextDictionary155.Session(words,language));}
                catch(Exception failed){textFailed();}catch(OutOfMemoryError failed){textFailed();}
            }});
        }catch(OutOfMemoryError failed){TEXT_RUNNING.set(false);postError(MEMORY_ERROR);}
        catch(Exception failed){TEXT_RUNNING.set(false);postError("Не удалось подготовить добавление слов. Текущий словарь не изменён.");}finally{if(retainedInput!=null)retainedInput.discard();}}},"TouchPalPrepareText155").start();
    }
    private void stepTextImport(final TextDictionary155.Session session){
        if(!alive()){TEXT_RUNNING.set(false);return;}
        try{
            if(!session.step()){status.setText("Обработано слов: "+session.next+" из "+session.words.size()+".");main.post(new Runnable(){public void run(){stepTextImport(session);}});return;}
            final int[] counts=session.finish();BackupController.captureWestern(this);TextRecovery155.clear(this);TEXT_RUNNING.set(false);
            setBusy(false,"Добавлено слов: "+counts[0]+". Уже были: "+counts[1]+". Не приняты движком: "+counts[2]+".");
        }catch(Exception failed){textFailed();}catch(OutOfMemoryError failed){textFailed();}
    }
    private void textFailed(){TEXT_RUNNING.set(false);setBusy(false,"Добавление прервано. Часть слов могла добавиться; доступна копия до импорта.");offerTextRecovery();}
    private void offerTextRecovery(){
        if(!alive()||busy||TEXT_RUNNING.get())return;
        try{
            if(!TextRecovery155.pending(this))return;
            new AlertDialog.Builder(this).setTitle("Предыдущий импорт TXT")
                .setMessage("Добавление слов могло быть прервано. Можно оставить текущий словарь или восстановить его состояние до импорта.")
                .setCancelable(false)
                .setNegativeButton("Оставить текущий",new DialogInterface.OnClickListener(){public void onClick(DialogInterface dialog,int which){try{TextRecovery155.clear(BackupActivity.this);}catch(Exception failed){showError("Не удалось завершить проверку копии. Повтори при следующем открытии.");}}})
                .setPositiveButton("Восстановить до импорта",new DialogInterface.OnClickListener(){public void onClick(DialogInterface dialog,int which){try{stageWestern(TextRecovery155.read(BackupActivity.this),true);}catch(Exception failed){showError("Копия до импорта повреждена или недоступна. Текущий словарь сохранён.");}}}).show();
        }catch(Exception unavailable){showError("Не удалось проверить копию перед импортом. Рабочий словарь не заменён.");}
    }
    private void discardIncoming(){if(incoming!=null){incoming.discard();incoming=null;}}
    private CopyFiles155.Prepared takeIncoming(){CopyFiles155.Prepared value=incoming;incoming=null;return value;}
    private void stageWestern(byte[] incoming){stageWestern(incoming,false);}

    private void readWestern(final Uri uri){readIncomingFile(uri,USR);}
    private void stageWestern(final byte[] incoming, final boolean textRecovery) {
        if (busy || !alive()) return;
        setBusy(true, "Подготовка восстановления словаря…");
        final byte[] previous;
        try { previous = BackupController.captureWestern(this); }
        catch (OutOfMemoryError failure) { setBusy(false, null); showError(MEMORY_ERROR); return; }
        catch (Exception failure) { setBusy(false, null); showError(BackupController.captureError(failure)); return; }
        final Context context=getApplicationContext();final CopyFiles155.Prepared retainedInput=takeIncoming();
        new Thread(new Runnable() {
            @Override public void run() {
                try { try {
                    if(retainedInput!=null)SavedCopies157.remember(retainedInput);
                    WesternImport137.stage(context, incoming, previous);
                    if (textRecovery) { try { TextRecovery155.clear(context); } catch (IOException deferredCleanup) { } }
                    main.post(new Runnable() {
                        @Override public void run() {
                            if (alive()) { status.setText("TouchPal перезапускается…"); finish(); }
                            main.postDelayed(new Runnable() {
                                @Override public void run() { BackupController.restart(context); }
                            }, 200);
                        }
                    });
                } catch (OutOfMemoryError failure) { postError(MEMORY_ERROR); }
                catch (Exception failure) { postError("Не удалось подготовить восстановление словаря. Текущий словарь сохранён."); }
                } finally {if(retainedInput!=null)retainedInput.discard();}
            }
        }, "TouchPalWesternRestore").start();
    }

    private void importOldData() {
        if (busy || !alive()) return;
        setBusy(true, "Копирование и проверка старых данных…");
        final Context context = getApplicationContext();
        new Thread(new Runnable() {
            @Override public void run() {
                try {
                    final StorageImport135.Result result = StorageImport135.run(context);
                    main.post(new Runnable() {
                        @Override public void run() {
                            setBusy(false, "Перенос завершён. Добавлено файлов: " + result.copied
                                    + ". Уже были в TouchPalG: " + result.kept
                                    + ". Пропущено: " + result.skipped + ".\nСтарые оригиналы сохранены. Закрой и снова открой клавиатуру.");
                        }
                    });
                } catch (Exception failure) {
                    postError("Перенос не завершён. Проверь доступ к старой папке и свободное место. Старые оригиналы сохранены; можно скопировать папку вручную и повторить.");
                }
            }
        }, "TouchPalStorageImport").start();
    }

    private void readBackup(final Uri uri){readIncomingFile(uri,ZIP);}
    private void confirmRestore(final BackupArchive.Archive archive) {
        if (!alive()) return;
        String date = readableDate(archive.metadata.get("createdUTC"));
        String message = "Текущие словари и настройки будут заменены данными из копии.\n\n"
                + (archive.entries.containsKey(ClipboardBackup138.KEY)?"Текстовый буфер, закреплённые сообщения и сокращения будут восстановлены из копии.\n\n":"В этой копии нет буфера: текущие сообщения и сокращения буфера сохранятся.\n\n")
                + (date.length() == 0 ? "" : "Копия: " + date + ".\n\n")
                + "После восстановления TouchPal перезапустится.";
        new AlertDialog.Builder(this)
                .setTitle("Восстановить копию?")
                .setMessage(message+"\nВыбранный ZIP будет сохранён в Backup.")
                .setOnCancelListener(new DialogInterface.OnCancelListener(){public void onCancel(DialogInterface d){discardIncoming();}})
                .setNegativeButton("Отмена",new DialogInterface.OnClickListener(){public void onClick(DialogInterface d,int which){discardIncoming();}})
                .setPositiveButton("Восстановить и перезапустить", new DialogInterface.OnClickListener() {
                    @Override public void onClick(DialogInterface dialog, int which) {
                        stageRestore(archive);
                    }
                }).show();
    }

    private static String readableDate(String text) {
        if (text == null || text.length() > 80) return "";
        try {
            SimpleDateFormat parser = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
            parser.setLenient(false);
            parser.setTimeZone(TimeZone.getTimeZone("UTC"));
            Date date = parser.parse(text);
            return date == null ? "" : DateFormat.getDateTimeInstance(DateFormat.SHORT, DateFormat.SHORT).format(date);
        } catch (ParseException ignored) { return ""; }
    }

    private void stageRestore(final BackupArchive.Archive archive) {
        if (busy || !alive()) return;
        setBusy(true, "Подготовка восстановления…");
        final Context context=getApplicationContext();final CopyFiles155.Prepared retainedInput=takeIncoming();
        new Thread(new Runnable() {
            @Override public void run() {
                try { try {
                    if(retainedInput!=null)SavedCopies157.remember(retainedInput);
                    BackupController.stage(context, archive);
                    main.post(new Runnable() {
                        @Override public void run() {
                            if (alive()) {
                                status.setText("TouchPal перезапускается…");
                                Toast.makeText(context, "TouchPal перезапускается", Toast.LENGTH_SHORT).show();
                                finish();
                            }
                            // This was explicitly confirmed: finish even after Activity recreation.
                            main.postDelayed(new Runnable() {
                                @Override public void run() {
                                    try { BackupController.restart(context); }
                                    catch (Exception failure) {
                                        if (alive()) {
                                            setBusy(false, null);
                                            showError("Не удалось перезапустить TouchPal. Закрой и снова открой клавиатуру.");
                                        }
                                    }
                                }
                            }, 200);
                        }
                    });
                } catch (OutOfMemoryError failure) {
                    postError(MEMORY_ERROR);
                } catch (Exception failure) {
                    postError("Не удалось подготовить восстановление. Данные клавиатуры не изменены.");
                }
                } finally {if(retainedInput!=null)retainedInput.discard();}
            }
        }, "TouchPalBackupRestore").start();
    }

    private void postError(final String message) {
        main.post(new Runnable() {
            @Override public void run() {
                setBusy(false, null);
                if (alive()) showError(message);
            }
        });
    }

    private void showError(String message) {
        if (!alive()) return;
        if (status != null) status.setText(message);
        new AlertDialog.Builder(this).setTitle("Резервная копия")
                .setMessage(message).setPositiveButton("Закрыть", null).show();
    }

    @Override public void onBackPressed(){if(!busy)super.onBackPressed();}
    @Override public boolean onOptionsItemSelected(MenuItem item){if(item.getItemId()==android.R.id.home){if(!busy)finish();return true;}return super.onOptionsItemSelected(item);}
    @Override public void onConfigurationChanged(Configuration value){super.onConfigurationChanged(value);}
    @Override protected void onDestroy(){destroyed=true;dismissNotice();discardLanguage();discardIncoming();super.onDestroy();}
}
