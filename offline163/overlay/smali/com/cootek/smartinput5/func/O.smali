.class public Lcom/cootek/smartinput5/func/O;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput5/func/O$e;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "LimitationManager"

.field private static final h:Ljava/lang/String; = "/"

.field private static final i:I = 0x0

.field private static final j:I = 0x1

.field private static final k:I = 0x2

.field public static final l:I = 0x0

.field public static final m:I = 0x1

.field public static final n:I = 0x2

.field public static final o:I = 0x3

.field public static final p:I = -0x1

.field public static final q:I = 0x0

.field public static final r:I = 0x1

.field public static final s:I = 0x2

.field private static final t:[Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Z

.field private final c:[I

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cootek/smartinput5/func/O$e;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DOWNLOAD_LANGUAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DOWNLOAD_SKIN"

    aput-object v2, v0, v1

    sput-object v0, Lcom/cootek/smartinput5/func/O;->t:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/cootek/smartinput5/func/O;->e:I

    iput-boolean v0, p0, Lcom/cootek/smartinput5/func/O;->f:Z

    iput-object p1, p0, Lcom/cootek/smartinput5/func/O;->a:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cootek/smartinput5/func/O;->d:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/O;->p()Z

    move-result p1

    iput-boolean p1, p0, Lcom/cootek/smartinput5/func/O;->b:Z

    iget-object p1, p0, Lcom/cootek/smartinput5/func/O;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030012

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/cootek/smartinput5/func/O;->c:[I

    return-void
.end method

.method private A(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    invoke-static {p2, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private B(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/func/O;->I(I)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v5, "facebook"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object p1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10200000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    invoke-static {p2, v1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    invoke-direct {p0, p2}, Lcom/cootek/smartinput5/func/O;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/func/O;->A(Ljava/lang/String;Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method private C(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/func/O;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/cootek/smartinput5/TouchPalOption;->R(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    :try_start_0
    invoke-static {p2, p1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->g0()Lcom/cootek/smartinput5/func/O;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/cootek/smartinput5/func/O;->I(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private D(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cootek/smartinput5/plugin/twitter/AuthorizeActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.cootek.smartinput.intent.category.MINIMODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "twitter.ShareActivity.EXTRA_CONST_TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "twitter.ShareActivity.EXTRA_TEXT_EDITABLE"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "twitter.ShareActivity.EXTRA_FOLLOW_US"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_TYPE:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_KEY:Ljava/lang/String;

    const/16 v2, 0xec

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_VALUE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "twitter.ShareActivity.EXTRA_BUNDLE_SETTING_CHANGED_ON_SUCCEED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_0
    invoke-static {p2, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/cootek/smartinput5/TouchPalIME;->requestHideSelf(I)V

    :cond_0
    return-void
.end method

.method private H(II)V
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/func/O;->c:[I

    aget v0, v0, p1

    sub-int/2addr v0, p2

    invoke-direct {p0, p1, v0}, Lcom/cootek/smartinput5/func/O;->x(II)V

    iget-object v0, p0, Lcom/cootek/smartinput5/func/O;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cootek/smartinput5/func/O$e;

    invoke-interface {v1}, Lcom/cootek/smartinput5/func/O$e;->b()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-interface {v1, p2}, Lcom/cootek/smartinput5/func/O$e;->l(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/cootek/smartinput5/func/O;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cootek/smartinput5/func/O;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/cootek/smartinput5/func/O;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/func/O;->D(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic c(Lcom/cootek/smartinput5/func/O;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/func/O;->B(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic d(Lcom/cootek/smartinput5/func/O;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/func/O;->C(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private e(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private i(I)I
    .locals 4

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/O;->l(I)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xed

    const/16 v2, 0x17

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(IILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;)I

    move-result p1

    return p1
.end method

.method private k(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.facebook.com/sharer.php?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0f0834

    invoke-static {p1, v1}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private l(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cootek/smartinput5/func/O;->t:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const v0, 0x7f0f0b35

    invoke-static {p0, v0}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cootek/smartinput5/func/x0;->d()Lcom/cootek/smartinput5/func/x0;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, p0, v2}, Lcom/cootek/smartinput5/func/x0;->h(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p0, v1}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private p()Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/O;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->q(Landroid/content/Context;)Lcom/cootek/smartinput5/configuration/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->C()Z

    move-result v0

    return v0
.end method

.method private q(II)V
    .locals 3

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->J0()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    const/4 v0, 0x3

    invoke-static {p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_TYPE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_KEY:Ljava/lang/String;

    const/16 v2, 0xed

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_CATEGORY_TYPE:Ljava/lang/String;

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_CATEGORY_VALUE:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/O;->l(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_FIRE_CHANGED:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->a0()Lcom/cootek/smartinput5/engine/IPCManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/cootek/smartinput5/engine/IPCManager;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_TYPE:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_KEY:Ljava/lang/String;

    const/16 v3, 0xee

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_CATEGORY_TYPE:Ljava/lang/String;

    const/16 v3, 0x17

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_CATEGORY_VALUE:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_VALUE:Ljava/lang/String;

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->a0()Lcom/cootek/smartinput5/engine/IPCManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/engine/IPCManager;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private s()V
    .locals 4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_KEY:Ljava/lang/String;

    const/16 v3, 0xec

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_VALUE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/z;->a0()Lcom/cootek/smartinput5/engine/IPCManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/engine/IPCManager;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private t(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private x(II)V
    .locals 7

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/O;->l(I)Ljava/lang/String;

    move-result-object v4

    const/16 v1, 0xed

    const/16 v3, 0x17

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/cootek/smartinput5/engine/Settings;->setIntSetting(IIILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;Z)V

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/func/O;->q(II)V

    return-void
.end method


# virtual methods
.method public E(Landroid/content/Context;)V
    .locals 4

    iget-boolean v0, p0, Lcom/cootek/smartinput5/func/O;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/cootek/smartinput5/ui/c$a;

    invoke-direct {v0, p1}, Lcom/cootek/smartinput5/ui/c$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f08b5

    invoke-static {p1, v1}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/c$a;->w0(Ljava/lang/CharSequence;)Lcom/cootek/smartinput5/ui/c$a;

    const v1, 0x7f0f08b2

    invoke-static {p1, v1}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/c$a;->m0(Ljava/lang/CharSequence;)Lcom/cootek/smartinput5/ui/c$a;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/c$a;->a()Landroid/support/v7/app/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const/4 v1, -0x1

    const v2, 0x7f0f08b4

    invoke-static {p1, v2}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cootek/smartinput5/func/O$a;

    invoke-direct {v3, p0, p1}, Lcom/cootek/smartinput5/func/O$a;-><init>(Lcom/cootek/smartinput5/func/O;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/app/c;->j(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x2

    const v2, 0x7f0f08b1

    invoke-static {p1, v2}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/cootek/smartinput5/func/O$b;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/func/O$b;-><init>(Lcom/cootek/smartinput5/func/O;)V

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v7/app/c;->j(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lcom/cootek/smartinput5/func/O$c;

    invoke-direct {p1, p0}, Lcom/cootek/smartinput5/func/O$c;-><init>(Lcom/cootek/smartinput5/func/O;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public F(Landroid/content/Context;)V
    .locals 5

    invoke-static {p1}, Lcom/cootek/smartinput5/func/O;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/cootek/smartinput5/ui/c$a;

    invoke-direct {v1, p1}, Lcom/cootek/smartinput5/ui/c$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f082b

    invoke-static {p1, v2}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/ui/c$a;->w0(Ljava/lang/CharSequence;)Lcom/cootek/smartinput5/ui/c$a;

    move-result-object v2

    const v3, 0x7f03001f

    invoke-static {p1, v3}, Lcom/cootek/smartinput5/func/resource/d;->j(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/cootek/smartinput5/func/O$d;

    invoke-direct {v4, p0, v0, p1}, Lcom/cootek/smartinput5/func/O$d;-><init>(Lcom/cootek/smartinput5/func/O;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/c$a;->l([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/ui/c$a;->a()Landroid/support/v7/app/c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public G(Lcom/cootek/smartinput5/func/O$e;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/O;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/func/O;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public I(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/O;->o()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget p1, p0, Lcom/cootek/smartinput5/func/O;->e:I

    if-ne p1, v1, :cond_0

    iput v2, p0, Lcom/cootek/smartinput5/func/O;->e:I

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/cootek/smartinput5/func/O;->e:I

    sub-int v0, p1, v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    iput p1, p0, Lcom/cootek/smartinput5/func/O;->e:I

    goto :goto_0

    :cond_2
    iput v2, p0, Lcom/cootek/smartinput5/func/O;->e:I

    :goto_0
    iget p1, p0, Lcom/cootek/smartinput5/func/O;->e:I

    if-ne p1, v1, :cond_3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    const/16 v0, 0xec

    invoke-virtual {p1, v0, v2}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/O;->s()V

    iget-object p1, p0, Lcom/cootek/smartinput5/func/O;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cootek/smartinput5/func/O$e;

    invoke-interface {v0}, Lcom/cootek/smartinput5/func/O$e;->c()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public f(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/O;->o()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/func/O;->j(I)I

    move-result p1

    if-lez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public g(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/O;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/func/O;->j(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/cootek/smartinput5/func/O;->H(II)V

    :cond_1
    return-void
.end method

.method public h(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/cootek/smartinput5/func/O;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cootek/smartinput5/func/share/e;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public j(I)I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/O;->c:[I

    aget v0, v0, p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/O;->i(I)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public m(I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/O;->l(I)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xee

    const/16 v2, 0x17

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/cootek/smartinput5/engine/Settings;->getStringSetting(IILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/O;->t(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public o()Z
    .locals 2

    iget-boolean v0, p0, Lcom/cootek/smartinput5/func/O;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0xec

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public u(ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/cootek/smartinput5/func/O;->v(ILjava/util/ArrayList;Z)V

    return-void
.end method

.method public v(ILjava/util/ArrayList;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/cootek/smartinput5/func/O;->e(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/O;->l(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0xee

    const/16 v3, 0x17

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/cootek/smartinput5/engine/Settings;->setStringSetting(ILjava/lang/String;ILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;Z)V

    if-eqz p3, :cond_0

    invoke-direct {p0, p2, p1}, Lcom/cootek/smartinput5/func/O;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public w(Lcom/cootek/smartinput5/func/O$e;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/O;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/func/O;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public y(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cootek/smartinput5/func/O;->f:Z

    return-void
.end method

.method public z(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/cootek/smartinput5/func/L;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/func/O;->h(Landroid/content/Context;)V

    return-void
.end method
