.class public Lcom/cootek/smartinput5/func/learnmanager/a$b;
.super Lcom/cootek/smartinput5/func/learnmanager/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput5/func/learnmanager/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private l:Landroid/app/PendingIntent;

.field private m:Lcom/cootek/smartinput5/func/learnmanager/b;

.field final synthetic n:Lcom/cootek/smartinput5/func/learnmanager/a;


# direct methods
.method public constructor <init>(Lcom/cootek/smartinput5/func/learnmanager/a;Lcom/cootek/smartinput5/func/learnmanager/b;)V
    .locals 1

    iput-object p1, p0, Lcom/cootek/smartinput5/func/learnmanager/a$b;->n:Lcom/cootek/smartinput5/func/learnmanager/a;

    invoke-virtual {p2}, Lcom/cootek/smartinput5/func/learnmanager/b;->g()I

    move-result v0

    invoke-static {p1}, Lcom/cootek/smartinput5/func/learnmanager/a;->c(Lcom/cootek/smartinput5/func/learnmanager/a;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/cootek/smartinput5/func/learnmanager/c$a;-><init>(ILandroid/content/Context;)V

    iput-object p2, p0, Lcom/cootek/smartinput5/func/learnmanager/a$b;->m:Lcom/cootek/smartinput5/func/learnmanager/b;

    iget-object p1, p0, Lcom/cootek/smartinput5/func/learnmanager/c$a;->b:Landroid/app/Notification$Builder;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    iget-object p1, p0, Lcom/cootek/smartinput5/func/learnmanager/c$a;->b:Landroid/app/Notification$Builder;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/func/learnmanager/c$a;->b(I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/cootek/smartinput5/func/learnmanager/a$b;->l:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/cootek/smartinput5/func/learnmanager/a$b;->n:Lcom/cootek/smartinput5/func/learnmanager/a;

    invoke-static {v1}, Lcom/cootek/smartinput5/func/learnmanager/a;->c(Lcom/cootek/smartinput5/func/learnmanager/a;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/cootek/smartinput5/func/learnmanager/LearnRetryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/func/learnmanager/a$b;->m:Lcom/cootek/smartinput5/func/learnmanager/b;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/learnmanager/b;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, "failedTitle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/func/learnmanager/a$b;->m:Lcom/cootek/smartinput5/func/learnmanager/b;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/learnmanager/b;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "failedMessage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/func/learnmanager/a$b;->m:Lcom/cootek/smartinput5/func/learnmanager/b;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/learnmanager/b;->h()I

    move-result v1

    const-string v2, "failedProbiderType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/func/learnmanager/a$b;->n:Lcom/cootek/smartinput5/func/learnmanager/a;

    invoke-static {v1}, Lcom/cootek/smartinput5/func/learnmanager/a;->c(Lcom/cootek/smartinput5/func/learnmanager/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/func/learnmanager/a$b;->m:Lcom/cootek/smartinput5/func/learnmanager/b;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/learnmanager/b;->m()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/func/learnmanager/a$b;->m:Lcom/cootek/smartinput5/func/learnmanager/b;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/learnmanager/b;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cootek/smartinput5/func/learnmanager/c$a;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/cootek/smartinput5/func/learnmanager/c$a;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/cootek/smartinput5/func/learnmanager/c$a;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/cootek/smartinput5/func/learnmanager/c$a;->b:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/cootek/smartinput5/func/learnmanager/a$b;->l:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-void
.end method
