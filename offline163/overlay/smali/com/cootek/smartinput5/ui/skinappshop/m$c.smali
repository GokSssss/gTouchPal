.class Lcom/cootek/smartinput5/ui/skinappshop/m$c;
.super Lcom/cootek/smartinput5/net/TWebView$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/ui/skinappshop/m;->e(Landroid/content/Context;Lcom/cootek/smartinput5/net/TWebView;Lcom/cootek/smartinput5/ui/skinappshop/a;Lcom/cootek/smartinput5/func/JsHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/cootek/smartinput5/func/JsHandler;

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Lcom/cootek/smartinput5/net/TWebView;

.field final synthetic g:Lcom/cootek/smartinput5/ui/skinappshop/a;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/net/TWebView;Lcom/cootek/smartinput5/func/JsHandler;Landroid/content/Context;Lcom/cootek/smartinput5/net/TWebView;Lcom/cootek/smartinput5/ui/skinappshop/a;)V
    .locals 0

    iput-object p2, p0, Lcom/cootek/smartinput5/ui/skinappshop/m$c;->d:Lcom/cootek/smartinput5/func/JsHandler;

    iput-object p3, p0, Lcom/cootek/smartinput5/ui/skinappshop/m$c;->e:Landroid/content/Context;

    iput-object p4, p0, Lcom/cootek/smartinput5/ui/skinappshop/m$c;->f:Lcom/cootek/smartinput5/net/TWebView;

    iput-object p5, p0, Lcom/cootek/smartinput5/ui/skinappshop/m$c;->g:Lcom/cootek/smartinput5/ui/skinappshop/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/net/TWebView$e;-><init>(Lcom/cootek/smartinput5/net/TWebView;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    const-string v0, "shop"

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/ui/skinappshop/k;->w()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, ".html"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v3, "/"

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    add-int/2addr v3, v5

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cootek/smartinput5/net/L;->d()Lcom/cootek/smartinput5/net/L;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/cootek/smartinput5/net/L;->n(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/cootek/smartinput5/ui/skinappshop/k;->M(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/m$c;->d:Lcom/cootek/smartinput5/func/JsHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/func/JsHandler;->setBlockJsInit(Z)V

    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/m$c;->f:Lcom/cootek/smartinput5/net/TWebView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cootek/smartinput5/net/TWebView;->k()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/m$c;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/m$c;->f:Lcom/cootek/smartinput5/net/TWebView;

    invoke-static {p2, v0, v1}, Lcom/cootek/smartinput5/ui/skinappshop/m;->f(Ljava/lang/String;Landroid/content/Context;Landroid/webkit/WebView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/m$c;->f:Lcom/cootek/smartinput5/net/TWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:setReloadUrl(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/skinappshop/m$c;->g:Lcom/cootek/smartinput5/ui/skinappshop/a;

    iget-object v2, v2, Lcom/cootek/smartinput5/ui/skinappshop/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/net/TWebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/m$c;->g:Lcom/cootek/smartinput5/ui/skinappshop/a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/m$c;->f:Lcom/cootek/smartinput5/net/TWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/m$c;->f:Lcom/cootek/smartinput5/net/TWebView;

    if-eqz v0, :cond_3

    const-string v1, "javascript:if(window.onPageFinished){onPageFinished();}"

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/net/TWebView;->loadUrl(Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/cootek/smartinput5/net/TWebView$e;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/skinappshop/k;->C()V

    const-string v0, "log://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/m$c;->d:Lcom/cootek/smartinput5/func/JsHandler;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/JsHandler;->stop()V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/m$c;->d:Lcom/cootek/smartinput5/func/JsHandler;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/JsHandler;->setBlockJsInit(Z)V

    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/m$c;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/skinappshop/m$c;->f:Lcom/cootek/smartinput5/net/TWebView;

    invoke-static {p2, v0, v2}, Lcom/cootek/smartinput5/ui/skinappshop/m;->f(Ljava/lang/String;Landroid/content/Context;Landroid/webkit/WebView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/m$c;->f:Lcom/cootek/smartinput5/net/TWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/m$c;->g:Lcom/cootek/smartinput5/ui/skinappshop/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/m$c;->g:Lcom/cootek/smartinput5/ui/skinappshop/a;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/cootek/smartinput5/net/TWebView$e;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/m$c;->f:Lcom/cootek/smartinput5/net/TWebView;

    if-eqz p1, :cond_0

    const-string p2, "about:blank"

    invoke-virtual {p1, p2}, Lcom/cootek/smartinput5/net/TWebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/m$c;->f:Lcom/cootek/smartinput5/net/TWebView;

    const/4 v1, 0x0

    const/4 v5, 0x0

    const-string v2, ""

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/asset/i;->H()Lcom/cootek/smartinput5/func/asset/i;

    move-result-object p1

    iget-object p2, p0, Lcom/cootek/smartinput5/ui/skinappshop/m$c;->e:Landroid/content/Context;

    const-string p3, "network_error.html"

    invoke-virtual {p1, p2, p3}, Lcom/cootek/smartinput5/func/asset/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/cootek/smartinput5/ui/skinappshop/m$c;->f:Lcom/cootek/smartinput5/net/TWebView;

    invoke-virtual {p2, p1}, Lcom/cootek/smartinput5/net/TWebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/m$c;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object p1

    const/4 p2, 0x1

    const-string p3, "SKIN_PAGE_LOAD_FAILED"

    const-string p4, "/UI/SKIN_PAGE/"

    invoke-virtual {p1, p3, p2, p4}, Lcom/cootek/smartinput5/l/g;->o(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const-string p1, "mailto:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/net/MailTo;->parse(Ljava/lang/String;)Landroid/net/MailTo;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-array v2, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "android.intent.extra.EMAIL"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/net/MailTo;->getBody()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/net/MailTo;->getSubject()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/net/MailTo;->getCc()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.intent.extra.CC"

    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "message/rfc822"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/m$c;->e:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v1

    :cond_0
    const-string p1, "http"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {p1, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_1
    iget-object p2, p0, Lcom/cootek/smartinput5/ui/skinappshop/m$c;->e:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    return v1

    :cond_1
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/m$c;->f:Lcom/cootek/smartinput5/net/TWebView;

    invoke-virtual {p1, p2}, Lcom/cootek/smartinput5/net/TWebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return v0
.end method
