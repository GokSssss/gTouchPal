.class public Lcom/cootek/smartinput5/func/skin/purchase/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cootek/smartinput5/func/TAccountManager$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput5/func/skin/purchase/a$c;,
        Lcom/cootek/smartinput5/func/skin/purchase/a$d;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "paid_info.obj"

.field private static h:Lcom/cootek/smartinput5/func/skin/purchase/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/cootek/smartinput5/net/p;

.field private d:Lcom/cootek/smartinput5/net/p;

.field private e:Z

.field private f:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->f:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->q(Landroid/content/Context;)Lcom/cootek/smartinput5/configuration/ConfigurationManager;

    move-result-object p1

    sget-object v0, Lcom/cootek/smartinput5/configuration/ConfigurationType;->SUPPORT_PAID_THEME:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->j(Lcom/cootek/smartinput5/configuration/ConfigurationType;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->f:Z

    return-void
.end method

.method private A()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/func/skin/purchase/a;->B(Lcom/cootek/smartinput5/func/skin/purchase/a$d;)V

    return-void
.end method

.method static synthetic a(Lcom/cootek/smartinput5/func/skin/purchase/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/skin/purchase/a;->i()V

    return-void
.end method

.method static synthetic b(Lcom/cootek/smartinput5/func/skin/purchase/a;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic c(Lcom/cootek/smartinput5/func/skin/purchase/a;I)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/skin/purchase/a;->k(I)J

    move-result-wide p0

    return-wide p0
.end method

.method private i()V
    .locals 7

    iget-boolean v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;

    iget v3, v2, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->trialTime:I

    int-to-long v3, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x5265c00

    div-long/2addr v3, v5

    long-to-int v4, v3

    iget v3, v2, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->trialTime:I

    if-le v4, v3, :cond_1

    invoke-direct {p0, v3}, Lcom/cootek/smartinput5/func/skin/purchase/a;->k(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->expiredTime:J

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/skin/purchase/a;->v()V

    :cond_3
    return-void
.end method

.method private k(I)J
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p1

    const-wide/16 v4, 0xe10

    mul-long v2, v2, v4

    const-wide/16 v4, 0x18

    mul-long v2, v2, v4

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static l(Landroid/content/Context;)Lcom/cootek/smartinput5/func/skin/purchase/a;
    .locals 1

    sget-object v0, Lcom/cootek/smartinput5/func/skin/purchase/a;->h:Lcom/cootek/smartinput5/func/skin/purchase/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cootek/smartinput5/func/skin/purchase/a;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/func/skin/purchase/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cootek/smartinput5/func/skin/purchase/a;->h:Lcom/cootek/smartinput5/func/skin/purchase/a;

    :cond_0
    sget-object p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->h:Lcom/cootek/smartinput5/func/skin/purchase/a;

    return-object p0
.end method


# virtual methods
.method public B(Lcom/cootek/smartinput5/func/skin/purchase/a$d;)V
    .locals 4

    iget-boolean v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/cootek/smartinput5/net/cmd/A;

    invoke-direct {v0}, Lcom/cootek/smartinput5/net/cmd/A;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;

    invoke-virtual {v3}, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v1, v0, Lcom/cootek/smartinput5/net/cmd/A;->x:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->c:Lcom/cootek/smartinput5/net/p;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/cootek/smartinput5/net/p;->c()V

    :cond_2
    new-instance v1, Lcom/cootek/smartinput5/net/p;

    invoke-direct {v1, v0}, Lcom/cootek/smartinput5/net/p;-><init>(Lcom/cootek/smartinput5/net/cmd/L;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->c:Lcom/cootek/smartinput5/net/p;

    new-instance v0, Lcom/cootek/smartinput5/func/skin/purchase/a$a;

    invoke-direct {v0, p0, p1}, Lcom/cootek/smartinput5/func/skin/purchase/a$a;-><init>(Lcom/cootek/smartinput5/func/skin/purchase/a;Lcom/cootek/smartinput5/func/skin/purchase/a$d;)V

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/net/p;->g(Lcom/cootek/smartinput5/net/p$c;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->getStringSetting(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "current_theme"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iget-object v6, v3, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->pkgName:Ljava/lang/String;

    const-string v7, "pkg_name"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v6, v3, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p0, v6, v4}, Lcom/cootek/smartinput5/func/skin/purchase/a;->n(Ljava/lang/String;Z)I

    move-result v6

    if-gez v6, :cond_0

    goto :goto_1

    :cond_0
    move v4, v6

    :goto_1
    iget-object v3, v3, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cootek/smartinput5/func/skin/purchase/a;->o(Ljava/lang/String;)Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeStatus;

    move-result-object v3

    sget-object v6, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeStatus;->PURCHASED:Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeStatus;

    if-eq v3, v6, :cond_1

    sget-object v6, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeStatus;->ACTIVATE_BY_VIP:Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeStatus;

    if-ne v3, v6, :cond_2

    :cond_1
    const/4 v4, -0x1

    :cond_2
    const-string v3, "remaining_time"

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_3
    const-string v2, "paid_themes"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/i0;->B0()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cootek/smartinput5/func/h;

    invoke-virtual {v3}, Lcom/cootek/smartinput5/func/h;->d()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.cootek.smartinputv5.skin.customise"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    sget-object v5, Lcom/cootek/smartinput5/func/i0;->L:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3
    if-ge v7, v6, :cond_6

    aget-object v9, v5, v7

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v8, 0x1

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    if-eqz v8, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_8
    const-string v1, "installed_themes"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/i0;->i0(Ljava/lang/String;)Lcom/cootek/smartinput5/func/h0;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, v0, Lcom/cootek/smartinput5/func/h0;->o:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;

    invoke-direct {v0}, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;-><init>()V

    iput-object p1, v0, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->pkgName:Ljava/lang/String;

    iget-object v1, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "update_paid_theme_check_added"

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/func/skin/purchase/a;->x(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 6

    iget-boolean v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/i0;->i0(Ljava/lang/String;)Lcom/cootek/smartinput5/func/h0;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lcom/cootek/smartinput5/func/h0;->o:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;

    invoke-direct {v0}, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;-><init>()V

    iput-object p1, v0, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->pkgName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;

    :goto_0
    iget-wide v1, v0, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->expiredTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    iget v1, v0, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->trialTime:I

    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/func/skin/purchase/a;->k(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->expiredTime:J

    iget-object v1, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/skin/purchase/a;->v()V

    const-string p1, "update_paid_theme_check_enabled"

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/func/skin/purchase/a;->x(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public g(Ljava/lang/String;Z)Z
    .locals 6

    iget-boolean v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->f:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance p2, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;

    invoke-direct {p2}, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;-><init>()V

    iput-object p1, p2, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->pkgName:Ljava/lang/String;

    iget-object v1, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;

    iget-wide v2, p2, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->expiredTime:J

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-gtz p2, :cond_2

    iget-object p2, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-object p1, Lcom/cootek/smartinput5/net/login/g;->y:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/skin/purchase/a;->A()V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/cootek/smartinput5/net/login/g;->z:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    const/16 p2, 0x13

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cootek/smartinput5/func/z;->a0()Lcom/cootek/smartinput5/engine/IPCManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/cootek/smartinput5/engine/IPCManager;->notifyOtherProcesses(Landroid/os/Message;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public j()V
    .locals 6

    iget-boolean v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->e:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->e:Z

    new-instance v0, Ljava/io/File;

    const-string v1, "skin"

    invoke-static {v1}, Lcom/cootek/smartinput5/func/x;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "paid_info.obj"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v4, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_4

    :catchall_0
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_0

    :catch_0
    nop

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_0

    :catch_1
    move-object v0, v2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v3, v2

    :goto_0
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    nop

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_4
    iput-boolean v1, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->e:Z

    throw v0

    :catch_4
    move-object v0, v2

    move-object v3, v0

    :goto_2
    if-eqz v0, :cond_5

    :try_start_6
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_5
    nop

    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    :catch_6
    :goto_4
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :cond_6
    iput-boolean v1, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->e:Z

    const/16 v0, 0x13

    invoke-static {v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/z;->a0()Lcom/cootek/smartinput5/engine/IPCManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/engine/IPCManager;->notifyOtherProcesses(Landroid/os/Message;)V

    return-void
.end method

.method public m(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;

    iget-object p1, p1, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->price:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public n(Ljava/lang/String;Z)I
    .locals 6

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/func/skin/purchase/a;->q(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;

    iget-wide v0, v0, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->expiredTime:J

    iget-object v2, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;

    iget v2, v2, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->trialTime:I

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v0, v3

    const-wide/32 v3, 0x5265c00

    div-long/2addr v0, v3

    long-to-int v1, v0

    if-le v1, v2, :cond_2

    iget-object v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;

    invoke-direct {p0, v2}, Lcom/cootek/smartinput5/func/skin/purchase/a;->k(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->expiredTime:J

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/skin/purchase/a;->v()V

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public o(Ljava/lang/String;)Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeStatus;
    .locals 4

    if-nez p1, :cond_0

    sget-object p1, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeStatus;->FREE:Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeStatus;

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->f:Z

    if-nez v0, :cond_1

    sget-object p1, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeStatus;->FREE:Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeStatus;

    return-object p1

    :cond_1
    invoke-static {}, Lcom/cootek/smartinput5/func/TAccountManager;->d()Lcom/cootek/smartinput5/func/TAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/TAccountManager;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeStatus;->ACTIVATE_BY_VIP:Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeStatus;

    return-object p1

    :cond_2
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;

    :cond_3
    if-nez v0, :cond_4

    sget-object p1, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeStatus;->FREE:Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeStatus;

    return-object p1

    :cond_4
    iget-boolean p1, v0, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->isFreeNow:Z

    if-eqz p1, :cond_5

    sget-object p1, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeStatus;->FREE:Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeStatus;

    return-object p1

    :cond_5
    iget-boolean p1, v0, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->isPurchased:Z

    const/4 p1, 0x1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeStatus;->PURCHASED:Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeStatus;

    return-object p1

    :cond_6
    iget-wide v0, v0, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->expiredTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_7

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_7

    sget-object p1, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeStatus;->EXPIRED:Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeStatus;

    return-object p1

    :cond_7
    sget-object p1, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeStatus;->IN_TRIAL:Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeStatus;

    return-object p1
.end method

.method public p()V
    .locals 2

    iget-boolean v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/cootek/smartinput5/func/skin/purchase/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cootek/smartinput5/func/skin/purchase/a$c;-><init>(Lcom/cootek/smartinput5/func/skin/purchase/a;Lcom/cootek/smartinput5/func/skin/purchase/a$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/m0;->executeInThreadPool([Ljava/lang/Object;)V

    return-void
.end method

.method public q(Ljava/lang/String;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->f:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/i0;->i0(Ljava/lang/String;)Lcom/cootek/smartinput5/func/h0;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/cootek/smartinput5/func/h0;->o:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;

    iget-boolean p1, p1, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->isFreeNow:Z

    xor-int/2addr p1, v1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public r(ILjava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;

    iget v2, v1, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->goodsId:I

    if-ne v2, p1, :cond_1

    const-string p1, "purchase_success"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, v1, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->isPurchased:Z

    const/4 p1, 0x1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, v1, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->isPurchased:Z

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object p2

    iget-object v0, v1, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->pkgName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p1}, Lcom/cootek/smartinput5/func/i0;->W0(Ljava/lang/String;ZZ)Z

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/skin/purchase/a;->v()V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->J0()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/cootek/smartinput5/func/z;->G0(Landroid/content/Context;)V

    :cond_2
    const/4 p1, 0x0

    const/16 p2, 0x1a

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    :try_start_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cootek/smartinput5/func/z;->a0()Lcom/cootek/smartinput5/engine/IPCManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/cootek/smartinput5/engine/IPCManager;->notifyOtherProcesses(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->A()V

    :cond_3
    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;

    iget-boolean v1, v0, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->isPurchased:Z

    const/4 v1, 0x1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->isPurchased:Z

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/cootek/smartinput5/func/i0;->W0(Ljava/lang/String;ZZ)Z

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/skin/purchase/a;->v()V

    :cond_2
    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->a:Landroid/content/Context;

    const-class v2, Lcom/cootek/smartinput5/func/skin/purchase/PurchaseThemeActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.cootek.smartinput5.func.skin.purchase.PurchaseThemeActivity.EXTRA_SKIN_PKG_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public u()V
    .locals 4

    iget-boolean v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "skin"

    invoke-static {v1}, Lcom/cootek/smartinput5/func/x;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "paid_info.obj"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v1, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :goto_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_f

    goto/16 :goto_9

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-object v1, v0

    goto :goto_3

    :catch_2
    move-object v1, v0

    goto :goto_5

    :catch_3
    move-object v1, v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1

    :catch_4
    nop

    goto :goto_3

    :catch_5
    nop

    goto :goto_5

    :catch_6
    nop

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_2

    :catch_7
    nop

    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    :catch_8
    :cond_3
    throw v1

    :catch_9
    move-object v2, v1

    :goto_3
    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    goto :goto_4

    :catch_a
    nop

    :cond_4
    :goto_4
    if-eqz v2, :cond_7

    goto :goto_0

    :catch_b
    move-object v2, v1

    :goto_5
    if-eqz v1, :cond_5

    :try_start_8
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c

    goto :goto_6

    :catch_c
    nop

    :cond_5
    :goto_6
    if-eqz v2, :cond_7

    goto :goto_0

    :catch_d
    move-object v2, v1

    :goto_7
    if-eqz v1, :cond_6

    :try_start_9
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_e

    goto :goto_8

    :catch_e
    nop

    :cond_6
    :goto_8
    if-eqz v2, :cond_7

    goto :goto_0

    :catch_f
    :cond_7
    :goto_9
    return-void
.end method

.method public v()V
    .locals 2

    iget-boolean v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.cootek.smartinput.intent.action.SAVE_PAID_THEME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;

    iget-boolean v0, p1, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->isFreeNow:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->isFreeNow:Z

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/skin/purchase/a;->v()V

    :cond_2
    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;

    invoke-virtual {v2}, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->needUpdate()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/cootek/smartinput5/func/skin/purchase/a;->z(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public y(Ljava/lang/String;Lcom/cootek/smartinput5/net/cmd/CmdQueryStoreInfo$Goods;)V
    .locals 2

    iget-boolean v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;

    invoke-virtual {p2}, Lcom/cootek/smartinput5/net/cmd/CmdQueryStoreInfo$Goods;->getGoodsId()I

    move-result v1

    iput v1, v0, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->goodsId:I

    iget-object v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;

    invoke-virtual {p2}, Lcom/cootek/smartinput5/net/cmd/CmdQueryStoreInfo$Goods;->getPrice()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeInfo;->price:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/skin/purchase/a;->v()V

    :cond_1
    return-void
.end method

.method public z(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
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

    iget-boolean v0, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/cootek/smartinput5/net/cmd/CmdQueryStoreInfo;

    invoke-direct {v0}, Lcom/cootek/smartinput5/net/cmd/CmdQueryStoreInfo;-><init>()V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/cootek/smartinput5/net/cmd/CmdQueryStoreInfo;->D:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/cootek/smartinput5/net/cmd/CmdQueryStoreInfo;->E:Ljava/lang/Boolean;

    const-string v1, "skin"

    iput-object v1, v0, Lcom/cootek/smartinput5/net/cmd/CmdQueryStoreInfo;->F:Ljava/lang/String;

    iput-object p1, v0, Lcom/cootek/smartinput5/net/cmd/CmdQueryStoreInfo;->H:Ljava/util/List;

    iput-object p2, v0, Lcom/cootek/smartinput5/net/cmd/CmdQueryStoreInfo;->G:Ljava/lang/String;

    iget-object p1, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->d:Lcom/cootek/smartinput5/net/p;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/cootek/smartinput5/net/p;->c()V

    :cond_2
    new-instance p1, Lcom/cootek/smartinput5/net/p;

    invoke-direct {p1, v0}, Lcom/cootek/smartinput5/net/p;-><init>(Lcom/cootek/smartinput5/net/cmd/L;)V

    iput-object p1, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->d:Lcom/cootek/smartinput5/net/p;

    new-instance v0, Lcom/cootek/smartinput5/func/skin/purchase/a$b;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/func/skin/purchase/a$b;-><init>(Lcom/cootek/smartinput5/func/skin/purchase/a;)V

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/net/p;->g(Lcom/cootek/smartinput5/net/p$c;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/func/skin/purchase/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object p1

    const-string v0, "UPDATE_PAID_THEME"

    const-string v1, "/COMMERCIAL/SPONSOR_THEME/"

    invoke-virtual {p1, v0, p2, v1}, Lcom/cootek/smartinput5/l/g;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
