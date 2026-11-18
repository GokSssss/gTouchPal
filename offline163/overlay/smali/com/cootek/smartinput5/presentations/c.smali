.class public Lcom/cootek/smartinput5/presentations/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cootek/presentation/sdk/IActionDriver;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cootek/smartinput5/presentations/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public autoInstall(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/TouchPalIME;->requestHideSelf(I)V

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/presentations/c;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/cootek/presentation/sdk/utils/ActionDriverHelper;->installApk(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/cootek/presentation/sdk/PresentationManager;->installStarted(Ljava/lang/String;)V

    return-void
.end method

.method public changeBoolSetting(Ljava/lang/String;ZZ)Z
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/cootek/smartinput5/engine/Settings;->changeSetting(Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public changeIntSetting(Ljava/lang/String;IZ)Z
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/cootek/smartinput5/engine/Settings;->changeSetting(Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public changeLongSetting(Ljava/lang/String;JZ)Z
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p4}, Lcom/cootek/smartinput5/engine/Settings;->changeSetting(Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public changeStringSetting(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/cootek/smartinput5/engine/Settings;->changeSetting(Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public close(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/presentations/i;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/presentations/i;->p()Lcom/cootek/smartinput5/presentations/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/presentations/i;->f(Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/presentations/i;->p()Lcom/cootek/smartinput5/presentations/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/presentations/i;->k(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/cootek/presentation/sdk/PresentationManager;->closed(Ljava/lang/String;)V

    return-void
.end method

.method public contentUpdated()V
    .locals 0

    return-void
.end method

.method public download(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {}, Lcom/cootek/smartinput5/net/i;->E()Lcom/cootek/smartinput5/net/i;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/cootek/smartinput5/net/i;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public getDownloadConfirmMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/presentations/c;->a:Landroid/content/Context;

    const v1, 0x7f0f07b9

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNonWifiMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/presentations/c;->a:Landroid/content/Context;

    const v1, 0x7f0f07ba

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public launchApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/TouchPalIME;->requestHideSelf(I)V

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/presentations/c;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/cootek/presentation/sdk/utils/ActionDriverHelper;->launchApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p6, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p5, p1, v1}, Lcom/cootek/smartinput5/presentations/c;->openUrl(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object p2, p0, Lcom/cootek/smartinput5/presentations/c;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_3
    :goto_0
    return v1
.end method

.method public openUrl(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/presentations/c;->a:Landroid/content/Context;

    const-class v2, Lcom/cootek/smartinput5/presentations/PresentationWebviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.cootek.smartinputv5.INTERNAL_ACTION.PresentationClient.EXTRA_URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.cootek.smartinputv5.INTERNAL_ACTION.PresentationClient.EXTRA_TITLE"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.cootek.smartinputv5.INTERNAL_ACTION.PresentationClient.EXTRA_REQUEST_TOKEN"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/cootek/smartinput5/TouchPalIME;->requestHideSelf(I)V

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/cootek/smartinput5/presentations/c;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return p2
.end method

.method public saveTypeUsage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    invoke-virtual {p3}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    iget-object p3, p0, Lcom/cootek/smartinput5/presentations/c;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object p3

    invoke-virtual {p3, p1, p2, v0}, Lcom/cootek/smartinput5/l/g;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/presentations/c;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/cootek/presentation/sdk/utils/ActionDriverHelper;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public showActionConfirmDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/presentations/c;->a:Landroid/content/Context;

    const-class v2, Lcom/cootek/smartinput5/presentations/ActionConfirmActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.cootek.smartinputv5.INTERNAL_ACTION.PresentationClient.EXTRA_TOAST_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.cootek.smartinputv5.INTERNAL_ACTION.PresentationClient.EXTRA_ACTION_CONFIRM_TEXT"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/cootek/smartinput5/presentations/c;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
