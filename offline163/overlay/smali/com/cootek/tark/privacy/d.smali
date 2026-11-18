.class public Lcom/cootek/tark/privacy/d;
.super Ljava/lang/Object;


# static fields
.field private static final d:Ljava/lang/String; = "d"

.field private static e:Lcom/cootek/tark/privacy/d;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/cootek/tark/privacy/b;

.field private c:Lcom/cootek/tark/privacy/settings/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/cootek/tark/privacy/d;->a:Landroid/content/Context;

    new-instance v0, Lcom/cootek/tark/privacy/settings/b;

    invoke-direct {v0, p1}, Lcom/cootek/tark/privacy/settings/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cootek/tark/privacy/d;->c:Lcom/cootek/tark/privacy/settings/b;

    return-void
.end method

.method public static B(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/cootek/tark/privacy/PrivacySettingsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static f(Landroid/content/Context;)Lcom/cootek/tark/privacy/d;
    .locals 2

    sget-object v0, Lcom/cootek/tark/privacy/d;->e:Lcom/cootek/tark/privacy/d;

    if-nez v0, :cond_1

    const-class v0, Lcom/cootek/tark/privacy/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/cootek/tark/privacy/d;->e:Lcom/cootek/tark/privacy/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/cootek/tark/privacy/d;

    invoke-direct {v1, p0}, Lcom/cootek/tark/privacy/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/cootek/tark/privacy/d;->e:Lcom/cootek/tark/privacy/d;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/cootek/tark/privacy/d;->e:Lcom/cootek/tark/privacy/d;

    return-object p0
.end method

.method private i()Lcom/cootek/tark/privacy/settings/b;
    .locals 2

    iget-object v0, p0, Lcom/cootek/tark/privacy/d;->c:Lcom/cootek/tark/privacy/settings/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cootek/tark/privacy/settings/b;

    iget-object v1, p0, Lcom/cootek/tark/privacy/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cootek/tark/privacy/settings/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cootek/tark/privacy/d;->c:Lcom/cootek/tark/privacy/settings/b;

    :cond_0
    iget-object v0, p0, Lcom/cootek/tark/privacy/d;->c:Lcom/cootek/tark/privacy/settings/b;

    return-object v0
.end method

.method public static k(Landroid/content/Context;Lcom/cootek/tark/privacy/b;)V
    .locals 0

    invoke-static {p0}, Lcom/cootek/tark/privacy/d;->f(Landroid/content/Context;)Lcom/cootek/tark/privacy/d;

    move-result-object p0

    invoke-direct {p0, p1}, Lcom/cootek/tark/privacy/d;->v(Lcom/cootek/tark/privacy/b;)V

    return-void
.end method

.method private v(Lcom/cootek/tark/privacy/b;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/tark/privacy/d;->b:Lcom/cootek/tark/privacy/b;

    return-void
.end method

.method public static y(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static z(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "INTENT_PRIVACY_POLICY_DETAIL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class p1, Lcom/cootek/tark/privacy/PrivacyPolicyLocalActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    invoke-virtual {p0}, Lcom/cootek/tark/privacy/d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/cootek/tark/privacy/d;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/cootek/tark/privacy/d;->y(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public C()V
    .locals 2

    invoke-virtual {p0}, Lcom/cootek/tark/privacy/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/cootek/tark/privacy/d;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/cootek/tark/privacy/d;->y(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public D()Z
    .locals 1

    invoke-virtual {p0}, Lcom/cootek/tark/privacy/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/tark/privacy/region/PrivacyCountryRegions;->getPrivacyCountryRegions(Ljava/lang/String;)Lcom/cootek/tark/privacy/region/PrivacyCountryRegions;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cootek/tark/privacy/region/b;->supportGDPR()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cootek/tark/privacy/d;->s(Z)V

    invoke-virtual {p0, v0}, Lcom/cootek/tark/privacy/d;->x(Z)V

    invoke-virtual {p0, v0}, Lcom/cootek/tark/privacy/d;->w(Z)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/tark/privacy/d;->b:Lcom/cootek/tark/privacy/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cootek/tark/privacy/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/cootek/tark/privacy/d;->i()Lcom/cootek/tark/privacy/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/tark/privacy/settings/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/cootek/tark/privacy/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cootek/tark/privacy/f/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, "OTHER"

    return-object v0
.end method

.method public d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/cootek/tark/privacy/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/tark/privacy/region/PrivacyCountryRegions;->getPrivacyCountryRegions(Ljava/lang/String;)Lcom/cootek/tark/privacy/region/PrivacyCountryRegions;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcom/cootek/tark/privacy/region/b;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/tark/privacy/d;->b:Lcom/cootek/tark/privacy/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cootek/tark/privacy/b;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public g(Lcom/cootek/tark/privacy/settings/a;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/cootek/tark/privacy/d;->i()Lcom/cootek/tark/privacy/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/tark/privacy/settings/b;->b(Lcom/cootek/tark/privacy/settings/a;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/cootek/tark/privacy/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/tark/privacy/region/PrivacyCountryRegions;->getPrivacyCountryRegions(Ljava/lang/String;)Lcom/cootek/tark/privacy/region/PrivacyCountryRegions;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cootek/tark/privacy/d;->b:Lcom/cootek/tark/privacy/b;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/cootek/tark/privacy/b;->e()Lcom/cootek/tark/privacy/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cootek/tark/privacy/region/b;->getRegionURL(Lcom/cootek/tark/privacy/c;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/cootek/tark/privacy/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/tark/privacy/region/PrivacyCountryRegions;->getPrivacyCountryRegions(Ljava/lang/String;)Lcom/cootek/tark/privacy/region/PrivacyCountryRegions;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cootek/tark/privacy/d;->b:Lcom/cootek/tark/privacy/b;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/cootek/tark/privacy/b;->g()Lcom/cootek/tark/privacy/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cootek/tark/privacy/region/b;->getRegionURL(Lcom/cootek/tark/privacy/c;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Z
    .locals 1

    invoke-direct {p0}, Lcom/cootek/tark/privacy/d;->i()Lcom/cootek/tark/privacy/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/tark/privacy/settings/b;->c()Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 2

    invoke-virtual {p0}, Lcom/cootek/tark/privacy/d;->D()Z

    move-result v0

    invoke-direct {p0}, Lcom/cootek/tark/privacy/d;->i()Lcom/cootek/tark/privacy/settings/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cootek/tark/privacy/settings/b;->d(Z)Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 2

    invoke-virtual {p0}, Lcom/cootek/tark/privacy/d;->D()Z

    move-result v0

    invoke-direct {p0}, Lcom/cootek/tark/privacy/d;->i()Lcom/cootek/tark/privacy/settings/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cootek/tark/privacy/settings/b;->e(Z)Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 2

    invoke-virtual {p0}, Lcom/cootek/tark/privacy/d;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/cootek/tark/privacy/d;->D()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/tark/privacy/d;->b:Lcom/cootek/tark/privacy/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/cootek/tark/privacy/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public q(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/cootek/tark/privacy/d;->b:Lcom/cootek/tark/privacy/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/cootek/tark/privacy/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/tark/privacy/d;->b:Lcom/cootek/tark/privacy/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/cootek/tark/privacy/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public s(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/cootek/tark/privacy/d;->i()Lcom/cootek/tark/privacy/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/tark/privacy/settings/b;->h(Z)V

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/cootek/tark/privacy/d;->i()Lcom/cootek/tark/privacy/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/tark/privacy/settings/b;->f(Ljava/lang/String;)V

    return-void
.end method

.method public u(Lcom/cootek/tark/privacy/settings/a;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/cootek/tark/privacy/d;->i()Lcom/cootek/tark/privacy/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cootek/tark/privacy/settings/b;->g(Lcom/cootek/tark/privacy/settings/a;Ljava/lang/String;)V

    return-void
.end method

.method public w(Z)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/tark/privacy/d;->b:Lcom/cootek/tark/privacy/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/cootek/tark/privacy/b;->j(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/cootek/tark/privacy/d;->i()Lcom/cootek/tark/privacy/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/tark/privacy/settings/b;->i(Z)V

    return-void
.end method

.method public x(Z)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/tark/privacy/d;->b:Lcom/cootek/tark/privacy/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/cootek/tark/privacy/b;->d(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/cootek/tark/privacy/d;->i()Lcom/cootek/tark/privacy/settings/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/tark/privacy/settings/b;->j(Z)V

    return-void
.end method
