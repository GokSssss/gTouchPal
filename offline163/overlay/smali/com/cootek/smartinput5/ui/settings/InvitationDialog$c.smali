.class Lcom/cootek/smartinput5/ui/settings/InvitationDialog$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/ui/settings/InvitationDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/cootek/smartinput5/ui/settings/InvitationDialog;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/ui/settings/InvitationDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/settings/InvitationDialog$c;->h:Lcom/cootek/smartinput5/ui/settings/InvitationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/InvitationDialog$c;->h:Lcom/cootek/smartinput5/ui/settings/InvitationDialog;

    invoke-static {v0}, Lcom/cootek/smartinput5/ui/settings/InvitationDialog;->i(Lcom/cootek/smartinput5/ui/settings/InvitationDialog;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/cootek/smartinput5/plugin/twitter/AuthorizeActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.cootek.smartinput.intent.category.MINIMODE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/InvitationDialog$c;->h:Lcom/cootek/smartinput5/ui/settings/InvitationDialog;

    invoke-static {v0}, Lcom/cootek/smartinput5/ui/settings/InvitationDialog;->j(Lcom/cootek/smartinput5/ui/settings/InvitationDialog;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "twitter.ShareActivity.EXTRA_CONST_TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "twitter.ShareActivity.EXTRA_FOLLOW_US"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_TYPE:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_KEY:Ljava/lang/String;

    const/16 v3, 0xad

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "twitter.ShareActivity.EXTRA_BUNDLE_SETTING_CHANGED_ON_SUCCEED"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/InvitationDialog$c;->h:Lcom/cootek/smartinput5/ui/settings/InvitationDialog;

    invoke-static {v0}, Lcom/cootek/smartinput5/ui/settings/InvitationDialog;->i(Lcom/cootek/smartinput5/ui/settings/InvitationDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/TouchPalIME;->requestHideSelf(I)V

    :cond_0
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/settings/InvitationDialog$c;->h:Lcom/cootek/smartinput5/ui/settings/InvitationDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
