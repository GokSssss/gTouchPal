.class Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput/utilities/ShortcutParseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Intent;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field final synthetic e:Lcom/cootek/smartinput/utilities/ShortcutParseActivity;


# direct methods
.method public constructor <init>(Lcom/cootek/smartinput/utilities/ShortcutParseActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "type"

    const-string v1, "value"

    const-string v2, "key"

    const-string v3, "extras"

    const-string v4, "data"

    const-string v5, "component"

    const-string v6, "category"

    const-string v7, "action"

    const-string v8, "package"

    iput-object p1, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->e:Lcom/cootek/smartinput/utilities/ShortcutParseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->d:Ljava/lang/String;

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "browser_fallback_url"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->b:Ljava/lang/String;

    const-string p2, "fallback_to_local"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->c:Z

    const-string p2, "intent"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    iput-object p2, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->a:Landroid/content/Intent;

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v8, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->a:Landroid/content/Intent;

    invoke-virtual {v8, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, p2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->a:Landroid/content/Intent;

    invoke-virtual {p2, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->a:Landroid/content/Intent;

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->a:Landroid/content/Intent;

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->a:Landroid/content/Intent;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_3
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge p3, p2, :cond_7

    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v5, "integer"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object p2, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->a:Landroid/content/Intent;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    const-string v5, "string"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object p2, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->a:Landroid/content/Intent;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    const-string v5, "boolean"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->a:Landroid/content/Intent;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/ClassCastException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_6
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :catch_1
    const-string p1, "Shortcut"

    const-string p2, "parse action string failed"

    invoke-static {p1, p2}, Lcom/cootek/smartinput/utilities/r;->n(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    const-string v0, "local"

    const-string v1, "browser"

    iget-object v2, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->e:Lcom/cootek/smartinput/utilities/ShortcutParseActivity;

    iget-object v3, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->d:Ljava/lang/String;

    const-string v4, "START"

    const-string v5, ""

    invoke-static {v2, v3, v4, v5}, Lcom/cootek/smartinput/utilities/ShortcutParseActivity;->a(Lcom/cootek/smartinput/utilities/ShortcutParseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->a:Landroid/content/Intent;

    const/high16 v3, 0x10000000

    const-string v5, "SUCCESS"

    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->e:Lcom/cootek/smartinput/utilities/ShortcutParseActivity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->e:Lcom/cootek/smartinput/utilities/ShortcutParseActivity;

    iget-object v1, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->d:Ljava/lang/String;

    const-string v2, "intent"

    invoke-static {v0, v1, v2, v5}, Lcom/cootek/smartinput/utilities/ShortcutParseActivity;->a(Lcom/cootek/smartinput/utilities/ShortcutParseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->a:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->e:Lcom/cootek/smartinput/utilities/ShortcutParseActivity;

    iget-object v1, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_0
    iget-object v2, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v6, "Shortcut"

    const-string v7, "FAILED"

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->c:Z

    if-eqz v2, :cond_1

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->e:Lcom/cootek/smartinput/utilities/ShortcutParseActivity;

    const-class v4, Lcom/cootek/smartinput5/presentations/PresentationWebviewActivity;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->b:Ljava/lang/String;

    const-string v3, "com.cootek.smartinputv5.INTERNAL_ACTION.PresentationClient.EXTRA_URL"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->e:Lcom/cootek/smartinput/utilities/ShortcutParseActivity;

    invoke-static {v2, v1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->e:Lcom/cootek/smartinput/utilities/ShortcutParseActivity;

    iget-object v2, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0, v5}, Lcom/cootek/smartinput/utilities/ShortcutParseActivity;->a(Lcom/cootek/smartinput/utilities/ShortcutParseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v1, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->e:Lcom/cootek/smartinput/utilities/ShortcutParseActivity;

    iget-object v2, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0, v7}, Lcom/cootek/smartinput/utilities/ShortcutParseActivity;->a(Lcom/cootek/smartinput/utilities/ShortcutParseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "open url with local webview"

    invoke-static {v6, v0}, Lcom/cootek/smartinput/utilities/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_1
    iget-object v2, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->e:Lcom/cootek/smartinput/utilities/ShortcutParseActivity;

    invoke-static {v2, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->e:Lcom/cootek/smartinput/utilities/ShortcutParseActivity;

    iget-object v2, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->d:Ljava/lang/String;

    invoke-static {v0, v2, v1, v5}, Lcom/cootek/smartinput/utilities/ShortcutParseActivity;->a(Lcom/cootek/smartinput/utilities/ShortcutParseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    iget-object v0, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->e:Lcom/cootek/smartinput/utilities/ShortcutParseActivity;

    iget-object v2, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->d:Ljava/lang/String;

    invoke-static {v0, v2, v1, v7}, Lcom/cootek/smartinput/utilities/ShortcutParseActivity;->a(Lcom/cootek/smartinput/utilities/ShortcutParseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "open url with browser failed"

    invoke-static {v6, v0}, Lcom/cootek/smartinput/utilities/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->e:Lcom/cootek/smartinput/utilities/ShortcutParseActivity;

    iget-object v1, p0, Lcom/cootek/smartinput/utilities/ShortcutParseActivity$a;->d:Ljava/lang/String;

    invoke-static {v0, v1, v4, v7}, Lcom/cootek/smartinput/utilities/ShortcutParseActivity;->a(Lcom/cootek/smartinput/utilities/ShortcutParseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Can not find anyone to handle action"

    invoke-static {v6, v0}, Lcom/cootek/smartinput/utilities/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
