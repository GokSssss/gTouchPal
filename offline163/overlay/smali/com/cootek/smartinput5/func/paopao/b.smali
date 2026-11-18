.class public Lcom/cootek/smartinput5/func/paopao/b;
.super Ljava/lang/Object;


# static fields
.field public static final h:Ljava/lang/String; = "paopao_"

.field public static final i:Ljava/lang/String; = "paopaonew.ser"

.field public static final j:Ljava/lang/String; = "PaopaoManager"

.field private static final k:I = 0x15180

.field public static final l:Z


# instance fields
.field private final a:I

.field private b:Landroid/content/Context;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cootek/smartinput5/func/paopao/PaopaoData;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cootek/smartinput5/func/paopao/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Lcom/cootek/smartinput5/func/paopao/a;

.field private g:Lcom/cootek/smartinput5/func/paopao/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x50

    iput v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->a:I

    iput-object p1, p0, Lcom/cootek/smartinput5/func/paopao/b;->b:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->d:Ljava/util/ArrayList;

    new-instance v0, Lcom/cootek/smartinput5/func/paopao/a;

    invoke-direct {v0, p1}, Lcom/cootek/smartinput5/func/paopao/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->f:Lcom/cootek/smartinput5/func/paopao/a;

    new-instance v0, Lcom/cootek/smartinput5/func/paopao/c;

    invoke-direct {v0, p1}, Lcom/cootek/smartinput5/func/paopao/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->g:Lcom/cootek/smartinput5/func/paopao/c;

    return-void
.end method

.method private A()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->Q()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c00fc

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a03ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v1, 0x7f0a00a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    new-instance v2, Lcom/cootek/smartinput5/ui/c$a;

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->Q()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/cootek/smartinput5/ui/c$a;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080257

    invoke-virtual {v2, v3}, Landroid/support/v7/app/c$a;->g(I)Landroid/support/v7/app/c$a;

    iget-object v3, p0, Lcom/cootek/smartinput5/func/paopao/b;->b:Landroid/content/Context;

    const v4, 0x7f0f0772

    invoke-static {v3, v4}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/c$a;->K(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    iget-object v3, p0, Lcom/cootek/smartinput5/func/paopao/b;->b:Landroid/content/Context;

    const v4, 0x7f0f05ae

    invoke-static {v3, v4}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/cootek/smartinput5/func/paopao/b$c;

    invoke-direct {v4, p0, v1}, Lcom/cootek/smartinput5/func/paopao/b$c;-><init>(Lcom/cootek/smartinput5/func/paopao/b;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/c$a;->C(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    new-instance v1, Lcom/cootek/smartinput5/func/paopao/b$d;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/func/paopao/b$d;-><init>(Lcom/cootek/smartinput5/func/paopao/b;)V

    invoke-virtual {v2, v1}, Landroid/support/v7/app/c$a;->x(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/c$a;

    invoke-virtual {v2, v0}, Landroid/support/v7/app/c$a;->M(Landroid/view/View;)Landroid/support/v7/app/c$a;

    invoke-virtual {v2}, Landroid/support/v7/app/c$a;->a()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/16 v3, 0x3eb

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v2

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

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private C()V
    .locals 4

    iget-object v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->f:Lcom/cootek/smartinput5/func/paopao/a;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/paopao/a;->g()Lcom/cootek/smartinput5/func/paopao/PaopaoData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/func/paopao/b;->v(Lcom/cootek/smartinput5/func/paopao/PaopaoData;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->f:Lcom/cootek/smartinput5/func/paopao/a;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/paopao/a;->d()Lcom/cootek/smartinput5/func/paopao/PaopaoData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/func/paopao/b;->v(Lcom/cootek/smartinput5/func/paopao/PaopaoData;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->f:Lcom/cootek/smartinput5/func/paopao/a;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/paopao/a;->a()Lcom/cootek/smartinput5/func/paopao/PaopaoData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/func/paopao/b;->v(Lcom/cootek/smartinput5/func/paopao/PaopaoData;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->f:Lcom/cootek/smartinput5/func/paopao/a;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/paopao/a;->i()[Lcom/cootek/smartinput5/func/paopao/PaopaoData;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lcom/cootek/smartinput5/func/paopao/b;->v(Lcom/cootek/smartinput5/func/paopao/PaopaoData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/cootek/smartinput5/func/paopao/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/func/paopao/b;->b:Landroid/content/Context;

    return-object p0
.end method

.method private b()Z
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->L()Lcom/cootek/smartinput5/func/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/l;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/func/paopao/b;->c()Z

    move-result v0

    return v0
.end method

.method private c()Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/z;->L()Lcom/cootek/smartinput5/func/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/l;->g()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-string v1, "twitter://user"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/func/paopao/b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private f()V
    .locals 2

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/paopao/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/paopao/b;->g()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/func/paopao/b;->h()V

    :goto_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/TouchPalIME;->requestHideSelf(I)V

    :cond_1
    return-void
.end method

.method private g()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "https://twitter.com/TouchPal/followers"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "com.twitter.android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/cootek/smartinput5/func/paopao/b;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private h()V
    .locals 4

    const-string v0, "https://twitter.com/TouchPal"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "twitter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private m(I)I
    .locals 0

    sparse-switch p1, :sswitch_data_0

    const/4 p1, -0x1

    return p1

    :sswitch_0
    const/16 p1, 0x9f

    return p1

    :sswitch_1
    const/16 p1, 0x7a

    return p1

    :sswitch_2
    const/16 p1, 0x77

    return p1

    :sswitch_3
    const/16 p1, 0xb0

    return p1

    :sswitch_4
    const/16 p1, 0x8a

    return p1

    :sswitch_5
    const/16 p1, 0x9a

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x40000004 -> :sswitch_5
        0x40000005 -> :sswitch_4
        0x40000007 -> :sswitch_3
        0x40000011 -> :sswitch_2
        0x40000012 -> :sswitch_1
        0x40000013 -> :sswitch_0
    .end sparse-switch
.end method

.method private p()V
    .locals 4

    iget-object v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cootek/smartinput5/func/paopao/PaopaoData;

    iget v2, v1, Lcom/cootek/smartinput5/func/paopao/PaopaoData;->id:I

    const v3, 0x40000006    # 2.0000014f

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v2

    const/16 v3, 0xbd

    invoke-virtual {v2, v3}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v2

    const-string v3, "com.cootek.smartinput5.ui.settings.MainEntranceActivity.action.HOTWORD"

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/cootek/smartinput5/func/paopao/PaopaoData;->isRead:Z

    iput-object v3, v1, Lcom/cootek/smartinput5/func/paopao/PaopaoData;->action:Ljava/lang/String;

    iget-object v2, p0, Lcom/cootek/smartinput5/func/paopao/b;->b:Landroid/content/Context;

    const v3, 0x7f0f0407

    invoke-static {v2, v3}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cootek/smartinput5/func/paopao/PaopaoData;->title:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object v3, v1, Lcom/cootek/smartinput5/func/paopao/PaopaoData;->action:Ljava/lang/String;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public B(I)V
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cootek/smartinput5/func/paopao/PaopaoData;

    iget v2, v1, Lcom/cootek/smartinput5/func/paopao/PaopaoData;->id:I

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Lcom/cootek/smartinput5/func/paopao/b;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public D()V
    .locals 3

    const-string v0, "PaopaoManager"

    const-string v1, "pushHotWord"

    invoke-static {v0, v1}, Lcom/cootek/smartinput/utilities/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->g:Lcom/cootek/smartinput5/func/paopao/c;

    iget-object v1, p0, Lcom/cootek/smartinput5/func/paopao/b;->f:Lcom/cootek/smartinput5/func/paopao/a;

    const-string v2, "Hotword update test!"

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/func/paopao/a;->c(Ljava/lang/String;)Lcom/cootek/smartinput5/func/paopao/PaopaoData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/paopao/c;->b(Lcom/cootek/smartinput5/func/paopao/PaopaoData;)Lcom/cootek/smartinput5/func/paopao/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/func/paopao/b;->b:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iget-object v2, v0, Lcom/cootek/smartinput5/func/paopao/c$a;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v0, v0, Lcom/cootek/smartinput5/func/paopao/c$a;->a:I

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0xbd

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    return-void
.end method

.method public d()Z
    .locals 5

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x95

    const/16 v2, 0x14

    const-string v3, "chinese_pinyin"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(IILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(I)V
    .locals 2

    const v0, 0x40000002    # 2.0000005f

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const v0, 0x40000007    # 2.0000017f

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    const/16 v0, 0xb0

    invoke-virtual {p1, v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    const/16 v0, 0xc2

    invoke-virtual {p1, v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    :goto_0
    return-void
.end method

.method public i(I)Lcom/cootek/smartinput5/func/paopao/PaopaoData;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cootek/smartinput5/func/paopao/PaopaoData;

    return-object p1
.end method

.method public j()Lcom/cootek/smartinput5/func/paopao/a;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->f:Lcom/cootek/smartinput5/func/paopao/a;

    return-object v0
.end method

.method public k(I)Ljava/lang/String;
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    xor-int/2addr p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "paopao_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cootek/smartinput5/func/paopao/PaopaoData;

    iget-boolean v2, v2, Lcom/cootek/smartinput5/func/paopao/PaopaoData;->isRead:Z

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public o()Lcom/cootek/smartinput5/func/paopao/PaopaoData;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->f:Lcom/cootek/smartinput5/func/paopao/a;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/paopao/a;->k()Lcom/cootek/smartinput5/func/paopao/PaopaoData;

    move-result-object v0

    return-object v0
.end method

.method public q()Z
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/func/paopao/b;->s(I)Z

    move-result v0

    return v0
.end method

.method public r(Lcom/cootek/smartinput5/func/paopao/PaopaoData;)Z
    .locals 1

    iget p1, p1, Lcom/cootek/smartinput5/func/paopao/PaopaoData;->id:I

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public s(I)Z
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->q(Landroid/content/Context;)Lcom/cootek/smartinput5/configuration/ConfigurationManager;

    move-result-object v0

    sget-object v1, Lcom/cootek/smartinput5/configuration/ConfigurationType;->CATEGORY_PAOPAO:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/func/paopao/b;->k(I)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, v2}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->k(Lcom/cootek/smartinput5/configuration/ConfigurationType;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public t()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->e:Z

    return-void
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->e:Z

    return v0
.end method

.method public v(Lcom/cootek/smartinput5/func/paopao/PaopaoData;)V
    .locals 3

    iget v0, p1, Lcom/cootek/smartinput5/func/paopao/PaopaoData;->id:I

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/func/paopao/b;->s(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cootek/smartinput5/func/paopao/PaopaoData;

    iget v1, v1, Lcom/cootek/smartinput5/func/paopao/PaopaoData;->id:I

    iget v2, p1, Lcom/cootek/smartinput5/func/paopao/PaopaoData;->id:I

    if-ne v1, v2, :cond_1

    return-void

    :cond_2
    iget v0, p1, Lcom/cootek/smartinput5/func/paopao/PaopaoData;->type:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->e:Z

    :cond_3
    iget-object v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->g:Lcom/cootek/smartinput5/func/paopao/c;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/paopao/c;->b(Lcom/cootek/smartinput5/func/paopao/PaopaoData;)Lcom/cootek/smartinput5/func/paopao/c$a;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public w()V
    .locals 4

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/paopao/b;->p()V

    iget-boolean v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->e:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->C()Lcom/cootek/smartinput5/ui/FunctionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/cootek/smartinput5/func/paopao/b;->e:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/FunctionBar;->V()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->e:Z

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->b:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/cootek/smartinput5/func/paopao/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->q(Landroid/content/Context;)Lcom/cootek/smartinput5/configuration/ConfigurationManager;

    move-result-object v1

    sget-object v2, Lcom/cootek/smartinput5/configuration/ConfigurationType;->ENABLE_NOTIFICATIONS:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->j(Lcom/cootek/smartinput5/configuration/ConfigurationType;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/cootek/smartinput5/func/paopao/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cootek/smartinput5/func/paopao/c$a;

    iget-object v3, v2, Lcom/cootek/smartinput5/func/paopao/c$a;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v2, v2, Lcom/cootek/smartinput5/func/paopao/c$a;->a:I

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    iget-object v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public x(Lcom/cootek/smartinput5/func/paopao/PaopaoData;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/cootek/smartinput5/func/paopao/PaopaoData;->isRead:Z

    return-void
.end method

.method public y(Z)V
    .locals 7

    iget-object v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/cootek/smartinput5/func/paopao/b;->b:Landroid/content/Context;

    const-string v2, "paopaonew.ser"

    invoke-static {v1, v2}, Lcom/cootek/smartinput5/func/I;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cootek/smartinput5/func/paopao/PaopaoData;

    if-eqz v4, :cond_2

    if-eqz p1, :cond_1

    iget-boolean v5, v4, Lcom/cootek/smartinput5/func/paopao/PaopaoData;->isRead:Z

    if-nez v5, :cond_2

    iget v5, v4, Lcom/cootek/smartinput5/func/paopao/PaopaoData;->id:I

    invoke-direct {p0, v5}, Lcom/cootek/smartinput5/func/paopao/b;->m(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v5

    iget v4, v4, Lcom/cootek/smartinput5/func/paopao/PaopaoData;->id:I

    invoke-direct {p0, v4}, Lcom/cootek/smartinput5/func/paopao/b;->m(I)I

    move-result v4

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/cootek/smartinput5/func/paopao/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_8

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-object v0, v1

    goto :goto_6

    :catchall_1
    move-exception p1

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v2, v0

    :goto_3
    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_4
    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_5
    throw p1

    :catch_4
    move-object v2, v0

    :catch_5
    :goto_6
    if-eqz v0, :cond_6

    :try_start_7
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    :catch_6
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_7
    if-eqz v2, :cond_7

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_8

    :catch_7
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_8
    return-void
.end method

.method public z(Lcom/cootek/smartinput5/func/paopao/PaopaoData;)Z
    .locals 7

    const/4 v0, 0x1

    sput-boolean v0, Lcom/cootek/smartinput5/teaching/k/b;->A:Z

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/func/paopao/b;->x(Lcom/cootek/smartinput5/func/paopao/PaopaoData;)V

    iget v1, p1, Lcom/cootek/smartinput5/func/paopao/PaopaoData;->dismissFlag:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/cootek/smartinput5/func/paopao/PaopaoData;->id:I

    invoke-virtual {p0, v1}, Lcom/cootek/smartinput5/func/paopao/b;->B(I)V

    :cond_0
    iget v1, p1, Lcom/cootek/smartinput5/func/paopao/PaopaoData;->type:I

    const/4 v2, 0x2

    const/high16 v3, 0x10000000

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    iget-object p1, p1, Lcom/cootek/smartinput5/func/paopao/PaopaoData;->url:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/cootek/smartinput5/TouchPalIME;->requestHideSelf(I)V

    :cond_1
    iget-object p1, p0, Lcom/cootek/smartinput5/func/paopao/b;->b:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    iget-object v0, p1, Lcom/cootek/smartinput5/func/paopao/PaopaoData;->action:Ljava/lang/String;

    const-string v1, "com.cootek.smartinput.intent.action.more_cells"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lcom/cootek/smartinput5/func/onestopmanager/a;

    iget-object v0, p0, Lcom/cootek/smartinput5/func/paopao/b;->b:Landroid/content/Context;

    invoke-direct {p1, v0, v4}, Lcom/cootek/smartinput5/func/onestopmanager/a;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/onestopmanager/a;->O()V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p1, Lcom/cootek/smartinput5/func/paopao/PaopaoData;->action:Ljava/lang/String;

    const-string v1, "com.cootek.smartinput.intent.action.FOLLOW_WEIBO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/paopao/b;->f()V

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/cootek/smartinput5/TouchPalIME;->requestHideSelf(I)V

    :cond_5
    new-instance v0, Landroid/content/Intent;

    iget-object p1, p1, Lcom/cootek/smartinput5/func/paopao/PaopaoData;->action:Ljava/lang/String;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/func/paopao/b;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Lcom/cootek/smartinput5/func/paopao/b;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/cootek/smartinput5/func/paopao/b;->b:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :cond_8
    const/4 v2, 0x5

    if-ne v1, v2, :cond_9

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->Q()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/cootek/smartinput5/func/paopao/b$a;

    invoke-direct {v2, p0, p1}, Lcom/cootek/smartinput5/func/paopao/b$a;-><init>(Lcom/cootek/smartinput5/func/paopao/b;Lcom/cootek/smartinput5/func/paopao/PaopaoData;)V

    invoke-static {v1, v2, v0}, Lcom/cootek/smartinput5/func/w0;->e(Landroid/content/Context;Ljava/lang/Runnable;Z)V

    goto :goto_1

    :cond_9
    const/4 v2, 0x6

    if-ne v1, v2, :cond_b

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    sput-boolean v0, Lcom/cootek/smartinput5/teaching/k/b;->A:Z

    sput-boolean v0, Lcom/cootek/smartinput5/teaching/k/b;->C:Z

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->isHandwriteMaskVisible()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x50

    goto :goto_0

    :cond_a
    const/4 v0, 0x0

    :goto_0
    new-instance v2, Lcom/cootek/smartinput5/func/paopao/b$b;

    invoke-direct {v2, p0, p1}, Lcom/cootek/smartinput5/func/paopao/b$b;-><init>(Lcom/cootek/smartinput5/func/paopao/b;Lcom/cootek/smartinput5/func/paopao/PaopaoData;)V

    int-to-long v5, v0

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    :goto_1
    return v4
.end method
