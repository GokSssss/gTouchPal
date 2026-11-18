.class public Lcom/cootek/smartinput5/net/y$a;
.super Lcom/cootek/smartinput5/net/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput5/net/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public j:Landroid/app/PendingIntent;

.field final synthetic k:Lcom/cootek/smartinput5/net/y;


# direct methods
.method public constructor <init>(Lcom/cootek/smartinput5/net/y;)V
    .locals 5

    iput-object p1, p0, Lcom/cootek/smartinput5/net/y$a;->k:Lcom/cootek/smartinput5/net/y;

    iget-object v0, p1, Lcom/cootek/smartinput5/net/u;->m:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/net/j$b;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/net/j$b;->b:Landroid/app/Notification$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    iget-object v0, p1, Lcom/cootek/smartinput5/net/u;->m:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/net/y;->m()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/cootek/smartinput5/net/j$b;->c(Landroid/content/Context;III)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/smartinput5/net/y$a;->j:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/cootek/smartinput5/net/j$b;->b:Landroid/app/Notification$Builder;

    iget-object v2, p1, Lcom/cootek/smartinput5/net/u;->m:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/net/y;->m()I

    move-result p1

    invoke-virtual {p0, v2, p1, v1, v4}, Lcom/cootek/smartinput5/net/j$b;->c(Landroid/content/Context;III)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/net/y$a;->k:Lcom/cootek/smartinput5/net/y;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/net/u;->Q(I)V

    return-void
.end method

.method public e()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/net/y$a;->k:Lcom/cootek/smartinput5/net/y;

    iget-object v1, v1, Lcom/cootek/smartinput5/net/u;->m:Landroid/content/Context;

    const-class v2, Lcom/cootek/smartinput5/ui/control/RetryDownloadActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/net/y$a;->k:Lcom/cootek/smartinput5/net/y;

    iget-object v1, v1, Lcom/cootek/smartinput5/net/u;->m:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public h()V
    .locals 5

    iget-object v0, p0, Lcom/cootek/smartinput5/net/y$a;->k:Lcom/cootek/smartinput5/net/y;

    iget-object v1, v0, Lcom/cootek/smartinput5/net/u;->m:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/cootek/smartinput5/net/u;->k(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const v0, 0x7f0f0761

    invoke-static {v1, v0, v2}, Lcom/cootek/smartinput5/func/resource/d;->i(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/net/y$a;->k:Lcom/cootek/smartinput5/net/y;

    invoke-virtual {v1, v3}, Lcom/cootek/smartinput5/net/u;->p(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cootek/smartinput5/net/j$b;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/cootek/smartinput5/net/j$b;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/cootek/smartinput5/net/j$b;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/cootek/smartinput5/net/j$b;->b:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/cootek/smartinput5/net/y$a;->j:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-void
.end method
