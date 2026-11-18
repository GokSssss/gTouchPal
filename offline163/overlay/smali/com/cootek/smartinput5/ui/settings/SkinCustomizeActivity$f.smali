.class Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity$f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->K0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity$f;->h:Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity$f;->h:Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;

    const-string v0, "background"

    const-string v1, "picture"

    invoke-static {p1, v0, v1}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->R(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.PICK"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "image/*"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity$f;->h:Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/cootek/smartinput5/settings/Offline163;->result(Landroid/app/Activity;Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
