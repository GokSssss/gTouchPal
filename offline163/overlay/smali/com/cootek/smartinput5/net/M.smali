.class public Lcom/cootek/smartinput5/net/M;
.super Lcom/cootek/smartinput5/net/y;


# static fields
.field private static R:Ljava/lang/String; = "WebViewProgressDownloader"


# instance fields
.field private M:Landroid/content/Context;

.field private N:Landroid/webkit/WebView;

.field private O:Lcom/cootek/smartinput5/net/j$b;

.field private P:Z

.field private Q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/net/y;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/net/M;->P:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/net/M;->Q:Z

    iput-object p1, p0, Lcom/cootek/smartinput5/net/M;->M:Landroid/content/Context;

    iput-object p2, p0, Lcom/cootek/smartinput5/net/M;->N:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method protected B(Lcom/cootek/smartinput5/net/j$b;)V
    .locals 1

    iget-boolean v0, p0, Lcom/cootek/smartinput5/net/M;->P:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/cootek/smartinput5/net/M;->O:Lcom/cootek/smartinput5/net/j$b;

    :cond_0
    return-void
.end method

.method protected E()V
    .locals 2

    invoke-super {p0}, Lcom/cootek/smartinput5/net/y;->E()V

    iget-object v0, p0, Lcom/cootek/smartinput5/net/M;->N:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const-string v1, "javascript:onDownloadCanceled()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected F(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/net/u;->g:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/net/M;->N:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:onDownloadCanceled(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/cootek/smartinput5/net/u;->F(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected G(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/cootek/smartinput5/net/u;->G(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/net/u;->g:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/net/u;->g:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/cootek/smartinput5/net/M;->N:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:onDownloadFailed(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\')"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected H(I)V
    .locals 9

    iget-object v0, p0, Lcom/cootek/smartinput5/net/u;->j:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cootek/smartinput5/net/u$b;

    invoke-virtual {p0}, Lcom/cootek/smartinput5/net/u;->j()I

    move-result v1

    iget-object v2, p0, Lcom/cootek/smartinput5/net/u;->g:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cootek/smartinput5/net/u;->g:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/cootek/smartinput5/net/M;->N:Landroid/webkit/WebView;

    if-eqz v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "javascript:onDownloadFinished(\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\')"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/cootek/smartinput5/net/M;->P:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/cootek/smartinput5/net/M;->O:Lcom/cootek/smartinput5/net/j$b;

    invoke-super {p0, p1}, Lcom/cootek/smartinput5/net/u;->H(I)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/cootek/smartinput5/net/M;->P:Z

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->J0()Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cootek/smartinput5/func/z;->a0()Lcom/cootek/smartinput5/engine/IPCManager;

    move-result-object v4

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lcom/cootek/smartinput5/net/u;->i:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    :try_start_0
    new-instance v5, Lcom/cootek/smartinput5/action/ActionOnFileDownloaded;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/cootek/smartinput5/net/u;->g:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/cootek/smartinput5/net/u;->i:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, v6, v7, p1}, Lcom/cootek/smartinput5/action/ActionOnFileDownloaded;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/cootek/smartinput5/engine/IPCManager;->sendMessageForParcelableAction(Lcom/cootek/smartinput5/action/ParcelableAction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object p1

    if-ne v0, p1, :cond_4

    iget-object p1, p0, Lcom/cootek/smartinput5/net/M;->O:Lcom/cootek/smartinput5/net/j$b;

    if-eqz p1, :cond_4

    instance-of v0, p1, Lcom/cootek/smartinput5/net/y$d;

    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    check-cast p1, Lcom/cootek/smartinput5/net/y$d;

    iget p1, p1, Lcom/cootek/smartinput5/net/y$c;->k:I

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/net/u;->o(I)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cootek/smartinput5/net/M;->M:Landroid/content/Context;

    invoke-static {v0}, Lcom/cootek/smartinput5/func/i;->j(Landroid/content/Context;)Lcom/cootek/smartinput5/func/i;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/cootek/smartinput5/func/i;->h(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cootek/smartinput5/func/h0;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/h;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/cootek/smartinput5/net/M;->Q:Z

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/net/M;->M:Landroid/content/Context;

    const-class v2, Lcom/cootek/smartinput5/func/skin/SponsorThemeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.cootek.smartinput5.func.skin.SponsorThemeActivity.EXTRA_SKIN_PKG"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/cootek/smartinput5/net/M;->M:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_3
    iget-object p1, p0, Lcom/cootek/smartinput5/net/M;->O:Lcom/cootek/smartinput5/net/j$b;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/net/j$b;->b()V

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->V()Lcom/cootek/smartinput5/func/u;

    move-result-object v1

    if-eq v0, v1, :cond_6

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->W()Lcom/cootek/smartinput5/func/B0/a;

    move-result-object p1

    if-ne v0, p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :cond_6
    :goto_1
    if-nez v2, :cond_7

    iget-object p1, p0, Lcom/cootek/smartinput5/net/M;->M:Landroid/content/Context;

    const v0, 0x7f0f03f7

    invoke-static {p1, v0}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/ui/control/E;->s(Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method protected K(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/cootek/smartinput5/net/y;->K(IIII)V

    iget-object p2, p0, Lcom/cootek/smartinput5/net/u;->g:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/cootek/smartinput5/net/u;->g:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    mul-int/lit8 p3, p3, 0x64

    div-int/2addr p3, p4

    iget-object p2, p0, Lcom/cootek/smartinput5/net/M;->N:Landroid/webkit/WebView;

    if-eqz p2, :cond_0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "javascript:onDownloadProgress(\'"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\',"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected M(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/cootek/smartinput5/net/u;->M(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/net/u;->g:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/net/u;->g:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/cootek/smartinput5/net/M;->N:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:onDownloadStarted(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\')"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public X(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cootek/smartinput5/net/M;->Q:Z

    return-void
.end method
