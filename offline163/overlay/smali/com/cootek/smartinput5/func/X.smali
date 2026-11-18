.class public Lcom/cootek/smartinput5/func/X;
.super Lcom/cootek/smartinput5/func/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput5/func/X$a;
    }
.end annotation


# static fields
.field public static final A:I = 0x2

.field public static final B:Ljava/lang/String; = "keycode"

.field public static final C:Ljava/lang/String; = "activity"

.field public static final D:Ljava/lang/String; = "keyname"

.field public static final E:Ljava/lang/String; = "keyboard"

.field public static final F:Ljava/lang/String; = "func"

.field public static final G:Ljava/lang/String; = "switcher"

.field public static final H:Ljava/lang/String; = "entra"

.field public static final I:Ljava/lang/String; = "functionbar"

.field public static final J:Ljava/lang/String; = "drawer"

.field public static final K:I = 0x0

.field public static final L:I = 0x1

.field public static final M:I = 0x2

.field public static final N:I = 0x3

.field public static final O:I = 0x0

.field public static final P:I = 0x1

.field public static final Q:I = 0x2

.field public static final R:Ljava/lang/String; = "auto"

.field public static final S:Ljava/lang/String; = "top"

.field public static final T:Ljava/lang/String; = "bottom"

.field public static final U:Ljava/lang/String; = "all"

.field public static final V:Ljava/lang/String; = "international"

.field public static final W:Ljava/lang/String; = "mainland"

.field public static final X:Ljava/lang/String; = "com.cootek.smartinput.intent.action.KEYCODE"

.field public static final Y:Ljava/lang/String; = "com.cootek.smartinput.intent.action.KEYNAME"

.field public static final v:I = 0x0

.field public static final w:I = 0x1

.field public static final x:I = 0x2

.field public static final y:I = 0x3

.field public static final z:I = 0x1


# instance fields
.field public g:Landroid/graphics/drawable/Drawable;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:I

.field public n:Z

.field public o:[Landroid/content/Intent;

.field public p:[I

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Z

.field public t:Ljava/lang/String;

.field public u:Lcom/cootek/smartinput5/func/X$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/h;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/cootek/smartinput5/func/X;->l:I

    iput v0, p0, Lcom/cootek/smartinput5/func/X;->m:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/func/X;->n:Z

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/content/Intent;

    iput-object v1, p0, Lcom/cootek/smartinput5/func/X;->o:[Landroid/content/Intent;

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/cootek/smartinput5/func/X;->p:[I

    return-void
.end method

.method public static l(Ljava/lang/String;)I
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cootek/smartinput5/engine/Engine;->getKeyId(Ljava/lang/String;)I

    move-result p0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/cootek/smartinput5/engine/Engine;->fireKeyOperation(II)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->processEvent()V

    return v1
.end method

.method public static m(I)I
    .locals 1

    if-gtz p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cootek/smartinput5/engine/Engine;->commitKeyEvent(I)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public j(Landroid/content/Context;I)I
    .locals 2

    invoke-virtual {p0, p2}, Lcom/cootek/smartinput5/func/X;->k(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object p1, p0, Lcom/cootek/smartinput5/func/X;->u:Lcom/cootek/smartinput5/func/X$a;

    invoke-interface {p1}, Lcom/cootek/smartinput5/func/X$a;->a()I

    move-result p1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/func/X;->o:[Landroid/content/Intent;

    aget-object p2, v0, p2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.cootek.smartinput.intent.action.KEYCODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    const-string v0, "keycode"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/cootek/smartinput5/func/X;->m(I)I

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.cootek.smartinput.intent.action.KEYNAME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "keyname"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cootek/smartinput5/func/X;->l(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/cootek/smartinput5/func/X;->n(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p1

    return p1
.end method

.method public k(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    if-gt p1, v1, :cond_0

    iget-object v2, p0, Lcom/cootek/smartinput5/func/X;->o:[Landroid/content/Intent;

    aget-object v2, v2, p1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    iget-object p1, p0, Lcom/cootek/smartinput5/func/X;->u:Lcom/cootek/smartinput5/func/X$a;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez v2, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method protected n(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 0

    :try_start_0
    invoke-static {p1, p2}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const/4 p1, 0x2

    :goto_1
    return p1
.end method
