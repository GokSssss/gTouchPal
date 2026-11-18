.class Lcom/cootek/smartinput5/func/mainentrance/f$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput5/func/mainentrance/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/cootek/smartinput5/func/mainentrance/f;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/func/mainentrance/f;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/func/mainentrance/f$b;->h:Lcom/cootek/smartinput5/func/mainentrance/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cootek/smartinput5/func/mainentrance/d;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/mainentrance/d;->f()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/mainentrance/d;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/func/mainentrance/f$b;->h:Lcom/cootek/smartinput5/func/mainentrance/f;

    invoke-static {v1}, Lcom/cootek/smartinput5/func/mainentrance/f;->j(Lcom/cootek/smartinput5/func/mainentrance/f;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/cootek/smartinput5/func/skin/SponsorThemeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/mainentrance/d;->e()Lcom/cootek/smartinput5/func/h0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/h;->d()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.cootek.smartinput5.func.skin.SponsorThemeActivity.EXTRA_SKIN_PKG"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/cootek/smartinput5/func/mainentrance/f$b;->h:Lcom/cootek/smartinput5/func/mainentrance/f;

    invoke-static {p1}, Lcom/cootek/smartinput5/func/mainentrance/f;->j(Lcom/cootek/smartinput5/func/mainentrance/f;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/cootek/smartinput5/func/mainentrance/f$b;->h:Lcom/cootek/smartinput5/func/mainentrance/f;

    invoke-static {v0}, Lcom/cootek/smartinput5/func/mainentrance/f;->k(Lcom/cootek/smartinput5/func/mainentrance/f;)Lcom/cootek/smartinput5/func/mainentrance/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/mainentrance/e;->k(Lcom/cootek/smartinput5/func/mainentrance/d;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/func/mainentrance/f$b;->h:Lcom/cootek/smartinput5/func/mainentrance/f;

    invoke-static {p1}, Lcom/cootek/smartinput5/func/mainentrance/f;->k(Lcom/cootek/smartinput5/func/mainentrance/f;)Lcom/cootek/smartinput5/func/mainentrance/e;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_1
    invoke-static {}, Lcom/cootek/smartinput5/actionflow/a;->f()Lcom/cootek/smartinput5/actionflow/a;

    move-result-object p1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/mainentrance/f$b;->h:Lcom/cootek/smartinput5/func/mainentrance/f;

    invoke-static {v0}, Lcom/cootek/smartinput5/func/mainentrance/f;->j(Lcom/cootek/smartinput5/func/mainentrance/f;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "SKIN_LOCAL_CLICK"

    invoke-virtual {p1, v1, v0}, Lcom/cootek/smartinput5/actionflow/a;->i(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
