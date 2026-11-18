.class public Lcom/cootek/smartinput5/pluginwidget/t;
.super Lcom/cootek/smartinput5/pluginwidget/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/pluginwidget/d;-><init>()V

    return-void
.end method

.method private m()V
    .locals 9

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x1fa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    sget-object v0, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->MORE_SKIN:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x1f8

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getLongSetting(I)J

    move-result-wide v3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    const/16 v2, 0x1fb

    const/16 v5, 0x36

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/cootek/smartinput5/engine/Settings;->setLongSetting(IJILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;Z)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;)V
.locals 1
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;
    move-result-object v0
    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Settings;->writeBack()V
    invoke-static {p1}, Lcom/cootek/smartinput5/settings/Offline163;->themes(Landroid/content/Context;)V
    invoke-direct {p0}, Lcom/cootek/smartinput5/pluginwidget/t;->m()V
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->MORE_SKIN:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/cootek/smartinput5/pluginwidget/b;
    .locals 1

    new-instance v0, Lcom/cootek/smartinput5/pluginwidget/t$b;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/pluginwidget/t$b;-><init>(Lcom/cootek/smartinput5/pluginwidget/t;)V

    return-object v0
.end method

.method public f()Lcom/cootek/smartinput5/pluginwidget/c;
    .locals 1

    new-instance v0, Lcom/cootek/smartinput5/pluginwidget/t$a;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/pluginwidget/t$a;-><init>(Lcom/cootek/smartinput5/pluginwidget/t;)V

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
