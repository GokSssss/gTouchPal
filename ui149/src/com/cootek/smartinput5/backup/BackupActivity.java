package com.cootek.smartinput5.backup;

import android.app.ActionBar;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.preference.PreferenceManager;
import android.view.MenuItem;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import java.io.IOException;
import com.cootek.smartinput5.storage.StorageRoot135;
import com.cootek.smartinput5.storage.StorageImport135;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/** Local user-selected ZIP export and verified, explicitly confirmed restoration. */
public final class BackupActivity extends Activity {
    private static final int CREATE_BACKUP = 10501;
    private static final int OPEN_BACKUP = 10502;
    private static final int CREATE_WESTERN = 13501;
    private static final int OPEN_WESTERN = 13701;
    private static final String MEMORY_ERROR = "Не хватает памяти для этой копии. Закрой другие приложения и повтори.";
    private final Handler main = new Handler(Looper.getMainLooper());
    private Button createButton;
    private Button restoreButton;
    private Button dictionaryButton;
    private Button restoreDictionaryButton;
    private Button importButton;
    private TextView status;
    private ProgressBar progress;
    private boolean busy;
    private volatile boolean destroyed;
    private File preparedExport;
    private WesternExport135.Prepared preparedWestern;

    @Override public void onCreate(Bundle state) {
        boolean dark = PreferenceManager.getDefaultSharedPreferences(this)
                .getBoolean("option_dark_theme", false);
        setTheme(dark ? 0x0103006b : 0x0103006e);
        super.onCreate(state);
        setTitle("Резервная копия");
        getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_STATE_ALWAYS_HIDDEN);
        getWindow().setBackgroundDrawable(new ColorDrawable(dark ? 0xff222222 : 0xfffafafa));
        ActionBar bar = getActionBar();
        if (bar != null) bar.setDisplayHomeAsUpEnabled(true);

        ScrollView scroll = new ScrollView(this);
        LinearLayout content = new LinearLayout(this);
        content.setOrientation(LinearLayout.VERTICAL);
        int padding = dp(20);
        content.setPadding(padding, padding, padding, padding);
        scroll.addView(content, new ScrollView.LayoutParams(
                ScrollView.LayoutParams.MATCH_PARENT, ScrollView.LayoutParams.WRAP_CONTENT));
        int textColor = dark ? 0xffeeeeee : 0xff222222;
        TextView description = new TextView(this);
        description.setText("Пользовательские словари, обучение, удалённые слова, настройки, текстовый буфер, закреплённые сообщения и сокращения в одном ZIP.\n\nФайлы изображений буфера в копию не входят.");
        description.setTextSize(16);
        description.setTextColor(textColor);
        description.setLineSpacing(dp(3), 1f);
        content.addView(description, new LinearLayout.LayoutParams(-1, -2));

        dictionaryButton = button("Сохранить western.usr", content, 20);
        dictionaryButton.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View ignored) { chooseWesternDestination(); }
        });
        restoreDictionaryButton = button("Восстановить western.usr", content, 10);
        restoreDictionaryButton.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View ignored) { chooseWesternSource(); }
        });
        TextView dictionaryHint = new TextView(this);
        dictionaryHint.setText("Сохранить или заменить пользовательский словарь отдельным файлом western.usr. При восстановлении настройки сохраняются.");
        dictionaryHint.setTextColor(textColor);
        dictionaryHint.setTextSize(14);
        content.addView(dictionaryHint, new LinearLayout.LayoutParams(-1, -2));
        createButton = button("Создать резервную копию", content, 20);
        createButton.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View ignored) { chooseDestination(); }
        });
        restoreButton = button("Восстановить из копии", content, 10);
        restoreButton.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View ignored) { chooseBackup(); }
        });
        importButton = button("Перенести данные из TouchPal2015", content, 20);
        importButton.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View ignored) { importOldData(); }
        });
        TextView location = new TextView(this);
        location.setText("Рабочая папка: Android/data/" + getPackageName() + "/files/TouchPalG/\n"
                + "Готовая папка используется сразу. Перенос добавляет недостающие файлы; файлы в TouchPalG имеют приоритет. Старые оригиналы сохраняются.");
        location.setTextSize(14);
        location.setTextColor(textColor);
        content.addView(location, new LinearLayout.LayoutParams(-1, -2));
        progress = new ProgressBar(this, null, android.R.attr.progressBarStyleHorizontal);
        progress.setIndeterminate(true);
        progress.setVisibility(View.GONE);
        LinearLayout.LayoutParams progressLayout = new LinearLayout.LayoutParams(-1, dp(8));
        progressLayout.topMargin = dp(16);
        content.addView(progress, progressLayout);
        status = new TextView(this);
        status.setTextSize(14);
        status.setTextColor(dark ? 0xffbbbbbb : 0xff666666);
        status.setLineSpacing(dp(2), 1f);
        LinearLayout.LayoutParams statusLayout = new LinearLayout.LayoutParams(-1, -2);
        statusLayout.topMargin = dp(18);
        content.addView(status, statusLayout);
        setContentView(scroll);
        showStoredStatus();
    }

    private Button button(String title, LinearLayout parent, int top) {
        Button button = com.cootek.smartinput5.settings.SizeSettingsPage.actionButton(this, title);
        LinearLayout.LayoutParams layout = new LinearLayout.LayoutParams(-1, -2);
        layout.topMargin = dp(top);
        parent.addView(button, layout);
        return button;
    }

    private int dp(int value) {
        return (int) (value * getResources().getDisplayMetrics().density + .5f);
    }

    private boolean alive() { return !destroyed && !isFinishing(); }

    private void showStoredStatus() {
        String message = BackupController.status(getApplicationContext());
        status.setText(message == null || message.length() == 0 ? "Выбери действие." : message);
    }

    private void setBusy(boolean value, String message) {
        busy = value;
        if (!alive()) return;
        createButton.setEnabled(!value);
        restoreButton.setEnabled(!value);
        dictionaryButton.setEnabled(!value);
        restoreDictionaryButton.setEnabled(!value);
        importButton.setEnabled(!value);
        progress.setVisibility(value ? View.VISIBLE : View.GONE);
        if (message != null) status.setText(message);
    }

    private boolean canChooseFile() {
        if (busy || !alive()) return false;
        if (Build.VERSION.SDK_INT < 19) {
            showError("Выбор файла резервной копии доступен начиная с Android 4.4.");
            return false;
        }
        return true;
    }

    private void chooseDestination() {
        if (!canChooseFile()) return;
        setBusy(true, "Подготовка копии…");
        final Map<String, byte[]> snapshot;
        final Map<String, String> metadata;
        try {
            // Capture while settings/native are still foreground, before the file picker.
            snapshot = BackupController.capture(this);
            metadata = BackupController.metadata(this);
        } catch (OutOfMemoryError failure) {
            setBusy(false, null);
            showError(MEMORY_ERROR);
            return;
        } catch (Exception failure) {
            setBusy(false, null);
            showError(BackupController.captureError(failure));
            return;
        }
        final Context context = getApplicationContext();
        new Thread(new Runnable() {
            @Override public void run() {
                try {
                    final File prepared = BackupExport.prepare(context.getCacheDir(), snapshot, metadata);
                    if (destroyed) { BackupExport.discard(prepared); return; }
                    main.post(new Runnable() {
                        @Override public void run() {
                            if (!alive()) { BackupExport.discard(prepared); return; }
                            preparedExport = prepared;
                            openDestinationPicker();
                        }
                    });
                } catch (OutOfMemoryError failure) {
                    postError(MEMORY_ERROR);
                } catch (Exception failure) {
                    postError("Не удалось подготовить ZIP-копию. Проверь свободное место и повтори.");
                }
            }
        }, "TouchPalBackupPrepare").start();
    }

    private void chooseWesternDestination() {
        if (!canChooseFile()) return;
        setBusy(true, "Подготовка western.usr…");
        final byte[] snapshot;
        try {
            snapshot = BackupController.captureWestern(this);
        } catch (OutOfMemoryError failure) {
            setBusy(false, null); showError(MEMORY_ERROR); return;
        } catch (Exception failure) {
            setBusy(false, null); showError(BackupController.captureError(failure)); return;
        }
        final Context context = getApplicationContext();
        new Thread(new Runnable() {
            @Override public void run() {
                try {
                    final WesternExport135.Prepared prepared = WesternExport135.prepare(context.getCacheDir(), snapshot);
                    if (destroyed) { WesternExport135.discard(prepared); return; }
                    main.post(new Runnable() {
                        @Override public void run() {
                            if (!alive()) { WesternExport135.discard(prepared); return; }
                            preparedWestern = prepared;
                            Intent intent = new Intent("android.intent.action.CREATE_DOCUMENT");
                            intent.addCategory(Intent.CATEGORY_OPENABLE);
                            intent.setType("application/octet-stream");
                            intent.putExtra(Intent.EXTRA_TITLE, "western.usr");
                            choose(intent, CREATE_WESTERN);
                        }
                    });
                } catch (OutOfMemoryError failure) { postError(MEMORY_ERROR); }
                catch (Exception failure) { postError("Не удалось подготовить western.usr. Проверь свободное место."); }
            }
        }, "TouchPalWesternPrepare").start();
    }

    private void exportWesternTo(final Uri uri) {
        final WesternExport135.Prepared prepared = preparedWestern;
        preparedWestern = null;
        if (prepared == null) {
            setBusy(false, null); showError("Подготовка прервана. Нажми «Сохранить western.usr» ещё раз."); return;
        }
        setBusy(true, "Сохранение western.usr…");
        final Context context = getApplicationContext();
        new Thread(new Runnable() {
            @Override public void run() {
                try {
                    WesternExport135.verify(prepared);
                    OutputStream output = context.getContentResolver().openOutputStream(uri, "wt");
                    if (output == null) throw new IOException("Destination unavailable");
                    try { WesternExport135.copy(prepared, output); }
                    finally { output.close(); }
                    main.post(new Runnable() {
                        @Override public void run() { setBusy(false, "western.usr сохранён в выбранный файл."); }
                    });
                } catch (OutOfMemoryError failure) { postError(MEMORY_ERROR); }
                catch (Exception failure) { postError("Не удалось сохранить western.usr. Проверь выбранное место и повтори."); }
                finally { WesternExport135.discard(prepared); }
            }
        }, "TouchPalWesternExport").start();
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

    private void openDestinationPicker() {
        Intent intent = new Intent("android.intent.action.CREATE_DOCUMENT");
        intent.addCategory(Intent.CATEGORY_OPENABLE);
        intent.setType("application/zip");
        String stamp = new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(new Date());
        intent.putExtra(Intent.EXTRA_TITLE, "TouchPal_backup_" + stamp + ".zip");
        choose(intent, CREATE_BACKUP);
    }

    private void chooseBackup() {
        if (!canChooseFile()) return;
        openImportPicker(OPEN_BACKUP);
    }

    private void chooseWesternSource() {
        if (!canChooseFile()) return;
        openImportPicker(OPEN_WESTERN);
    }

    /** One-time import needs a readable URI, not a persistent Documents provider grant. */
    private void openImportPicker(int request) {
        Intent content = new Intent(Intent.ACTION_GET_CONTENT);
        content.addCategory(Intent.CATEGORY_OPENABLE);
        // Unknown .usr/ZIP MIME labels must not hide an otherwise readable file.
        content.setType("*/*");
        content.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
        // Avoid resuming the Documents app's stale/empty last directory. Older pickers ignore this.
        content.putExtra("android.provider.extra.INITIAL_URI", Uri.parse(
                "content://com.android.externalstorage.documents/document/primary%3ADownload"));
        choose(Intent.createChooser(content, request == OPEN_WESTERN
                ? "Выбрать western.usr" : "Выбрать ZIP-копию"), request);
    }

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

    private void stageWestern(final byte[] incoming) {
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

    private void choose(Intent intent, int request) {
        setBusy(true, (request == CREATE_BACKUP || request == CREATE_WESTERN)
                ? "Выбери, куда сохранить копию." : request == OPEN_WESTERN
                    ? "Выбери файл western.usr. Если папка пуста, выбери другой файловый менеджер."
                    : "Выбери ZIP-файл резервной копии. Если папка пуста, выбери другой файловый менеджер.");
        try {
            startActivityForResult(intent, request);
        } catch (ActivityNotFoundException failure) {
            discardPreparedExport();
            setBusy(false, null);
            showError("На устройстве недоступен системный выбор файлов.");
        } catch (SecurityException failure) {
            discardPreparedExport();
            setBusy(false, null);
            showError("Не удалось открыть системный выбор файлов.");
        }
    }

    @Override protected void onActivityResult(int request, int result, Intent data) {
        super.onActivityResult(request, result, data);
        if (request != CREATE_BACKUP && request != OPEN_BACKUP && request != CREATE_WESTERN && request != OPEN_WESTERN) return;
        if (result != RESULT_OK || data == null || data.getData() == null) {
            if (request == CREATE_BACKUP || request == CREATE_WESTERN) discardPreparedExport();
            setBusy(false, null);
            if (alive()) showStoredStatus();
            return;
        }
        if (request == CREATE_BACKUP) exportTo(data.getData());
        else if (request == CREATE_WESTERN) exportWesternTo(data.getData());
        else if (request == OPEN_WESTERN) readWestern(data.getData());
        else readBackup(data.getData());
    }

    private void exportTo(final Uri uri) {
        final File prepared = preparedExport;
        preparedExport = null;
        if (prepared == null) {
            setBusy(false, null);
            showError("Подготовка копии была прервана. Создай копию ещё раз.");
            return;
        }
        setBusy(true, "Сохранение копии…");
        final Context context = getApplicationContext();
        new Thread(new Runnable() {
            @Override public void run() {
                try {
                    // Recreated Activities/processes cannot export missing or partial snapshots.
                    BackupExport.verify(prepared);
                    OutputStream output = context.getContentResolver().openOutputStream(uri, "wt");
                    if (output == null) throw new IOException("Destination is unavailable");
                    try { BackupExport.copy(prepared, output); }
                    finally { output.close(); }
                    BackupExport.discard(prepared);
                    main.post(new Runnable() {
                        @Override public void run() {
                            setBusy(false, "Копия сохранена в выбранный файл.");
                        }
                    });
                } catch (OutOfMemoryError failure) {
                    BackupExport.discard(prepared);
                    postError(MEMORY_ERROR);
                } catch (Exception failure) {
                    BackupExport.discard(prepared);
                    postError("Не удалось сохранить копию. Проверь выбранное место и попробуй ещё раз.");
                } finally {
                    BackupExport.discard(prepared);
                }
            }
        }, "TouchPalBackupExport").start();
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

    @Override public void onBackPressed() {
        if (!busy) super.onBackPressed();
    }

    @Override public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == android.R.id.home) {
            if (!busy) finish();
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override protected void onDestroy() {
        destroyed = true;
        discardPreparedExport();
        super.onDestroy();
    }

    private void discardPreparedExport() {
        BackupExport.discard(preparedExport);
        preparedExport = null;
        WesternExport135.discard(preparedWestern);
        preparedWestern = null;
    }
}
