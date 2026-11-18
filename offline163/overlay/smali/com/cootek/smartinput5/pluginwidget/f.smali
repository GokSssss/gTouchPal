.class public Lcom/cootek/smartinput5/pluginwidget/f;
.super Lcom/cootek/smartinput5/pluginwidget/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/pluginwidget/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/cootek/smartinput5/pluginwidget/d;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->getCurrentLanguageId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cootek/smartinput5/func/N;->A0(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->J0()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/func/paopaopanel/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/cootek/smartinput5/func/paopaopanel/h;

    invoke-direct {v0, p1}, Lcom/cootek/smartinput5/func/paopaopanel/h;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/cootek/smartinput5/func/paopaopanel/h;->E0(Lcom/cootek/smartinput5/func/paopaopanel/h$b;Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->d0()Lcom/cootek/smartinput5/func/N;

    move-result-object v0

    const-string v1, "chinese_pinyin"

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/N;->O0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0f04f1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/ui/control/E;->s(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/cootek/smartinput5/func/asset/UpdatePinyinActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-static {p1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->PLUGIN_CHT_CHS_CONVERT:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/cootek/smartinput5/pluginwidget/b;
    .locals 1

    new-instance v0, Lcom/cootek/smartinput5/pluginwidget/f$b;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/pluginwidget/f$b;-><init>(Lcom/cootek/smartinput5/pluginwidget/f;)V

    return-object v0
.end method

.method public f()Lcom/cootek/smartinput5/pluginwidget/c;
    .locals 1

    new-instance v0, Lcom/cootek/smartinput5/pluginwidget/f$a;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/pluginwidget/f$a;-><init>(Lcom/cootek/smartinput5/pluginwidget/f;)V

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
