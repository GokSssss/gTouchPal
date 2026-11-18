.class public Lcom/cootek/smartinput5/pluginwidget/m;
.super Lcom/cootek/smartinput5/pluginwidget/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/pluginwidget/d;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;)V
    .locals 4

    invoke-static {p1}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->q(Landroid/content/Context;)Lcom/cootek/smartinput5/configuration/ConfigurationManager;

    move-result-object v0

    sget-object v1, Lcom/cootek/smartinput5/configuration/ConfigurationType;->ONLINE_SHOP:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->j(Lcom/cootek/smartinput5/configuration/ConfigurationType;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    const v0, 0x300021

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/engine/Engine;->commitKeyEvent(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/TouchPalIME;->requestHideSelf(I)V

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/cootek/smartinput5/func/x0;->d()Lcom/cootek/smartinput5/func/x0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/cootek/smartinput5/func/x0;->b(I)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x1

    const-string v3, "SHOW_ALL_LANGUAGE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    const/16 v0, 0x1b8

    invoke-virtual {p1, v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->PLUGIN_LANGUAGE:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/cootek/smartinput5/pluginwidget/b;
    .locals 1

    new-instance v0, Lcom/cootek/smartinput5/pluginwidget/m$b;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/pluginwidget/m$b;-><init>(Lcom/cootek/smartinput5/pluginwidget/m;)V

    return-object v0
.end method

.method public f()Lcom/cootek/smartinput5/pluginwidget/c;
    .locals 1

    new-instance v0, Lcom/cootek/smartinput5/pluginwidget/m$a;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/pluginwidget/m$a;-><init>(Lcom/cootek/smartinput5/pluginwidget/m;)V

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, "entra"

    return-object v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
