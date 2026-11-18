.class public Lcom/cootek/smartinput5/net/y$c;
.super Lcom/cootek/smartinput5/net/j$b;

# interfaces
.implements Lcom/cootek/smartinput5/func/D;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput5/net/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public j:Landroid/app/PendingIntent;

.field public k:I

.field public l:Ljava/lang/String;

.field final synthetic m:Lcom/cootek/smartinput5/net/y;


# direct methods
.method public constructor <init>(Lcom/cootek/smartinput5/net/y;ILjava/lang/String;)V
    .locals 8

    iput-object p1, p0, Lcom/cootek/smartinput5/net/y$c;->m:Lcom/cootek/smartinput5/net/y;

    iget-object v0, p1, Lcom/cootek/smartinput5/net/u;->m:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/net/j$b;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/net/j$b;->b:Landroid/app/Notification$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    iget-object v3, p1, Lcom/cootek/smartinput5/net/u;->m:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/net/y;->m()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v2, p0

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/cootek/smartinput5/net/j$b;->d(Landroid/content/Context;IIILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/cootek/smartinput5/net/y$c;->j:Landroid/app/PendingIntent;

    iput p2, p0, Lcom/cootek/smartinput5/net/y$c;->k:I

    iput-object p3, p0, Lcom/cootek/smartinput5/net/y$c;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/net/y$c;->m:Lcom/cootek/smartinput5/net/y;

    iget-object v0, v0, Lcom/cootek/smartinput5/net/u;->m:Landroid/content/Context;

    const v1, 0x7f0f0235

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/net/y$c;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/net/y$c;->m:Lcom/cootek/smartinput5/net/y;

    iget-object v0, v0, Lcom/cootek/smartinput5/net/u;->m:Landroid/content/Context;

    const v1, 0x7f0f0864

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/net/y$c;->b()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/net/y$c;->m:Lcom/cootek/smartinput5/net/y;

    iget-object v0, v0, Lcom/cootek/smartinput5/net/u;->d:[Ljava/util/HashSet;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget v2, p0, Lcom/cootek/smartinput5/net/j$b;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cootek/smartinput5/net/y$c;->m:Lcom/cootek/smartinput5/net/y;

    iget-object v0, v0, Lcom/cootek/smartinput5/net/u;->f:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/cootek/smartinput5/net/y$c;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/cootek/smartinput5/net/y$c;->m:Lcom/cootek/smartinput5/net/y;

    invoke-virtual {v0, p0}, Lcom/cootek/smartinput5/net/u;->d(Lcom/cootek/smartinput5/net/j$b;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/net/y$c;->m:Lcom/cootek/smartinput5/net/y;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/net/u;->Q(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/net/y$c;->m:Lcom/cootek/smartinput5/net/y;

    iget-object v0, v0, Lcom/cootek/smartinput5/net/u;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/cootek/smartinput5/func/i;->j(Landroid/content/Context;)Lcom/cootek/smartinput5/func/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/cootek/smartinput5/func/i;->a0(Lcom/cootek/smartinput5/func/D;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 7

    iget-object v0, p0, Lcom/cootek/smartinput5/net/y$c;->m:Lcom/cootek/smartinput5/net/y;

    iget v1, p0, Lcom/cootek/smartinput5/net/y$c;->k:I

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/net/u;->o(I)Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cootek/smartinput5/net/y$c;->m:Lcom/cootek/smartinput5/net/y;

    iget-object v4, v4, Lcom/cootek/smartinput5/net/u;->m:Landroid/content/Context;

    const v5, 0x7f0f023e

    invoke-static {v4, v5}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const v4, 0x7f0f0235

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/cootek/smartinput5/net/y$c;->m:Lcom/cootek/smartinput5/net/y;

    iget-object v5, v5, Lcom/cootek/smartinput5/net/u;->m:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/cootek/smartinput5/net/y$c;->m:Lcom/cootek/smartinput5/net/y;

    iget-object v5, v5, Lcom/cootek/smartinput5/net/u;->m:Landroid/content/Context;

    const v6, 0x7f0f023c

    invoke-static {v5, v6}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/cootek/smartinput5/net/y$c;->m:Lcom/cootek/smartinput5/net/y;

    iget-object v5, v5, Lcom/cootek/smartinput5/net/u;->m:Landroid/content/Context;

    const v6, 0x7f0f023d

    invoke-static {v5, v6}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "604"

    invoke-static {v0, v2}, Lcom/cootek/smartinput/utilities/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/cootek/smartinput5/net/y$c;->m:Lcom/cootek/smartinput5/net/y;

    iget-object v3, v3, Lcom/cootek/smartinput5/net/u;->m:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const v5, 0x8001

    invoke-virtual {v3, v0, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v2}, Lcom/cootek/presentation/sdk/PresentationManager;->installStarted(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/net/y$c;->m:Lcom/cootek/smartinput5/net/y;

    iget-object v0, v0, Lcom/cootek/smartinput5/net/u;->m:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/cootek/smartinput5/net/y$c;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cootek/smartinput5/net/y$c;->m:Lcom/cootek/smartinput5/net/y;

    iget-object v0, v0, Lcom/cootek/smartinput5/net/u;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/cootek/smartinput5/func/i;->j(Landroid/content/Context;)Lcom/cootek/smartinput5/func/i;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/cootek/smartinput5/func/i;->X(Lcom/cootek/smartinput5/func/D;)V

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/cootek/smartinput5/net/y$c;->m:Lcom/cootek/smartinput5/net/y;

    iget-object v0, v0, Lcom/cootek/smartinput5/net/u;->m:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g(Z)V
    .locals 0

    return-void
.end method

.method public getType()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public h()V
    .locals 4

    iget-object v0, p0, Lcom/cootek/smartinput5/net/y$c;->m:Lcom/cootek/smartinput5/net/y;

    iget-object v1, v0, Lcom/cootek/smartinput5/net/u;->m:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/cootek/smartinput5/net/u;->h:Ljava/util/Hashtable;

    iget v3, p0, Lcom/cootek/smartinput5/net/y$c;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const v0, 0x7f0f0764

    invoke-static {v1, v0, v2}, Lcom/cootek/smartinput5/func/resource/d;->i(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/net/y$c;->m:Lcom/cootek/smartinput5/net/y;

    iget-object v1, v1, Lcom/cootek/smartinput5/net/u;->m:Landroid/content/Context;

    const v2, 0x7f0f0763

    invoke-static {v1, v2}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cootek/smartinput5/net/j$b;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/cootek/smartinput5/net/j$b;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/cootek/smartinput5/net/j$b;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/cootek/smartinput5/net/j$b;->b:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/cootek/smartinput5/net/y$c;->j:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-void
.end method

.method public k(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method
