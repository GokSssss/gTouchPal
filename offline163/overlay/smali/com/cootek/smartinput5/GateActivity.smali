.class public Lcom/cootek/smartinput5/GateActivity;
.super Lcom/cootek/smartinput5/func/resource/ui/b;


# static fields
.field private static final l:I = 0x1

.field private static final m:Ljava/lang/String; = "com.cootek.smartinput5.GateActivity.EXTRA_SHOW_THEME_SELECTOR"


# instance fields
.field private h:Z

.field private i:Landroid/os/Handler;

.field private j:Z

.field private k:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/resource/ui/b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/GateActivity;->h:Z

    new-instance v1, Lcom/cootek/smartinput5/GateActivity$a;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/GateActivity$a;-><init>(Lcom/cootek/smartinput5/GateActivity;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/GateActivity;->i:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/cootek/smartinput5/GateActivity;->j:Z

    return-void
.end method

.method static synthetic h(Lcom/cootek/smartinput5/GateActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/GateActivity;->k:Landroid/view/View;

    return-object p0
.end method

.method static synthetic i(Lcom/cootek/smartinput5/GateActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/GateActivity;->p()V

    return-void
.end method

.method static synthetic j(Lcom/cootek/smartinput5/GateActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/GateActivity;->s()V

    return-void
.end method

.method static synthetic k(Lcom/cootek/smartinput5/GateActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/GateActivity;->q()V

    return-void
.end method

.method static synthetic m(Lcom/cootek/smartinput5/GateActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cootek/smartinput5/GateActivity;->h:Z

    return p1
.end method

.method private p()V
    .locals 2

    invoke-static {p0}, Lcom/cootek/smartinput5/func/permission/a;->l(Landroid/content/Context;)Lcom/cootek/smartinput5/func/permission/a;

    move-result-object v0

    new-instance v1, Lcom/cootek/smartinput5/GateActivity$e;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/GateActivity$e;-><init>(Lcom/cootek/smartinput5/GateActivity;)V

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/permission/a;->y(Lcom/cootek/smartinput5/func/permission/a$b;)V

    invoke-static {p0}, Lcom/cootek/smartinput5/func/permission/a;->l(Landroid/content/Context;)Lcom/cootek/smartinput5/func/permission/a;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/permission/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method private q()V
    .locals 1

    invoke-static {p0}, Lcom/cootek/smartinput5/func/w0;->e0(Landroid/content/Context;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/asset/i;->H()Lcom/cootek/smartinput5/func/asset/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cootek/smartinput5/func/asset/i;->t(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/GateActivity;->j:Z

    return-void
.end method

.method private r()V
    .locals 5

    const v0, 0x7f0c0083

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/cootek/smartinput5/ui/K;

    invoke-direct {v1}, Lcom/cootek/smartinput5/ui/K;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0603bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0601e0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/cootek/smartinput5/ui/K;->e(II)V

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/ui/K;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f0a0160

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/cootek/smartinput5/GateActivity;->k:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/GateActivity;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private s()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/cootek/smartinput5/func/asset/DummyNotificationActionReceiver;->showExtracFailedNotification(Landroid/content/Context;)V

    new-instance v0, Lcom/cootek/smartinput5/GateActivity$c;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/GateActivity$c;-><init>(Lcom/cootek/smartinput5/GateActivity;)V

    new-instance v1, Lcom/cootek/smartinput5/GateActivity$d;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/GateActivity$d;-><init>(Lcom/cootek/smartinput5/GateActivity;)V

    invoke-static {p0, v0, v1}, Lcom/cootek/smartinput5/func/asset/c;->b(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method protected n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cootek/smartinput5/GateActivity;->h:Z

    return v0
.end method

.method protected o()V
    .locals 3

    invoke-virtual {p0}, Lcom/cootek/smartinput5/GateActivity;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "com.cootek.smartinput5.GateActivity.EXTRA_SHOW_THEME_SELECTOR"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/cootek/smartinput5/TouchPalOptionInte;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "com.cootek.smartinput5.Guide.EXTRA_SHOW_THEME_SELECTOR"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-static {p0, v1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/cootek/smartinput5/func/resource/ui/b;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    sput-boolean p1, Lcom/cootek/smartinput5/h;->Z:Z

    invoke-static {p0}, Lcom/cootek/smartinput5/l/j/a;->b(Landroid/content/Context;)Lcom/cootek/smartinput5/l/j/a;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "APP_ICON_CLICKED"

    const-string v2, "/STATISTIC/"

    invoke-virtual {p1, v1, v0, v2}, Lcom/cootek/smartinput5/l/j/a;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cootek/smartinput5/GateActivity;->h:Z

    invoke-static {}, Lcom/cootek/smartinput5/func/asset/i;->H()Lcom/cootek/smartinput5/func/asset/i;

    move-result-object v0

    new-instance v1, Lcom/cootek/smartinput5/GateActivity$b;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/GateActivity$b;-><init>(Lcom/cootek/smartinput5/GateActivity;)V

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/asset/i;->m(Lcom/cootek/smartinput5/func/asset/ExtractTasks$a;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/asset/i;->H()Lcom/cootek/smartinput5/func/asset/i;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/cootek/smartinput5/func/asset/i;->q(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/cootek/smartinput5/func/asset/i;->H()Lcom/cootek/smartinput5/func/asset/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/asset/i;->K()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/cootek/smartinput5/GateActivity;->r()V

    invoke-static {p0}, Lcom/cootek/smartinput5/func/asset/DummyNotificationActionReceiver;->showInitializingNotification(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/GateActivity;->h:Z

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/cootek/smartinput5/h;->Z:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/GateActivity;->h:Z

    iget-boolean v0, p0, Lcom/cootek/smartinput5/GateActivity;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
