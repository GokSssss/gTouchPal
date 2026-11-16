.class public final Lcom/cootek/smartinput5/backup/BackupActivity;
.super Landroid/app/Activity;
.source "BackupActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;,
        Lcom/cootek/smartinput5/backup/BackupActivity$Segment;
    }
.end annotation


# static fields
.field private static final CREATE_BACKUP:I = 0x2905

.field private static final CREATE_TEXT:I = 0x3c8d

.field private static final CREATE_WESTERN:I = 0x34bd

.field private static final MEMORY_ERROR:Ljava/lang/String; = "\u041d\u0435 \u0445\u0432\u0430\u0442\u0430\u0435\u0442 \u043f\u0430\u043c\u044f\u0442\u0438 \u0434\u043b\u044f \u044d\u0442\u043e\u0439 \u043a\u043e\u043f\u0438\u0438. \u0417\u0430\u043a\u0440\u043e\u0439 \u0434\u0440\u0443\u0433\u0438\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0438."

.field private static final OPEN_BACKUP:I = 0x2906

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

.field private busy:Z

.field private volatile destroyed:Z

.field private importLanguage:Ljava/lang/String;

.field private final main:Landroid/os/Handler;

.field private permissionKind:I

.field private prepared:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

.field private progress:Landroid/widget/ProgressBar;

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

.method static synthetic access$000(Lcom/cootek/smartinput5/backup/BackupActivity;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->openImportPicker(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/cootek/smartinput5/backup/BackupActivity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->chooseText()V

    return-void
.end method

.method static synthetic access$1002(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;)Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->prepared:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/content/Intent;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->choose(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->postError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/cootek/smartinput5/backup/BackupActivity;ZLjava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/cootek/smartinput5/backup/BackupActivity;)Landroid/widget/TextView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->startTextImport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 22
    sget-object v0, Lcom/cootek/smartinput5/backup/BackupActivity;->TEXT_RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/TextDictionary155$Session;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->stepTextImport(Lcom/cootek/smartinput5/backup/TextDictionary155$Session;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/cootek/smartinput5/backup/BackupActivity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->textFailed()V

    return-void
.end method

.method static synthetic access$200(Lcom/cootek/smartinput5/backup/BackupActivity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->importOldData()V

    return-void
.end method

.method static synthetic access$2000(Lcom/cootek/smartinput5/backup/BackupActivity;[BZ)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->stageWestern([BZ)V

    return-void
.end method

.method static synthetic access$2100(Lcom/cootek/smartinput5/backup/BackupActivity;[B)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->stageWestern([B)V

    return-void
.end method

.method static synthetic access$2200(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->confirmRestore(Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->stageRestore(Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V

    return-void
.end method

.method static synthetic access$300(Lcom/cootek/smartinput5/backup/BackupActivity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->offerTextRecovery()V

    return-void
.end method

.method static synthetic access$400(Lcom/cootek/smartinput5/backup/BackupActivity;IZ)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->create(IZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/cootek/smartinput5/backup/BackupActivity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->openCopiesFolder()V

    return-void
.end method

.method static synthetic access$600(Lcom/cootek/smartinput5/backup/BackupActivity;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->destroyed:Z

    return p0
.end method

.method static synthetic access$700(Lcom/cootek/smartinput5/backup/BackupActivity;)Z
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->shareSaved(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/cootek/smartinput5/backup/BackupActivity;)Landroid/os/Handler;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->main:Landroid/os/Handler;

    return-object p0
.end method

.method private alive()Z
    .locals 1

    .line 150
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

    .line 139
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

    .line 153
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

    .line 146
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

.method private choose(Landroid/content/Intent;I)V
    .locals 2

    .line 207
    const/4 v0, 0x1

    const-string v1, "\u0412\u044b\u0431\u0435\u0440\u0438 \u0444\u0430\u0439\u043b \u0438\u043b\u0438 \u043f\u0430\u043f\u043a\u0443."

    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 208
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    goto :goto_0

    :catch_0
    move-exception p1

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->discardPrepared()V

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    const-string p1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043e\u0442\u043a\u0440\u044b\u0442\u044c \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u044b\u0439 \u0432\u044b\u0431\u043e\u0440 \u0444\u0430\u0439\u043b\u043e\u0432."

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    .line 210
    :goto_0
    return-void
.end method

.method private chooseText()V
    .locals 1

    .line 216
    iget-boolean v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->busy:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 217
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

    .line 218
    nop

    .line 219
    const/16 v0, 0x3c8e

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->openImportPicker(I)V

    .line 220
    return-void

    .line 218
    :catch_0
    move-exception v0

    const-string v0, "\u0421\u043b\u043e\u0432\u0430\u0440\u044c \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u0435\u043d. \u041e\u0442\u043a\u0440\u043e\u0439 \u043a\u043b\u0430\u0432\u0438\u0430\u0442\u0443\u0440\u0443 TouchPal \u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0438 \u0434\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u0438\u0435 \u0441\u043b\u043e\u0432."

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 216
    :cond_2
    :goto_0
    return-void
.end method

.method private compactButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;
    .locals 4

    .line 134
    invoke-static {p0, p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage;->actionButton(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Button;

    move-result-object p1

    .line 135
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

    .line 136
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->actions:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private confirmRestore(Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V
    .locals 4

    .line 400
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 401
    :cond_0
    iget-object v0, p1, Lcom/cootek/smartinput5/backup/BackupArchive$Archive;->metadata:Ljava/util/Map;

    const-string v1, "createdUTC"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->readableDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0422\u0435\u043a\u0443\u0449\u0438\u0435 \u0441\u043b\u043e\u0432\u0430\u0440\u0438 \u0438 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u0431\u0443\u0434\u0443\u0442 \u0437\u0430\u043c\u0435\u043d\u0435\u043d\u044b \u0434\u0430\u043d\u043d\u044b\u043c\u0438 \u0438\u0437 \u043a\u043e\u043f\u0438\u0438.\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 403
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

    .line 404
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

    .line 406
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 407
    const-string v2, "\u0412\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c \u043a\u043e\u043f\u0438\u044e?"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 408
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 409
    const-string v1, "\u041e\u0442\u043c\u0435\u043d\u0430"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/cootek/smartinput5/backup/BackupActivity$20;

    invoke-direct {v1, p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity$20;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V

    .line 410
    const-string p1, "\u0412\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c \u0438 \u043f\u0435\u0440\u0435\u0437\u0430\u043f\u0443\u0441\u0442\u0438\u0442\u044c"

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 414
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 415
    return-void
.end method

.method private create(IZ)V
    .locals 11

    .line 172
    iget-boolean v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->busy:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_4

    const/4 v1, 0x3

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 173
    :cond_0
    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->canChooseFile()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 174
    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->writablePermission(I)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 175
    :cond_2
    const-string v1, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430 \u043a\u043e\u043f\u0438\u0438\u2026"

    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 176
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p1, v0, :cond_3

    :try_start_0
    invoke-static {p0}, Lcom/cootek/smartinput5/backup/BackupController;->capture(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Lcom/cootek/smartinput5/backup/BackupController;->metadata(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/cootek/smartinput5/backup/BackupController;->captureWestern(Landroid/content/Context;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v0

    move-object v7, v2

    move-object v8, v7

    .line 178
    :goto_0
    nop

    .line 179
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 180
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cootek/smartinput5/backup/BackupActivity$9;

    move-object v3, v1

    move-object v4, p0

    move v5, p1

    move v10, p2

    invoke-direct/range {v3 .. v10}, Lcom/cootek/smartinput5/backup/BackupActivity$9;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;ILandroid/content/Context;Ljava/util/Map;Ljava/util/Map;[BZ)V

    const-string p1, "TouchPalCopy155"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 196
    return-void

    .line 178
    :catch_0
    move-exception p1

    invoke-direct {p0, v1, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    invoke-static {p1}, Lcom/cootek/smartinput5/backup/BackupController;->captureError(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 177
    :catch_1
    move-exception p1

    invoke-direct {p0, v1, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    const-string p1, "\u041d\u0435 \u0445\u0432\u0430\u0442\u0430\u0435\u0442 \u043f\u0430\u043c\u044f\u0442\u0438 \u0434\u043b\u044f \u044d\u0442\u043e\u0439 \u043a\u043e\u043f\u0438\u0438. \u0417\u0430\u043a\u0440\u043e\u0439 \u0434\u0440\u0443\u0433\u0438\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0438."

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 172
    :cond_4
    :goto_1
    return-void
.end method

.method private createButtons(Landroid/widget/LinearLayout;ILjava/lang/String;)V
    .locals 6

    .line 74
    new-instance p3, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;

    invoke-direct {p3, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x2c

    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    const-string p1, "\u0421\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c"

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->segment(Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object p1

    const-string v2, "\u041e\u0442\u043a\u0440\u044b\u0442\u044c \u043f\u0430\u043f\u043a\u0443 \u043a\u043e\u043f\u0438\u0439"

    const/4 v4, 0x1

    invoke-virtual {p3, v2, v4}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->segment(Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v2

    const-string v4, "\u0421\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c \u0438 \u043e\u0442\u043f\u0440\u0430\u0432\u0438\u0442\u044c"

    const/4 v5, 0x2

    invoke-virtual {p3, v4, v5}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->segment(Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v4

    .line 76
    new-instance v5, Lcom/cootek/smartinput5/backup/BackupActivity$6;

    invoke-direct {v5, p0, p2}, Lcom/cootek/smartinput5/backup/BackupActivity$6;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;I)V

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    new-instance v5, Lcom/cootek/smartinput5/backup/BackupActivity$7;

    invoke-direct {v5, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$7;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    new-instance v5, Lcom/cootek/smartinput5/backup/BackupActivity$8;

    invoke-direct {v5, p0, p2}, Lcom/cootek/smartinput5/backup/BackupActivity$8;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;I)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p3, p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v0

    invoke-direct {p2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v2, p2}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v0

    invoke-direct {p2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v4, p2}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->actions:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->actions:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->actions:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method private discardPrepared()V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->prepared:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->prepared:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->discard()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->prepared:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    :cond_0
    return-void
.end method

.method private dp(I)I
    .locals 1

    .line 149
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

    .line 351
    iget-boolean v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->busy:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    const/4 v0, 0x1

    const-string v1, "\u041a\u043e\u043f\u0438\u0440\u043e\u0432\u0430\u043d\u0438\u0435 \u0438 \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u0441\u0442\u0430\u0440\u044b\u0445 \u0434\u0430\u043d\u043d\u044b\u0445\u2026"

    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 354
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/cootek/smartinput5/backup/BackupActivity$18;

    invoke-direct {v2, p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity$18;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/content/Context;)V

    const-string v0, "TouchPalStorageImport"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 369
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 370
    return-void

    .line 351
    :cond_1
    :goto_0
    return-void
.end method

.method private offerTextRecovery()V
    .locals 3

    .line 280
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

    .line 282
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/cootek/smartinput5/backup/TextRecovery155;->pending(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 283
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u041f\u0440\u0435\u0434\u044b\u0434\u0443\u0449\u0438\u0439 \u0438\u043c\u043f\u043e\u0440\u0442 TXT"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0414\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u0438\u0435 \u0441\u043b\u043e\u0432 \u043c\u043e\u0433\u043b\u043e \u0431\u044b\u0442\u044c \u043f\u0440\u0435\u0440\u0432\u0430\u043d\u043e. \u041c\u043e\u0436\u043d\u043e \u043e\u0441\u0442\u0430\u0432\u0438\u0442\u044c \u0442\u0435\u043a\u0443\u0449\u0438\u0439 \u0441\u043b\u043e\u0432\u0430\u0440\u044c \u0438\u043b\u0438 \u0432\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c \u0435\u0433\u043e \u0441\u043e\u0441\u0442\u043e\u044f\u043d\u0438\u0435 \u0434\u043e \u0438\u043c\u043f\u043e\u0440\u0442\u0430."

    .line 284
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 285
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u041e\u0441\u0442\u0430\u0432\u0438\u0442\u044c \u0442\u0435\u043a\u0443\u0449\u0438\u0439"

    new-instance v2, Lcom/cootek/smartinput5/backup/BackupActivity$15;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$15;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;)V

    .line 286
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0412\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c \u0434\u043e \u0438\u043c\u043f\u043e\u0440\u0442\u0430"

    new-instance v2, Lcom/cootek/smartinput5/backup/BackupActivity$14;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$14;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;)V

    .line 287
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u0440\u043e\u0432\u0435\u0440\u0438\u0442\u044c \u043a\u043e\u043f\u0438\u044e \u043f\u0435\u0440\u0435\u0434 \u0438\u043c\u043f\u043e\u0440\u0442\u043e\u043c. \u0420\u0430\u0431\u043e\u0447\u0438\u0439 \u0441\u043b\u043e\u0432\u0430\u0440\u044c \u043d\u0435 \u0437\u0430\u043c\u0435\u043d\u0451\u043d."

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    .line 289
    :goto_0
    return-void

    .line 280
    :cond_2
    :goto_1
    return-void
.end method

.method private openCopiesFolder()V
    .locals 3

    .line 83
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->canChooseFile()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupLocations155;->preparePicker(Landroid/content/Intent;)V

    const-string v1, "android.provider.extra.INITIAL_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 85
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "vnd.android.document/directory"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 86
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupLocations155;->preparePicker(Landroid/content/Intent;)V

    .line 89
    :try_start_1
    const-string v1, "\u041f\u0430\u043f\u043a\u0430 \u0441 \u043a\u043e\u043f\u0438\u044f\u043c\u0438"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043e\u0442\u043a\u0440\u044b\u0442\u044c \u043f\u0430\u043f\u043a\u0443 \u043a\u043e\u043f\u0438\u0439. \u041e\u0442\u043a\u0440\u043e\u0439 \u0435\u0451 \u0444\u0430\u0439\u043b\u043e\u0432\u044b\u043c \u043c\u0435\u043d\u0435\u0434\u0436\u0435\u0440\u043e\u043c: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/cootek/smartinput5/backup/BackupLocations155;->folder()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    .line 92
    :goto_0
    return-void
.end method

.method private openImportPicker(I)V
    .locals 2

    .line 212
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

    .line 213
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

    .line 214
    return-void
.end method

.method private path(Landroid/widget/LinearLayout;Ljava/lang/String;I)V
    .locals 0

    .line 148
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

    .line 467
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->main:Landroid/os/Handler;

    new-instance v1, Lcom/cootek/smartinput5/backup/BackupActivity$22;

    invoke-direct {v1, p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity$22;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 473
    return-void
.end method

.method private readBackup(Landroid/net/Uri;)V
    .locals 3

    .line 373
    const/4 v0, 0x1

    const-string v1, "\u041f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u043a\u043e\u043f\u0438\u0438\u2026"

    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 375
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/cootek/smartinput5/backup/BackupActivity$19;

    invoke-direct {v2, p0, v0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity$19;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/content/Context;Landroid/net/Uri;)V

    const-string p1, "TouchPalBackupRead"

    invoke-direct {v1, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 396
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 397
    return-void
.end method

.method private readText(Landroid/net/Uri;)V
    .locals 3

    .line 238
    const/4 v0, 0x1

    const-string v1, "\u0427\u0442\u0435\u043d\u0438\u0435 TXT\u2026"

    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->importLanguage:Ljava/lang/String;

    .line 239
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/cootek/smartinput5/backup/BackupActivity$11;

    invoke-direct {v2, p0, p1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity$11;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/net/Uri;Ljava/lang/String;)V

    const-string p1, "TouchPalReadText155"

    invoke-direct {v1, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 252
    return-void
.end method

.method private readWestern(Landroid/net/Uri;)V
    .locals 3

    .line 294
    const/4 v0, 0x1

    const-string v1, "\u0427\u0442\u0435\u043d\u0438\u0435 \u0438 \u043f\u0440\u043e\u0432\u0435\u0440\u043a\u0430 \u0441\u043b\u043e\u0432\u0430\u0440\u044f\u2026"

    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 296
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/cootek/smartinput5/backup/BackupActivity$16;

    invoke-direct {v2, p0, v0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity$16;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/content/Context;Landroid/net/Uri;)V

    const-string p1, "TouchPalWesternRead"

    invoke-direct {v1, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 320
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 321
    return-void
.end method

.method private static readableDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 418
    const-string v0, ""

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x50

    if-le v1, v2, :cond_0

    goto :goto_1

    .line 420
    :cond_0
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 421
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 422
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 423
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 424
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

    .line 425
    :catch_0
    move-exception p0

    return-object v0

    .line 418
    :cond_2
    :goto_1
    return-object v0
.end method

.method private section(Landroid/widget/LinearLayout;Ljava/lang/String;Z)V
    .locals 5

    .line 142
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

    .line 143
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

    .line 144
    return-void
.end method

.method private setBusy(ZLjava/lang/String;)V
    .locals 3

    .line 151
    iput-boolean p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->busy:Z

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_3

    const/16 v1, 0x8

    :cond_3
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private shareSaved(Ljava/io/File;Ljava/lang/String;)V
    .locals 4

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041a\u043e\u043f\u0438\u044f \u0441\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u0430: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". \u041e\u0442\u043a\u0440\u043e\u0435\u0442\u0441\u044f \u00ab\u041f\u043e\u0434\u0435\u043b\u0438\u0442\u044c\u0441\u044f\u00bb."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 200
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".commitcontent.ime.inputcontent"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 201
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.STREAM"

    invoke-virtual {v2, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3, v0}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const/4 p2, 0x1

    invoke-virtual {v2, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 202
    const-string v0, "\u041f\u043e\u0434\u0435\u043b\u0438\u0442\u044c\u0441\u044f \u043a\u043e\u043f\u0438\u0435\u0439"

    invoke-static {v2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    goto :goto_0

    :catch_0
    move-exception p2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 205
    :goto_0
    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .locals 2

    .line 476
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u0420\u0435\u0437\u0435\u0440\u0432\u043d\u0430\u044f \u043a\u043e\u043f\u0438\u044f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 479
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u0417\u0430\u043a\u0440\u044b\u0442\u044c"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 480
    return-void
.end method

.method private showStoredStatus()V
    .locals 3

    .line 152
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupController;->status(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private stageRestore(Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V
    .locals 3

    .line 429
    iget-boolean v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->busy:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    const/4 v0, 0x1

    const-string v1, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430 \u0432\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u044f\u2026"

    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 432
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/cootek/smartinput5/backup/BackupActivity$21;

    invoke-direct {v2, p0, v0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity$21;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/content/Context;Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V

    const-string p1, "TouchPalBackupRestore"

    invoke-direct {v1, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 463
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 464
    return-void

    .line 429
    :cond_1
    :goto_0
    return-void
.end method

.method private stageWestern([B)V
    .locals 1

    .line 291
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->stageWestern([BZ)V

    return-void
.end method

.method private stageWestern([BZ)V
    .locals 8

    .line 324
    iget-boolean v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->busy:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 325
    :cond_0
    const/4 v0, 0x1

    const-string v1, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430 \u0432\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u044f \u0441\u043b\u043e\u0432\u0430\u0440\u044f\u2026"

    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 327
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/cootek/smartinput5/backup/BackupController;->captureWestern(Landroid/content/Context;)[B

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    nop

    .line 330
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 331
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cootek/smartinput5/backup/BackupActivity$17;

    move-object v2, v1

    move-object v3, p0

    move-object v5, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/cootek/smartinput5/backup/BackupActivity$17;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/content/Context;[B[BZ)V

    const-string p1, "TouchPalWesternRestore"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 348
    return-void

    .line 329
    :catch_0
    move-exception p1

    invoke-direct {p0, v1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    invoke-static {p1}, Lcom/cootek/smartinput5/backup/BackupController;->captureError(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 328
    :catch_1
    move-exception p1

    invoke-direct {p0, v1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    const-string p1, "\u041d\u0435 \u0445\u0432\u0430\u0442\u0430\u0435\u0442 \u043f\u0430\u043c\u044f\u0442\u0438 \u0434\u043b\u044f \u044d\u0442\u043e\u0439 \u043a\u043e\u043f\u0438\u0438. \u0417\u0430\u043a\u0440\u043e\u0439 \u0434\u0440\u0443\u0433\u0438\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0438."

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 324
    :cond_1
    :goto_0
    return-void
.end method

.method private startTextImport(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
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

    .line 254
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

    .line 255
    :cond_1
    const-string v0, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430 \u0434\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u0438\u044f \u0441\u043b\u043e\u0432\u2026"

    invoke-direct {p0, v2, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 256
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/cootek/smartinput5/backup/BackupController;->captureWestern(Landroid/content/Context;)[B

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    nop

    .line 259
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 260
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cootek/smartinput5/backup/BackupActivity$12;

    move-object v2, v1

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/cootek/smartinput5/backup/BackupActivity$12;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/content/Context;[BLjava/util/List;Ljava/lang/String;)V

    const-string p1, "TouchPalPrepareText155"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 269
    return-void

    .line 258
    :catch_0
    move-exception p1

    sget-object p1, Lcom/cootek/smartinput5/backup/BackupActivity;->TEXT_RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0, v1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    const-string p1, "\u041d\u0435 \u0445\u0432\u0430\u0442\u0430\u0435\u0442 \u043f\u0430\u043c\u044f\u0442\u0438 \u0434\u043b\u044f \u044d\u0442\u043e\u0439 \u043a\u043e\u043f\u0438\u0438. \u0417\u0430\u043a\u0440\u043e\u0439 \u0434\u0440\u0443\u0433\u0438\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0438."

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 257
    :catch_1
    move-exception p1

    sget-object p2, Lcom/cootek/smartinput5/backup/BackupActivity;->TEXT_RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0, v1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    invoke-static {p1}, Lcom/cootek/smartinput5/backup/BackupController;->captureError(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 254
    :cond_2
    :goto_0
    return-void
.end method

.method private stepTextImport(Lcom/cootek/smartinput5/backup/TextDictionary155$Session;)V
    .locals 4

    .line 271
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p1, Lcom/cootek/smartinput5/backup/BackupActivity;->TEXT_RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 273
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

    new-instance v1, Lcom/cootek/smartinput5/backup/BackupActivity$13;

    invoke-direct {v1, p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity$13;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/TextDictionary155$Session;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 274
    :cond_1
    invoke-virtual {p1}, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->finish()[I

    move-result-object p1

    invoke-static {p0}, Lcom/cootek/smartinput5/backup/BackupController;->captureWestern(Landroid/content/Context;)[B

    invoke-static {p0}, Lcom/cootek/smartinput5/backup/TextRecovery155;->clear(Landroid/content/Context;)V

    sget-object v0, Lcom/cootek/smartinput5/backup/BackupActivity;->TEXT_RUNNING:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 275
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

    .line 276
    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->textFailed()V

    .line 277
    :goto_1
    return-void
.end method

.method private textFailed()V
    .locals 2

    .line 278
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

    .line 156
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 157
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x0

    if-lt v1, v3, :cond_1

    .line 158
    iput p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->permissionKind:I

    const-string p1, "\u0420\u0430\u0437\u0440\u0435\u0448\u0438 \u0441\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u0438\u0435 \u043a\u043e\u043f\u0438\u0438 \u043d\u0430 SD."

    invoke-direct {p0, v2, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 159
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

    .line 160
    :catch_0
    move-exception p1

    iput v4, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->permissionKind:I

    const/4 p1, 0x0

    invoke-direct {p0, v4, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 162
    :cond_1
    const-string p1, "\u0420\u0430\u0437\u0440\u0435\u0448\u0438 \u0434\u043e\u0441\u0442\u0443\u043f \u043a \u0444\u0430\u0439\u043b\u0430\u043c \u0432 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430\u0445 Android \u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0438 \u0441\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u0438\u0435."

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    return v4
.end method

.method private writeSelected(Landroid/net/Uri;)V
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->prepared:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->prepared:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    .line 230
    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    const-string p1, "\u041f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u043a\u0430 \u043f\u0440\u0435\u0440\u0432\u0430\u043d\u0430. \u0421\u043e\u0437\u0434\u0430\u0439 \u043a\u043e\u043f\u0438\u044e \u0435\u0449\u0451 \u0440\u0430\u0437."

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 231
    :cond_0
    const/4 v1, 0x1

    const-string v2, "\u0421\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u0438\u0435 \u043a\u043e\u043f\u0438\u0438\u2026"

    invoke-direct {p0, v1, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 232
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/cootek/smartinput5/backup/BackupActivity$10;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/cootek/smartinput5/backup/BackupActivity$10;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;Landroid/content/Context;Landroid/net/Uri;)V

    const-string p1, "TouchPalSave155"

    invoke-direct {v2, v3, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 235
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 236
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 222
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 223
    const/16 v0, 0x3585

    const/16 v1, 0x2906

    const/16 v2, 0x3c8d

    const/16 v3, 0x34bd

    const/16 v4, 0x2905

    if-eq p1, v4, :cond_0

    if-eq p1, v3, :cond_0

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    const/16 v5, 0x3c8e

    if-eq p1, v5, :cond_0

    return-void

    .line 224
    :cond_0
    const/4 v5, -0x1

    if-ne p2, v5, :cond_6

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_2

    .line 225
    :cond_1
    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_5

    if-ne p1, v2, :cond_2

    goto :goto_0

    .line 226
    :cond_2
    if-ne p1, v1, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->readBackup(Landroid/net/Uri;)V

    goto :goto_1

    :cond_3
    if-ne p1, v0, :cond_4

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->readWestern(Landroid/net/Uri;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->readText(Landroid/net/Uri;)V

    goto :goto_1

    .line 225
    :cond_5
    :goto_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->writeSelected(Landroid/net/Uri;)V

    .line 227
    :goto_1
    return-void

    .line 224
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->discardPrepared()V

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->showStoredStatus()V

    :cond_7
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 482
    iget-boolean v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->busy:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 484
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 35
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "option_dark_theme"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 36
    if-eqz v0, :cond_0

    const v1, 0x103006b

    goto :goto_0

    :cond_0
    const v1, 0x103006e

    :goto_0
    invoke-virtual {p0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const-string p1, "\u0420\u0435\u0437\u0435\u0440\u0432\u043d\u0430\u044f \u043a\u043e\u043f\u0438\u044f \u0438 \u0432\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u0435"

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 39
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

    .line 40
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    .line 41
    const v3, -0x111112

    const/4 v5, 0x2

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

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v9, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-virtual {p1, v8}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 42
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

    .line 43
    if-eqz v0, :cond_4

    const v4, -0x111112

    .line 44
    :cond_4
    const-string v3, "\u041f\u0430\u043f\u043a\u0430 \u0434\u043b\u044f \u0444\u0430\u0439\u043b\u043e\u0432 \u0440\u0435\u0437\u0435\u0440\u0432\u043d\u043e\u0433\u043e \u043a\u043e\u043f\u0438\u0440\u043e\u0432\u0430\u043d\u0438\u044f:"

    invoke-direct {p0, v2, v3, v4}, Lcom/cootek/smartinput5/backup/BackupActivity;->caption(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 45
    :try_start_0
    invoke-static {}, Lcom/cootek/smartinput5/backup/BackupLocations155;->folder()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    const-string v3, "\u041f\u0430\u043f\u043a\u0430 \u043d\u0430 SD \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0430"

    .line 46
    :goto_3
    invoke-direct {p0, v2, v3, v4}, Lcom/cootek/smartinput5/backup/BackupActivity;->path(Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    const-string v3, "\u041f\u0440\u0438 \u0432\u044b\u0431\u043e\u0440\u0435 \u0444\u0430\u0439\u043b\u0430 \u043c\u043e\u0436\u043d\u043e \u043e\u0442\u043a\u0440\u044b\u0442\u044c \u0434\u0440\u0443\u0433\u0443\u044e \u043f\u0430\u043f\u043a\u0443."

    invoke-direct {p0, v2, v3, v4}, Lcom/cootek/smartinput5/backup/BackupActivity;->caption(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 47
    const-string v3, "\u041e\u0442\u043f\u0440\u0430\u0432\u043a\u0430 \u0441\u043e\u0445\u0440\u0430\u043d\u044f\u0435\u0442 \u043a\u043e\u043f\u0438\u044e \u0432 \u044d\u0442\u043e\u0439 \u043f\u0430\u043f\u043a\u0435."

    invoke-direct {p0, v2, v3, v4}, Lcom/cootek/smartinput5/backup/BackupActivity;->caption(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 49
    const-string v3, "\u041f\u043e\u043b\u043d\u0430\u044f \u043a\u043e\u043f\u0438\u044f"

    invoke-direct {p0, v2, v3, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->section(Landroid/widget/LinearLayout;Ljava/lang/String;Z)V

    .line 50
    const-string v3, "\u0421\u043b\u043e\u0432\u0430\u0440\u0438, \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u0438 \u0431\u0443\u0444\u0435\u0440 \u043e\u0431\u043c\u0435\u043d\u0430 \u2014 ZIP.\n\u0411\u0435\u0437 \u0438\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0439 \u0431\u0443\u0444\u0435\u0440\u0430 \u043e\u0431\u043c\u0435\u043d\u0430."

    invoke-direct {p0, v2, v3, v4}, Lcom/cootek/smartinput5/backup/BackupActivity;->caption(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 51
    const-string v3, "\u0421\u043e\u0437\u0434\u0430\u0442\u044c \u043f\u043e\u043b\u043d\u0443\u044e \u043a\u043e\u043f\u0438\u044e"

    invoke-direct {p0, v2, v8, v3}, Lcom/cootek/smartinput5/backup/BackupActivity;->createButtons(Landroid/widget/LinearLayout;ILjava/lang/String;)V

    .line 52
    new-instance v3, Lcom/cootek/smartinput5/backup/BackupActivity$1;

    invoke-direct {v3, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$1;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;)V

    const-string v9, "\u0412\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c \u043f\u043e\u043b\u043d\u0443\u044e \u043a\u043e\u043f\u0438\u044e"

    invoke-direct {p0, v2, v9, v3}, Lcom/cootek/smartinput5/backup/BackupActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    .line 54
    const-string v3, "\u041f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u0435\u043b\u044c\u0441\u043a\u0438\u0439 \u0441\u043b\u043e\u0432\u0430\u0440\u044c"

    invoke-direct {p0, v2, v3, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->section(Landroid/widget/LinearLayout;Ljava/lang/String;Z)V

    .line 55
    const-string v3, "\u0424\u0430\u0439\u043b western.usr.\n\u041f\u0440\u0438 \u0432\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u0438 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u0441\u043e\u0445\u0440\u0430\u043d\u044f\u044e\u0442\u0441\u044f."

    invoke-direct {p0, v2, v3, v4}, Lcom/cootek/smartinput5/backup/BackupActivity;->caption(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 56
    const-string v3, "\u0421\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c western.usr"

    invoke-direct {p0, v2, v5, v3}, Lcom/cootek/smartinput5/backup/BackupActivity;->createButtons(Landroid/widget/LinearLayout;ILjava/lang/String;)V

    .line 57
    new-instance v3, Lcom/cootek/smartinput5/backup/BackupActivity$2;

    invoke-direct {v3, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$2;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;)V

    const-string v9, "\u0412\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c western.usr"

    invoke-direct {p0, v2, v9, v3}, Lcom/cootek/smartinput5/backup/BackupActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    .line 59
    const-string v3, "\u0421\u043b\u043e\u0432\u0430 \u0432 \u0442\u0435\u043a\u0441\u0442\u043e\u0432\u043e\u043c \u0444\u0430\u0439\u043b\u0435"

    invoke-direct {p0, v2, v3, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->section(Landroid/widget/LinearLayout;Ljava/lang/String;Z)V

    .line 60
    const-string v3, "\u0421\u043b\u043e\u0432\u0430 \u0441\u043e\u0445\u0440\u0430\u043d\u044f\u044e\u0442\u0441\u044f \u0432 western_dict_full.txt.\n\u0414\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u0438\u0435 \u0438\u0437 TXT \u0441\u043e\u0445\u0440\u0430\u043d\u044f\u0435\u0442 \u043f\u0440\u0435\u0436\u043d\u0438\u0435 \u0441\u043b\u043e\u0432\u0430."

    invoke-direct {p0, v2, v3, v4}, Lcom/cootek/smartinput5/backup/BackupActivity;->caption(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 61
    const-string v3, "\u0421\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c \u0441\u043b\u043e\u0432\u0430 \u0432 TXT"

    invoke-direct {p0, v2, v1, v3}, Lcom/cootek/smartinput5/backup/BackupActivity;->createButtons(Landroid/widget/LinearLayout;ILjava/lang/String;)V

    .line 62
    new-instance v1, Lcom/cootek/smartinput5/backup/BackupActivity$3;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$3;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;)V

    const-string v3, "\u0414\u043e\u0431\u0430\u0432\u0438\u0442\u044c \u0441\u043b\u043e\u0432\u0430 \u0438\u0437 TXT"

    invoke-direct {p0, v2, v3, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    .line 64
    const-string v1, "\u041f\u0435\u0440\u0435\u043d\u043e\u0441 \u0441\u0442\u0430\u0440\u044b\u0445 \u0434\u0430\u043d\u043d\u044b\u0445"

    invoke-direct {p0, v2, v1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->section(Landroid/widget/LinearLayout;Ljava/lang/String;Z)V

    .line 65
    const-string v1, "\u0414\u043e\u0431\u0430\u0432\u043b\u044f\u0435\u0442 \u043d\u0435\u0434\u043e\u0441\u0442\u0430\u044e\u0449\u0438\u0435 \u0444\u0430\u0439\u043b\u044b \u0441 SD.\n\u041e\u0440\u0438\u0433\u0438\u043d\u0430\u043b\u044b \u0441\u043e\u0445\u0440\u0430\u043d\u044f\u044e\u0442\u0441\u044f."

    invoke-direct {p0, v2, v1, v4}, Lcom/cootek/smartinput5/backup/BackupActivity;->caption(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 66
    new-instance v1, Lcom/cootek/smartinput5/backup/BackupActivity$4;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$4;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;)V

    const-string v3, "\u041f\u0435\u0440\u0435\u043d\u0435\u0441\u0442\u0438 \u0434\u0430\u043d\u043d\u044b\u0435 \u0438\u0437 TouchPal2015"

    invoke-direct {p0, v2, v3, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    .line 67
    const-string v1, "TouchPal2015/ \u0438 TouchPalv5/"

    invoke-direct {p0, v2, v1, v4}, Lcom/cootek/smartinput5/backup/BackupActivity;->caption(Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/TextView;

    .line 68
    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    const v4, 0x1010078

    invoke-direct {v1, p0, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->progress:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->progress:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v3}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v3

    invoke-direct {v1, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x10

    invoke-direct {p0, v3}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    const v0, -0x444445

    goto :goto_4

    :cond_5
    const v0, -0x99999a

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    invoke-direct {p0, v5}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->status:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->showStoredStatus()V

    .line 71
    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->main:Landroid/os/Handler;

    new-instance v0, Lcom/cootek/smartinput5/backup/BackupActivity$5;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$5;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 485
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->destroyed:Z

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->discardPrepared()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 483
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
    .locals 1

    .line 166
    const/16 p2, 0x3c8f

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->permissionKind:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity;->permissionKind:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->setBusy(ZLjava/lang/String;)V

    .line 167
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->alive()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 168
    :cond_1
    if-eqz p3, :cond_2

    array-length v0, p3

    if-lez v0, :cond_2

    aget p2, p3, p2

    if-nez p2, :cond_2

    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->create(IZ)V

    goto :goto_0

    .line 169
    :cond_2
    const-string p1, "\u0411\u0435\u0437 \u0434\u043e\u0441\u0442\u0443\u043f\u0430 \u043a \u0444\u0430\u0439\u043b\u0430\u043c \u043a\u043e\u043f\u0438\u044e \u043d\u0430 SD \u0441\u043e\u0437\u0434\u0430\u0442\u044c \u043d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c."

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->showError(Ljava/lang/String;)V

    .line 170
    :goto_0
    return-void

    .line 167
    :cond_3
    :goto_1
    return-void
.end method
