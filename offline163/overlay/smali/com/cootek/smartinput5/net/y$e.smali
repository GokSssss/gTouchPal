.class public Lcom/cootek/smartinput5/net/y$e;
.super Lcom/cootek/smartinput5/net/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput5/net/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public j:Landroid/app/PendingIntent;

.field public k:I

.field public l:I

.field final synthetic m:Lcom/cootek/smartinput5/net/y;


# direct methods
.method public constructor <init>(Lcom/cootek/smartinput5/net/y;)V
    .locals 4

    iput-object p1, p0, Lcom/cootek/smartinput5/net/y$e;->m:Lcom/cootek/smartinput5/net/y;

    iget-object v0, p1, Lcom/cootek/smartinput5/net/u;->m:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/net/j$b;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/cootek/smartinput5/net/y$e;->k:I

    iput v0, p0, Lcom/cootek/smartinput5/net/y$e;->l:I

    iget-object v1, p1, Lcom/cootek/smartinput5/net/u;->m:Landroid/content/Context;

    invoke-static {v1}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->q(Landroid/content/Context;)Lcom/cootek/smartinput5/configuration/ConfigurationManager;

    move-result-object v1

    sget-object v2, Lcom/cootek/smartinput5/configuration/ConfigurationType;->USE_SMALL_DOWNLOADING_ICON:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->j(Lcom/cootek/smartinput5/configuration/ConfigurationType;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cootek/smartinput5/net/j$b;->b:Landroid/app/Notification$Builder;

    const v2, 0x7f080256

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/cootek/smartinput5/net/j$b;->b:Landroid/app/Notification$Builder;

    const v2, 0x7f080255

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    :goto_0
    iget-object v1, p0, Lcom/cootek/smartinput5/net/j$b;->b:Landroid/app/Notification$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    iget-object v1, p1, Lcom/cootek/smartinput5/net/u;->m:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/net/y;->m()I

    move-result p1

    invoke-virtual {p0, v1, p1, v0, v0}, Lcom/cootek/smartinput5/net/j$b;->c(Landroid/content/Context;III)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/cootek/smartinput5/net/y$e;->j:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public e()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/net/y$e;->m:Lcom/cootek/smartinput5/net/y;

    iget-object v1, v1, Lcom/cootek/smartinput5/net/u;->m:Landroid/content/Context;

    const-class v2, Lcom/cootek/smartinput5/ui/control/CancelDownloadActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/net/y$e;->m:Lcom/cootek/smartinput5/net/y;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/net/y;->m()I

    move-result v1

    const-string v2, "TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/net/y$e;->m:Lcom/cootek/smartinput5/net/y;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/net/u;->p(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FILENAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/net/y$e;->m:Lcom/cootek/smartinput5/net/y;

    iget-object v1, v1, Lcom/cootek/smartinput5/net/u;->m:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public h()V
    .locals 5

    iget-object v0, p0, Lcom/cootek/smartinput5/net/y$e;->m:Lcom/cootek/smartinput5/net/y;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/net/u;->p(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/cootek/smartinput5/net/y$e;->l:I

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/cootek/smartinput5/net/y$e;->k:I

    int-to-float v3, v3

    iget v4, p0, Lcom/cootek/smartinput5/net/y$e;->l:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/cootek/smartinput5/net/y$e;->k:I

    div-int/lit16 v3, v3, 0x400

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "KB / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/cootek/smartinput5/net/y$e;->l:I

    div-int/lit16 v3, v3, 0x400

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "KB)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lcom/cootek/smartinput5/net/j$b;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/cootek/smartinput5/net/j$b;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/cootek/smartinput5/net/j$b;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/cootek/smartinput5/net/j$b;->b:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/cootek/smartinput5/net/y$e;->j:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-void
.end method
