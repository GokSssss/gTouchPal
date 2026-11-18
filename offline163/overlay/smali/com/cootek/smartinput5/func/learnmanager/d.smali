.class public Lcom/cootek/smartinput5/func/learnmanager/d;
.super Lcom/cootek/smartinput5/func/learnmanager/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput5/func/learnmanager/d$e;
    }
.end annotation


# static fields
.field public static final q:Ljava/lang/String; = "followUs"

.field public static final r:Ljava/lang/String; = "tweetAfterLearning"

.field public static final s:Ljava/lang/String; = "tweetContent"

.field public static t:Landroid/app/Activity;

.field public static u:Z

.field public static v:Z

.field public static w:Z


# instance fields
.field private final m:I

.field private n:Lcom/cootek/smartinput5/plugin/twitter/e;

.field private o:Landroid/os/Bundle;

.field private p:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/learnmanager/b;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x64

    iput p1, p0, Lcom/cootek/smartinput5/func/learnmanager/d;->m:I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/cootek/smartinput5/func/learnmanager/d;->p:Landroid/os/Handler;

    const/4 p1, 0x0

    sput-boolean p1, Lcom/cootek/smartinput5/func/learnmanager/d;->v:Z

    return-void
.end method

.method static synthetic r(Lcom/cootek/smartinput5/func/learnmanager/d;)Lcom/cootek/smartinput5/plugin/twitter/e;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/func/learnmanager/d;->n:Lcom/cootek/smartinput5/plugin/twitter/e;

    return-object p0
.end method

.method static synthetic s(Lcom/cootek/smartinput5/func/learnmanager/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/learnmanager/d;->v()V

    return-void
.end method

.method static synthetic t(Lcom/cootek/smartinput5/func/learnmanager/d;Lcom/cootek/smartinput5/plugin/twitter/TwitterException;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/learnmanager/d;->y(Lcom/cootek/smartinput5/plugin/twitter/TwitterException;)V

    return-void
.end method

.method private u(Lcom/cootek/smartinput5/func/learnmanager/a$c;)V
    .locals 5

    new-instance v0, Lcom/cootek/smartinput5/func/learnmanager/d$a;

    invoke-direct {v0, p0, p1}, Lcom/cootek/smartinput5/func/learnmanager/d$a;-><init>(Lcom/cootek/smartinput5/func/learnmanager/d;Lcom/cootek/smartinput5/func/learnmanager/a$c;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/plugin/twitter/g;->c(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    new-instance v0, Lcom/cootek/smartinput5/func/learnmanager/d$e;

    invoke-direct {v0, p0, v1}, Lcom/cootek/smartinput5/func/learnmanager/d$e;-><init>(Lcom/cootek/smartinput5/func/learnmanager/d;Lcom/cootek/smartinput5/func/learnmanager/d$a;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/cootek/smartinput5/func/learnmanager/d;->w:Z

    sput-boolean v1, Lcom/cootek/smartinput5/func/learnmanager/d;->u:Z

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->Q()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->Q()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/cootek/smartinput5/func/learnmanager/TwitterProgressDialogActivity;

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v2, v3}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/cootek/smartinput5/func/learnmanager/a$c;

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/func/m0;->executeInThreadPool([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private v()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/cootek/smartinput5/func/learnmanager/d;->u:Z

    sget-object v0, Lcom/cootek/smartinput5/func/learnmanager/d;->t:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    sput-object v0, Lcom/cootek/smartinput5/func/learnmanager/d;->t:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method private w()[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/cootek/smartinput5/func/learnmanager/d;->n:Lcom/cootek/smartinput5/plugin/twitter/e;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/plugin/twitter/e;->p(I)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lcom/cootek/smartinput5/plugin/twitter/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/plugin/twitter/TwitterException;->printStackTrace()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cootek/smartinput5/func/learnmanager/b;->a:Z

    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lcom/cootek/smartinput5/func/learnmanager/d;->o:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    const-string v3, "followUs"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/cootek/smartinput5/func/learnmanager/d;->o:Landroid/os/Bundle;

    const-string v4, "tweetAfterLearning"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/plugin/twitter/e;->l()Lcom/cootek/smartinput5/plugin/twitter/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/plugin/twitter/e;->s()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/learnmanager/d;->x()V

    :cond_0
    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/cootek/smartinput5/func/learnmanager/d;->o:Landroid/os/Bundle;

    const-string v3, "tweetContent"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/cootek/smartinput5/func/learnmanager/d;->z(Ljava/lang/String;)V

    :cond_1
    iput-object v0, p0, Lcom/cootek/smartinput5/func/learnmanager/d;->o:Landroid/os/Bundle;

    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cootek/smartinput5/func/learnmanager/d;->v:Z

    return-object v1
.end method

.method private x()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cootek/smartinput5/func/learnmanager/d$d;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/func/learnmanager/d$d;-><init>(Lcom/cootek/smartinput5/func/learnmanager/d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private y(Lcom/cootek/smartinput5/plugin/twitter/TwitterException;)V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/cootek/smartinput5/func/learnmanager/d;->v:Z

    iget-object v0, p0, Lcom/cootek/smartinput5/func/learnmanager/d;->p:Landroid/os/Handler;

    new-instance v1, Lcom/cootek/smartinput5/func/learnmanager/d$b;

    invoke-direct {v1, p0, p1}, Lcom/cootek/smartinput5/func/learnmanager/d$b;-><init>(Lcom/cootek/smartinput5/func/learnmanager/d;Lcom/cootek/smartinput5/plugin/twitter/TwitterException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private z(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/cootek/smartinput5/plugin/twitter/e;->l()Lcom/cootek/smartinput5/plugin/twitter/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/plugin/twitter/e;->x(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/cootek/smartinput5/plugin/twitter/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/func/learnmanager/b;->b:Landroid/content/Context;

    const v1, 0x7f0f09e3

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c()I
    .locals 1

    sget v0, Lcom/cootek/smartinput5/func/learnmanager/b;->e:I

    return v0
.end method

.method protected d(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/learnmanager/d;->w()[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected e()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/func/learnmanager/b;->b:Landroid/content/Context;

    const v1, 0x7f0f09e2

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected g()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected h()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected i()I
    .locals 1

    const/16 v0, 0xb2

    return v0
.end method

.method protected j()Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/cootek/smartinput5/func/learnmanager/d$c;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/func/learnmanager/d$c;-><init>(Lcom/cootek/smartinput5/func/learnmanager/d;)V

    return-object v0
.end method

.method protected k()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected l()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/func/learnmanager/b;->b:Landroid/content/Context;

    const v1, 0x7f0f09e5

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected m()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/func/learnmanager/b;->b:Landroid/content/Context;

    const v1, 0x7f0f06aa

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected o()Z
    .locals 1

    sget-boolean v0, Lcom/cootek/smartinput5/func/learnmanager/d;->v:Z

    return v0
.end method

.method protected p(Lcom/cootek/smartinput5/func/learnmanager/a$c;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/cootek/smartinput5/func/learnmanager/d;->v:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/func/learnmanager/b;->a:Z

    invoke-static {}, Lcom/cootek/smartinput5/plugin/twitter/e;->l()Lcom/cootek/smartinput5/plugin/twitter/e;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/smartinput5/func/learnmanager/d;->n:Lcom/cootek/smartinput5/plugin/twitter/e;

    const/4 v0, 0x0

    sput-object v0, Lcom/cootek/smartinput5/func/learnmanager/d;->t:Landroid/app/Activity;

    invoke-static {}, Lcom/cootek/smartinput5/plugin/twitter/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->Q()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/plugin/twitter/a;->e(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/plugin/twitter/a;->d()Lcom/cootek/smartinput5/plugin/twitter/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/plugin/twitter/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cootek/smartinput5/func/learnmanager/d;->n:Lcom/cootek/smartinput5/plugin/twitter/e;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/plugin/twitter/e;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/learnmanager/a$c;->a()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/learnmanager/d;->u(Lcom/cootek/smartinput5/func/learnmanager/a$c;)V

    :goto_1
    return-void
.end method

.method public q(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/func/learnmanager/d;->o:Landroid/os/Bundle;

    return-void
.end method
