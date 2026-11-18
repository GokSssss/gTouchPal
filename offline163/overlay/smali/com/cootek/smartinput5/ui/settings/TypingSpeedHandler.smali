.class public Lcom/cootek/smartinput5/ui/settings/TypingSpeedHandler;
.super Ljava/lang/Object;


# instance fields
.field private final DATE:Ljava/lang/String;

.field private final ID:Ljava/lang/String;

.field private final NAME:Ljava/lang/String;

.field private final SPEED:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mWebView:Lcom/cootek/smartinput5/net/TWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cootek/smartinput5/net/TWebView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TypingSpeedHandler"

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/settings/TypingSpeedHandler;->TAG:Ljava/lang/String;

    const-string v0, "date"

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/settings/TypingSpeedHandler;->DATE:Ljava/lang/String;

    const-string v0, "speed"

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/settings/TypingSpeedHandler;->SPEED:Ljava/lang/String;

    const-string v0, "id"

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/settings/TypingSpeedHandler;->ID:Ljava/lang/String;

    const-string v0, "name"

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/settings/TypingSpeedHandler;->NAME:Ljava/lang/String;

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/settings/TypingSpeedHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/cootek/smartinput5/ui/settings/TypingSpeedHandler;->mWebView:Lcom/cootek/smartinput5/net/TWebView;

    return-void
.end method


# virtual methods
.method public feelTheSpeed(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/TypingSpeedHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/cootek/smartinput5/TouchPalOption;->R(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/TypingSpeedHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public getAverageSpeed(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, ""

    :try_start_0
    invoke-static {p2}, Lcom/cootek/smartinput5/func/TypingSpeedData;->getModeIndex(Ljava/lang/String;)I

    move-result p2

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x1

    :goto_0
    const/16 v3, 0x1f

    if-gt v2, v3, :cond_1

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/settings/TypingSpeedHandler;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/cootek/smartinput5/ui/settings/TypingSpeedActivity;

    iget-object v3, v3, Lcom/cootek/smartinput5/ui/settings/TypingSpeedActivity;->h:Lcom/cootek/smartinput5/func/TypingSpeedData;

    invoke-virtual {v3, p1, p2, p3, v2}, Lcom/cootek/smartinput5/func/TypingSpeedData;->getDailyInfo(Ljava/lang/String;III)Lcom/cootek/smartinput5/func/TypingSpeedData$Meta;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, p3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "speed"

    const-string v7, "date"

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v5, v3, Lcom/cootek/smartinput5/func/TypingSpeedData$Meta;->commit:I

    iget v3, v3, Lcom/cootek/smartinput5/func/TypingSpeedData$Meta;->time:I

    invoke-static {v5, v3}, Lcom/cootek/smartinput5/func/TypingSpeedData;->getSpeed(II)I

    move-result v3

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    :cond_0
    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v3, 0x0

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_1
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TypingSpeedHandler"

    invoke-static {p2, p1}, Lcom/cootek/smartinput/utilities/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLangs()Ljava/lang/String;
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/TypingSpeedHandler;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/cootek/smartinput5/ui/settings/TypingSpeedActivity;

    iget-object v1, v1, Lcom/cootek/smartinput5/ui/settings/TypingSpeedActivity;->i:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "id"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "name"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TypingSpeedHandler"

    invoke-static {v1, v0}, Lcom/cootek/smartinput/utilities/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public getServerAddress()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/TypingSpeedHandler;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/cootek/smartinput5/net/cmd/HttpCmd;->UPLOAD_TYPINGSPEED:Lcom/cootek/smartinput5/net/cmd/HttpCmd;

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/net/J;->G(Landroid/content/Context;Lcom/cootek/smartinput5/net/cmd/HttpCmd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onProgressBegin()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/TypingSpeedHandler;->mWebView:Lcom/cootek/smartinput5/net/TWebView;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/net/TWebView;->m()V

    return-void
.end method

.method public onProgressEnd()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/TypingSpeedHandler;->mWebView:Lcom/cootek/smartinput5/net/TWebView;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/net/TWebView;->h()V

    return-void
.end method
