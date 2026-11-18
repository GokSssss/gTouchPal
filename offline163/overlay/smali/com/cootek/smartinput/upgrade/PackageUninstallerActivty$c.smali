.class Lcom/cootek/smartinput/upgrade/PackageUninstallerActivty$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput/upgrade/PackageUninstallerActivty;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/cootek/smartinput/upgrade/PackageUninstallerActivty;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput/upgrade/PackageUninstallerActivty;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput/upgrade/PackageUninstallerActivty$c;->h:Lcom/cootek/smartinput/upgrade/PackageUninstallerActivty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cootek/smartinput/upgrade/PackageUninstallerActivty$c;->h:Lcom/cootek/smartinput/upgrade/PackageUninstallerActivty;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.DELETE"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/cootek/smartinput/upgrade/PackageUninstallerActivty$c;->h:Lcom/cootek/smartinput/upgrade/PackageUninstallerActivty;

    invoke-static {p2, p1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/cootek/smartinput/upgrade/PackageUninstallerActivty$c;->h:Lcom/cootek/smartinput/upgrade/PackageUninstallerActivty;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
