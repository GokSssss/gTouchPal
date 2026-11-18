.class public Lcom/cootek/e/b/c/e/c/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cootek/e/b/c/a/d;


# instance fields
.field private final h:Ljava/lang/String;

.field private i:Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout;

.field private j:Landroid/content/Context;

.field private k:Lcom/cootek/e/b/c/a/g/l0;

.field private l:Landroid/view/View;

.field private m:Landroid/support/v7/widget/RecyclerView;

.field private n:Lcom/cootek/e/b/c/a/e;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/view/View;

.field private q:Lcom/cootek/e/b/c/a/g/k0;

.field private r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout$PanelState;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/cootek/e/b/c/a/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/cootek/e/b/c/e/c/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/e/b/c/e/c/i;->h:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cootek/e/b/c/e/c/i;->t:Ljava/util/List;

    iput-object p1, p0, Lcom/cootek/e/b/c/e/c/i;->j:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/cootek/e/b/c/e/c/i;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cootek/e/b/c/e/c/i;->r:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/cootek/e/b/c/e/c/i;->n:Lcom/cootek/e/b/c/a/e;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/cootek/commercial/R$layout;->layout_shopping_suggestion_view:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/cootek/e/b/c/e/c/i;->l:Landroid/view/View;

    sget v0, Lcom/cootek/commercial/R$id;->sliding_panel_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout;

    iput-object p2, p0, Lcom/cootek/e/b/c/e/c/i;->i:Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout;

    iget-object v0, p0, Lcom/cootek/e/b/c/e/c/i;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/cootek/commercial/R$color;->transparent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout;->setCoveredFadeColor(I)V

    iget-object p2, p0, Lcom/cootek/e/b/c/e/c/i;->l:Landroid/view/View;

    sget v0, Lcom/cootek/commercial/R$id;->drag_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/cootek/e/b/c/e/c/i;->p:Landroid/view/View;

    iget-object p2, p0, Lcom/cootek/e/b/c/e/c/i;->l:Landroid/view/View;

    sget v0, Lcom/cootek/commercial/R$id;->suggestion_arrow:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/cootek/e/b/c/e/c/i;->o:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/cootek/e/b/c/e/c/i;->l:Landroid/view/View;

    sget v0, Lcom/cootek/commercial/R$id;->rc_content_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/cootek/e/b/c/e/c/i;->m:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/cootek/e/b/c/e/c/i;->i:Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout;

    new-instance v0, Lcom/cootek/e/b/c/e/c/d;

    invoke-direct {v0, p0}, Lcom/cootek/e/b/c/e/c/d;-><init>(Lcom/cootek/e/b/c/e/c/i;)V

    invoke-virtual {p2, v0}, Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout;->setFadeOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/cootek/e/b/c/e/c/i;->i:Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout;

    new-instance v0, Lcom/cootek/e/b/c/e/c/i$a;

    invoke-direct {v0, p0}, Lcom/cootek/e/b/c/e/c/i$a;-><init>(Lcom/cootek/e/b/c/e/c/i;)V

    invoke-virtual {p2, v0}, Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout;->n(Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout$c;)V

    new-instance p2, Lcom/cootek/e/b/c/a/g/l0;

    invoke-direct {p2, p0}, Lcom/cootek/e/b/c/a/g/l0;-><init>(Lcom/cootek/e/b/c/a/d;)V

    iput-object p2, p0, Lcom/cootek/e/b/c/e/c/i;->k:Lcom/cootek/e/b/c/a/g/l0;

    invoke-direct {p0, p1}, Lcom/cootek/e/b/c/e/c/i;->s(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic B(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/e/b/c/e/c/i;->r()V

    return-void
.end method

.method private synthetic D(Ljava/lang/Integer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/cootek/e/b/c/e/c/i;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method static synthetic F(Ljava/util/List;Ljava/lang/Integer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/cootek/e/b/c/c/d/k;

    return p0
.end method

.method private synthetic G(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/cootek/e/b/c/e/c/i;->t:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/cootek/e/b/c/e/c/h;->c()Lcom/cootek/e/b/c/e/c/h;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cootek/e/b/c/c/d/k;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/cootek/e/b/c/e/c/h;->f(Lcom/cootek/e/b/c/c/d/k;I)V

    return-void
.end method

.method private synthetic I(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cootek/e/b/c/e/c/i;->o()Lcom/cootek/e/b/c/a/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cootek/e/b/c/a/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic K(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p0, ""

    return-object p0
.end method

.method private L(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/cootek/e/b/c/e/c/i;->j:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private N(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/cootek/e/b/c/e/c/i;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cootek/touchpal/commercial/suggestion/data/base/IOmniboxData;

    instance-of v1, v0, Lcom/cootek/e/b/c/c/d/k;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cootek/e/b/c/c/d/k;

    iget-object v1, v0, Lcom/cootek/e/b/c/c/d/k;->g:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/cootek/e/b/c/e/c/i;->L(Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/e/b/c/e/c/h;->c()Lcom/cootek/e/b/c/e/c/h;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/cootek/e/b/c/e/c/h;->e(Lcom/cootek/e/b/c/c/d/k;I)V

    goto :goto_0

    :cond_0
    instance-of p1, v0, Lcom/cootek/e/b/c/c/d/e;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object p1

    invoke-interface {p1}, Lcom/cootek/e/b/b/i;->r()V

    :cond_1
    :goto_0
    return-void
.end method

.method private O()V
    .locals 3

    iget-object v0, p0, Lcom/cootek/e/b/c/e/c/i;->t:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/cootek/e/b/c/e/c/i;->n()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cootek/e/b/c/e/c/i;->m:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$o;

    move-result-object v0

    const/4 v1, 0x0

    instance-of v2, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/LinearLayoutManager;

    :cond_1
    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->y2()I

    move-result v0

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->C2()I

    move-result v1

    if-ltz v0, :cond_4

    if-ltz v1, :cond_4

    if-le v0, v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/cootek/e/b/c/e/c/i;->n()Ljava/util/List;

    move-result-object v2

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lio/reactivex/z;->range(II)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcom/cootek/e/b/c/e/c/f;

    invoke-direct {v1, p0}, Lcom/cootek/e/b/c/e/c/f;-><init>(Lcom/cootek/e/b/c/e/c/i;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->filter(Lio/reactivex/S/r;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcom/cootek/e/b/c/e/c/b;

    invoke-direct {v1, v2}, Lcom/cootek/e/b/c/e/c/b;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->filter(Lio/reactivex/S/r;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcom/cootek/e/b/c/e/c/e;

    invoke-direct {v1, p0, v2}, Lcom/cootek/e/b/c/e/c/e;-><init>(Lcom/cootek/e/b/c/e/c/i;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->doOnNext(Lio/reactivex/S/g;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcom/cootek/touchpal/commercial/utils/f;

    invoke-direct {v1}, Lcom/cootek/touchpal/commercial/utils/f;-><init>()V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/G;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private P()V
    .locals 2

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/cootek/e/b/b/i;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/z;->just(Ljava/lang/Object;)Lio/reactivex/z;

    move-result-object v0

    invoke-static {}, Lio/reactivex/W/b;->c()Lio/reactivex/H;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribeOn(Lio/reactivex/H;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcom/cootek/e/b/c/e/c/g;

    invoke-direct {v1, p0}, Lcom/cootek/e/b/c/e/c/g;-><init>(Lcom/cootek/e/b/c/e/c/i;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->doOnNext(Lio/reactivex/S/g;)Lio/reactivex/z;

    move-result-object v0

    sget-object v1, Lcom/cootek/e/b/c/e/c/a;->h:Lcom/cootek/e/b/c/e/c/a;

    invoke-virtual {v0, v1}, Lio/reactivex/z;->onErrorReturn(Lio/reactivex/S/o;)Lio/reactivex/z;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/z;->subscribe()Lio/reactivex/disposables/b;

    return-void
.end method

.method private T(Landroid/view/View;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/cootek/touchpal/commercial/suggestion/data/base/IOmniboxData;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/cootek/e/b/c/e/c/i;->p(Ljava/util/List;)I

    move-result p2

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/cootek/e/b/c/e/c/i;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cootek/e/b/c/e/c/i;->j:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic g(Lcom/cootek/e/b/c/e/c/i;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/cootek/e/b/c/e/c/i;->o:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic h(Lcom/cootek/e/b/c/e/c/i;)Lcom/cootek/e/b/c/a/g/k0;
    .locals 0

    iget-object p0, p0, Lcom/cootek/e/b/c/e/c/i;->q:Lcom/cootek/e/b/c/a/g/k0;

    return-object p0
.end method

.method static synthetic i(Lcom/cootek/e/b/c/e/c/i;Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout$PanelState;)Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout$PanelState;
    .locals 0

    iput-object p1, p0, Lcom/cootek/e/b/c/e/c/i;->s:Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout$PanelState;

    return-object p1
.end method

.method static synthetic j(Lcom/cootek/e/b/c/e/c/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/e/b/c/e/c/i;->O()V

    return-void
.end method

.method private m()I
    .locals 6

    iget-object v0, p0, Lcom/cootek/e/b/c/e/c/i;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/cootek/touchpal/commercial/utils/CommonUtils;->f(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/e/b/b/g;->h()Lcom/cootek/e/b/b/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/cootek/e/b/b/k;->f()I

    move-result v1

    iget-object v2, p0, Lcom/cootek/e/b/c/e/c/i;->j:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cootek/commercial/R$dimen;->amazon_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/cootek/e/b/c/e/c/i;->j:Landroid/content/Context;

    invoke-static {v3}, Lcom/cootek/touchpal/commercial/utils/CommonUtils;->n(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/cootek/e/b/c/e/c/i;->j:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/cootek/commercial/R$dimen;->gp_suggestion_top_margin_offset:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    sub-int/2addr v0, v3

    sub-int/2addr v0, v4

    return v0
.end method

.method private p(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cootek/touchpal/commercial/suggestion/data/base/IOmniboxData;",
            ">;)I"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/cootek/e/b/c/e/c/i;->v(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object p1

    sget v0, Lcom/cootek/commercial/R$dimen;->app_suggestion_item_height:I

    invoke-interface {p1, v0}, Lcom/cootek/e/b/b/i;->A(I)I

    move-result p1

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object v0

    sget v1, Lcom/cootek/commercial/R$dimen;->shoppings_top_view_height:I

    invoke-interface {v0, v1}, Lcom/cootek/e/b/b/i;->A(I)I

    move-result v0

    :goto_0
    add-int/2addr p1, v0

    goto :goto_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/cootek/e/b/c/e/c/i;->x(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object p1

    sget v0, Lcom/cootek/commercial/R$dimen;->shopping_suggestion_item_height:I

    invoke-interface {p1, v0}, Lcom/cootek/e/b/b/i;->A(I)I

    move-result p1

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object v0

    sget v1, Lcom/cootek/commercial/R$dimen;->shoppings_top_view_height:I

    invoke-interface {v0, v1}, Lcom/cootek/e/b/b/i;->A(I)I

    move-result v0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object p1

    sget v0, Lcom/cootek/commercial/R$dimen;->shopping_suggestion_max_container_height:I

    invoke-interface {p1, v0}, Lcom/cootek/e/b/b/i;->A(I)I

    move-result p1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    :goto_2
    invoke-direct {p0}, Lcom/cootek/e/b/c/e/c/i;->m()I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3

    :cond_4
    move v0, p1

    :goto_3
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private r()V
    .locals 1

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/e/b/b/g;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/cootek/e/b/b/i;->f()V

    :cond_0
    return-void
.end method

.method private s(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/cootek/e/b/c/a/g/k0;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcom/cootek/e/b/c/a/g/k0;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/cootek/e/b/c/e/c/i;->q:Lcom/cootek/e/b/c/a/g/k0;

    new-instance v1, Lcom/cootek/e/b/c/e/c/c;

    invoke-direct {v1, p0}, Lcom/cootek/e/b/c/e/c/c;-><init>(Lcom/cootek/e/b/c/e/c/i;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/b/a/c;->W1(Lcom/chad/library/b/a/c$i;)V

    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iget-object p1, p0, Lcom/cootek/e/b/c/e/c/i;->m:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$o;)V

    iget-object p1, p0, Lcom/cootek/e/b/c/e/c/i;->m:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/cootek/e/b/c/e/c/i;->q:Lcom/cootek/e/b/c/a/g/k0;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$g;)V

    iget-object p1, p0, Lcom/cootek/e/b/c/e/c/i;->m:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/cootek/e/b/c/e/c/i$b;

    invoke-direct {v0, p0}, Lcom/cootek/e/b/c/e/c/i$b;-><init>(Lcom/cootek/e/b/c/e/c/i;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->n(Landroid/support/v7/widget/RecyclerView$s;)V

    return-void
.end method

.method private v(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cootek/touchpal/commercial/suggestion/data/base/IOmniboxData;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/cootek/e/b/c/c/d/e;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private x(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cootek/touchpal/commercial/suggestion/data/base/IOmniboxData;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cootek/touchpal/commercial/suggestion/data/base/IOmniboxData;

    instance-of v1, p1, Lcom/cootek/e/b/c/c/d/k;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/cootek/e/b/c/c/d/k;

    iget p1, p1, Lcom/cootek/e/b/c/c/d/k;->c:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private synthetic z(Lcom/chad/library/b/a/c;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/cootek/e/b/c/e/c/i;->N(I)V

    return-void
.end method


# virtual methods
.method public synthetic A(Lcom/chad/library/b/a/c;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cootek/e/b/c/e/c/i;->z(Lcom/chad/library/b/a/c;Landroid/view/View;I)V

    return-void
.end method

.method public synthetic C(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/e/b/c/e/c/i;->B(Landroid/view/View;)V

    return-void
.end method

.method public synthetic E(Ljava/lang/Integer;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/e/b/c/e/c/i;->D(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public synthetic H(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cootek/e/b/c/e/c/i;->G(Ljava/util/List;Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic J(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/e/b/c/e/c/i;->I(Ljava/lang/String;)V

    return-void
.end method

.method public M()I
    .locals 2

    iget-object v0, p0, Lcom/cootek/e/b/c/e/c/i;->s:Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout$PanelState;

    sget-object v1, Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout$PanelState;->COLLAPSED:Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout$PanelState;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object v0

    sget v1, Lcom/cootek/commercial/R$dimen;->shoppings_top_view_height:I

    invoke-interface {v0, v1}, Lcom/cootek/e/b/b/i;->A(I)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/cootek/e/b/c/e/c/i;->q:Lcom/cootek/e/b/c/a/g/k0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/chad/library/b/a/c;->q0()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/cootek/e/b/c/e/c/i;->p(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public Q(I)V
    .locals 0

    return-void
.end method

.method public R(Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout$PanelState;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/e/b/c/e/c/i;->i:Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout;->setPanelState(Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout$PanelState;)V

    :cond_0
    return-void
.end method

.method public S(I)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/e/b/c/e/c/i;->i:Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/cootek/touchpal/commercial/suggestion/data/base/IOmniboxData;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/G;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cootek/touchpal/commercial/suggestion/data/base/IOmniboxData;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object v0

    sget v1, Lcom/cootek/commercial/R$dimen;->shopping_half_margin:I

    invoke-interface {v0, v1}, Lcom/cootek/e/b/b/i;->A(I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/cootek/e/b/c/e/c/i;->x(Ljava/util/List;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/cootek/e/b/c/e/c/i;->m:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v0, p0, Lcom/cootek/e/b/c/e/c/i;->q:Lcom/cootek/e/b/c/a/g/k0;

    invoke-virtual {v0, p1}, Lcom/cootek/e/b/c/a/b;->s2(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cootek/e/b/c/e/c/i;->p:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/cootek/e/b/c/e/c/i;->T(Landroid/view/View;Ljava/util/List;)V

    :cond_2
    iget-object p1, p0, Lcom/cootek/e/b/c/e/c/i;->m:Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->w1(I)V

    :cond_3
    iget-object p1, p0, Lcom/cootek/e/b/c/e/c/i;->i:Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->bringToFront()V

    :cond_4
    iget-object p1, p0, Lcom/cootek/e/b/c/e/c/i;->n:Lcom/cootek/e/b/c/a/e;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/cootek/e/b/c/a/e;->a()V

    :cond_5
    iget-object p1, p0, Lcom/cootek/e/b/c/e/c/i;->t:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/cootek/e/b/c/e/c/i;->O()V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e(Lcom/cootek/touchpal/commercial/suggestion/data/base/IOmniboxData;)V
    .locals 0
    .param p1    # Lcom/cootek/touchpal/commercial/suggestion/data/base/IOmniboxData;
        .annotation build Landroid/support/annotation/G;
        .end annotation
    .end param

    return-void
.end method

.method public f(Lcom/cootek/touchpal/commercial/network/response/SuggestionResponse$ResponseType;)V
    .locals 1

    invoke-static {}, Lcom/cootek/e/b/c/e/a/m;->b()Lcom/cootek/e/b/c/e/a/m;

    move-result-object v0

    iput-object p1, v0, Lcom/cootek/e/b/c/e/a/m;->e:Lcom/cootek/touchpal/commercial/network/response/SuggestionResponse$ResponseType;

    return-void
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/e/b/c/e/c/i;->q:Lcom/cootek/e/b/c/a/g/k0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cootek/e/b/c/a/b;->o2()V

    :cond_0
    return-void
.end method

.method l()V
    .locals 0

    return-void
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/F;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cootek/touchpal/commercial/suggestion/data/base/IOmniboxData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cootek/e/b/c/e/c/i;->q:Lcom/cootek/e/b/c/a/g/k0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chad/library/b/a/c;->q0()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method o()Lcom/cootek/e/b/c/a/f;
    .locals 1

    iget-object v0, p0, Lcom/cootek/e/b/c/e/c/i;->k:Lcom/cootek/e/b/c/a/g/l0;

    return-object v0
.end method

.method public q()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/cootek/e/b/c/e/c/i;->l:Landroid/view/View;

    return-object v0
.end method

.method public t()Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/e/b/c/e/c/i;->q:Lcom/cootek/e/b/c/a/g/k0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cootek/e/b/c/a/b;->q2()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public u()Z
    .locals 2

    iget-object v0, p0, Lcom/cootek/e/b/c/e/c/i;->s:Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout$PanelState;

    sget-object v1, Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout$PanelState;->DRAGGING:Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout$PanelState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w()Z
    .locals 2

    iget-object v0, p0, Lcom/cootek/e/b/c/e/c/i;->i:Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout;->getPanelState()Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout$PanelState;

    move-result-object v0

    sget-object v1, Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout$PanelState;->COLLAPSED:Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout$PanelState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public y()Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/e/b/c/e/c/i;->i:Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
