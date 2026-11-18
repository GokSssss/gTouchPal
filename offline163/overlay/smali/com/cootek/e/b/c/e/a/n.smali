.class public Lcom/cootek/e/b/c/e/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cootek/e/b/c/a/d;
.implements Lcom/cootek/touchpal/commercial/suggestion/widget/SpecialFlowLayout$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/e/b/c/e/a/n$c;
    }
.end annotation


# static fields
.field private static final E:Ljava/lang/String; = "com.android.vending"


# instance fields
.field private A:Lcom/cootek/touchpal/commercial/suggestion/widget/SpecialFlowLayout;

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cootek/touchpal/commercial/suggestion/data/base/IOmniboxData;",
            ">;"
        }
    .end annotation
.end field

.field private C:Landroid/widget/TextView;

.field private D:Landroid/view/View;

.field private final h:Ljava/lang/String;

.field private i:Landroid/support/v7/widget/RecyclerView;

.field private j:Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout;

.field private final k:Landroid/content/Context;

.field private l:Lcom/cootek/e/b/c/a/b;

.field private m:Lcom/cootek/e/b/c/a/g/h0;

.field private n:Landroid/view/View;

.field private final o:Lcom/cootek/e/b/c/a/e;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/view/View;

.field private s:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/webkit/WebView;

.field private final u:Z

.field private final v:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final w:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private x:Z

.field private final y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private z:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/cootek/e/b/c/a/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/cootek/e/b/c/e/a/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->h:Ljava/lang/String;

    invoke-static {}, Lcom/cootek/touchpal/commercial/utils/CommonUtils;->p()Z

    move-result v0

    iput-boolean v0, p0, Lcom/cootek/e/b/c/e/a/n;->u:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->y:Ljava/util/List;

    iput-object p1, p0, Lcom/cootek/e/b/c/e/a/n;->k:Landroid/content/Context;

    iput-object p2, p0, Lcom/cootek/e/b/c/e/a/n;->o:Lcom/cootek/e/b/c/a/e;

    invoke-direct {p0}, Lcom/cootek/e/b/c/e/a/n;->y()V

    invoke-direct {p0}, Lcom/cootek/e/b/c/e/a/n;->r()V

    invoke-direct {p0}, Lcom/cootek/e/b/c/e/a/n;->z()V

    invoke-direct {p0}, Lcom/cootek/e/b/c/e/a/n;->b0()V

    invoke-direct {p0}, Lcom/cootek/e/b/c/e/a/n;->Z()V

    invoke-direct {p0}, Lcom/cootek/e/b/c/e/a/n;->A()V

    return-void
.end method

.method private A()V
    .locals 5

    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/cootek/e/b/c/e/a/n;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->t:Landroid/webkit/WebView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/cootek/e/b/c/e/a/n;->k:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cootek/commercial/R$dimen;->ad_webview_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget-object v4, p0, Lcom/cootek/e/b/c/e/a/n;->k:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->t:Landroid/webkit/WebView;

    new-instance v1, Lcom/cootek/e/b/c/e/a/n$c;

    iget-object v2, p0, Lcom/cootek/e/b/c/e/a/n;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v3, p0, Lcom/cootek/e/b/c/e/a/n;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/cootek/e/b/c/e/a/n$c;-><init>(Lcom/cootek/e/b/c/e/a/n;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/cootek/e/b/c/e/a/n$a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private C(Ljava/util/List;)Z
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

    instance-of v1, p1, Lcom/cootek/e/b/c/c/d/a;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/cootek/e/b/c/c/d/a;

    iget-boolean p1, p1, Lcom/cootek/e/b/c/c/d/a;->k:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private E(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method

.method private synthetic G(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/cootek/e/b/c/e/a/n;->v()Lcom/cootek/e/b/c/a/f;

    move-result-object p1

    instance-of v0, p1, Lcom/cootek/e/b/c/a/g/h0;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/cootek/e/b/c/a/g/h0;

    invoke-virtual {p1}, Lcom/cootek/e/b/c/a/g/h0;->i0()V

    :cond_0
    invoke-static {}, Lcom/cootek/e/b/c/e/a/m;->b()Lcom/cootek/e/b/c/e/a/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/e/b/c/e/a/m;->l()V

    return-void
.end method

.method static synthetic I(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method static synthetic J(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method static synthetic K(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private synthetic L(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/cootek/e/b/c/e/a/n;->U(Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/e/b/c/e/a/m;->b()Lcom/cootek/e/b/c/e/a/m;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/cootek/e/b/c/e/a/m;->h(I)V

    :cond_0
    return-void
.end method

.method private synthetic N(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/e/b/c/e/a/n;->x()V

    return-void
.end method

.method private synthetic P(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/e/b/c/e/a/n;->x()V

    return-void
.end method

.method private synthetic R(Lcom/chad/library/b/a/c;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/cootek/e/b/c/e/a/n;->W(I)V

    return-void
.end method

.method static synthetic T(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/cootek/e/b/c/e/a/m;->b()Lcom/cootek/e/b/c/e/a/m;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cootek/touchpal/commercial/suggestion/data/base/IOmniboxData;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/cootek/e/b/c/e/a/m;->j(Lcom/cootek/touchpal/commercial/suggestion/data/base/IOmniboxData;I)V

    return-void
.end method

.method private U(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0, p1}, Lcom/cootek/e/b/c/e/a/n;->X(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/cootek/e/b/c/e/a/n;->e0(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private V(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3

    const-wide/16 v6, 0xc8

    invoke-static/range {v0 .. v8}, Lio/reactivex/z;->intervalRange(JJJJLjava/util/concurrent/TimeUnit;)Lio/reactivex/z;

    move-result-object v0

    invoke-static {}, Lio/reactivex/Q/e/a;->b()Lio/reactivex/H;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribeOn(Lio/reactivex/H;)Lio/reactivex/z;

    move-result-object v0

    sget-object v1, Lcom/cootek/e/b/c/e/a/j;->h:Lcom/cootek/e/b/c/e/a/j;

    sget-object v2, Lcom/cootek/e/b/c/e/a/g;->h:Lcom/cootek/e/b/c/e/a/g;

    new-instance v3, Lcom/cootek/e/b/c/e/a/h;

    invoke-direct {v3, p0, p2}, Lcom/cootek/e/b/c/e/a/h;-><init>(Lcom/cootek/e/b/c/e/a/n;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/z;->subscribe(Lio/reactivex/S/g;Lio/reactivex/S/g;Lio/reactivex/S/a;)Lio/reactivex/disposables/b;

    iget-object p2, p0, Lcom/cootek/e/b/c/e/a/n;->t:Landroid/webkit/WebView;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private X(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/cootek/e/b/c/e/a/n;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    iget-object v1, p0, Lcom/cootek/e/b/c/e/a/n;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception p1

    iget-boolean v1, p0, Lcom/cootek/e/b/c/e/a/n;->u:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/net/URISyntaxException;->printStackTrace()V

    :cond_2
    return v0
.end method

.method private Y()V
    .locals 4

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->y:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/cootek/e/b/c/e/a/n;->t()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->i:Landroid/support/v7/widget/RecyclerView;

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

    if-ltz v0, :cond_5

    if-ltz v1, :cond_5

    if-le v0, v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_0
    add-int/lit8 v2, v1, 0x1

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/cootek/e/b/c/e/a/n;->y:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/cootek/e/b/c/e/a/m;->b()Lcom/cootek/e/b/c/e/a/m;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cootek/e/b/c/e/a/n;->t()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cootek/touchpal/commercial/suggestion/data/base/IOmniboxData;

    invoke-virtual {v2, v3, v0}, Lcom/cootek/e/b/c/e/a/m;->j(Lcom/cootek/touchpal/commercial/suggestion/data/base/IOmniboxData;I)V

    iget-object v2, p0, Lcom/cootek/e/b/c/e/a/n;->y:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method private Z()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->p:Landroid/view/View;

    new-instance v1, Lcom/cootek/e/b/c/e/a/d;

    invoke-direct {v1, p0}, Lcom/cootek/e/b/c/e/a/d;-><init>(Lcom/cootek/e/b/c/e/a/n;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->j:Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout;

    new-instance v1, Lcom/cootek/e/b/c/e/a/k;

    invoke-direct {v1, p0}, Lcom/cootek/e/b/c/e/a/k;-><init>(Lcom/cootek/e/b/c/e/a/n;)V

    invoke-virtual {v0, v1}, Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout;->setFadeOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->j:Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout;

    new-instance v1, Lcom/cootek/e/b/c/e/a/n$a;

    invoke-direct {v1, p0}, Lcom/cootek/e/b/c/e/a/n$a;-><init>(Lcom/cootek/e/b/c/e/a/n;)V

    invoke-virtual {v0, v1}, Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout;->n(Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout$c;)V

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->i:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/cootek/e/b/c/e/a/n$b;

    invoke-direct {v1, p0}, Lcom/cootek/e/b/c/e/a/n$b;-><init>(Lcom/cootek/e/b/c/e/a/n;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->n(Landroid/support/v7/widget/RecyclerView$s;)V

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->l:Lcom/cootek/e/b/c/a/b;

    new-instance v1, Lcom/cootek/e/b/c/e/a/c;

    invoke-direct {v1, p0}, Lcom/cootek/e/b/c/e/a/c;-><init>(Lcom/cootek/e/b/c/e/a/n;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/b/a/c;->W1(Lcom/chad/library/b/a/c$i;)V

    return-void
.end method

.method private b0()V
    .locals 3

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->j:Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout;

    iget-object v1, p0, Lcom/cootek/e/b/c/e/a/n;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cootek/commercial/R$color;->transparent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout;->setCoveredFadeColor(I)V

    new-instance v0, Lcom/cootek/e/b/c/a/g/g0;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcom/cootek/e/b/c/a/g/g0;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->l:Lcom/cootek/e/b/c/a/b;

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->i:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/cootek/e/b/c/e/a/n;->k:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$o;)V

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/cootek/e/b/c/e/a/n;->l:Lcom/cootek/e/b/c/a/b;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$g;)V

    return-void
.end method

.method private c0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cootek/touchpal/commercial/suggestion/data/base/IOmniboxData;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lio/reactivex/z;->range(II)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcom/cootek/e/b/c/e/a/f;

    invoke-direct {v1, p1}, Lcom/cootek/e/b/c/e/a/f;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->doOnNext(Lio/reactivex/S/g;)Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcom/cootek/touchpal/commercial/utils/f;

    invoke-direct {v0}, Lcom/cootek/touchpal/commercial/utils/f;-><init>()V

    invoke-virtual {p1, v0}, Lio/reactivex/z;->subscribe(Lio/reactivex/G;)V

    return-void
.end method

.method private d0(Landroid/view/View;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/cootek/touchpal/commercial/suggestion/data/base/IOmniboxData;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/cootek/e/b/c/e/a/n;->p(Ljava/util/List;)I

    move-result p2

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object v0

    sget v1, Lcom/cootek/commercial/R$dimen;->apps_top_view_height:I

    invoke-interface {v0, v1}, Lcom/cootek/e/b/b/i;->A(I)I

    move-result v0

    add-int/2addr p2, v0

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object v0

    sget v1, Lcom/cootek/commercial/R$dimen;->apps_container_height:I

    invoke-interface {v0, v1}, Lcom/cootek/e/b/b/i;->A(I)I

    move-result v0

    invoke-direct {p0}, Lcom/cootek/e/b/c/e/a/n;->s()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v1, p0, Lcom/cootek/e/b/c/e/a/n;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    new-instance p2, Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p2, v0, v1}, Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private e0(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "com.android.vending"

    :try_start_0
    iget-object v1, p0, Lcom/cootek/e/b/c/e/a/n;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {p1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const/high16 v4, 0x10000

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v0, v3}, Lcom/cootek/e/b/c/e/a/n;->E(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {v1, p1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception p1

    iget-boolean v0, p0, Lcom/cootek/e/b/c/e/a/n;->u:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic g(Lcom/cootek/e/b/c/e/a/n;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/cootek/e/b/c/e/a/n;->B:Ljava/util/List;

    return-object p0
.end method

.method static synthetic h(Lcom/cootek/e/b/c/e/a/n;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cootek/e/b/c/e/a/n;->k:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic i(Lcom/cootek/e/b/c/e/a/n;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/cootek/e/b/c/e/a/n;->q:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic j(Lcom/cootek/e/b/c/e/a/n;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cootek/e/b/c/e/a/n;->x:Z

    return p1
.end method

.method static synthetic k(Lcom/cootek/e/b/c/e/a/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/e/b/c/e/a/n;->Y()V

    return-void
.end method

.method static synthetic l(Lcom/cootek/e/b/c/e/a/n;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/e/b/c/e/a/n;->X(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic m(Lcom/cootek/e/b/c/e/a/n;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/e/b/c/e/a/n;->e0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "=%7BGAID%7D"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/cootek/e/b/b/i;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private p(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cootek/touchpal/commercial/suggestion/data/base/IOmniboxData;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object v0

    sget v1, Lcom/cootek/commercial/R$dimen;->app_suggestion_item_height:I

    invoke-interface {v0, v1}, Lcom/cootek/e/b/b/i;->A(I)I

    move-result v0

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object v1

    sget v2, Lcom/cootek/commercial/R$dimen;->app_suggestion_item_height_default:I

    invoke-interface {v1, v2}, Lcom/cootek/e/b/b/i;->A(I)I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cootek/touchpal/commercial/suggestion/data/base/IOmniboxData;

    instance-of v4, v3, Lcom/cootek/e/b/c/c/d/a;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/cootek/e/b/c/c/d/a;

    iget-boolean v3, v3, Lcom/cootek/e/b/c/c/d/a;->k:Z

    if-eqz v3, :cond_0

    add-int/2addr v2, v1

    goto :goto_0

    :cond_0
    add-int/2addr v2, v0

    goto :goto_0

    :cond_1
    return v2
.end method

.method private r()V
    .locals 3

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->k:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/cootek/commercial/R$layout;->layout_app_suggestion_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->n:Landroid/view/View;

    sget v1, Lcom/cootek/commercial/R$id;->sliding_panel_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout;

    iput-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->j:Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout;

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->n:Landroid/view/View;

    sget v1, Lcom/cootek/commercial/R$id;->main_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->p:Landroid/view/View;

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->n:Landroid/view/View;

    sget v1, Lcom/cootek/commercial/R$id;->drag_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->r:Landroid/view/View;

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->n:Landroid/view/View;

    sget v1, Lcom/cootek/commercial/R$id;->suggestion_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->q:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->n:Landroid/view/View;

    sget v1, Lcom/cootek/commercial/R$id;->rc_content_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->n:Landroid/view/View;

    sget v1, Lcom/cootek/commercial/R$id;->default_offers_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->z:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->n:Landroid/view/View;

    sget v1, Lcom/cootek/commercial/R$id;->rv_apps:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cootek/touchpal/commercial/suggestion/widget/SpecialFlowLayout;

    iput-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->A:Lcom/cootek/touchpal/commercial/suggestion/widget/SpecialFlowLayout;

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->n:Landroid/view/View;

    sget v1, Lcom/cootek/commercial/R$id;->tv_apps_trending:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->C:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->n:Landroid/view/View;

    sget v1, Lcom/cootek/commercial/R$id;->iv_default_refresh:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->D:Landroid/view/View;

    return-void
.end method

.method private s()I
    .locals 6

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/cootek/touchpal/commercial/utils/CommonUtils;->f(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/e/b/b/g;->h()Lcom/cootek/e/b/b/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/cootek/e/b/b/k;->f()I

    move-result v1

    iget-object v2, p0, Lcom/cootek/e/b/c/e/a/n;->k:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cootek/commercial/R$dimen;->gp_suggestion_top_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/cootek/e/b/c/e/a/n;->k:Landroid/content/Context;

    invoke-static {v3}, Lcom/cootek/touchpal/commercial/utils/CommonUtils;->n(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/cootek/e/b/c/e/a/n;->k:Landroid/content/Context;

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

.method private u()I
    .locals 3

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/e/b/b/g;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/touchpal/commercial/utils/CommonUtils;->k(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object v1

    sget v2, Lcom/cootek/commercial/R$dimen;->commercial_apps_horizontal:I

    invoke-interface {v1, v2}, Lcom/cootek/e/b/b/i;->A(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method private x()V
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

.method private y()V
    .locals 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/cootek/e/b/c/e/a/n;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->s:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/cootek/e/b/c/a/g/h0;

    invoke-direct {v0, p0}, Lcom/cootek/e/b/c/a/g/h0;-><init>(Lcom/cootek/e/b/c/a/d;)V

    iput-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->m:Lcom/cootek/e/b/c/a/g/h0;

    return-void
.end method

.method private z()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->D:Landroid/view/View;

    new-instance v1, Lcom/cootek/e/b/c/e/a/i;

    invoke-direct {v1, p0}, Lcom/cootek/e/b/c/e/a/i;-><init>(Lcom/cootek/e/b/c/e/a/n;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->z:Landroid/widget/ScrollView;

    sget-object v1, Lcom/cootek/e/b/c/e/a/e;->h:Lcom/cootek/e/b/c/e/a/e;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public B()Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->B:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public D()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cootek/e/b/c/e/a/n;->x:Z

    return v0
.end method

.method public F()Z
    .locals 2

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->j:Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout;

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

.method public synthetic H(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/e/b/c/e/a/n;->G(Landroid/view/View;)V

    return-void
.end method

.method public synthetic M(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/e/b/c/e/a/n;->L(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic O(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/e/b/c/e/a/n;->N(Landroid/view/View;)V

    return-void
.end method

.method public synthetic Q(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/e/b/c/e/a/n;->P(Landroid/view/View;)V

    return-void
.end method

.method public synthetic S(Lcom/chad/library/b/a/c;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cootek/e/b/c/e/a/n;->R(Lcom/chad/library/b/a/c;Landroid/view/View;I)V

    return-void
.end method

.method public W(I)V
    .locals 10

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->B:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cootek/touchpal/commercial/suggestion/data/base/IOmniboxData;

    iget-object v1, p0, Lcom/cootek/e/b/c/e/a/n;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/cootek/e/b/c/e/a/n;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    instance-of v1, v0, Lcom/cootek/e/b/c/c/d/a;

    if-eqz v1, :cond_3

    move-object v4, v0

    check-cast v4, Lcom/cootek/e/b/c/c/d/a;

    iget-object v0, v4, Lcom/cootek/e/b/c/c/d/a;->h:Ljava/lang/String;

    const-string v1, "ad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_2

    iget-object v0, v4, Lcom/cootek/e/b/c/c/d/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v4, Lcom/cootek/e/b/c/c/d/a;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cootek/touchpal/commercial/network/response/b$a$a$a;

    invoke-virtual {v0}, Lcom/cootek/touchpal/commercial/network/response/b$a$a$a;->c()Ljava/lang/String;

    move-result-object v8

    iget-object v0, v4, Lcom/cootek/e/b/c/c/d/a;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cootek/touchpal/commercial/network/response/b$a$a$a;

    invoke-virtual {v0}, Lcom/cootek/touchpal/commercial/network/response/b$a$a$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/e/b/c/e/a/n;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v9, v4, Lcom/cootek/e/b/c/c/d/a;->c:Ljava/lang/String;

    iget-boolean v3, v4, Lcom/cootek/e/b/c/c/d/a;->k:Z

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    const/4 v6, 0x3

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    invoke-static {}, Lcom/cootek/e/b/c/e/a/m;->b()Lcom/cootek/e/b/c/e/a/m;

    move-result-object v3

    move v5, p1

    move-object v7, v0

    invoke-virtual/range {v3 .. v8}, Lcom/cootek/e/b/c/e/a/m;->f(Lcom/cootek/e/b/c/c/d/a;IILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v9}, Lcom/cootek/e/b/c/e/a/n;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/cootek/e/b/b/i;->m(Ljava/lang/String;)Z

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object p1

    invoke-interface {p1}, Lcom/cootek/e/b/b/i;->u()V

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object p1

    invoke-interface {p1}, Lcom/cootek/e/b/b/i;->f()V

    goto :goto_1

    :cond_2
    iget-object v0, v4, Lcom/cootek/e/b/c/c/d/a;->c:Ljava/lang/String;

    invoke-static {}, Lcom/cootek/e/b/c/e/a/m;->b()Lcom/cootek/e/b/c/e/a/m;

    move-result-object v3

    const/4 v6, 0x1

    const-string v8, ""

    move v5, p1

    move-object v7, v0

    invoke-virtual/range {v3 .. v8}, Lcom/cootek/e/b/c/e/a/m;->f(Lcom/cootek/e/b/c/c/d/a;IILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cootek/e/b/c/e/a/n;->U(Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/e/b/c/e/a/m;->b()Lcom/cootek/e/b/c/e/a/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/e/b/c/e/a/m;->g()V

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/cootek/e/b/b/i;->m(Ljava/lang/String;)Z

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object p1

    invoke-interface {p1}, Lcom/cootek/e/b/b/i;->u()V

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object p1

    invoke-interface {p1}, Lcom/cootek/e/b/b/i;->f()V

    goto :goto_1

    :cond_3
    instance-of v0, v0, Lcom/cootek/e/b/c/c/d/e;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/cootek/e/b/c/e/a/m;->b()Lcom/cootek/e/b/c/e/a/m;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v6, ""

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/cootek/e/b/c/e/a/m;->f(Lcom/cootek/e/b/c/c/d/a;IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object p1

    invoke-interface {p1}, Lcom/cootek/e/b/b/i;->r()V

    invoke-static {}, Lcom/cootek/e/b/c/e/a/m;->b()Lcom/cootek/e/b/c/e/a/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/e/b/c/e/a/m;->g()V

    :cond_4
    :goto_1
    return-void
.end method

.method public a(Lcom/cootek/e/b/c/c/d/a;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->B:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/cootek/e/b/c/e/a/n;->W(I)V

    :cond_1
    return-void
.end method

.method public a0(Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout$PanelState;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->j:Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout;->setPanelState(Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout$PanelState;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/cootek/touchpal/commercial/suggestion/data/base/IOmniboxData;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 4
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

    iput-object p1, p0, Lcom/cootek/e/b/c/e/a/n;->B:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->C:Landroid/widget/TextView;

    sget v1, Lcom/cootek/commercial/R$string;->str_apps_trending:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0, p1}, Lcom/cootek/e/b/c/e/a/n;->C(Ljava/util/List;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->j:Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout;

    iget-object v3, p0, Lcom/cootek/e/b/c/e/a/n;->z:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout;->setScrollableView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->z:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->l:Lcom/cootek/e/b/c/a/b;

    invoke-virtual {v0}, Lcom/cootek/e/b/c/a/b;->o2()V

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->A:Lcom/cootek/touchpal/commercial/suggestion/widget/SpecialFlowLayout;

    invoke-virtual {v0, p1, p0}, Lcom/cootek/touchpal/commercial/suggestion/widget/SpecialFlowLayout;->i(Ljava/util/List;Lcom/cootek/touchpal/commercial/suggestion/widget/SpecialFlowLayout$b;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->B:Ljava/util/List;

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->z:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->j:Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout;

    iget-object v3, p0, Lcom/cootek/e/b/c/e/a/n;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Lcom/cootek/touchpal/commercial/suggestion/widget/SlidingPanelLayout;->setScrollableView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->z:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->l:Lcom/cootek/e/b/c/a/b;

    invoke-virtual {v0, p1}, Lcom/cootek/e/b/c/a/b;->s2(Ljava/util/List;)V

    :goto_0
    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->r:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/cootek/e/b/c/e/a/n;->d0(Landroid/view/View;Ljava/util/List;)V

    iget-object p1, p0, Lcom/cootek/e/b/c/e/a/n;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->w1(I)V

    :cond_2
    iget-object p1, p0, Lcom/cootek/e/b/c/e/a/n;->o:Lcom/cootek/e/b/c/a/e;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/cootek/e/b/c/a/e;->a()V

    :cond_3
    invoke-static {}, Lcom/cootek/e/b/c/e/a/m;->b()Lcom/cootek/e/b/c/e/a/m;

    move-result-object p1

    const-string v0, "com.android.vending"

    invoke-virtual {p1, v0}, Lcom/cootek/e/b/c/e/a/m;->m(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cootek/e/b/c/e/a/n;->y:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/cootek/e/b/c/e/a/n;->Y()V

    iget-object p1, p0, Lcom/cootek/e/b/c/e/a/n;->B:Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-direct {p0, p1}, Lcom/cootek/e/b/c/e/a/n;->c0(Ljava/util/List;)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/cootek/e/b/c/e/a/n;->o:Lcom/cootek/e/b/c/a/e;

    invoke-interface {p1}, Lcom/cootek/e/b/c/a/e;->dismiss()V

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

.method public o()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->l:Lcom/cootek/e/b/c/a/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cootek/e/b/c/a/b;->o2()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->B:Ljava/util/List;

    return-void
.end method

.method q()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->m:Lcom/cootek/e/b/c/a/g/h0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cootek/e/b/c/a/g/h0;->d()V

    :cond_0
    return-void
.end method

.method public t()Ljava/util/List;
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

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->l:Lcom/cootek/e/b/c/a/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chad/library/b/a/c;->q0()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method v()Lcom/cootek/e/b/c/a/f;
    .locals 1

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->m:Lcom/cootek/e/b/c/a/g/h0;

    return-object v0
.end method

.method public w()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/cootek/e/b/c/e/a/n;->n:Landroid/view/View;

    return-object v0
.end method
