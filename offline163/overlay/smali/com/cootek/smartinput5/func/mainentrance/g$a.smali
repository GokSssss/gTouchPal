.class Lcom/cootek/smartinput5/func/mainentrance/g$a;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/func/mainentrance/g;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cootek/smartinput5/func/mainentrance/g;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/func/mainentrance/g;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/func/mainentrance/g$a;->a:Lcom/cootek/smartinput5/func/mainentrance/g;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/func/mainentrance/g$a;->a:Lcom/cootek/smartinput5/func/mainentrance/g;

    invoke-static {p1, p2}, Lcom/cootek/smartinput5/func/mainentrance/g;->b(Lcom/cootek/smartinput5/func/mainentrance/g;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cootek/smartinput5/func/mainentrance/g$a;->a:Lcom/cootek/smartinput5/func/mainentrance/g;

    invoke-static {p1}, Lcom/cootek/smartinput5/func/mainentrance/g;->e(Lcom/cootek/smartinput5/func/mainentrance/g;)Lcom/cootek/smartinput5/net/TWebView;

    move-result-object p1

    iget-object p2, p0, Lcom/cootek/smartinput5/func/mainentrance/g$a;->a:Lcom/cootek/smartinput5/func/mainentrance/g;

    invoke-static {p2}, Lcom/cootek/smartinput5/func/mainentrance/g;->c(Lcom/cootek/smartinput5/func/mainentrance/g;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cootek/smartinput5/net/TWebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/cootek/smartinput5/func/mainentrance/g$a;->a:Lcom/cootek/smartinput5/func/mainentrance/g;

    invoke-static {p1}, Lcom/cootek/smartinput5/func/mainentrance/g;->h(Lcom/cootek/smartinput5/func/mainentrance/g;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    iget-object p1, p0, Lcom/cootek/smartinput5/func/mainentrance/g$a;->a:Lcom/cootek/smartinput5/func/mainentrance/g;

    invoke-static {p1}, Lcom/cootek/smartinput5/func/mainentrance/g;->f(Lcom/cootek/smartinput5/func/mainentrance/g;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cootek/smartinput5/func/mainentrance/g$a;->a:Lcom/cootek/smartinput5/func/mainentrance/g;

    invoke-static {p1}, Lcom/cootek/smartinput5/func/mainentrance/g;->e(Lcom/cootek/smartinput5/func/mainentrance/g;)Lcom/cootek/smartinput5/net/TWebView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/cootek/smartinput5/net/TWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    iget-object p2, p0, Lcom/cootek/smartinput5/func/mainentrance/g$a;->a:Lcom/cootek/smartinput5/func/mainentrance/g;

    invoke-static {p2}, Lcom/cootek/smartinput5/func/mainentrance/g;->g(Lcom/cootek/smartinput5/func/mainentrance/g;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
