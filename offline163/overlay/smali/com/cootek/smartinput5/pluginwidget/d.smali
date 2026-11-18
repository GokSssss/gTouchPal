.class public abstract Lcom/cootek/smartinput5/pluginwidget/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/cootek/smartinput5/pluginwidget/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->q(Landroid/content/Context;)Lcom/cootek/smartinput5/configuration/ConfigurationManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/pluginwidget/d;->d()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->G(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract c(Landroid/content/Context;)V
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Lcom/cootek/smartinput5/pluginwidget/b;
.end method

.method public abstract f()Lcom/cootek/smartinput5/pluginwidget/c;
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()Z
.end method

.method protected i(I)V
    .locals 0

    invoke-static {p1}, Lcom/cootek/smartinput5/func/X;->m(I)I

    return-void
.end method

.method protected j(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/cootek/smartinput5/func/X;->l(Ljava/lang/String;)I

    return-void
.end method

.method protected k(I)V
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    return-void
.end method

.method protected l(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-static {p1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/cootek/smartinput5/TouchPalIME;->requestHideSelf(I)V

    return-void
.end method
