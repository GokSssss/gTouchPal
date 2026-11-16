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
    private static final int CREATE_BACKUP=10501,OPEN_BACKUP=10502,CREATE_WESTERN=13501,OPEN_WESTERN=13701,CREATE_TEXT=15501,OPEN_TEXT=15502,WRITE_PERMISSION=15503;
    private static final String MEMORY_ERROR="Не хватает памяти для этой копии. Закрой другие приложения и повтори.";
    private static final AtomicBoolean TEXT_RUNNING=new AtomicBoolean();
    private final Handler main=new Handler(Looper.getMainLooper());
    private final List<Button> actions=new ArrayList<Button>();
    private TextView status;private ProgressBar progress;
    private boolean busy;private volatile boolean destroyed;
    private CopyFiles155.Prepared prepared;
    private int permissionKind;private String importLanguage;

    @Override public void onCreate(Bundle state){
        boolean dark=PreferenceManager.getDefaultSharedPreferences(this).getBoolean("option_dark_theme",false);
        setTheme(dark?0x0103006b:0x0103006e);super.onCreate(state);
        setTitle("Резервная копия и восстановление");
        getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_STATE_ALWAYS_HIDDEN);
        getWindow().setBackgroundDrawable(new ColorDrawable(dark?0xff222222:0xfffafafa));
        ActionBar bar=getActionBar();
        if(bar!=null){bar.setDisplayHomeAsUpEnabled(true);TextView heading=new TextView(this);heading.setText(getTitle());heading.setTextSize(18);heading.setTextColor(dark?0xffeeeeee:0xff222222);heading.setMaxLines(2);bar.setDisplayShowTitleEnabled(false);bar.setCustomView(heading,new ActionBar.LayoutParams(-1,-2));bar.setDisplayShowCustomEnabled(true);}
        ScrollView scroll=new ScrollView(this);LinearLayout content=new LinearLayout(this);content.setOrientation(LinearLayout.VERTICAL);int pad=dp(20);content.setPadding(pad,pad,pad,pad);scroll.addView(content,new ScrollView.LayoutParams(-1,-2));
        int color=dark?0xffeeeeee:0xff222222;
        caption(content,"Папка для файлов резервного копирования:",color);
        String folder;try{folder=BackupLocations155.folder().getPath();}catch(RuntimeException unavailable){folder="Папка на SD недоступна";}
        path(content,folder,color);caption(content,"При выборе файла можно открыть другую папку.",color);
        caption(content,"«Создать и отправить» сохраняет копию\nв этой папке и открывает «Поделиться».",color);

        section(content,"Полная копия",dark);
        caption(content,"Словари, настройки и буфер обмена — ZIP.\nБез изображений буфера обмена.",color);
        createButtons(content,ZIP,"Создать полную копию");
        button(content,"Восстановить полную копию",new View.OnClickListener(){public void onClick(View v){openImportPicker(OPEN_BACKUP);}});

        section(content,"Пользовательский словарь",dark);
        caption(content,"Файл western.usr.\nПри восстановлении настройки сохраняются.",color);
        createButtons(content,USR,"Сохранить western.usr");
        button(content,"Восстановить western.usr",new View.OnClickListener(){public void onClick(View v){openImportPicker(OPEN_WESTERN);}});

        section(content,"Слова в текстовом файле",dark);
        caption(content,"Сохранить слова в TXT или добавить из TXT.\nПри добавлении прежние слова сохраняются.",color);
        createButtons(content,TXT,"Сохранить слова в TXT");
        button(content,"Добавить слова из TXT",new View.OnClickListener(){public void onClick(View v){chooseText();}});
        caption(content,"Все слова: western_dict_full.txt.",color);

        section(content,"Перенос старых данных",dark);
        caption(content,"Добавляет недостающие файлы.\nСтарые оригиналы сохраняются.",color);
        button(content,"Перенести данные из TouchPal2015",new View.OnClickListener(){public void onClick(View v){importOldData();}});
        caption(content,"Старые папки на SD:",color);caption(content,"TouchPal2015/ и TouchPalv5/",color);
        progress=new ProgressBar(this,null,android.R.attr.progressBarStyleHorizontal);progress.setIndeterminate(true);progress.setVisibility(View.GONE);LinearLayout.LayoutParams pl=new LinearLayout.LayoutParams(-1,dp(8));pl.topMargin=dp(16);content.addView(progress,pl);
        status=new TextView(this);status.setTextSize(14);status.setTextColor(dark?0xffbbbbbb:0xff666666);status.setLineSpacing(dp(2),1f);LinearLayout.LayoutParams sl=new LinearLayout.LayoutParams(-1,-2);sl.topMargin=dp(18);content.addView(status,sl);
        setContentView(scroll);showStoredStatus();
        main.post(new Runnable(){public void run(){offerTextRecovery();}});
    }
    private void createButtons(LinearLayout parent,final int kind,String title){
        button(parent,title,new View.OnClickListener(){public void onClick(View v){create(kind,false);}});
        button(parent,"Создать и отправить",new View.OnClickListener(){public void onClick(View v){create(kind,true);}});
    }
    private Button button(LinearLayout parent,String title,View.OnClickListener click){
        Button value=com.cootek.smartinput5.settings.SizeSettingsPage.actionButton(this,title);LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(-1,-2);lp.topMargin=dp(8);parent.addView(value,lp);value.setOnClickListener(click);actions.add(value);return value;
    }
    private void section(LinearLayout parent,String title,boolean dark){
        View line=new View(this);line.setBackgroundColor(dark?0xff5b5b5b:0xffbdbdbd);LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(-1,Math.max(1,dp(1)));lp.topMargin=dp(18);lp.bottomMargin=dp(10);parent.addView(line,lp);
        TextView heading=new TextView(this);heading.setText(title);heading.setTextSize(16);heading.setTypeface(null,android.graphics.Typeface.BOLD);heading.setTextColor(dark?0xff59b6de:0xff24799f);parent.addView(heading,new LinearLayout.LayoutParams(-1,-2));
    }
    private TextView caption(LinearLayout parent,String text,int color){
        TextView value=new TextView(this);value.setText(text);value.setTextSize(14);value.setTextColor(color);value.setMaxLines(2);value.setEllipsize(android.text.TextUtils.TruncateAt.END);value.setLineSpacing(dp(2),1f);LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(-1,-2);lp.topMargin=dp(5);parent.addView(value,lp);return value;
    }
    private void path(LinearLayout parent,String text,int color){TextView value=caption(parent,text,color);value.setMaxLines(Integer.MAX_VALUE);value.setEllipsize(null);value.setHorizontallyScrolling(false);value.setTextIsSelectable(true);}
    private int dp(int value){return Math.round(value*getResources().getDisplayMetrics().density);}
    private boolean alive(){return !destroyed&&!isFinishing();}
    private void setBusy(boolean value,String message){busy=value;if(!alive())return;for(Button button:actions)button.setEnabled(!value);progress.setVisibility(value?View.VISIBLE:View.GONE);if(message!=null)status.setText(message);}
    private void showStoredStatus(){String value=BackupController.status(getApplicationContext());status.setText(value==null||value.length()==0?"Выбери действие.":value);}
    private boolean canChooseFile(){if(busy||!alive())return false;if(Build.VERSION.SDK_INT<19){showError("Выбор файла доступен начиная с Android4.4.");return false;}return true;}

    private boolean writablePermission(final int kind){
        if(checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE")==PackageManager.PERMISSION_GRANTED)return true;
        if(Build.VERSION.SDK_INT>=23){
            permissionKind=kind;setBusy(true,"Разреши сохранение копии на SD.");
            try{Activity.class.getMethod("requestPermissions",String[].class,int.class).invoke(this,new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"},WRITE_PERMISSION);return false;}
            catch(Exception unavailable){permissionKind=0;setBusy(false,null);}
        }
        showError("Разреши доступ к файлам в настройках Android и повтори сохранение.");return false;
    }
    // New-platform callback, declared without an API23 super-method reference for API15 compatibility.
    public void onRequestPermissionsResult(int request,String[] names,int[] grants){
        if(request!=WRITE_PERMISSION)return;int kind=permissionKind;permissionKind=0;setBusy(false,null);
        if(kind==0||!alive())return;
        if(grants!=null&&grants.length>0&&grants[0]==PackageManager.PERMISSION_GRANTED&&checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE")==PackageManager.PERMISSION_GRANTED)create(kind,true);
        else showError("Без доступа к файлам копию на SD создать не удалось.");
    }
    private void create(final int kind,final boolean share){
        if(busy||!alive()||kind<ZIP||kind>TXT)return;
        if(!share&&!canChooseFile())return;
        if(share&&!writablePermission(kind))return;
        setBusy(true,"Подготовка копии…");final Map<String,byte[]> entries;final Map<String,String> metadata;final byte[] usr;
        try{if(kind==ZIP){entries=BackupController.capture(this);metadata=BackupController.metadata(this);usr=null;}else{entries=null;metadata=null;usr=BackupController.captureWestern(this);}}
        catch(OutOfMemoryError failed){setBusy(false,null);showError(MEMORY_ERROR);return;}
        catch(Exception failed){setBusy(false,null);showError(BackupController.captureError(failed));return;}
        final Context context=getApplicationContext();
        new Thread(new Runnable(){public void run(){CopyFiles155.Prepared source=null;
            try{
                String name="TouchPal_backup_"+new SimpleDateFormat("yyyyMMdd_HHmmss",Locale.US).format(new Date())+".zip";
                source=kind==ZIP?CopyFiles155.zip(context.getCacheDir(),entries,metadata,name):kind==USR?CopyFiles155.western(context.getCacheDir(),usr):CopyFiles155.text(context.getCacheDir(),usr);
                if(destroyed)return;
                if(share){
                    final File saved=CopyFiles155.saveStandard(source,BackupLocations155.safeFolder());final String mime=source.mime;
                    main.post(new Runnable(){public void run(){if(alive())shareSaved(saved,mime);}});
                }else{
                    final CopyFiles155.Prepared ready=source;source=null;
                    main.post(new Runnable(){public void run(){if(!alive()){ready.discard();return;}prepared=ready;Intent intent=new Intent("android.intent.action.CREATE_DOCUMENT");intent.addCategory(Intent.CATEGORY_OPENABLE);intent.setType(ready.mime);intent.putExtra(Intent.EXTRA_TITLE,ready.name);BackupLocations155.preparePicker(intent);choose(intent,kind==ZIP?CREATE_BACKUP:kind==USR?CREATE_WESTERN:CREATE_TEXT);}});
                }
            }catch(OutOfMemoryError failed){postError(MEMORY_ERROR);}
            catch(Exception failed){postError(kind==TXT?"Не удалось выгрузить слова в TXT. Проверь доступность словаря и свободное место.":"Не удалось создать копию. Проверь доступ к выбранной папке и свободное место.");}
            finally{if(source!=null)source.discard();}
        }},"TouchPalCopy155").start();
    }
    private void shareSaved(File saved,String mime){
        setBusy(false,"Копия сохранена: "+saved.getName()+". Откроется «Поделиться».");
        try{
            Uri uri=FileProvider.getUriForFile(this,getPackageName()+".commitcontent.ime.inputcontent",saved);
            Intent send=new Intent(Intent.ACTION_SEND);send.setType(mime);send.putExtra(Intent.EXTRA_STREAM,uri);send.setClipData(ClipData.newUri(getContentResolver(),saved.getName(),uri));send.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
            Intent chooser=Intent.createChooser(send,"Поделиться копией");chooser.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);startActivity(chooser);
        }catch(Exception unavailable){showError("Копия сохранена: "+saved.getName()+". Системное меню «Поделиться» открыть не удалось.");}
        // This is a normal saved copy. No callback or lifecycle event deletes it.
    }
    private void choose(Intent intent,int request){
        setBusy(true,"Выбери файл или папку.");
        try{startActivityForResult(intent,request);}
        catch(Exception unavailable){discardPrepared();setBusy(false,null);showError("Не удалось открыть системный выбор файлов.");}
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
        if(request!=CREATE_BACKUP&&request!=CREATE_WESTERN&&request!=CREATE_TEXT&&request!=OPEN_BACKUP&&request!=OPEN_WESTERN&&request!=OPEN_TEXT)return;
        if(result!=RESULT_OK||data==null||data.getData()==null){discardPrepared();setBusy(false,null);if(alive())showStoredStatus();return;}
        if(request==CREATE_BACKUP||request==CREATE_WESTERN||request==CREATE_TEXT)writeSelected(data.getData());
        else if(request==OPEN_BACKUP)readBackup(data.getData());else if(request==OPEN_WESTERN)readWestern(data.getData());else readText(data.getData());
    }
    private void writeSelected(final Uri uri){
        final CopyFiles155.Prepared source=prepared;prepared=null;
        if(source==null){setBusy(false,null);showError("Подготовка прервана. Создай копию ещё раз.");return;}
        setBusy(true,"Сохранение копии…");final Context context=getApplicationContext();
        new Thread(new Runnable(){public void run(){try{
            source.verify();OutputStream output=context.getContentResolver().openOutputStream(uri,"wt");if(output==null)throw new IOException("Destination unavailable");try{source.copy(output);}finally{output.close();}
            main.post(new Runnable(){public void run(){setBusy(false,"Копия сохранена в выбранный файл.");}});
        }catch(OutOfMemoryError failed){postError(MEMORY_ERROR);}catch(Exception failed){postError("Не удалось сохранить копию. Проверь выбранное место и повтори.");}finally{source.discard();}}},"TouchPalSave155").start();
    }
    private void readText(final Uri uri){
        setBusy(true,"Чтение TXT…");final String language=importLanguage;
        new Thread(new Runnable(){public void run(){try{
            InputStream input=getContentResolver().openInputStream(uri);final List<String> words;try{words=TextDictionary155.parse(input);}finally{if(input!=null)input.close();}
            main.post(new Runnable(){public void run(){
                setBusy(false,null);if(!alive())return;
                try{
                    TextDictionary155.Session preview=new TextDictionary155.Session(words,language);
                    if(preview.words.isEmpty()){status.setText("Все слова из TXT уже есть в словаре.");return;}
                    new AlertDialog.Builder(BackupActivity.this).setTitle("Добавить слова из TXT")
                        .setMessage("Новых слов: "+preview.words.size()+". Уже есть: "+preview.already+".\nСлова добавятся в текущий словарь. Существующие записи сохраняются.")
                        .setNegativeButton("Отмена",null).setPositiveButton("Добавить",new DialogInterface.OnClickListener(){public void onClick(DialogInterface dialog,int which){startTextImport(words,language);}}).show();
                }catch(Exception unavailable){showError("Словарь или язык изменился. Открой TouchPal и выбери TXT ещё раз.");}
            }});
        }catch(OutOfMemoryError failed){postError(MEMORY_ERROR);}catch(Exception failed){postError("Не удалось прочитать TXT. Нужен список слов в UTF-8, по одному слову в строке.");}}},"TouchPalReadText155").start();
    }
    private void startTextImport(final List<String> words,final String language){
        if(busy||!alive())return;if(!TEXT_RUNNING.compareAndSet(false,true)){showError("Добавление слов уже выполняется.");return;}
        setBusy(true,"Подготовка добавления слов…");final byte[] before;
        try{before=BackupController.captureWestern(this);}
        catch(Exception failed){TEXT_RUNNING.set(false);setBusy(false,null);showError(BackupController.captureError(failed));return;}
        catch(OutOfMemoryError failed){TEXT_RUNNING.set(false);setBusy(false,null);showError(MEMORY_ERROR);return;}
        final Context context=getApplicationContext();
        new Thread(new Runnable(){public void run(){try{
            TextRecovery155.prepare(context,before);
            main.post(new Runnable(){public void run(){
                if(!alive()){TEXT_RUNNING.set(false);return;}
                try{stepTextImport(new TextDictionary155.Session(words,language));}
                catch(Exception failed){textFailed();}catch(OutOfMemoryError failed){textFailed();}
            }});
        }catch(OutOfMemoryError failed){TEXT_RUNNING.set(false);postError(MEMORY_ERROR);}
        catch(Exception failed){TEXT_RUNNING.set(false);postError("Не удалось подготовить добавление слов. Текущий словарь не изменён.");}}},"TouchPalPrepareText155").start();
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
    private void discardPrepared(){if(prepared!=null){prepared.discard();prepared=null;}}
    private void stageWestern(byte[] incoming){stageWestern(incoming,false);}

    private void readWestern(final Uri uri) {
        setBusy(true, "Чтение и проверка словаря…");
        final Context context = getApplicationContext();
        new Thread(new Runnable() {
            @Override public void run() {
                try {
                    InputStream input = context.getContentResolver().openInputStream(uri);
                    final byte[] bytes;
                    try { bytes = WesternImport137.read(input); }
                    finally { if (input != null) input.close(); }
                    main.post(new Runnable() {
                        @Override public void run() {
                            setBusy(false, null);
                            if (!alive()) return;
                            new AlertDialog.Builder(BackupActivity.this)
                                    .setTitle("Восстановить western.usr")
                                    .setMessage("Текущий пользовательский словарь будет заменён выбранным файлом. Настройки и другие словари сохранятся. TouchPal перезапустится.")
                                    .setNegativeButton("Отмена", null)
                                    .setPositiveButton("Заменить словарь", new DialogInterface.OnClickListener() {
                                        @Override public void onClick(DialogInterface dialog, int which) { stageWestern(bytes); }
                                    }).show();
                        }
                    });
                } catch (OutOfMemoryError failure) { postError(MEMORY_ERROR); }
                catch (IOException failure) { postError("Файл не удалось прочитать или это повреждённый/несовместимый western.usr. Текущий словарь сохранён."); }
                catch (Exception failure) { postError("Файл словаря недоступен. Текущий словарь сохранён."); }
            }
        }, "TouchPalWesternRead").start();
    }

    private void stageWestern(final byte[] incoming, final boolean textRecovery) {
        if (busy || !alive()) return;
        setBusy(true, "Подготовка восстановления словаря…");
        final byte[] previous;
        try { previous = BackupController.captureWestern(this); }
        catch (OutOfMemoryError failure) { setBusy(false, null); showError(MEMORY_ERROR); return; }
        catch (Exception failure) { setBusy(false, null); showError(BackupController.captureError(failure)); return; }
        final Context context = getApplicationContext();
        new Thread(new Runnable() {
            @Override public void run() {
                try {
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

    private void readBackup(final Uri uri) {
        setBusy(true, "Проверка копии…");
        final Context context = getApplicationContext();
        new Thread(new Runnable() {
            @Override public void run() {
                try {
                    InputStream input = context.getContentResolver().openInputStream(uri);
                    if (input == null) throw new IOException("Backup is unavailable");
                    final BackupArchive.Archive archive;
                    try { archive = BackupArchive.read(input); }
                    finally { input.close(); }
                    BackupController.validate(archive);
                    main.post(new Runnable() {
                        @Override public void run() {
                            setBusy(false, "Копия проверена.");
                            if (alive()) confirmRestore(archive);
                        }
                    });
                } catch (OutOfMemoryError failure) {
                    postError(MEMORY_ERROR);
                } catch (Exception failure) {
                    postError("Не удалось прочитать копию. Проверь выбранный ZIP-файл.");
                }
            }
        }, "TouchPalBackupRead").start();
    }

    private void confirmRestore(final BackupArchive.Archive archive) {
        if (!alive()) return;
        String date = readableDate(archive.metadata.get("createdUTC"));
        String message = "Текущие словари и настройки будут заменены данными из копии.\n\n"
                + (archive.entries.containsKey(ClipboardBackup138.KEY)?"Текстовый буфер, закреплённые сообщения и сокращения будут восстановлены из копии.\n\n":"В этой копии нет буфера: текущие сообщения и сокращения буфера сохранятся.\n\n")
                + (date.length() == 0 ? "" : "Копия: " + date + ".\n\n")
                + "После восстановления TouchPal перезапустится.";
        new AlertDialog.Builder(this)
                .setTitle("Восстановить копию?")
                .setMessage(message)
                .setNegativeButton("Отмена", null)
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
        final Context context = getApplicationContext();
        new Thread(new Runnable() {
            @Override public void run() {
                try {
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
    @Override protected void onDestroy(){destroyed=true;discardPrepared();super.onDestroy();}
}
