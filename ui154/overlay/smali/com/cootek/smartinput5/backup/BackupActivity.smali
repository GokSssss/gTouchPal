.class public final Lcom/cootek/smartinput5/backup/BackupActivity;
.super Landroid/app/Activity;
.source "BackupActivity.java"


# static fields
.field private static final CREATE_BACKUP:I = 0x2905

.field private static final CREATE_WESTERN:I = 0x34bd

.field private static final MEMORY_ERROR:Ljava/lang/String; = "\u041d\u0435 \u0445\u0432\u0430\u0442\u0430\u0435\u0442 \u043f\u0430\u043c\u044f\u0442\u0438 \u0434\u043b\u044f \u044d\u0442\u043e\u0439 \u043a\u043e\u043f\u0438\u0438. \u0417\u0430\u043a\u0440\u043e\u0439 \u0434\u0440\u0443\u0433\u0438\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0438."

.field private static final OPEN_BACKUP:I = 0x2906

.field private static final OPEN_WESTERN:I = 0x3585


# instance fields
.field private busy:Z

.field private createButton:Landroid/widget/Button;

.field private volatile destroyed:Z

.field private dictionaryButton:Landroid/widget/Button;

.field private importButton:Landroid/widget/Button;

.field private final main:Landroid/os/Handler;

.field private preparedExport:Ljava/io/File;

.field private preparedWestern:Lcom/cootek/smartinput5/backup/WesternExport135$Prepared;

.field private progress:Landroid/widget/ProgressBar;

.field private restoreButton:Landroid/widget/Button;

.field private restoreDictionaryButton:Landroid/widget/Button;

.field private status:Landroid/widget/TextView;

.field private textButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->main:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/cootek/smartinput5/backup/BackupActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->chooseDestination()V

    return-void
.end method

.method static synthetic access$100(Lcom/cootek/smartinput5/backup/BackupActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->chooseBackup()V

    return-void
.end method

.method static synthetic access$1000(Lcom/cootek/smartinput5/backup/BackupActivity;)Landroid/os/Handler;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->main:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->postError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/WesternExport135$Prepared;)Lcom/cootek/smartinput5/backup/WesternExport135$Prepared;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->preparedWestern:Lcom/cootek/smartinput5/backup/WesternExport135$Prepared;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/content/Intent;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->choose(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/cootek/smartinput5/backup/BackupActivity;ZLjava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/cootek/smartinput5/backup/BackupActivity;[B)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->stageWestern([B)V

    return-void
.end method

.method static synthetic access$1600(Lcom/cootek/smartinput5/backup/BackupActivity;)Landroid/widget/TextView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->confirmRestore(Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->stageRestore(Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/cootek/smartinput5/backup/BackupActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->chooseWesternDestination()V

    return-void
.end method

.method static synthetic access$300(Lcom/cootek/smartinput5/backup/BackupActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->chooseWesternSource()V

    return-void
.end method

.method static synthetic access$400(Lcom/cootek/smartinput5/backup/BackupActivity;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->busy:Z

    return p0
.end method

.method static synthetic access$500(Lcom/cootek/smartinput5/backup/BackupActivity;)Z
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/cootek/smartinput5/backup/BackupActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->importOldData()V

    return-void
.end method

.method static synthetic access$700(Lcom/cootek/smartinput5/backup/BackupActivity;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->destroyed:Z

    return p0
.end method

.method static synthetic access$802(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->preparedExport:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$900(Lcom/cootek/smartinput5/backup/BackupActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->openDestinationPicker()V

    return-void
.end method

.method private alive()Z
    .locals 1

    .line 205
    iget-boolean v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->destroyed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private button(Ljava/lang/String;Landroid/widget/LinearLayout;I)Landroid/widget/Button;
    .locals 3

    .line 161
    invoke-static {p0, p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage;->actionButton(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Button;

    move-result-object p1

    .line 162
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 163
    invoke-direct {p0, p3}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result p3

    iput p3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 164
    invoke-virtual {p2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    return-object p1
.end method

.method private canChooseFile()Z
    .locals 3

    .line 226
    iget-boolean v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->busy:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v0, v2, :cond_1

    .line 228
    const-string v0, "\u0412\u044b\u0431\u043e\u0440 \u0444\u0430\u0439\u043b\u0430 \u0440\u0435\u0437\u0435\u0440\u0432\u043d\u043e\u0439 \u043a\u043e\u043f\u0438\u0438 \u0434\u043e\u0441\u0442\u0443\u043f\u0435\u043d \u043d\u0430\u0447\u0438\u043d\u0430\u044f \u0441 Android 4.4."

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    .line 229
    return v1

    .line 231
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 226
    :cond_2
    :goto_0
    return v1
.end method

.method private caption(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;
    .locals 2

    .line 182
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 183
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41600000    # 14.0f

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    const/4 p2, 0x2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 185
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 186
    invoke-direct {p0, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {v0, p2, p3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 187
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, p3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 188
    const/4 p3, 0x5

    invoke-direct {p0, p3}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result p3

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 189
    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    return-object v0
.end method

.method private choose(Landroid/content/Intent;I)V
    .locals 2

    .line 445
    invoke-static {p1}, Lcom/cootek/smartinput5/backup/BackupLocations154;->preparePicker(Landroid/content/Intent;)V

    .line 446
    const/16 v0, 0x2905

    if-eq p2, v0, :cond_2

    const/16 v0, 0x34bd

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 447
    :cond_0
    const/16 v0, 0x3585

    if-ne p2, v0, :cond_1

    .line 448
    const-string v0, "\u0412\u044b\u0431\u0435\u0440\u0438 \u0444\u0430\u0439\u043b western.usr. \u0415\u0441\u043b\u0438 \u043f\u0430\u043f\u043a\u0430 \u043f\u0443\u0441\u0442\u0430, \u0432\u044b\u0431\u0435\u0440\u0438 \u0434\u0440\u0443\u0433\u043e\u0439 \u0444\u0430\u0439\u043b\u043e\u0432\u044b\u0439 \u043c\u0435\u043d\u0435\u0434\u0436\u0435\u0440."

    goto :goto_1

    .line 449
    :cond_1
    const-string v0, "\u0412\u044b\u0431\u0435\u0440\u0438 ZIP-\u0444\u0430\u0439\u043b \u0440\u0435\u0437\u0435\u0440\u0432\u043d\u043e\u0439 \u043a\u043e\u043f\u0438\u0438. \u0415\u0441\u043b\u0438 \u043f\u0430\u043f\u043a\u0430 \u043f\u0443\u0441\u0442\u0430, \u0432\u044b\u0431\u0435\u0440\u0438 \u0434\u0440\u0443\u0433\u043e\u0439 \u0444\u0430\u0439\u043b\u043e\u0432\u044b\u0439 \u043c\u0435\u043d\u0435\u0434\u0436\u0435\u0440."

    goto :goto_1

    .line 447
    :cond_2
    :goto_0
    const-string v0, "\u0412\u044b\u0431\u0435\u0440\u0438, \u043a\u0443\u0434\u0430 \u0441\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c \u043a\u043e\u043f\u0438\u044e."

    .line 446
    :goto_1
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 451
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :goto_2
    goto :goto_3

    .line 456
    :catch_0
    move-exception p1

    .line 457
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->discardPreparedExport()V

    .line 458
    invoke-direct {p0, v1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 459
    const-string p1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043e\u0442\u043a\u0440\u044b\u0442\u044c \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u044b\u0439 \u0432\u044b\u0431\u043e\u0440 \u0444\u0430\u0439\u043b\u043e\u0432."

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    goto :goto_3

    .line 452
    :catch_1
    move-exception p1

    .line 453
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->discardPreparedExport()V

    .line 454
    invoke-direct {p0, v1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 455
    const-string p1, "\u041d\u0430 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0435 \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u0435\u043d \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u044b\u0439 \u0432\u044b\u0431\u043e\u0440 \u0444\u0430\u0439\u043b\u043e\u0432."

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    goto :goto_2

    .line 461
    :goto_3
    return-void
.end method

.method private chooseBackup()V
    .locals 1

    .line 366
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->canChooseFile()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 367
    :cond_0
    const/16 v0, 0x2906

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->openImportPicker(I)V

    .line 368
    return-void
.end method

.method private chooseDestination()V
    .locals 5

    .line 235
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->canChooseFile()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    const/4 v0, 0x1

    const-string v1, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430 \u043a\u043e\u043f\u0438\u0438\u2026"

    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 241
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/cootek/smartinput5/backup/BackupController;->capture(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    .line 242
    invoke-static {p0}, Lcom/cootek/smartinput5/backup/BackupController;->metadata(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    nop

    .line 252
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 253
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/cootek/smartinput5/backup/BackupActivity$7;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/cootek/smartinput5/backup/BackupActivity$7;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    const-string v0, "TouchPalBackupPrepare"

    invoke-direct {v3, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 272
    return-void

    .line 247
    :catch_0
    move-exception v2

    .line 248
    invoke-direct {p0, v1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 249
    invoke-static {v2}, Lcom/cootek/smartinput5/backup/BackupController;->captureError(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    .line 250
    return-void

    .line 243
    :catch_1
    move-exception v2

    .line 244
    invoke-direct {p0, v1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 245
    const-string v0, "\u041d\u0435 \u0445\u0432\u0430\u0442\u0430\u0435\u0442 \u043f\u0430\u043c\u044f\u0442\u0438 \u0434\u043b\u044f \u044d\u0442\u043e\u0439 \u043a\u043e\u043f\u0438\u0438. \u0417\u0430\u043a\u0440\u043e\u0439 \u0434\u0440\u0443\u0433\u0438\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0438."

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method private chooseWesternDestination()V
    .locals 4

    .line 275
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->canChooseFile()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 276
    :cond_0
    const/4 v0, 0x1

    const-string v1, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430 western.usr\u2026"

    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 279
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/cootek/smartinput5/backup/BackupController;->captureWestern(Landroid/content/Context;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    nop

    .line 285
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 286
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/cootek/smartinput5/backup/BackupActivity$8;

    invoke-direct {v3, p0, v1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity$8;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/content/Context;[B)V

    const-string v0, "TouchPalWesternPrepare"

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 306
    return-void

    .line 282
    :catch_0
    move-exception v2

    .line 283
    invoke-direct {p0, v1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    invoke-static {v2}, Lcom/cootek/smartinput5/backup/BackupController;->captureError(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 280
    :catch_1
    move-exception v2

    .line 281
    invoke-direct {p0, v1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    const-string v0, "\u041d\u0435 \u0445\u0432\u0430\u0442\u0430\u0435\u0442 \u043f\u0430\u043c\u044f\u0442\u0438 \u0434\u043b\u044f \u044d\u0442\u043e\u0439 \u043a\u043e\u043f\u0438\u0438. \u0417\u0430\u043a\u0440\u043e\u0439 \u0434\u0440\u0443\u0433\u0438\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0438."

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    return-void
.end method

.method private chooseWesternSource()V
    .locals 1

    .line 371
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->canChooseFile()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 372
    :cond_0
    const/16 v0, 0x3585

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->openImportPicker(I)V

    .line 373
    return-void
.end method

.method private confirmRestore(Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V
    .locals 4

    .line 544
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 545
    :cond_0
    iget-object v0, p1, Lcom/cootek/smartinput5/backup/BackupArchive$Archive;->metadata:Ljava/util/Map;

    const-string v1, "createdUTC"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->readableDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0422\u0435\u043a\u0443\u0449\u0438\u0435 \u0441\u043b\u043e\u0432\u0430\u0440\u0438 \u0438 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u0431\u0443\u0434\u0443\u0442 \u0437\u0430\u043c\u0435\u043d\u0435\u043d\u044b \u0434\u0430\u043d\u043d\u044b\u043c\u0438 \u0438\u0437 \u043a\u043e\u043f\u0438\u0438.\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 547
    iget-object v2, p1, Lcom/cootek/smartinput5/backup/BackupArchive$Archive;->entries:Ljava/util/Map;

    const-string v3, "settings/clipboard.bin"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "\u0422\u0435\u043a\u0441\u0442\u043e\u0432\u044b\u0439 \u0431\u0443\u0444\u0435\u0440, \u0437\u0430\u043a\u0440\u0435\u043f\u043b\u0451\u043d\u043d\u044b\u0435 \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f \u0438 \u0441\u043e\u043a\u0440\u0430\u0449\u0435\u043d\u0438\u044f \u0431\u0443\u0434\u0443\u0442 \u0432\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u044b \u0438\u0437 \u043a\u043e\u043f\u0438\u0438.\n\n"

    goto :goto_0

    :cond_1
    const-string v2, "\u0412 \u044d\u0442\u043e\u0439 \u043a\u043e\u043f\u0438\u0438 \u043d\u0435\u0442 \u0431\u0443\u0444\u0435\u0440\u0430: \u0442\u0435\u043a\u0443\u0449\u0438\u0435 \u0441\u043e\u043e\u0431\u0449\u0435\u043d\u0438\u044f \u0438 \u0441\u043e\u043a\u0440\u0430\u0449\u0435\u043d\u0438\u044f \u0431\u0443\u0444\u0435\u0440\u0430 \u0441\u043e\u0445\u0440\u0430\u043d\u044f\u0442\u0441\u044f.\n\n"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 548
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    const-string v0, ""

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041a\u043e\u043f\u0438\u044f: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u041f\u043e\u0441\u043b\u0435 \u0432\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u044f TouchPal \u043f\u0435\u0440\u0435\u0437\u0430\u043f\u0443\u0441\u0442\u0438\u0442\u0441\u044f."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 550
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 551
    const-string v2, "\u0412\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c \u043a\u043e\u043f\u0438\u044e?"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 552
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 553
    const-string v1, "\u041e\u0442\u043c\u0435\u043d\u0430"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/cootek/smartinput5/backup/BackupActivity$15;

    invoke-direct {v1, p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity$15;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V

    .line 554
    const-string p1, "\u0412\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c \u0438 \u043f\u0435\u0440\u0435\u0437\u0430\u043f\u0443\u0441\u0442\u0438\u0442\u044c"

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 558
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 559
    return-void
.end method

.method private discardPreparedExport()V
    .locals 2

    .line 649
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->preparedExport:Ljava/io/File;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupExport;->discard(Ljava/io/File;)V

    .line 650
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->preparedExport:Ljava/io/File;

    .line 651
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->preparedWestern:Lcom/cootek/smartinput5/backup/WesternExport135$Prepared;

    invoke-static {v1}, Lcom/cootek/smartinput5/backup/WesternExport135;->discard(Lcom/cootek/smartinput5/backup/WesternExport135$Prepared;)V

    .line 652
    iput-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->preparedWestern:Lcom/cootek/smartinput5/backup/WesternExport135$Prepared;

    .line 653
    return-void
.end method

.method private dp(I)I
    .locals 1

    .line 202
    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private exportTo(Landroid/net/Uri;)V
    .locals 4

    .line 479
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->preparedExport:Ljava/io/File;

    .line 480
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->preparedExport:Ljava/io/File;

    .line 481
    if-nez v0, :cond_0

    .line 482
    const/4 p1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 483
    const-string p1, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430 \u043a\u043e\u043f\u0438\u0438 \u0431\u044b\u043b\u0430 \u043f\u0440\u0435\u0440\u0432\u0430\u043d\u0430. \u0421\u043e\u0437\u0434\u0430\u0439 \u043a\u043e\u043f\u0438\u044e \u0435\u0449\u0451 \u0440\u0430\u0437."

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    .line 484
    return-void

    .line 486
    :cond_0
    const/4 v1, 0x1

    const-string v2, "\u0421\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u0438\u0435 \u043a\u043e\u043f\u0438\u0438\u2026"

    invoke-direct {p0, v1, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 487
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 488
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/cootek/smartinput5/backup/BackupActivity$13;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/cootek/smartinput5/backup/BackupActivity$13;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/io/File;Landroid/content/Context;Landroid/net/Uri;)V

    const-string p1, "TouchPalBackupExport"

    invoke-direct {v2, v3, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 513
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 514
    return-void
.end method

.method private exportWesternTo(Landroid/net/Uri;)V
    .locals 4

    .line 309
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->preparedWestern:Lcom/cootek/smartinput5/backup/WesternExport135$Prepared;

    .line 310
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->preparedWestern:Lcom/cootek/smartinput5/backup/WesternExport135$Prepared;

    .line 311
    if-nez v0, :cond_0

    .line 312
    const/4 p1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    const-string p1, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430 \u043f\u0440\u0435\u0440\u0432\u0430\u043d\u0430. \u041d\u0430\u0436\u043c\u0438 \u00ab\u0421\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c western.usr\u00bb \u0435\u0449\u0451 \u0440\u0430\u0437."

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 314
    :cond_0
    const/4 v1, 0x1

    const-string v2, "\u0421\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u0438\u0435 western.usr\u2026"

    invoke-direct {p0, v1, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 316
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/cootek/smartinput5/backup/BackupActivity$9;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/cootek/smartinput5/backup/BackupActivity$9;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/WesternExport135$Prepared;Landroid/content/Context;Landroid/net/Uri;)V

    const-string p1, "TouchPalWesternExport"

    invoke-direct {v2, v3, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 331
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 332
    return-void
.end method

.method private importOldData()V
    .locals 3

    .line 335
    iget-boolean v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->busy:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    const/4 v0, 0x1

    const-string v1, "\u041a\u043e\u043f\u0438\u0440\u043e\u0432\u0430\u043d\u0438\u0435 \u0438 \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u0441\u0442\u0430\u0440\u044b\u0445 \u0434\u0430\u043d\u043d\u044b\u0445\u2026"

    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 338
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/cootek/smartinput5/backup/BackupActivity$10;

    invoke-direct {v2, p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity$10;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/content/Context;)V

    const-string v0, "TouchPalStorageImport"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 353
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 354
    return-void

    .line 335
    :cond_1
    :goto_0
    return-void
.end method

.method private openDestinationPicker()V
    .locals 4

    .line 357
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    const-string v1, "application/zip"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd_HHmmss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TouchPal_backup_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    const/16 v1, 0x2905

    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->choose(Landroid/content/Intent;I)V

    .line 363
    return-void
.end method

.method private openImportPicker(I)V
    .locals 2

    .line 377
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 383
    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupLocations154;->preparePicker(Landroid/content/Intent;)V

    .line 384
    const/16 v1, 0x3585

    if-ne p1, v1, :cond_0

    .line 385
    const-string v1, "\u0412\u044b\u0431\u0440\u0430\u0442\u044c western.usr"

    goto :goto_0

    :cond_0
    const-string v1, "\u0412\u044b\u0431\u0440\u0430\u0442\u044c ZIP-\u043a\u043e\u043f\u0438\u044e"

    .line 384
    :goto_0
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->choose(Landroid/content/Intent;I)V

    .line 386
    return-void
.end method

.method private path(Landroid/widget/LinearLayout;Ljava/lang/String;I)V
    .locals 0

    .line 194
    invoke-direct {p0, p1, p2, p3}, Lcom/cootek/smartinput5/backup/BackupActivity;->caption(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object p1

    .line 195
    const p2, 0x7fffffff

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 196
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 197
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 198
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 199
    return-void
.end method

.method private postError(Ljava/lang/String;)V
    .locals 2

    .line 611
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->main:Landroid/os/Handler;

    new-instance v1, Lcom/cootek/smartinput5/backup/BackupActivity$17;

    invoke-direct {v1, p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity$17;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 617
    return-void
.end method

.method private readBackup(Landroid/net/Uri;)V
    .locals 3

    .line 517
    const/4 v0, 0x1

    const-string v1, "\u041f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u043a\u043e\u043f\u0438\u0438\u2026"

    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 518
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 519
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/cootek/smartinput5/backup/BackupActivity$14;

    invoke-direct {v2, p0, v0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity$14;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/content/Context;Landroid/net/Uri;)V

    const-string p1, "TouchPalBackupRead"

    invoke-direct {v1, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 540
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 541
    return-void
.end method

.method private readWestern(Landroid/net/Uri;)V
    .locals 3

    .line 389
    const/4 v0, 0x1

    const-string v1, "\u0427\u0442\u0435\u043d\u0438\u0435 \u0438 \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u0441\u043b\u043e\u0432\u0430\u0440\u044f\u2026"

    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 391
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/cootek/smartinput5/backup/BackupActivity$11;

    invoke-direct {v2, p0, v0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity$11;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/content/Context;Landroid/net/Uri;)V

    const-string p1, "TouchPalWesternRead"

    invoke-direct {v1, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 415
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 416
    return-void
.end method

.method private static readableDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 562
    const-string v0, ""

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x50

    if-le v1, v2, :cond_0

    goto :goto_1

    .line 564
    :cond_0
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 565
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 566
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 567
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 568
    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    .line 569
    :catch_0
    move-exception p0

    return-object v0

    .line 562
    :cond_2
    :goto_1
    return-object v0
.end method

.method private section(Landroid/widget/LinearLayout;Ljava/lang/String;Z)V
    .locals 5

    .line 169
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 170
    if-eqz p3, :cond_0

    const v1, -0xa4a4a5

    goto :goto_0

    :cond_0
    const v1, -0x424243

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 171
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 172
    const/16 v3, 0x12

    invoke-direct {p0, v3}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 173
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 175
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41800000    # 16.0f

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 176
    const/4 p2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 177
    if-eqz p3, :cond_1

    const p2, -0xa64922

    goto :goto_1

    :cond_1
    const p2, -0xdb8661

    :goto_1
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, v4, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    return-void
.end method

.method private setBusy(ZLjava/lang/String;)V
    .locals 2

    .line 213
    iput-boolean p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->busy:Z

    .line 214
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->createButton:Landroid/widget/Button;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 216
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->restoreButton:Landroid/widget/Button;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 217
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->dictionaryButton:Landroid/widget/Button;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 218
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->restoreDictionaryButton:Landroid/widget/Button;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 219
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->textButton:Landroid/widget/Button;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 220
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->importButton:Landroid/widget/Button;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 221
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->progress:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 222
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :cond_2
    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .locals 2

    .line 620
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u0420\u0435\u0437\u0435\u0440\u0432\u043d\u0430\u044f \u043a\u043e\u043f\u0438\u044f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 623
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u0417\u0430\u043a\u0440\u044b\u0442\u044c"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 624
    return-void
.end method

.method private showStoredStatus()V
    .locals 3

    .line 208
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupController;->status(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v0, "\u0412\u044b\u0431\u0435\u0440\u0438 \u0434\u0435\u0439\u0441\u0442\u0432\u0438\u0435."

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    return-void
.end method

.method private stageRestore(Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V
    .locals 3

    .line 573
    iget-boolean v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->busy:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 574
    :cond_0
    const/4 v0, 0x1

    const-string v1, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430 \u0432\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u044f\u2026"

    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 575
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 576
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/cootek/smartinput5/backup/BackupActivity$16;

    invoke-direct {v2, p0, v0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity$16;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/content/Context;Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V

    const-string p1, "TouchPalBackupRestore"

    invoke-direct {v1, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 607
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 608
    return-void

    .line 573
    :cond_1
    :goto_0
    return-void
.end method

.method private stageWestern([B)V
    .locals 4

    .line 419
    iget-boolean v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->busy:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 420
    :cond_0
    const/4 v0, 0x1

    const-string v1, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430 \u0432\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u044f \u0441\u043b\u043e\u0432\u0430\u0440\u044f\u2026"

    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 422
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/cootek/smartinput5/backup/BackupController;->captureWestern(Landroid/content/Context;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    nop

    .line 425
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 426
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/cootek/smartinput5/backup/BackupActivity$12;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity$12;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/content/Context;[B[B)V

    const-string p1, "TouchPalWesternRestore"

    invoke-direct {v2, v3, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 441
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 442
    return-void

    .line 424
    :catch_0
    move-exception p1

    invoke-direct {p0, v1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    invoke-static {p1}, Lcom/cootek/smartinput5/backup/BackupController;->captureError(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 423
    :catch_1
    move-exception p1

    invoke-direct {p0, v1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    const-string p1, "\u041d\u0435 \u0445\u0432\u0430\u0442\u0430\u0435\u0442 \u043f\u0430\u043c\u044f\u0442\u0438 \u0434\u043b\u044f \u044d\u0442\u043e\u0439 \u043a\u043e\u043f\u0438\u0438. \u0417\u0430\u043a\u0440\u043e\u0439 \u0434\u0440\u0443\u0433\u0438\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0438."

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 419
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 464
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 465
    const/16 v0, 0x3585

    const/16 v1, 0x34bd

    const/16 v2, 0x2905

    if-eq p1, v2, :cond_0

    const/16 v3, 0x2906

    if-eq p1, v3, :cond_0

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    return-void

    .line 466
    :cond_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_5

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 472
    :cond_1
    if-ne p1, v2, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->exportTo(Landroid/net/Uri;)V

    goto :goto_0

    .line 473
    :cond_2
    if-ne p1, v1, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->exportWesternTo(Landroid/net/Uri;)V

    goto :goto_0

    .line 474
    :cond_3
    if-ne p1, v0, :cond_4

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->readWestern(Landroid/net/Uri;)V

    goto :goto_0

    .line 475
    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->readBackup(Landroid/net/Uri;)V

    .line 476
    :goto_0
    return-void

    .line 467
    :cond_5
    :goto_1
    if-eq p1, v2, :cond_6

    if-ne p1, v1, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->discardPreparedExport()V

    .line 468
    :cond_7
    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 469
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->showStoredStatus()V

    .line 470
    :cond_8
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 627
    iget-boolean v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->busy:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 628
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 639
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 640
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 63
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 64
    const-string v1, "option_dark_theme"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 65
    if-eqz v0, :cond_0

    const v1, 0x103006b

    goto :goto_0

    :cond_0
    const v1, 0x103006e

    :goto_0
    invoke-virtual {p0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setTheme(I)V

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const-string p1, "\u0420\u0435\u0437\u0435\u0440\u0432\u043d\u0430\u044f \u043a\u043e\u043f\u0438\u044f \u0438 \u0432\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u0435"

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 69
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0xddddde

    if-eqz v0, :cond_1

    const v4, -0xddddde

    goto :goto_1

    :cond_1
    const v4, -0x50506

    :goto_1
    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    .line 71
    const/4 v1, 0x2

    const v4, -0x111112

    const/4 v5, -0x2

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eqz p1, :cond_3

    .line 72
    invoke-virtual {p1, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 73
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v9, 0x41900000    # 18.0f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 75
    if-eqz v0, :cond_2

    const v9, -0x111112

    goto :goto_2

    :cond_2
    const v9, -0xddddde

    :goto_2
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 77
    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 78
    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v8, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 79
    invoke-virtual {p1, v7}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 82
    :cond_3
    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 85
    const/16 v8, 0x14

    invoke-direct {p0, v8}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v8

    .line 86
    invoke-virtual {v2, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 87
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    if-eqz v0, :cond_4

    const v3, -0x111112

    .line 90
    :cond_4
    const-string v4, "\u041f\u0430\u043f\u043a\u0430 \u043a\u043e\u043f\u0438\u0439 \u0438 TXT \u043f\u043e \u0443\u043c\u043e\u043b\u0447\u0430\u043d\u0438\u044e:"

    invoke-direct {p0, v2, v4, v3}, Lcom/cootek/smartinput5/backup/BackupActivity;->caption(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 91
    invoke-static {}, Lcom/cootek/smartinput5/backup/BackupLocations154;->folder()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4, v3}, Lcom/cootek/smartinput5/backup/BackupActivity;->path(Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 92
    const-string v4, "\u041f\u0440\u0438 \u0432\u044b\u0431\u043e\u0440\u0435 \u0444\u0430\u0439\u043b\u0430 \u043c\u043e\u0436\u043d\u043e \u043e\u0442\u043a\u0440\u044b\u0442\u044c \u0434\u0440\u0443\u0433\u0443\u044e \u043f\u0430\u043f\u043a\u0443."

    invoke-direct {p0, v2, v4, v3}, Lcom/cootek/smartinput5/backup/BackupActivity;->caption(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 94
    const-string v4, "\u041f\u043e\u043b\u043d\u0430\u044f \u043a\u043e\u043f\u0438\u044f"

    invoke-direct {p0, v2, v4, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->section(Landroid/widget/LinearLayout;Ljava/lang/String;Z)V

    .line 95
    const-string v4, "\u0421\u043b\u043e\u0432\u0430\u0440\u0438, \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u0438 \u0431\u0443\u0444\u0435\u0440 \u2014 ZIP.\n\u0411\u0435\u0437 \u0438\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0439 \u0431\u0443\u0444\u0435\u0440\u0430."

    invoke-direct {p0, v2, v4, v3}, Lcom/cootek/smartinput5/backup/BackupActivity;->caption(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 96
    const-string v4, "\u0421\u043e\u0437\u0434\u0430\u0442\u044c \u043f\u043e\u043b\u043d\u0443\u044e \u043a\u043e\u043f\u0438\u044e"

    const/16 v8, 0xa

    invoke-direct {p0, v4, v2, v8}, Lcom/cootek/smartinput5/backup/BackupActivity;->button(Ljava/lang/String;Landroid/widget/LinearLayout;I)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->createButton:Landroid/widget/Button;

    .line 97
    iget-object v4, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->createButton:Landroid/widget/Button;

    new-instance v9, Lcom/cootek/smartinput5/backup/BackupActivity$1;

    invoke-direct {v9, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$1;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;)V

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const-string v4, "\u0412\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c \u043f\u043e\u043b\u043d\u0443\u044e \u043a\u043e\u043f\u0438\u044e"

    const/16 v9, 0x8

    invoke-direct {p0, v4, v2, v9}, Lcom/cootek/smartinput5/backup/BackupActivity;->button(Ljava/lang/String;Landroid/widget/LinearLayout;I)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->restoreButton:Landroid/widget/Button;

    .line 101
    iget-object v4, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->restoreButton:Landroid/widget/Button;

    new-instance v10, Lcom/cootek/smartinput5/backup/BackupActivity$2;

    invoke-direct {v10, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$2;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;)V

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const-string v4, "\u041f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u0435\u043b\u044c\u0441\u043a\u0438\u0439 \u0441\u043b\u043e\u0432\u0430\u0440\u044c"

    invoke-direct {p0, v2, v4, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->section(Landroid/widget/LinearLayout;Ljava/lang/String;Z)V

    .line 106
    const-string v4, "\u0421\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c \u0438\u043b\u0438 \u0437\u0430\u043c\u0435\u043d\u0438\u0442\u044c \u0444\u0430\u0439\u043b western.usr.\n\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u043f\u0440\u0438 \u0432\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u0438 \u0441\u043e\u0445\u0440\u0430\u043d\u044f\u044e\u0442\u0441\u044f."

    invoke-direct {p0, v2, v4, v3}, Lcom/cootek/smartinput5/backup/BackupActivity;->caption(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 107
    const-string v4, "\u0421\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c western.usr"

    invoke-direct {p0, v4, v2, v8}, Lcom/cootek/smartinput5/backup/BackupActivity;->button(Ljava/lang/String;Landroid/widget/LinearLayout;I)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->dictionaryButton:Landroid/widget/Button;

    .line 108
    iget-object v4, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->dictionaryButton:Landroid/widget/Button;

    new-instance v10, Lcom/cootek/smartinput5/backup/BackupActivity$3;

    invoke-direct {v10, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$3;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;)V

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const-string v4, "\u0412\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c western.usr"

    invoke-direct {p0, v4, v2, v9}, Lcom/cootek/smartinput5/backup/BackupActivity;->button(Ljava/lang/String;Landroid/widget/LinearLayout;I)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->restoreDictionaryButton:Landroid/widget/Button;

    .line 112
    iget-object v4, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->restoreDictionaryButton:Landroid/widget/Button;

    new-instance v10, Lcom/cootek/smartinput5/backup/BackupActivity$4;

    invoke-direct {v10, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$4;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;)V

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const-string v4, "\u0421\u043b\u043e\u0432\u0430 \u0432 \u0442\u0435\u043a\u0441\u0442\u043e\u0432\u043e\u043c \u0444\u0430\u0439\u043b\u0435"

    invoke-direct {p0, v2, v4, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->section(Landroid/widget/LinearLayout;Ljava/lang/String;Z)V

    .line 117
    const-string v4, "\u0412\u044b\u0433\u0440\u0443\u0437\u0438\u0442\u044c \u0441\u043b\u043e\u0432\u0430 \u0432 TXT \u0438\u043b\u0438 \u0434\u043e\u0431\u0430\u0432\u0438\u0442\u044c \u0438\u0437 TXT.\n\u041f\u0440\u0438 \u0438\u043c\u043f\u043e\u0440\u0442\u0435 \u043f\u0440\u0435\u0436\u043d\u0438\u0435 \u0441\u043b\u043e\u0432\u0430 \u0441\u043e\u0445\u0440\u0430\u043d\u044f\u044e\u0442\u0441\u044f."

    invoke-direct {p0, v2, v4, v3}, Lcom/cootek/smartinput5/backup/BackupActivity;->caption(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 118
    const-string v4, "\u0418\u043c\u043f\u043e\u0440\u0442-\u044d\u043a\u0441\u043f\u043e\u0440\u0442 \u0441\u043b\u043e\u0432\u0430\u0440\u044f"

    invoke-direct {p0, v4, v2, v8}, Lcom/cootek/smartinput5/backup/BackupActivity;->button(Ljava/lang/String;Landroid/widget/LinearLayout;I)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->textButton:Landroid/widget/Button;

    .line 119
    iget-object v4, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->textButton:Landroid/widget/Button;

    new-instance v10, Lcom/cootek/smartinput5/backup/BackupActivity$5;

    invoke-direct {v10, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$5;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;)V

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const-string v4, "\u0424\u0430\u0439\u043b TXT \u0437\u0430\u0432\u0438\u0441\u0438\u0442 \u043e\u0442 \u0432\u044b\u0431\u0440\u0430\u043d\u043d\u043e\u0433\u043e \u044f\u0437\u044b\u043a\u0430.\n\u041f\u043e\u043b\u043d\u044b\u0439 \u0441\u043f\u0438\u0441\u043e\u043a: western_dict_full.txt."

    invoke-direct {p0, v2, v4, v3}, Lcom/cootek/smartinput5/backup/BackupActivity;->caption(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 129
    const-string v4, "\u041f\u0435\u0440\u0435\u043d\u043e\u0441 \u0441\u0442\u0430\u0440\u044b\u0445 \u0434\u0430\u043d\u043d\u044b\u0445"

    invoke-direct {p0, v2, v4, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->section(Landroid/widget/LinearLayout;Ljava/lang/String;Z)V

    .line 130
    const-string v4, "\u0414\u043e\u0431\u0430\u0432\u043b\u044f\u0435\u0442 \u043d\u0435\u0434\u043e\u0441\u0442\u0430\u044e\u0449\u0438\u0435 \u0444\u0430\u0439\u043b\u044b \u0438\u0437 \u0441\u0442\u0430\u0440\u043e\u0439 \u0432\u0435\u0440\u0441\u0438\u0438.\n\u0422\u0435\u043a\u0443\u0449\u0438\u0435 \u0444\u0430\u0439\u043b\u044b \u0438 \u0441\u0442\u0430\u0440\u044b\u0435 \u043e\u0440\u0438\u0433\u0438\u043d\u0430\u043b\u044b \u0441\u043e\u0445\u0440\u0430\u043d\u044f\u044e\u0442\u0441\u044f."

    invoke-direct {p0, v2, v4, v3}, Lcom/cootek/smartinput5/backup/BackupActivity;->caption(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 131
    const-string v4, "\u041f\u0435\u0440\u0435\u043d\u0435\u0441\u0442\u0438 \u0434\u0430\u043d\u043d\u044b\u0435 \u0438\u0437 TouchPal2015"

    invoke-direct {p0, v4, v2, v8}, Lcom/cootek/smartinput5/backup/BackupActivity;->button(Ljava/lang/String;Landroid/widget/LinearLayout;I)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->importButton:Landroid/widget/Button;

    .line 132
    iget-object v4, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->importButton:Landroid/widget/Button;

    new-instance v8, Lcom/cootek/smartinput5/backup/BackupActivity$6;

    invoke-direct {v8, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$6;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;)V

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const-string v4, "\u0421\u0442\u0430\u0440\u044b\u0435 \u043f\u0430\u043f\u043a\u0438 \u043d\u0430 SD:"

    invoke-direct {p0, v2, v4, v3}, Lcom/cootek/smartinput5/backup/BackupActivity;->caption(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 136
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 137
    if-eqz v4, :cond_5

    .line 138
    new-instance v8, Ljava/io/File;

    const-string v10, "TouchPal2015"

    invoke-direct {v8, v4, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v2, v8, v3}, Lcom/cootek/smartinput5/backup/BackupActivity;->path(Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 139
    new-instance v8, Ljava/io/File;

    const-string v10, "TouchPalv5"

    invoke-direct {v8, v4, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4, v3}, Lcom/cootek/smartinput5/backup/BackupActivity;->path(Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 141
    :cond_5
    const-string v4, "\u0422\u0435\u043a\u0443\u0449\u0430\u044f \u0440\u0430\u0431\u043e\u0447\u0430\u044f \u043f\u0430\u043f\u043a\u0430:"

    invoke-direct {p0, v2, v4, v3}, Lcom/cootek/smartinput5/backup/BackupActivity;->caption(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 142
    invoke-static {p0}, Lcom/cootek/smartinput5/storage/StorageRoot135;->workDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4, v3}, Lcom/cootek/smartinput5/backup/BackupActivity;->path(Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    .line 143
    new-instance v3, Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    const v8, 0x1010078

    invoke-direct {v3, p0, v4, v8}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->progress:Landroid/widget/ProgressBar;

    .line 144
    iget-object v3, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 145
    iget-object v3, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 146
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v9}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v4

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 147
    const/16 v4, 0x10

    invoke-direct {p0, v4}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 148
    iget-object v4, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    .line 150
    iget-object v3, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 151
    iget-object v3, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    const v0, -0x444445

    goto :goto_3

    :cond_6
    const v0, -0x99999a

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 153
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 154
    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 155
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setContentView(Landroid/view/View;)V

    .line 157
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->showStoredStatus()V

    .line 158
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 643
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->destroyed:Z

    .line 644
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->discardPreparedExport()V

    .line 645
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 646
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 631
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 632
    iget-boolean p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->busy:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->finish()V

    .line 633
    :cond_0
    const/4 p1, 0x1

    return p1

    .line 635
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
