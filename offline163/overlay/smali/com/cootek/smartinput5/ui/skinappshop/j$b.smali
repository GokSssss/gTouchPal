.class Lcom/cootek/smartinput5/ui/skinappshop/j$b;
.super Lcom/cootek/smartinput5/ui/skinappshop/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput5/ui/skinappshop/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic m:Lcom/cootek/smartinput5/ui/skinappshop/j;


# direct methods
.method private constructor <init>(Lcom/cootek/smartinput5/ui/skinappshop/j;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/j$b;->m:Lcom/cootek/smartinput5/ui/skinappshop/j;

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/skinappshop/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cootek/smartinput5/ui/skinappshop/j;Lcom/cootek/smartinput5/ui/skinappshop/j$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/skinappshop/j$b;-><init>(Lcom/cootek/smartinput5/ui/skinappshop/j;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/j$b;->m:Lcom/cootek/smartinput5/ui/skinappshop/j;

    iget-object v1, v0, Lcom/cootek/smartinput5/ui/settings/a;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/settings/a;->v(Landroid/view/View;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/a;->a:Lcom/cootek/smartinput5/net/TWebView;

    invoke-static {}, Lcom/cootek/smartinput5/func/TAccountManager;->d()Lcom/cootek/smartinput5/func/TAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/TAccountManager;->g()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/ui/skinappshop/m;->i(Lcom/cootek/smartinput5/net/TWebView;Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/skinappshop/j$b;->m:Lcom/cootek/smartinput5/ui/skinappshop/j;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/cootek/smartinput5/ui/skinappshop/StoreDetailActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "StoreActivity.EXTRA_TAG"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/j$b;->m:Lcom/cootek/smartinput5/ui/skinappshop/j;

    nop    #163 retired remote StoreDetailActivity

    :goto_0
    invoke-super {p0, p1}, Lcom/cootek/smartinput5/ui/skinappshop/a;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
