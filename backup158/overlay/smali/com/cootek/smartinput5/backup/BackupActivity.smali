.class public final Lcom/cootek/smartinput5/backup/BackupActivity;
.super Landroid/app/Activity;
.source "BackupActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput5/backup/BackupActivity$Segment;,
        Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;
    }
.end annotation


# static fields
.field private static final MEMORY_ERROR:Ljava/lang/String; = "\u041d\u0435 \u0445\u0432\u0430\u0442\u0430\u0435\u0442 \u043f\u0430\u043c\u044f\u0442\u0438 \u0434\u043b\u044f \u044d\u0442\u043e\u0439 \u043a\u043e\u043f\u0438\u0438. \u0417\u0430\u043a\u0440\u043e\u0439 \u0434\u0440\u0443\u0433\u0438\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0438."

.field private static final OPEN_BACKUP:I = 0x2906

.field private static final OPEN_LANGUAGE:I = 0x3db9

.field private static final OPEN_TEXT:I = 0x3c8e

.field private static final OPEN_WESTERN:I = 0x3585

.field private static final TEXT_RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final TXT:I = 0x3

.field private static final USR:I = 0x2

.field private static final WRITE_PERMISSION:I = 0x3c8f

.field private static final ZIP:I = 0x1


# instance fields
.field private final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private activeSegment:Lcom/cootek/smartinput5/backup/BackupActivity$Segment;

.field private busy:Z

.field private volatile destroyed:Z

.field private importLanguage:Ljava/lang/String;

.field private incoming:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

.field private languageIncoming:Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;

.field private latestCopy:Landroid/widget/TextView;

.field private final main:Landroid/os/Handler;

.field private notice:Landroid/widget/PopupWindow;

.field private noticePanel:Landroid/widget/LinearLayout;

.field private noticeSerial:I

.field private permissionFile:Ljava/io/File;

.field private permissionKind:I

.field private progress:Landroid/widget/ProgressBar;

.field private refreshSerial:I

.field private status:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/cootek/smartinput5/backup/BackupActivity;->TEXT_RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->main:Landroid/os/Handler;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->actions:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/cootek/smartinput5/backup/BackupActivity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->openLanguagePicker()V

    return-void
.end method

.method static synthetic access$100(Lcom/cootek/smartinput5/backup/BackupActivity;)Landroid/widget/TextView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->latestCopy:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/cootek/smartinput5/backup/BackupActivity;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->busy:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;Z)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->showNotice(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/cootek/smartinput5/backup/BackupActivity;)Landroid/os/Handler;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->main:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/cootek/smartinput5/backup/BackupActivity;ZLjava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/io/File;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->restoreSaved(Ljava/io/File;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->postError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->downloadedMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1702(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/BackupActivity$Segment;)Lcom/cootek/smartinput5/backup/BackupActivity$Segment;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->activeSegment:Lcom/cootek/smartinput5/backup/BackupActivity$Segment;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/cootek/smartinput5/backup/BackupActivity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->dismissNotice()V

    return-void
.end method

.method static synthetic access$1900(Lcom/cootek/smartinput5/backup/BackupActivity;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->noticeSerial:I

    return p0
.end method

.method static synthetic access$200(Lcom/cootek/smartinput5/backup/BackupActivity;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->openCopiesFolder(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/cootek/smartinput5/backup/BackupActivity;II)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->captureAndCreate(II)V

    return-void
.end method

.method static synthetic access$2100(Lcom/cootek/smartinput5/backup/BackupActivity;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->destroyed:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/cootek/smartinput5/backup/BackupActivity;Z)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->refreshCopies(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->shareSaved(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->savedMessage(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2502(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;)Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->languageIncoming:Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/cootek/smartinput5/backup/BackupActivity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->installLanguage()V

    return-void
.end method

.method static synthetic access$2700(Lcom/cootek/smartinput5/backup/BackupActivity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->discardLanguage()V

    return-void
.end method

.method static synthetic access$2802(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;)Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->incoming:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->confirmRestore(Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V

    return-void
.end method

.method static synthetic access$300(Lcom/cootek/smartinput5/backup/BackupActivity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->importOldData()V

    return-void
.end method

.method static synthetic access$3000(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->startTextImport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/cootek/smartinput5/backup/BackupActivity;[B)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->stageWestern([B)V

    return-void
.end method

.method static synthetic access$3200(Lcom/cootek/smartinput5/backup/BackupActivity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->discardIncoming()V

    return-void
.end method

.method static synthetic access$3300(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 22
    sget-object v0, Lcom/cootek/smartinput5/backup/BackupActivity;->TEXT_RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/TextDictionary155$Session;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->stepTextImport(Lcom/cootek/smartinput5/backup/TextDictionary155$Session;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/cootek/smartinput5/backup/BackupActivity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->textFailed()V

    return-void
.end method

.method static synthetic access$3700(Lcom/cootek/smartinput5/backup/BackupActivity;[BZ)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->stageWestern([BZ)V

    return-void
.end method

.method static synthetic access$3800(Lcom/cootek/smartinput5/backup/BackupActivity;)Landroid/widget/TextView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->stageRestore(Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V

    return-void
.end method

.method static synthetic access$400(Lcom/cootek/smartinput5/backup/BackupActivity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->offerTextRecovery()V

    return-void
.end method

.method static synthetic access$500(Lcom/cootek/smartinput5/backup/BackupActivity;II)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->create(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/cootek/smartinput5/backup/BackupActivity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->chooseText()V

    return-void
.end method

.method static synthetic access$700(Lcom/cootek/smartinput5/backup/BackupActivity;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->openImportPicker(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/cootek/smartinput5/backup/BackupActivity;)Z
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/cootek/smartinput5/backup/BackupActivity;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->refreshSerial:I

    return p0
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

.method private button(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;
    .locals 2

    .line 194
    invoke-direct {p0, p2, p3}, Lcom/cootek/smartinput5/backup/BackupActivity;->compactButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object p2

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v0

    iput v0, p3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method private canChooseFile()Z
    .locals 3

    .line 232
    iget-boolean v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->busy:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v0, v2, :cond_1

    const-string v0, "\u0412\u044b\u0431\u043e\u0440 \u0444\u0430\u0439\u043b\u0430 \u0434\u043e\u0441\u0442\u0443\u043f\u0435\u043d \u043d\u0430\u0447\u0438\u043d\u0430\u044f \u0441 Android4.4."

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private caption(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;
    .locals 2

    .line 201
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41600000    # 14.0f

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p2, 0x2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object p3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-direct {p0, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {v0, p2, p3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, p3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 p3, 0x3

    invoke-direct {p0, p3}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result p3

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private captureAndCreate(II)V
    .locals 11

    .line 259
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/cootek/smartinput5/backup/BackupController;->capture(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Lcom/cootek/smartinput5/backup/BackupController;->metadata(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/cootek/smartinput5/backup/BackupController;->captureWestern(Landroid/content/Context;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v0

    move-object v7, v2

    move-object v8, v7

    .line 261
    :goto_0
    nop

    .line 262
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 263
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cootek/smartinput5/backup/BackupActivity$19;

    move-object v3, v1

    move-object v4, p0

    move v5, p1

    move v10, p2

    invoke-direct/range {v3 .. v10}, Lcom/cootek/smartinput5/backup/BackupActivity$19;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;ILandroid/content/Context;Ljava/util/Map;Ljava/util/Map;[BI)V

    const-string p1, "TouchPalCopy157"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 275
    return-void

    .line 261
    :catch_0
    move-exception p1

    invoke-direct {p0, v1, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    invoke-static {p1}, Lcom/cootek/smartinput5/backup/BackupController;->captureError(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 260
    :catch_1
    move-exception p1

    invoke-direct {p0, v1, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    const-string p1, "\u041d\u0435 \u0445\u0432\u0430\u0442\u0430\u0435\u0442 \u043f\u0430\u043c\u044f\u0442\u0438 \u0434\u043b\u044f \u044d\u0442\u043e\u0439 \u043a\u043e\u043f\u0438\u0438. \u0417\u0430\u043a\u0440\u043e\u0439 \u0434\u0440\u0443\u0433\u0438\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0438."

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    return-void
.end method

.method private choose(Landroid/content/Intent;I)V
    .locals 2

    .line 287
    const/4 v0, 0x1

    const-string v1, "\u0412\u044b\u0431\u0435\u0440\u0438 \u0444\u0430\u0439\u043b \u0438\u043b\u0438 \u043f\u0430\u043f\u043a\u0443."

    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 288
    :try_start_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->dismissNotice()V

    invoke-virtual {p0, p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    const-string p1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043e\u0442\u043a\u0440\u044b\u0442\u044c \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u044b\u0439 \u0432\u044b\u0431\u043e\u0440 \u0444\u0430\u0439\u043b\u043e\u0432."

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    .line 290
    :goto_0
    return-void
.end method

.method private chooseText()V
    .locals 1

    .line 296
    iget-boolean v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->busy:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/cootek/smartinput5/backup/TextRecovery155;->pending(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->offerTextRecovery()V

    return-void

    :cond_1
    invoke-static {}, Lcom/cootek/smartinput5/backup/TextDictionary155;->language()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->importLanguage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    nop

    .line 299
    const/16 v0, 0x3c8e

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->openImportPicker(I)V

    .line 300
    return-void

    .line 298
    :catch_0
    move-exception v0

    const-string v0, "\u0421\u043b\u043e\u0432\u0430\u0440\u044c \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u0435\u043d. \u041e\u0442\u043a\u0440\u043e\u0439 \u043a\u043b\u0430\u0432\u0438\u0430\u0442\u0443\u0440\u0443 TouchPal \u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0438 \u0434\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u0438\u0435 \u0441\u043b\u043e\u0432."

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 296
    :cond_2
    :goto_0
    return-void
.end method

.method private compactButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;
    .locals 4

    .line 189
    invoke-static {p0, p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage;->actionButton(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Button;

    move-result-object p1

    .line 190
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextSize(F)V

    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setMinHeight(I)V

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setMinimumHeight(I)V

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v0

    invoke-direct {p0, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v2

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/widget/Button;->setPadding(IIII)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setMaxLines(I)V

    .line 191
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->actions:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private confirmRestore(Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V
    .locals 4

    .line 450
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 451
    :cond_0
    iget-object v0, p1, Lcom/cootek/smartinput5/backup/BackupArchive$Archive;->metadata:Ljava/util/Map;

    const-string v1, "createdUTC"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->readableDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0422\u0435\u043a\u0443\u0449\u0438\u0435 \u0441\u043b\u043e\u0432\u0430\u0440\u0438 \u0438 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u0431\u0443\u0434\u0443\u0442 \u0437\u0430\u043c\u0435\u043d\u0435\u043d\u044b \u0434\u0430\u043d\u043d\u044b\u043c\u0438 \u0438\u0437 \u043a\u043e\u043f\u0438\u0438.\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 453
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

    .line 454
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

    .line 456
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 457
    const-string v2, "\u0412\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c \u043a\u043e\u043f\u0438\u044e?"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\u0412\u044b\u0431\u0440\u0430\u043d\u043d\u044b\u0439 ZIP \u0431\u0443\u0434\u0435\u0442 \u0441\u043e\u0445\u0440\u0430\u043d\u0451\u043d \u0432 Backup."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 458
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/cootek/smartinput5/backup/BackupActivity$31;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$31;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;)V

    .line 459
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/cootek/smartinput5/backup/BackupActivity$30;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$30;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;)V

    .line 460
    const-string v2, "\u041e\u0442\u043c\u0435\u043d\u0430"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/cootek/smartinput5/backup/BackupActivity$29;

    invoke-direct {v1, p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity$29;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V

    .line 461
    const-string p1, "\u0412\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c \u0438 \u043f\u0435\u0440\u0435\u0437\u0430\u043f\u0443\u0441\u0442\u0438\u0442\u044c"

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 465
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 466
    return-void
.end method

.method private create(II)V
    .locals 3

    .line 251
    iget-boolean v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->busy:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    const/4 v1, 0x3

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->writablePermission(I)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 253
    :cond_1
    const-string v1, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430 \u043a\u043e\u043f\u0438\u0438\u2026"

    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->main:Landroid/os/Handler;

    new-instance v1, Lcom/cootek/smartinput5/backup/BackupActivity$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity$18;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;II)V

    const-wide/16 p1, 0x28

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 256
    return-void

    .line 251
    :cond_2
    :goto_0
    return-void
.end method

.method private createButtons(Landroid/widget/LinearLayout;ILjava/lang/String;)V
    .locals 9

    .line 77
    new-instance p3, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;

    invoke-direct {p3, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x2c

    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    const-string p1, "\u0421\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c"

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->segment(Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object p1

    const-string v1, "\u0412\u044b\u0431\u0440\u0430\u0442\u044c \u0444\u0430\u0439\u043b \u0438\u0437 \u0434\u0440\u0443\u0433\u043e\u0439 \u043f\u0430\u043f\u043a\u0438"

    const/4 v3, 0x1

    invoke-virtual {p3, v1, v3}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->segment(Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v1

    const-string v4, "\u0421\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c \u0438 \u043e\u0442\u043f\u0440\u0430\u0432\u0438\u0442\u044c"

    const/4 v5, 0x2

    invoke-virtual {p3, v4, v5}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->segment(Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v4

    const-string v6, "\u0421\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c \u0432 \u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0438"

    const/4 v7, 0x3

    invoke-virtual {p3, v6, v7}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->segment(Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v6

    .line 79
    new-instance v8, Lcom/cootek/smartinput5/backup/BackupActivity$8;

    invoke-direct {v8, p0, p2}, Lcom/cootek/smartinput5/backup/BackupActivity$8;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;I)V

    invoke-virtual {p1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    new-instance v8, Lcom/cootek/smartinput5/backup/BackupActivity$9;

    invoke-direct {v8, p0, p2}, Lcom/cootek/smartinput5/backup/BackupActivity$9;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;I)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    new-instance v8, Lcom/cootek/smartinput5/backup/BackupActivity$10;

    invoke-direct {v8, p0, p2}, Lcom/cootek/smartinput5/backup/BackupActivity$10;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;I)V

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    new-instance v8, Lcom/cootek/smartinput5/backup/BackupActivity$11;

    invoke-direct {v8, p0, p2}, Lcom/cootek/smartinput5/backup/BackupActivity$11;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;I)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p3, p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    new-array p2, v7, [Landroid/widget/Button;

    aput-object v1, p2, v0

    aput-object v4, p2, v3

    aput-object v6, p2, v5

    :goto_0
    if-ge v0, v7, :cond_0

    aget-object v3, p2, v0

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x34

    invoke-direct {p0, v8}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v8

    invoke-direct {v5, v8, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v3, v5}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    iget-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->actions:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->actions:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->actions:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->actions:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method private discardIncoming()V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->incoming:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->incoming:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->discard()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->incoming:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    :cond_0
    return-void
.end method

.method private discardLanguage()V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->languageIncoming:Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->languageIncoming:Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->discard()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->languageIncoming:Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;

    :cond_0
    return-void
.end method

.method private dismissNotice()V
    .locals 1

    .line 215
    iget v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->noticeSerial:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->noticeSerial:I

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->notice:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->notice:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->notice:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private downloadSaved(Ljava/io/File;I)V
    .locals 3

    .line 121
    iget-boolean v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->busy:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_2

    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->permissionFile:Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->writablePermission(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->permissionFile:Ljava/io/File;

    .line 123
    :cond_2
    const/4 v0, 0x1

    const-string v1, "\u0421\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u0438\u0435 \u0432 \u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0438\u2026"

    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 125
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/cootek/smartinput5/backup/BackupActivity$14;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity$14;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/content/Context;Ljava/io/File;I)V

    const-string p1, "TouchPalDownload157"

    invoke-direct {v1, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 129
    return-void

    .line 121
    :cond_3
    :goto_0
    return-void
.end method

.method private static downloadedMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 231
    const-string v0, "Download"

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0421\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u043e \u0432 \u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0438\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\n\n\u041f\u0430\u043f\u043a\u0430:\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-nez v0, :cond_0

    const-string v0, "Downloads"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private dp(I)I
    .locals 1

    .line 204
    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private importOldData()V
    .locals 3

    .line 427
    iget-boolean v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->busy:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 428
    :cond_0
    const/4 v0, 0x1

    const-string v1, "\u041a\u043e\u043f\u0438\u0440\u043e\u0432\u0430\u043d\u0438\u0435 \u0438 \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u0441\u0442\u0430\u0440\u044b\u0445 \u0434\u0430\u043d\u043d\u044b\u0445\u2026"

    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 429
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 430
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/cootek/smartinput5/backup/BackupActivity$28;

    invoke-direct {v2, p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity$28;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/content/Context;)V

    const-string v0, "TouchPalStorageImport"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 445
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 446
    return-void

    .line 427
    :cond_1
    :goto_0
    return-void
.end method

.method private installLanguage()V
    .locals 4

    .line 322
    iget-boolean v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->busy:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->languageIncoming:Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->languageIncoming:Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->languageIncoming:Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;

    const/4 v1, 0x1

    const-string v2, "\u0421\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u0438\u0435 \u0444\u0430\u0439\u043b\u0430 \u044f\u0437\u044b\u043a\u0430\u2026"

    invoke-direct {p0, v1, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 323
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/cootek/smartinput5/backup/BackupActivity$21;

    invoke-direct {v3, p0, v1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity$21;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/content/Context;Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;)V

    const-string v0, "TouchPalLanguageSave158"

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 324
    return-void

    .line 322
    :cond_1
    :goto_0
    return-void
.end method

.method private offerTextRecovery()V
    .locals 3

    .line 382
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->busy:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/cootek/smartinput5/backup/BackupActivity;->TEXT_RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 384
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/cootek/smartinput5/backup/TextRecovery155;->pending(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 385
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u041f\u0440\u0435\u0434\u044b\u0434\u0443\u0449\u0438\u0439 \u0438\u043c\u043f\u043e\u0440\u0442 TXT"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0414\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u0438\u0435 \u0441\u043b\u043e\u0432 \u043c\u043e\u0433\u043b\u043e \u0431\u044b\u0442\u044c \u043f\u0440\u0435\u0440\u0432\u0430\u043d\u043e. \u041c\u043e\u0436\u043d\u043e \u043e\u0441\u0442\u0430\u0432\u0438\u0442\u044c \u0442\u0435\u043a\u0443\u0449\u0438\u0439 \u0441\u043b\u043e\u0432\u0430\u0440\u044c \u0438\u043b\u0438 \u0432\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c \u0435\u0433\u043e \u0441\u043e\u0441\u0442\u043e\u044f\u043d\u0438\u0435 \u0434\u043e \u0438\u043c\u043f\u043e\u0440\u0442\u0430."

    .line 386
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 387
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u041e\u0441\u0442\u0430\u0432\u0438\u0442\u044c \u0442\u0435\u043a\u0443\u0449\u0438\u0439"

    new-instance v2, Lcom/cootek/smartinput5/backup/BackupActivity$26;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$26;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;)V

    .line 388
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0412\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c \u0434\u043e \u0438\u043c\u043f\u043e\u0440\u0442\u0430"

    new-instance v2, Lcom/cootek/smartinput5/backup/BackupActivity$25;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$25;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;)V

    .line 389
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u0440\u043e\u0432\u0435\u0440\u0438\u0442\u044c \u043a\u043e\u043f\u0438\u044e \u043f\u0435\u0440\u0435\u0434 \u0438\u043c\u043f\u043e\u0440\u0442\u043e\u043c. \u0420\u0430\u0431\u043e\u0447\u0438\u0439 \u0441\u043b\u043e\u0432\u0430\u0440\u044c \u043d\u0435 \u0437\u0430\u043c\u0435\u043d\u0451\u043d."

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    .line 391
    :goto_0
    return-void

    .line 382
    :cond_2
    :goto_1
    return-void
.end method

.method private openCopiesFolder(I)V
    .locals 2

    .line 99
    iget-boolean v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->busy:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const-string v1, "\u0427\u0442\u0435\u043d\u0438\u0435 \u043f\u0430\u043f\u043a\u0438 \u043a\u043e\u043f\u0438\u0439\u2026"

    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 100
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cootek/smartinput5/backup/BackupActivity$13;

    invoke-direct {v1, p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity$13;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;I)V

    const-string p1, "TouchPalCopiesList158"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 111
    return-void

    .line 99
    :cond_1
    :goto_0
    return-void
.end method

.method private openImportPicker(I)V
    .locals 2

    .line 292
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->canChooseFile()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupLocations155;->preparePicker(Landroid/content/Intent;)V

    .line 293
    const/16 v1, 0x3585

    if-ne p1, v1, :cond_1

    const-string v1, "\u0412\u044b\u0431\u0440\u0430\u0442\u044c western.usr"

    goto :goto_0

    :cond_1
    const/16 v1, 0x3c8e

    if-ne p1, v1, :cond_2

    const-string v1, "\u0412\u044b\u0431\u0440\u0430\u0442\u044c TXT \u0441\u043e \u0441\u043b\u043e\u0432\u0430\u043c\u0438"

    goto :goto_0

    :cond_2
    const-string v1, "\u0412\u044b\u0431\u0440\u0430\u0442\u044c ZIP-\u043a\u043e\u043f\u0438\u044e"

    :goto_0
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->choose(Landroid/content/Intent;I)V

    .line 294
    return-void
.end method

.method private openLanguagePicker()V
    .locals 2

    .line 308
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->canChooseFile()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->discardLanguage()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupLocations155;->preparePicker(Landroid/content/Intent;)V

    const-string v1, "\u0412\u044b\u0431\u0440\u0430\u0442\u044c TPL \u0438\u043b\u0438 TPL.apk"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3db9

    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->choose(Landroid/content/Intent;I)V

    .line 309
    return-void
.end method

.method private path(Landroid/widget/LinearLayout;Ljava/lang/String;I)V
    .locals 0

    .line 203
    invoke-direct {p0, p1, p2, p3}, Lcom/cootek/smartinput5/backup/BackupActivity;->caption(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7fffffff

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    return-void
.end method

.method private postError(Ljava/lang/String;)V
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->main:Landroid/os/Handler;

    new-instance v1, Lcom/cootek/smartinput5/backup/BackupActivity$33;

    invoke-direct {v1, p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity$33;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 526
    return-void
.end method

.method private prepareNotice(Z)V
    .locals 10

    .line 207
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->noticePanel:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->noticePanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->noticePanel:Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v2

    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v3

    const/16 v4, 0xc

    invoke-direct {p0, v4}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v4}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v6

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 208
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v2, -0x111112

    if-eqz p1, :cond_0

    const v3, -0xcfcfd0

    goto :goto_0

    :cond_0
    const v3, -0x111112

    :goto_0
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-direct {p0, v4}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eqz p1, :cond_1

    const v4, -0x939394

    goto :goto_1

    :cond_1
    const v4, -0x666667

    :goto_1
    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v3, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->noticePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 210
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    const v5, -0xddddde

    if-eqz p1, :cond_2

    const v6, -0x111112

    goto :goto_2

    :cond_2
    const v6, -0xddddde

    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v4, v7, v8}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v4, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    iget-object v4, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v7, v3, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v7, "\u00d7"

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 v7, 0x41b00000    # 22.0f

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setTextSize(F)V

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const v2, -0xddddde

    :goto_3
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setTextColor(I)V

    const-string p1, "\u0417\u0430\u043a\u0440\u044b\u0442\u044c \u0443\u0432\u0435\u0434\u043e\u043c\u043b\u0435\u043d\u0438\u0435"

    invoke-virtual {v4, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/Button;->setPadding(IIII)V

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setMinWidth(I)V

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setMinimumWidth(I)V

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setMinHeight(I)V

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setMinimumHeight(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x28

    invoke-direct {p0, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v2

    invoke-direct {p1, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/cootek/smartinput5/backup/BackupActivity$15;

    invoke-direct {p1, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$15;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;)V

    invoke-virtual {v4, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->noticePanel:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    const v2, 0x1010078

    invoke-direct {p1, p0, v0, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->progress:Landroid/widget/ProgressBar;

    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->progress:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->noticePanel:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->progress:Landroid/widget/ProgressBar;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    new-instance p1, Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->noticePanel:Landroid/widget/LinearLayout;

    invoke-direct {p1, v0, v4, v9, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->notice:Landroid/widget/PopupWindow;

    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->notice:Landroid/widget/PopupWindow;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->notice:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->notice:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v6}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->notice:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 214
    return-void
.end method

.method private readBackup(Landroid/net/Uri;)V
    .locals 1

    .line 448
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->readIncomingFile(Landroid/net/Uri;I)V

    return-void
.end method

.method private readIncomingFile(Landroid/net/Uri;I)V
    .locals 8

    .line 328
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->discardIncoming()V

    const/4 v0, 0x1

    const-string v1, "\u0427\u0442\u0435\u043d\u0438\u0435 \u0438 \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u0444\u0430\u0439\u043b\u0430\u2026"

    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v7, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->importLanguage:Ljava/lang/String;

    .line 330
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cootek/smartinput5/backup/BackupActivity$22;

    move-object v2, v1

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/cootek/smartinput5/backup/BackupActivity$22;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;)V

    const-string p1, "TouchPalIncoming157"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 351
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 352
    return-void
.end method

.method private readLanguage(Landroid/net/Uri;)V
    .locals 3

    .line 312
    const/4 v0, 0x1

    const-string v1, "\u041f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u0444\u0430\u0439\u043b\u0430 \u044f\u0437\u044b\u043a\u0430\u2026"

    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 313
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/cootek/smartinput5/backup/BackupActivity$20;

    invoke-direct {v2, p0, v0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity$20;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/content/Context;Landroid/net/Uri;)V

    const-string p1, "TouchPalLanguageRead158"

    invoke-direct {v1, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 320
    return-void
.end method

.method private readText(Landroid/net/Uri;)V
    .locals 1

    .line 325
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->readIncomingFile(Landroid/net/Uri;I)V

    return-void
.end method

.method private readWestern(Landroid/net/Uri;)V
    .locals 1

    .line 396
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->readIncomingFile(Landroid/net/Uri;I)V

    return-void
.end method

.method private static readableDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 469
    const-string v0, ""

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x50

    if-le v1, v2, :cond_0

    goto :goto_1

    .line 471
    :cond_0
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 472
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 473
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 474
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 475
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

    .line 476
    :catch_0
    move-exception p0

    return-object v0

    .line 469
    :cond_2
    :goto_1
    return-object v0
.end method

.method private refreshCopies(Z)V
    .locals 3

    .line 88
    iget v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->refreshSerial:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->refreshSerial:I

    .line 89
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/cootek/smartinput5/backup/BackupActivity$12;

    invoke-direct {v2, p0, p1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity$12;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;ZI)V

    const-string p1, "TouchPalCopies157"

    invoke-direct {v1, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 97
    return-void
.end method

.method private restoreSaved(Ljava/io/File;I)V
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->busy:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 114
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->readBackup(Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->readWestern(Landroid/net/Uri;)V

    goto :goto_0

    .line 115
    :cond_2
    :try_start_0
    invoke-static {p0}, Lcom/cootek/smartinput5/backup/TextRecovery155;->pending(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->offerTextRecovery()V

    return-void

    :cond_3
    invoke-static {}, Lcom/cootek/smartinput5/backup/TextDictionary155;->language()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->importLanguage:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->readText(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    :catch_0
    move-exception p1

    const-string p1, "\u0421\u043b\u043e\u0432\u0430\u0440\u044c \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u0435\u043d. \u041e\u0442\u043a\u0440\u043e\u0439 \u043a\u043b\u0430\u0432\u0438\u0430\u0442\u0443\u0440\u0443 \u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0438 \u0434\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u0438\u0435 \u0441\u043b\u043e\u0432."

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    .line 118
    :goto_0
    return-void

    .line 113
    :cond_4
    :goto_1
    return-void
.end method

.method private static savedMessage(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041a\u043e\u043f\u0438\u044f \u0441\u043e\u0437\u0434\u0430\u043d\u0430\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n\u041f\u0430\u043f\u043a\u0430:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private section(Landroid/widget/LinearLayout;Ljava/lang/String;Z)V
    .locals 5

    .line 197
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    if-eqz p3, :cond_0

    const v1, -0xa4a4a5

    goto :goto_0

    :cond_0
    const v1, -0x424243

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41800000    # 16.0f

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    if-eqz p3, :cond_1

    const p2, -0xa64922

    goto :goto_1

    :cond_1
    const p2, -0xdb8661

    :goto_1
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, v4, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    return-void
.end method

.method private setBusy(ZLjava/lang/String;)V
    .locals 1

    .line 225
    iput-boolean p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->busy:Z

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->activeSegment:Lcom/cootek/smartinput5/backup/BackupActivity$Segment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->activeSegment:Lcom/cootek/smartinput5/backup/BackupActivity$Segment;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->working(Z)V

    if-nez p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->activeSegment:Lcom/cootek/smartinput5/backup/BackupActivity$Segment;

    .line 227
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-direct {p0, p2, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->showNotice(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->dismissNotice()V

    .line 228
    :cond_3
    :goto_0
    return-void
.end method

.method private shareSaved(Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->savedMessage(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n\u041e\u0442\u043a\u0440\u043e\u0435\u0442\u0441\u044f \u00ab\u041f\u043e\u0434\u0435\u043b\u0438\u0442\u044c\u0441\u044f\u00bb."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 280
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".commitcontent.ime.inputcontent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 281
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.STREAM"

    invoke-virtual {v1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, v0}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const/4 p2, 0x1

    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 282
    const-string v0, "\u041f\u043e\u0434\u0435\u043b\u0438\u0442\u044c\u0441\u044f \u043a\u043e\u043f\u0438\u0435\u0439"

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    goto :goto_0

    :catch_0
    move-exception p2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u041a\u043e\u043f\u0438\u044f \u0441\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u0430: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ". \u0421\u0438\u0441\u0442\u0435\u043c\u043d\u043e\u0435 \u043c\u0435\u043d\u044e \u00ab\u041f\u043e\u0434\u0435\u043b\u0438\u0442\u044c\u0441\u044f\u00bb \u043e\u0442\u043a\u0440\u044b\u0442\u044c \u043d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    .line 285
    :goto_0
    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .locals 2

    .line 529
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u0420\u0435\u0437\u0435\u0440\u0432\u043d\u0430\u044f \u043a\u043e\u043f\u0438\u044f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 532
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u0417\u0430\u043a\u0440\u044b\u0442\u044c"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 533
    return-void
.end method

.method private showNotice(Ljava/lang/String;Z)V
    .locals 5

    .line 217
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->notice:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 218
    :cond_0
    iget v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->noticeSerial:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->noticeSerial:I

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 219
    const/16 p1, 0xf0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v3, 0x20

    invoke-direct {p0, v3}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 220
    :try_start_0
    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->notice:Landroid/widget/PopupWindow;

    invoke-virtual {v2, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->notice:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->notice:Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-virtual {v1, p1, v2}, Landroid/widget/PopupWindow;->update(II)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->notice:Landroid/widget/PopupWindow;

    const v2, 0x1020002

    invoke-virtual {p0, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x10

    invoke-direct {p0, v3}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v3

    const/16 v4, 0x51

    invoke-virtual {p1, v2, v4, v1, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_1
    nop

    .line 222
    if-nez p2, :cond_3

    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->main:Landroid/os/Handler;

    new-instance p2, Lcom/cootek/smartinput5/backup/BackupActivity$16;

    invoke-direct {p2, p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity$16;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;I)V

    const-wide/16 v0, 0x1f40

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 223
    :cond_3
    return-void

    .line 221
    :catch_0
    move-exception p1

    return-void

    .line 217
    :cond_4
    :goto_2
    return-void
.end method

.method private showStoredStatus()V
    .locals 3

    .line 229
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupController;->status(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->main:Landroid/os/Handler;

    new-instance v2, Lcom/cootek/smartinput5/backup/BackupActivity$17;

    invoke-direct {v2, p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity$17;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private stageRestore(Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V
    .locals 4

    .line 480
    iget-boolean v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->busy:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 481
    :cond_0
    const/4 v0, 0x1

    const-string v1, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430 \u0432\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u044f\u2026"

    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 482
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->takeIncoming()Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    move-result-object v1

    .line 483
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/cootek/smartinput5/backup/BackupActivity$32;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity$32;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;Landroid/content/Context;Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V

    const-string p1, "TouchPalBackupRestore"

    invoke-direct {v2, v3, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 516
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 517
    return-void

    .line 480
    :cond_1
    :goto_0
    return-void
.end method

.method private stageWestern([B)V
    .locals 1

    .line 394
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->stageWestern([BZ)V

    return-void
.end method

.method private stageWestern([BZ)V
    .locals 9

    .line 398
    iget-boolean v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->busy:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 399
    :cond_0
    const/4 v0, 0x1

    const-string v1, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430 \u0432\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u044f \u0441\u043b\u043e\u0432\u0430\u0440\u044f\u2026"

    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 401
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/cootek/smartinput5/backup/BackupController;->captureWestern(Landroid/content/Context;)[B

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    nop

    .line 404
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->takeIncoming()Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    move-result-object v4

    .line 405
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cootek/smartinput5/backup/BackupActivity$27;

    move-object v2, v1

    move-object v3, p0

    move-object v6, p1

    move v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/cootek/smartinput5/backup/BackupActivity$27;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;Landroid/content/Context;[B[BZ)V

    const-string p1, "TouchPalWesternRestore"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 424
    return-void

    .line 403
    :catch_0
    move-exception p1

    invoke-direct {p0, v1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    invoke-static {p1}, Lcom/cootek/smartinput5/backup/BackupController;->captureError(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 402
    :catch_1
    move-exception p1

    invoke-direct {p0, v1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    const-string p1, "\u041d\u0435 \u0445\u0432\u0430\u0442\u0430\u0435\u0442 \u043f\u0430\u043c\u044f\u0442\u0438 \u0434\u043b\u044f \u044d\u0442\u043e\u0439 \u043a\u043e\u043f\u0438\u0438. \u0417\u0430\u043a\u0440\u043e\u0439 \u0434\u0440\u0443\u0433\u0438\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0438."

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 398
    :cond_1
    :goto_0
    return-void
.end method

.method private startTextImport(Ljava/util/List;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 355
    iget-boolean v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->busy:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/cootek/smartinput5/backup/BackupActivity;->TEXT_RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "\u0414\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u0438\u0435 \u0441\u043b\u043e\u0432 \u0443\u0436\u0435 \u0432\u044b\u043f\u043e\u043b\u043d\u044f\u0435\u0442\u0441\u044f."

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 356
    :cond_1
    const-string v0, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430 \u0434\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u0438\u044f \u0441\u043b\u043e\u0432\u2026"

    invoke-direct {p0, v2, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 357
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/cootek/smartinput5/backup/BackupController;->captureWestern(Landroid/content/Context;)[B

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    nop

    .line 360
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->takeIncoming()Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    move-result-object v4

    .line 361
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cootek/smartinput5/backup/BackupActivity$23;

    move-object v2, v1

    move-object v3, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/cootek/smartinput5/backup/BackupActivity$23;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;Landroid/content/Context;[BLjava/util/List;Ljava/lang/String;)V

    const-string p1, "TouchPalPrepareText155"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 370
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 371
    return-void

    .line 359
    :catch_0
    move-exception p1

    sget-object p1, Lcom/cootek/smartinput5/backup/BackupActivity;->TEXT_RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0, v1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    const-string p1, "\u041d\u0435 \u0445\u0432\u0430\u0442\u0430\u0435\u0442 \u043f\u0430\u043c\u044f\u0442\u0438 \u0434\u043b\u044f \u044d\u0442\u043e\u0439 \u043a\u043e\u043f\u0438\u0438. \u0417\u0430\u043a\u0440\u043e\u0439 \u0434\u0440\u0443\u0433\u0438\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0438."

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 358
    :catch_1
    move-exception p1

    sget-object p2, Lcom/cootek/smartinput5/backup/BackupActivity;->TEXT_RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0, v1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    invoke-static {p1}, Lcom/cootek/smartinput5/backup/BackupController;->captureError(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 355
    :cond_2
    :goto_0
    return-void
.end method

.method private stepTextImport(Lcom/cootek/smartinput5/backup/TextDictionary155$Session;)V
    .locals 4

    .line 373
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p1, Lcom/cootek/smartinput5/backup/BackupActivity;->TEXT_RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 375
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->step()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "."

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041e\u0431\u0440\u0430\u0431\u043e\u0442\u0430\u043d\u043e \u0441\u043b\u043e\u0432: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->next:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u0438\u0437 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->words:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->main:Landroid/os/Handler;

    new-instance v1, Lcom/cootek/smartinput5/backup/BackupActivity$24;

    invoke-direct {v1, p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity$24;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/TextDictionary155$Session;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 376
    :cond_1
    invoke-virtual {p1}, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->finish()[I

    move-result-object p1

    invoke-static {p0}, Lcom/cootek/smartinput5/backup/BackupController;->captureWestern(Landroid/content/Context;)[B

    invoke-static {p0}, Lcom/cootek/smartinput5/backup/TextRecovery155;->clear(Landroid/content/Context;)V

    sget-object v0, Lcom/cootek/smartinput5/backup/BackupActivity;->TEXT_RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0414\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u043e \u0441\u043b\u043e\u0432: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". \u0423\u0436\u0435 \u0431\u044b\u043b\u0438: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x1

    aget v3, p1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". \u041d\u0435 \u043f\u0440\u0438\u043d\u044f\u0442\u044b \u0434\u0432\u0438\u0436\u043a\u043e\u043c: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x2

    aget p1, p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 378
    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->textFailed()V

    .line 379
    :goto_1
    return-void
.end method

.method private takeIncoming()Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->incoming:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->incoming:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    return-object v0
.end method

.method private textFailed()V
    .locals 2

    .line 380
    sget-object v0, Lcom/cootek/smartinput5/backup/BackupActivity;->TEXT_RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "\u0414\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u0438\u0435 \u043f\u0440\u0435\u0440\u0432\u0430\u043d\u043e. \u0427\u0430\u0441\u0442\u044c \u0441\u043b\u043e\u0432 \u043c\u043e\u0433\u043b\u0430 \u0434\u043e\u0431\u0430\u0432\u0438\u0442\u044c\u0441\u044f; \u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0430 \u043a\u043e\u043f\u0438\u044f \u0434\u043e \u0438\u043c\u043f\u043e\u0440\u0442\u0430."

    invoke-direct {p0, v1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->offerTextRecovery()V

    return-void
.end method

.method private writablePermission(I)Z
    .locals 7

    .line 235
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 236
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x0

    if-lt v1, v3, :cond_1

    .line 237
    iput p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->permissionKind:I

    const-string p1, "\u0420\u0430\u0437\u0440\u0435\u0448\u0438 \u0441\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u0438\u0435 \u0432 \u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0438."

    invoke-direct {p0, v2, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 238
    :try_start_0
    const-class p1, Landroid/app/Activity;

    const-string v1, "requestPermissions"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, [Ljava/lang/String;

    aput-object v6, v5, v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {p1, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    new-array v3, v2, [Ljava/lang/String;

    aput-object v0, v3, v4

    aput-object v3, v1, v4

    const/16 v0, 0x3c8f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    .line 239
    :catch_0
    move-exception p1

    iput v4, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->permissionKind:I

    const/4 p1, 0x0

    invoke-direct {p0, v4, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 241
    :cond_1
    const-string p1, "\u0420\u0430\u0437\u0440\u0435\u0448\u0438 \u0434\u043e\u0441\u0442\u0443\u043f \u043a \u0444\u0430\u0439\u043b\u0430\u043c \u0432 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430\u0445 Android \u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0438 \u0441\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u0438\u0435."

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    return v4
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 302
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 303
    const/16 v0, 0x3db9

    const/16 v1, 0x3585

    const/16 v2, 0x2906

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    const/16 v3, 0x3c8e

    if-eq p1, v3, :cond_0

    if-eq p1, v0, :cond_0

    return-void

    .line 304
    :cond_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_5

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 305
    :cond_1
    if-ne p1, v0, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->readLanguage(Landroid/net/Uri;)V

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->readBackup(Landroid/net/Uri;)V

    goto :goto_0

    :cond_3
    if-ne p1, v1, :cond_4

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->readWestern(Landroid/net/Uri;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->readText(Landroid/net/Uri;)V

    .line 306
    :goto_0
    return-void

    .line 304
    :cond_5
    :goto_1
    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->showStoredStatus()V

    :cond_6
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 535
    iget-boolean v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->busy:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 537
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 36
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "option_dark_theme"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 37
    if-eqz v0, :cond_0

    const v1, 0x103006b

    goto :goto_0

    :cond_0
    const v1, 0x103006e

    :goto_0
    invoke-virtual {p0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/cootek/smartinput5/backup/BackupLocations155;->bind(Landroid/content/Context;)V

    .line 38
    const-string p1, "\u0420\u0435\u0437\u0435\u0440\u0432\u043d\u0430\u044f \u043a\u043e\u043f\u0438\u044f \u0438 \u0432\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u0435"

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 40
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0xddddde

    if-eqz v0, :cond_1

    const v5, -0xddddde

    goto :goto_1

    :cond_1
    const v5, -0x50506

    :goto_1
    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    .line 42
    const/4 v3, 0x2

    const v5, -0x111112

    const/4 v6, -0x2

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v10, 0x41900000    # 18.0f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    if-eqz v0, :cond_2

    const v10, -0x111112

    goto :goto_2

    :cond_2
    const v10, -0xddddde

    :goto_2
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v9, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-virtual {p1, v8}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 43
    :cond_3
    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0x14

    invoke-direct {p0, v9}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v9

    invoke-virtual {v2, v9, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    if-eqz v0, :cond_4

    const v4, -0x111112

    .line 45
    :cond_4
    const-string v5, "\u0424\u0430\u0439\u043b\u044b \u044f\u0437\u044b\u043a\u043e\u0432"

    invoke-direct {p0, v2, v5, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->section(Landroid/widget/LinearLayout;Ljava/lang/String;Z)V

    .line 46
    const-string v5, "TPL \u0438\u043b\u0438 TPL.apk \u2192 \u0440\u0430\u0431\u043e\u0447\u0430\u044f \u043f\u0430\u043f\u043a\u0430 language."

    invoke-direct {p0, v2, v5, v4}, Lcom/cootek/smartinput5/backup/BackupActivity;->caption(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 47
    new-instance v5, Lcom/cootek/smartinput5/backup/BackupActivity$1;

    invoke-direct {v5, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$1;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;)V

    const-string v6, "\u0417\u0430\u0433\u0440\u0443\u0437\u0438\u0442\u044c \u0441\u043b\u043e\u0432\u0430\u0440\u044c \u044f\u0437\u044b\u043a\u0430"

    invoke-direct {p0, v2, v6, v5}, Lcom/cootek/smartinput5/backup/BackupActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    .line 48
    const-string v5, "\u041f\u0430\u043f\u043a\u0430 \u0434\u043b\u044f \u0444\u0430\u0439\u043b\u043e\u0432 \u0440\u0435\u0437\u0435\u0440\u0432\u043d\u043e\u0433\u043e \u043a\u043e\u043f\u0438\u0440\u043e\u0432\u0430\u043d\u0438\u044f:"

    invoke-direct {p0, v2, v5, v4}, Lcom/cootek/smartinput5/backup/BackupActivity;->caption(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 49
    :try_start_0
    invoke-static {}, Lcom/cootek/smartinput5/backup/BackupLocations155;->folder()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v5

    const-string v5, "\u041f\u0430\u043f\u043a\u0430 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0430"

    .line 50
    :goto_3
    invoke-direct {p0, v2, v5, v4}, Lcom/cootek/smartinput5/backup/BackupActivity;->path(Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    const-string v5, "\u0421\u0442\u0440\u0435\u043b\u043a\u0430 \u0432\u043d\u0438\u0437 \u2014 \u0441\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c \u0432 \u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0438."

    invoke-direct {p0, v2, v5, v4}, Lcom/cootek/smartinput5/backup/BackupActivity;->caption(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 52
    const-string v5, "\u041f\u043e\u043b\u043d\u0430\u044f \u043a\u043e\u043f\u0438\u044f"

    invoke-direct {p0, v2, v5, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->section(Landroid/widget/LinearLayout;Ljava/lang/String;Z)V

    .line 53
    const-string v5, "\u0421\u043b\u043e\u0432\u0430\u0440\u0438, \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u0438 \u0431\u0443\u0444\u0435\u0440 \u043e\u0431\u043c\u0435\u043d\u0430 \u2014 ZIP.\n\u0411\u0435\u0437 \u0438\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0439 \u0431\u0443\u0444\u0435\u0440\u0430 \u043e\u0431\u043c\u0435\u043d\u0430."

    invoke-direct {p0, v2, v5, v4}, Lcom/cootek/smartinput5/backup/BackupActivity;->caption(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 54
    const-string v5, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u044f\u044f \u043a\u043e\u043f\u0438\u044f: \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0430\u2026"

    invoke-direct {p0, v2, v5, v4}, Lcom/cootek/smartinput5/backup/BackupActivity;->caption(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->latestCopy:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->latestCopy:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 55
    iget-object v5, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->latestCopy:Landroid/widget/TextView;

    new-instance v6, Lcom/cootek/smartinput5/backup/BackupActivity$2;

    invoke-direct {v6, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$2;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 56
    const-string v5, "\u0421\u043e\u0437\u0434\u0430\u0442\u044c \u043f\u043e\u043b\u043d\u0443\u044e \u043a\u043e\u043f\u0438\u044e"

    invoke-direct {p0, v2, v8, v5}, Lcom/cootek/smartinput5/backup/BackupActivity;->createButtons(Landroid/widget/LinearLayout;ILjava/lang/String;)V

    .line 57
    new-instance v5, Lcom/cootek/smartinput5/backup/BackupActivity$3;

    invoke-direct {v5, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$3;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;)V

    const-string v6, "\u0412\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c \u043f\u043e\u043b\u043d\u0443\u044e \u043a\u043e\u043f\u0438\u044e"

    invoke-direct {p0, v2, v6, v5}, Lcom/cootek/smartinput5/backup/BackupActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    .line 59
    const-string v5, "\u041f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u0435\u043b\u044c\u0441\u043a\u0438\u0439 \u0441\u043b\u043e\u0432\u0430\u0440\u044c"

    invoke-direct {p0, v2, v5, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->section(Landroid/widget/LinearLayout;Ljava/lang/String;Z)V

    .line 60
    const-string v5, "\u0424\u0430\u0439\u043b western.usr.\n\u041f\u0440\u0438 \u0432\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u0438 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u0441\u043e\u0445\u0440\u0430\u043d\u044f\u044e\u0442\u0441\u044f."

    invoke-direct {p0, v2, v5, v4}, Lcom/cootek/smartinput5/backup/BackupActivity;->caption(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 61
    const-string v5, "\u0421\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c western.usr"

    invoke-direct {p0, v2, v3, v5}, Lcom/cootek/smartinput5/backup/BackupActivity;->createButtons(Landroid/widget/LinearLayout;ILjava/lang/String;)V

    .line 62
    new-instance v3, Lcom/cootek/smartinput5/backup/BackupActivity$4;

    invoke-direct {v3, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$4;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;)V

    const-string v5, "\u0412\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c western.usr"

    invoke-direct {p0, v2, v5, v3}, Lcom/cootek/smartinput5/backup/BackupActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    .line 64
    const-string v3, "\u0421\u043b\u043e\u0432\u0430 \u0432 \u0442\u0435\u043a\u0441\u0442\u043e\u0432\u043e\u043c \u0444\u0430\u0439\u043b\u0435"

    invoke-direct {p0, v2, v3, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->section(Landroid/widget/LinearLayout;Ljava/lang/String;Z)V

    .line 65
    const-string v3, "\u0421\u043b\u043e\u0432\u0430 \u0441\u043e\u0445\u0440\u0430\u043d\u044f\u044e\u0442\u0441\u044f \u0432 western_dict_full.txt.\n\u0414\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u0438\u0435 \u0438\u0437 TXT \u0441\u043e\u0445\u0440\u0430\u043d\u044f\u0435\u0442 \u043f\u0440\u0435\u0436\u043d\u0438\u0435 \u0441\u043b\u043e\u0432\u0430."

    invoke-direct {p0, v2, v3, v4}, Lcom/cootek/smartinput5/backup/BackupActivity;->caption(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 66
    const-string v3, "\u0421\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c \u0441\u043b\u043e\u0432\u0430 \u0432 TXT"

    invoke-direct {p0, v2, v1, v3}, Lcom/cootek/smartinput5/backup/BackupActivity;->createButtons(Landroid/widget/LinearLayout;ILjava/lang/String;)V

    .line 67
    new-instance v1, Lcom/cootek/smartinput5/backup/BackupActivity$5;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$5;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;)V

    const-string v3, "\u0414\u043e\u0431\u0430\u0432\u0438\u0442\u044c \u0441\u043b\u043e\u0432\u0430 \u0438\u0437 TXT"

    invoke-direct {p0, v2, v3, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    .line 69
    const-string v1, "\u041f\u0435\u0440\u0435\u043d\u043e\u0441 \u0441\u0442\u0430\u0440\u044b\u0445 \u0434\u0430\u043d\u043d\u044b\u0445"

    invoke-direct {p0, v2, v1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->section(Landroid/widget/LinearLayout;Ljava/lang/String;Z)V

    .line 70
    const-string v1, "\u0414\u043e\u0431\u0430\u0432\u043b\u044f\u0435\u0442 \u043d\u0435\u0434\u043e\u0441\u0442\u0430\u044e\u0449\u0438\u0435 \u0444\u0430\u0439\u043b\u044b \u0441 SD.\n\u041e\u0440\u0438\u0433\u0438\u043d\u0430\u043b\u044b \u0441\u043e\u0445\u0440\u0430\u043d\u044f\u044e\u0442\u0441\u044f."

    invoke-direct {p0, v2, v1, v4}, Lcom/cootek/smartinput5/backup/BackupActivity;->caption(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 71
    new-instance v1, Lcom/cootek/smartinput5/backup/BackupActivity$6;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$6;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;)V

    const-string v3, "\u041f\u0435\u0440\u0435\u043d\u0435\u0441\u0442\u0438 \u0434\u0430\u043d\u043d\u044b\u0435 \u0438\u0437 TouchPal2015"

    invoke-direct {p0, v2, v3, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    .line 72
    const-string v1, "TouchPal2015/ \u0438 TouchPalv5/"

    invoke-direct {p0, v2, v1, v4}, Lcom/cootek/smartinput5/backup/BackupActivity;->caption(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 73
    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->prepareNotice(Z)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->showStoredStatus()V

    invoke-direct {p0, v8}, Lcom/cootek/smartinput5/backup/BackupActivity;->refreshCopies(Z)V

    .line 74
    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->main:Landroid/os/Handler;

    new-instance v0, Lcom/cootek/smartinput5/backup/BackupActivity$7;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$7;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->destroyed:Z

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->dismissNotice()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->discardLanguage()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->discardIncoming()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 536
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    iget-boolean p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->busy:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->finish()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 245
    const/16 p2, 0x3c8f

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->permissionKind:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->permissionKind:I

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->permissionFile:Ljava/io/File;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->permissionFile:Ljava/io/File;

    invoke-direct {p0, p2, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 246
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 247
    :cond_1
    if-eqz p3, :cond_3

    array-length v1, p3

    if-lez v1, :cond_3

    aget p2, p3, p2

    if-nez p2, :cond_3

    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_3

    if-eqz v0, :cond_2

    invoke-direct {p0, v0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->downloadSaved(Ljava/io/File;I)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x2

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->create(II)V

    goto :goto_0

    .line 248
    :cond_3
    const-string p1, "\u0411\u0435\u0437 \u0434\u043e\u0441\u0442\u0443\u043f\u0430 \u043a \u0444\u0430\u0439\u043b\u0430\u043c \u0441\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c \u0432 \u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0438 \u043d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c."

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    .line 249
    :goto_0
    return-void

    .line 246
    :cond_4
    :goto_1
    return-void
.end method
