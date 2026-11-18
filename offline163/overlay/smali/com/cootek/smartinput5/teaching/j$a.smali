.class Lcom/cootek/smartinput5/teaching/j$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/teaching/j;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/cootek/smartinput5/teaching/j;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/teaching/j;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/teaching/j$a;->h:Lcom/cootek/smartinput5/teaching/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x1

    sput-boolean p1, Lcom/cootek/smartinput5/teaching/k/b;->B:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/cootek/smartinput5/teaching/j$a;->h:Lcom/cootek/smartinput5/teaching/j;

    invoke-static {v1}, Lcom/cootek/smartinput5/teaching/j;->a(Lcom/cootek/smartinput5/teaching/j;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/cootek/smartinput5/teaching/TutorialActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/teaching/j$a;->h:Lcom/cootek/smartinput5/teaching/j;

    invoke-static {v1}, Lcom/cootek/smartinput5/teaching/j;->a(Lcom/cootek/smartinput5/teaching/j;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/teaching/j$a;->h:Lcom/cootek/smartinput5/teaching/j;

    invoke-static {v0, p1}, Lcom/cootek/smartinput5/teaching/j;->b(Lcom/cootek/smartinput5/teaching/j;Z)Z

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->y0()Lcom/cootek/smartinput5/teaching/k/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/teaching/k/b;->f()V

    return-void
.end method
