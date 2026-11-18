.class public Lcom/cootek/smartinput5/engine/HandWriteMaskManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "HandWriteMaskManager"


# instance fields
.field private mDownloadDialog:Landroid/support/v7/app/c;

.field private mEngine:Lcom/cootek/smartinput5/engine/Engine;

.field private mHandler:Landroid/os/Handler;

.field private mHandwrite:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cootek/smartinput5/engine/Engine;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mDownloadDialog:Landroid/support/v7/app/c;

    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mHandwrite:[Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "com.cootek.smartinputv5.language.chs.handwrite"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v1, "com.cootek.smartinputv5.language.chs.multihandwrite"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "com.cootek.smartinputv5.language.chs.cloudhandwrite"

    aput-object v1, p1, v0

    const/4 v0, 0x3

    const-string v1, "com.cootek.smartinputv5.language.v5.chs.handwrite"

    aput-object v1, p1, v0

    const/4 v0, 0x4

    const-string v1, "com.cootek.smartinputv5.language.v5.chs.multihandwrite"

    aput-object v1, p1, v0

    const/4 v0, 0x5

    const-string v1, "com.cootek.smartinputv5.language.v5.chs.cloudhandwrite"

    aput-object v1, p1, v0

    return-void
.end method

.method static synthetic access$000(Lcom/cootek/smartinput5/engine/HandWriteMaskManager;)Lcom/cootek/smartinput5/engine/Engine;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    return-object p0
.end method

.method static synthetic access$100(Lcom/cootek/smartinput5/engine/HandWriteMaskManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200()Z
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mustHasHWData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/cootek/smartinput5/engine/HandWriteMaskManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->showDownloadMask()V

    return-void
.end method

.method static synthetic access$400(Lcom/cootek/smartinput5/engine/HandWriteMaskManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->showDownloadToast()V

    return-void
.end method

.method static synthetic access$500(Lcom/cootek/smartinput5/engine/HandWriteMaskManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->showDownloadDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/cootek/smartinput5/engine/HandWriteMaskManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->download()V

    return-void
.end method

.method static synthetic access$700(Lcom/cootek/smartinput5/engine/HandWriteMaskManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->cancel()V

    return-void
.end method

.method private cancel()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->G()Lcom/cootek/smartinput5/ui/HandWriteMask;

    move-result-object v0

    invoke-static {}, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mustHasHWData()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/HandWriteMask;->setStatus(I)V

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/HandWriteMask;->setVisible(Z)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/o0;->K(Z)Lcom/cootek/smartinput5/ui/HandWriteView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/o0;->K(Z)Lcom/cootek/smartinput5/ui/HandWriteView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/HandWriteView;->s()V

    :cond_0
    return-void
.end method

.method private download()V
    .locals 4

    invoke-static {}, Lcom/cootek/smartinput5/net/i;->E()Lcom/cootek/smartinput5/net/i;

    move-result-object v0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/z;->Y()Lcom/cootek/smartinput5/func/HandWriteManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/HandWriteManager;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v2}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v2

    const v3, 0x7f0f076a

    invoke-static {v2, v3}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/cootek/smartinput5/net/i;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->G()Lcom/cootek/smartinput5/ui/HandWriteMask;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/HandWriteMask;->setStatus(I)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mustHasHWData()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/HandWriteMask;->setVisible(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->oldHWPackageExist()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->removeOldHWPackage()V

    :cond_1
    return-void
.end method

.method private getDownloadTitleId()I
    .locals 3

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->Y()Lcom/cootek/smartinput5/func/HandWriteManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/HandWriteManager;->a()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f0f03ff

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x7f0f03fe

    goto :goto_0

    :cond_1
    const v2, 0x7f0f03fd

    goto :goto_0

    :cond_2
    const v2, 0x7f0f0400

    :cond_3
    :goto_0
    return v2
.end method

.method private hideMask()V
    .locals 2

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->popupBackToKeyboardWarningDialog()V

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->G()Lcom/cootek/smartinput5/ui/HandWriteMask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/HandWriteMask;->setVisible(Z)V

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/o0;->I(Z)Lcom/cootek/smartinput5/ui/HandWriteMaskView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/HandWriteMaskView;->A()V

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Engine;->getFilterManager()Lcom/cootek/smartinput5/engine/FilterManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/engine/FilterManager;->unregisterFilterListener(Lcom/cootek/smartinput5/engine/FilterManager$IFilterListener;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Engine;->getCandidateManager()Lcom/cootek/smartinput5/engine/CandidateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/engine/CandidateManager;->unregisterCandidateListener(Lcom/cootek/smartinput5/engine/CandidateManager$ICandidateListener;)V

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->B()Lcom/cootek/smartinput5/ui/FilterScroll;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getFilterManager()Lcom/cootek/smartinput5/engine/FilterManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/ui/o0;->B()Lcom/cootek/smartinput5/ui/FilterScroll;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/FilterManager;->registerFilterListener(Lcom/cootek/smartinput5/engine/FilterManager$IFilterListener;)V

    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->u()Lcom/cootek/smartinput5/ui/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/g;->f()Lcom/cootek/smartinput5/ui/DialectBar;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Engine;->getCandidateManager()Lcom/cootek/smartinput5/engine/CandidateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/engine/CandidateManager;->registerCandidateListener(Lcom/cootek/smartinput5/engine/CandidateManager$ICandidateListener;)V

    :cond_2
    return-void
.end method

.method private initDownloadDialog()V
    .locals 3

    new-instance v0, Lcom/cootek/smartinput5/ui/c$a;

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cootek/smartinput5/ui/c$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v1

    const v2, 0x7f0f03ee

    invoke-static {v1, v2}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cootek/smartinput5/engine/HandWriteMaskManager$2;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/engine/HandWriteMaskManager$2;-><init>(Lcom/cootek/smartinput5/engine/HandWriteMaskManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->C(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v1

    const v2, 0x7f0f031d

    invoke-static {v1, v2}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cootek/smartinput5/engine/HandWriteMaskManager$3;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/engine/HandWriteMaskManager$3;-><init>(Lcom/cootek/smartinput5/engine/HandWriteMaskManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->s(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    new-instance v1, Lcom/cootek/smartinput5/engine/HandWriteMaskManager$4;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/engine/HandWriteMaskManager$4;-><init>(Lcom/cootek/smartinput5/engine/HandWriteMaskManager;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->x(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/c$a;

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->a()Landroid/support/v7/app/c;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mDownloadDialog:Landroid/support/v7/app/c;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v2, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v2}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v2

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private initDownloadDialogContent()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v1

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->getDownloadTitleId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->oldHWPackageExist()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v1

    const v2, 0x7f0f09f3

    invoke-static {v1, v2}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mDownloadDialog:Landroid/support/v7/app/c;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/c;->s(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static mustHasHWData()Z
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->m0()Lcom/cootek/smartinput5/engine/Okinawa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getCurrentLanguageId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chinese_handwrite"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private oldHWPackageExist()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private popupBackToKeyboardWarningDialog()V
    .locals 7

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(I)I

    move-result v0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/func/z;->d0()Lcom/cootek/smartinput5/func/N;

    move-result-object v2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/smartinput5/engine/Engine;->getCurrentLanguageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cootek/smartinput5/func/N;->V(Ljava/lang/String;)Lcom/cootek/smartinput5/func/language/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/func/language/a;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v3}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v3

    const v4, 0x7f0f0489

    invoke-static {v3, v4}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-ne v0, v4, :cond_0

    new-instance v3, Lcom/cootek/smartinput5/ui/c$a;

    iget-object v5, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v5}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/cootek/smartinput5/ui/c$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/cootek/smartinput5/ui/c$a;->m0(Ljava/lang/CharSequence;)Lcom/cootek/smartinput5/ui/c$a;

    iget-object v2, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v2}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v2

    const v5, 0x7f0f048a

    invoke-static {v2, v5}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Lcom/cootek/smartinput5/ui/c$a;->t0(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/cootek/smartinput5/ui/c$a;

    invoke-virtual {v3, v4}, Lcom/cootek/smartinput5/ui/c$a;->A0(Z)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v2

    add-int/2addr v0, v4

    invoke-virtual {v2, v1, v0}, Lcom/cootek/smartinput5/engine/Settings;->setIntSetting(II)V

    :cond_0
    return-void
.end method

.method private removeOldHWPackage()V
    .locals 5

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    invoke-static {v0}, Lcom/cootek/smartinput5/func/i;->j(Landroid/content/Context;)Lcom/cootek/smartinput5/func/i;

    move-result-object v2

    iget-object v3, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mHandwrite:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/cootek/smartinput5/func/i;->I(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mHandwrite:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "android.intent.action.DELETE"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v3}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private showDownloadDialog()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mDownloadDialog:Landroid/support/v7/app/c;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->initDownloadDialog()V

    :cond_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->initDownloadDialogContent()V

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mDownloadDialog:Landroid/support/v7/app/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getDialogManager()Lcom/cootek/smartinput5/engine/DialogManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mDownloadDialog:Landroid/support/v7/app/c;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/DialogManager;->showDialog(Landroid/app/Dialog;)V

    :cond_1
    return-void
.end method

.method private showDownloadMask()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->G()Lcom/cootek/smartinput5/ui/HandWriteMask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/HandWriteMask;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/HandWriteMask;->setStatus(I)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Engine;->isHandWriteMaskForbidden()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/HandWriteMask;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method private showDownloadToast()V
    .locals 4

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v0

    const v1, 0x7f0f040d

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object v1

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Lcom/cootek/smartinput5/ui/control/E;->u(Ljava/lang/String;III)V

    return-void
.end method

.method private showMask()V
    .locals 9

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->G()Lcom/cootek/smartinput5/ui/HandWriteMask;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/HandWriteMask;->setStatus(I)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v2

    const/16 v3, 0x1d

    const v4, 0x3ff0f

    const/16 v5, 0x8

    const-string v6, "chinese_pinyin"

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/cootek/smartinput5/engine/Settings;->setIntSetting(IIILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/HandWriteMask;->setVisible(Z)V

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->H()Lcom/cootek/smartinput5/ui/HandWriteMaskView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/ui/o0;->u()Lcom/cootek/smartinput5/ui/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/ui/g;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/HandWriteMaskView;->setTopView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/ui/o0;->L()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/HandWriteMaskView;->setInputView(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/HandWriteMaskView;->G()V

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Engine;->getFilterManager()Lcom/cootek/smartinput5/engine/FilterManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/engine/FilterManager;->registerFilterListener(Lcom/cootek/smartinput5/engine/FilterManager$IFilterListener;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Engine;->getCandidateManager()Lcom/cootek/smartinput5/engine/CandidateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/engine/CandidateManager;->registerCandidateListener(Lcom/cootek/smartinput5/engine/CandidateManager$ICandidateListener;)V

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->B()Lcom/cootek/smartinput5/ui/FilterScroll;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getFilterManager()Lcom/cootek/smartinput5/engine/FilterManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/ui/o0;->B()Lcom/cootek/smartinput5/ui/FilterScroll;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/FilterManager;->unregisterFilterListener(Lcom/cootek/smartinput5/engine/FilterManager$IFilterListener;)V

    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->u()Lcom/cootek/smartinput5/ui/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/g;->f()Lcom/cootek/smartinput5/ui/DialectBar;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Engine;->getCandidateManager()Lcom/cootek/smartinput5/engine/CandidateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/engine/CandidateManager;->unregisterCandidateListener(Lcom/cootek/smartinput5/engine/CandidateManager$ICandidateListener;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public showDownloadInfo()V
    .locals 5

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->G()Lcom/cootek/smartinput5/ui/HandWriteMask;

    move-result-object v0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Engine;->getSurfaceTemplate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/cootek/smartinput5/engine/HandWriteMaskManager$1;

    invoke-direct {v2, p0, v0}, Lcom/cootek/smartinput5/engine/HandWriteMaskManager$1;-><init>(Lcom/cootek/smartinput5/engine/HandWriteMaskManager;Lcom/cootek/smartinput5/ui/HandWriteMask;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public updateHandWriteMask(Z)V
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getSurfaceTemplate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->mEngine:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->G()Lcom/cootek/smartinput5/ui/HandWriteMask;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->showMask()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->hideMask()V

    :goto_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/o0;->C()Lcom/cootek/smartinput5/ui/FunctionBar;

    :cond_2
    :goto_1
    return-void
.end method
