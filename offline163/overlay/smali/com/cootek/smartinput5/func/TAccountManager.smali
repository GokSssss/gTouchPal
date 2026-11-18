.class public Lcom/cootek/smartinput5/func/TAccountManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput5/func/TAccountManager$ChannelType;,
        Lcom/cootek/smartinput5/func/TAccountManager$e;,
        Lcom/cootek/smartinput5/func/TAccountManager$d;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "TAccountManager"

.field private static e:Lcom/cootek/smartinput5/func/TAccountManager; = null

.field private static final f:I = 0xa


# instance fields
.field private a:Lcom/cootek/smartinput5/net/login/g;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cootek/smartinput5/func/TAccountManager$e;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cootek/smartinput5/func/TAccountManager$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cootek/smartinput5/func/TAccountManager;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/cootek/smartinput5/func/TAccountManager;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/TAccountManager;->s()V

    return-void
.end method

.method private A()V
    .locals 3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cootek/smartinput5/func/TAccountManager;->a:Lcom/cootek/smartinput5/net/login/g;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/cootek/smartinput5/net/login/g;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v2, 0x112

    invoke-virtual {v0, v2, v1}, Lcom/cootek/smartinput5/engine/Settings;->setStringSetting(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/cootek/smartinput5/func/TAccountManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/TAccountManager;->q()V

    return-void
.end method

.method private b(Lcom/cootek/smartinput5/net/login/g;Lcom/cootek/smartinput5/net/login/g;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cootek/smartinput5/net/login/g;->f()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/cootek/smartinput5/net/login/g;->f()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-direct {p0, p1, v0}, Lcom/cootek/smartinput5/func/TAccountManager;->n(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static d()Lcom/cootek/smartinput5/func/TAccountManager;
    .locals 1

    sget-object v0, Lcom/cootek/smartinput5/func/TAccountManager;->e:Lcom/cootek/smartinput5/func/TAccountManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cootek/smartinput5/func/TAccountManager;

    invoke-direct {v0}, Lcom/cootek/smartinput5/func/TAccountManager;-><init>()V

    sput-object v0, Lcom/cootek/smartinput5/func/TAccountManager;->e:Lcom/cootek/smartinput5/func/TAccountManager;

    :cond_0
    sget-object v0, Lcom/cootek/smartinput5/func/TAccountManager;->e:Lcom/cootek/smartinput5/func/TAccountManager;

    return-object v0
.end method

.method private n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cootek/smartinput5/func/TAccountManager;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cootek/smartinput5/func/TAccountManager$e;

    invoke-interface {v1, p1, p2}, Lcom/cootek/smartinput5/func/TAccountManager$e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private o()V
    .locals 5

    invoke-static {}, Lcom/cootek/smartinput5/net/w;->e()Lcom/cootek/smartinput5/net/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/net/w;->j()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_TYPE:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v3, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_KEY:Ljava/lang/String;

    const/16 v4, 0x5c

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v3, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_VALUE:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->a0()Lcom/cootek/smartinput5/engine/IPCManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/IPCManager;->notifyOtherProcesses(Landroid/os/Message;)V

    return-void
.end method

.method private q()V
    .locals 1

    new-instance v0, Lcom/cootek/smartinput5/net/login/g;

    invoke-direct {v0}, Lcom/cootek/smartinput5/net/login/g;-><init>()V

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/func/TAccountManager;->v(Lcom/cootek/smartinput5/net/login/g;)V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/TAccountManager;->m()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/TAccountManager;->o()V

    return-void
.end method

.method private s()V
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x112

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getStringSetting(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/cootek/smartinput5/net/login/g;

    invoke-direct {v1, v0}, Lcom/cootek/smartinput5/net/login/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/cootek/smartinput5/func/TAccountManager;->v(Lcom/cootek/smartinput5/net/login/g;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public c()Lcom/cootek/smartinput5/net/login/g;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/TAccountManager;->a:Lcom/cootek/smartinput5/net/login/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cootek/smartinput5/net/login/g;

    invoke-direct {v0}, Lcom/cootek/smartinput5/net/login/g;-><init>()V

    iput-object v0, p0, Lcom/cootek/smartinput5/func/TAccountManager;->a:Lcom/cootek/smartinput5/net/login/g;

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/func/TAccountManager;->a:Lcom/cootek/smartinput5/net/login/g;

    return-object v0
.end method

.method public e()I
    .locals 6

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/TAccountManager;->c()Lcom/cootek/smartinput5/net/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/net/login/g;->h()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/TAccountManager;->c()Lcom/cootek/smartinput5/net/login/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/net/login/g;->i()J

    move-result-wide v2

    long-to-float v2, v2

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    const/high16 v0, 0x41c00000    # 24.0f

    div-float/2addr v2, v0

    const/high16 v0, 0x42700000    # 60.0f

    div-float/2addr v2, v0

    div-float/2addr v2, v0

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    :goto_0
    double-to-int v0, v0

    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public f()J
    .locals 2

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/TAccountManager;->c()Lcom/cootek/smartinput5/net/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/net/login/g;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public g()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public h(Lcom/cootek/smartinput5/func/TAccountManager$ChannelType;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/TAccountManager;->c()Lcom/cootek/smartinput5/net/login/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/net/login/g;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/TAccountManager;->c()Lcom/cootek/smartinput5/net/login/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/net/login/g;->o()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public i()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public j()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public k()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public l(Lcom/cootek/smartinput5/net/p$c;)V
    .locals 2

    new-instance v0, Lcom/cootek/smartinput5/net/cmd/u;

    invoke-direct {v0}, Lcom/cootek/smartinput5/net/cmd/u;-><init>()V

    new-instance v1, Lcom/cootek/smartinput5/net/p;

    invoke-direct {v1, v0}, Lcom/cootek/smartinput5/net/p;-><init>(Lcom/cootek/smartinput5/net/cmd/L;)V

    new-instance v0, Lcom/cootek/smartinput5/func/TAccountManager$b;

    invoke-direct {v0, p0, p1}, Lcom/cootek/smartinput5/func/TAccountManager$b;-><init>(Lcom/cootek/smartinput5/func/TAccountManager;Lcom/cootek/smartinput5/net/p$c;)V

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/net/p;->g(Lcom/cootek/smartinput5/net/p$c;)V

    return-void
.end method

.method public m()V
    .locals 4

    iget-object v0, p0, Lcom/cootek/smartinput5/func/TAccountManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cootek/smartinput5/func/TAccountManager$d;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/cootek/smartinput5/func/TAccountManager$d;->b(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_TYPE:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_KEY:Ljava/lang/String;

    const/16 v3, 0x112

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/cootek/smartinput5/func/TAccountManager;->a:Lcom/cootek/smartinput5/net/login/g;

    if-nez v2, :cond_1

    const-string v2, ""

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/cootek/smartinput5/net/login/g;->c()Ljava/lang/String;

    move-result-object v2

    :goto_1
    sget-object v3, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_VALUE:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/z;->a0()Lcom/cootek/smartinput5/engine/IPCManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/engine/IPCManager;->notifyOtherProcesses(Landroid/os/Message;)V

    return-void
.end method

.method public p(Landroid/content/Context;Lcom/cootek/smartinput5/net/login/g;Z)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/cootek/smartinput5/net/login/g;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/cootek/smartinput5/func/TAccountManager;->v(Lcom/cootek/smartinput5/net/login/g;)V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/TAccountManager;->m()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/cootek/smartinput5/func/TAccountManager$c;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/func/TAccountManager$c;-><init>(Lcom/cootek/smartinput5/func/TAccountManager;)V

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/func/TAccountManager;->y(Lcom/cootek/smartinput5/func/TAccountManager$d;)V

    :goto_0
    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/cootek/smartinput5/net/login/g;->n()Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x7f0f0adb

    invoke-static {p1, p2}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    const p2, 0x7f0f0555

    invoke-static {p1, p2}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Lcom/cootek/smartinput5/ui/control/E;->w(Ljava/lang/String;Z)V

    :cond_2
    invoke-direct {p0}, Lcom/cootek/smartinput5/func/TAccountManager;->o()V

    invoke-static {}, Lcom/cootek/smartinput5/func/component/f;->k()Lcom/cootek/smartinput5/func/component/f;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/cootek/smartinput5/func/component/f;->e(Landroid/content/Context;)V

    return-void
.end method

.method public r(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/cootek/smartinput5/func/vip/PurchaseVipActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public t(Lcom/cootek/smartinput5/func/TAccountManager$d;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/func/TAccountManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/func/TAccountManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public u(Lcom/cootek/smartinput5/func/TAccountManager$e;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/func/TAccountManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/func/TAccountManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public v(Lcom/cootek/smartinput5/net/login/g;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/TAccountManager;->a:Lcom/cootek/smartinput5/net/login/g;

    invoke-direct {p0, v0, p1}, Lcom/cootek/smartinput5/func/TAccountManager;->b(Lcom/cootek/smartinput5/net/login/g;Lcom/cootek/smartinput5/net/login/g;)V

    iput-object p1, p0, Lcom/cootek/smartinput5/func/TAccountManager;->a:Lcom/cootek/smartinput5/net/login/g;

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/TAccountManager;->A()V

    return-void
.end method

.method public w(Lcom/cootek/smartinput5/func/TAccountManager$d;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/TAccountManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/func/TAccountManager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public x(Lcom/cootek/smartinput5/func/TAccountManager$e;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/TAccountManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/func/TAccountManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public y(Lcom/cootek/smartinput5/func/TAccountManager$d;)V
    .locals 2

    new-instance v0, Lcom/cootek/smartinput5/net/cmd/w;

    invoke-direct {v0}, Lcom/cootek/smartinput5/net/cmd/w;-><init>()V

    new-instance v1, Lcom/cootek/smartinput5/net/p;

    invoke-direct {v1, v0}, Lcom/cootek/smartinput5/net/p;-><init>(Lcom/cootek/smartinput5/net/cmd/L;)V

    new-instance v0, Lcom/cootek/smartinput5/func/TAccountManager$a;

    invoke-direct {v0, p0, p1}, Lcom/cootek/smartinput5/func/TAccountManager$a;-><init>(Lcom/cootek/smartinput5/func/TAccountManager;Lcom/cootek/smartinput5/func/TAccountManager$d;)V

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/net/p;->g(Lcom/cootek/smartinput5/net/p$c;)V

    return-void
.end method

.method public z()V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/TAccountManager;->s()V

    return-void
.end method
