.class Lcom/cootek/smartinput5/ui/settings/InvitationDialog$e;
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

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/settings/InvitationDialog$e;->h:Lcom/cootek/smartinput5/ui/settings/InvitationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/settings/InvitationDialog$e;->h:Lcom/cootek/smartinput5/ui/settings/InvitationDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/cootek/smartinput5/func/x0;->d()Lcom/cootek/smartinput5/func/x0;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/InvitationDialog$e;->h:Lcom/cootek/smartinput5/ui/settings/InvitationDialog;

    invoke-static {v1}, Lcom/cootek/smartinput5/ui/settings/InvitationDialog;->i(Lcom/cootek/smartinput5/ui/settings/InvitationDialog;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/func/x0;->h(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/InvitationDialog$e;->h:Lcom/cootek/smartinput5/ui/settings/InvitationDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cootek/smartinput5/net/J;->F(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/cootek/smartinput5/TouchPalIME;->requestHideSelf(I)V

    :cond_0
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/settings/InvitationDialog$e;->h:Lcom/cootek/smartinput5/ui/settings/InvitationDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/settings/InvitationDialog$e;->h:Lcom/cootek/smartinput5/ui/settings/InvitationDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
