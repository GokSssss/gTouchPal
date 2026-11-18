.class Lcom/cootek/smartinput5/ui/control/GetImageActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/ui/control/GetImageActivity;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/cootek/smartinput5/ui/control/GetImageActivity;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/ui/control/GetImageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity$a;->h:Lcom/cootek/smartinput5/ui/control/GetImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity$a;->h:Lcom/cootek/smartinput5/ui/control/GetImageActivity;

    invoke-static {v1, p2, v0}, Lcom/cootek/smartinput5/settings/Offline163;->result(Landroid/app/Activity;Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity$a;->h:Lcom/cootek/smartinput5/ui/control/GetImageActivity;

    invoke-static {p2}, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->h(Lcom/cootek/smartinput5/ui/control/GetImageActivity;)Ljava/io/File;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object p1

    iget-object p2, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity$a;->h:Lcom/cootek/smartinput5/ui/control/GetImageActivity;

    const v1, 0x7f0f0806

    invoke-static {p2, v1}, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->i(Lcom/cootek/smartinput5/ui/control/GetImageActivity;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/cootek/smartinput5/ui/control/E;->w(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity$a;->h:Lcom/cootek/smartinput5/ui/control/GetImageActivity;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->finish()V

    return-void

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    const-string v2, "output"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :try_start_1
    iget-object p2, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity$a;->h:Lcom/cootek/smartinput5/ui/control/GetImageActivity;

    invoke-static {p2, v1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->result(Landroid/app/Activity;Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void
.end method
