.class Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$c;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->j0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$c;->a:Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$c;->a:Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;

    const-class v3, Lcom/cootek/smartinput5/ui/skinappshop/StoreDetailActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "StoreActivity.EXTRA_TAG"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$c;->a:Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "reloadTab"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$c;->a:Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;

    invoke-static {v1}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->N(Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$c;->a:Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;

    invoke-static {v1, v0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->O(Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->a0()Lcom/cootek/smartinput5/engine/IPCManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/IPCManager;->handleExtralAction(Landroid/os/Bundle;)V

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
