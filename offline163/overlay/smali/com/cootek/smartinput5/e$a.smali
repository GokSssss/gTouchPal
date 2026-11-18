.class Lcom/cootek/smartinput5/e$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput5/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cootek/smartinput5/e;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/e;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/e$a;->a:Lcom/cootek/smartinput5/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v0, "DATA_SHOW_THEME_SELECTOR"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_1
    iget-object p1, p0, Lcom/cootek/smartinput5/e$a;->a:Lcom/cootek/smartinput5/e;

    invoke-static {p1}, Lcom/cootek/smartinput5/e;->a(Lcom/cootek/smartinput5/e;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/cootek/smartinput5/func/w0;->R(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/e$a;->a:Lcom/cootek/smartinput5/e;

    invoke-static {v1}, Lcom/cootek/smartinput5/e;->a(Lcom/cootek/smartinput5/e;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/cootek/smartinput5/Guide;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x34000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.cootek.smartinput5.Guide.EXTRA_SHOW_THEME_SELECTOR"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/cootek/smartinput5/e$a;->a:Lcom/cootek/smartinput5/e;

    invoke-static {v0}, Lcom/cootek/smartinput5/e;->a(Lcom/cootek/smartinput5/e;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/e$a;->a:Lcom/cootek/smartinput5/e;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/e;->b()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/cootek/smartinput5/e$a;->a:Lcom/cootek/smartinput5/e;

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/e;->d(Z)V

    :goto_0
    return-void
.end method
