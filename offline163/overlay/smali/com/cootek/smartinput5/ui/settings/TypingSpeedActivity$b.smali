.class Lcom/cootek/smartinput5/ui/settings/TypingSpeedActivity$b;
.super Lcom/cootek/smartinput5/net/TWebView$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/ui/settings/TypingSpeedActivity;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/cootek/smartinput5/ui/settings/TypingSpeedActivity;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/ui/settings/TypingSpeedActivity;Lcom/cootek/smartinput5/net/TWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/settings/TypingSpeedActivity$b;->d:Lcom/cootek/smartinput5/ui/settings/TypingSpeedActivity;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2}, Lcom/cootek/smartinput5/net/TWebView$e;-><init>(Lcom/cootek/smartinput5/net/TWebView;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/settings/TypingSpeedActivity$b;->d:Lcom/cootek/smartinput5/ui/settings/TypingSpeedActivity;

    invoke-static {p1}, Lcom/cootek/smartinput5/ui/settings/TypingSpeedActivity;->h(Lcom/cootek/smartinput5/ui/settings/TypingSpeedActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    iget-object p2, p0, Lcom/cootek/smartinput5/ui/settings/TypingSpeedActivity$b;->d:Lcom/cootek/smartinput5/ui/settings/TypingSpeedActivity;

    invoke-static {p2, p1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method
