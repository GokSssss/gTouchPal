.class public Lcom/cootek/smartinput5/ui/h;
.super Landroid/widget/SimpleAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput5/ui/h$n;
    }
.end annotation


# static fields
.field public static x:I = 0x3


# instance fields
.field private h:Landroid/content/Context;

.field private i:Landroid/content/res/Resources;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private k:Landroid/view/View;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/view/View;

.field private p:I

.field final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/view/animation/AlphaAnimation;

.field private s:Landroid/view/animation/TranslateAnimation;

.field private t:Landroid/view/animation/AnimationSet;

.field private u:Landroid/view/animation/TranslateAnimation;

.field private v:Landroid/view/animation/Animation;

.field private w:Lcom/cootek/smartinput5/ui/h$n;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/cootek/smartinput5/ui/h;->h:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, v0, Lcom/cootek/smartinput5/ui/h;->i:Landroid/content/res/Resources;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/cootek/smartinput5/ui/h;->j:Ljava/util/List;

    iget-object v1, v0, Lcom/cootek/smartinput5/ui/h;->h:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00da

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/cootek/smartinput5/ui/h;->k:Landroid/view/View;

    const v4, 0x7f0a017a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/cootek/smartinput5/ui/FittedTextView;

    iput-object v2, v0, Lcom/cootek/smartinput5/ui/h;->l:Landroid/widget/TextView;

    const v2, 0x7f0c002f

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/cootek/smartinput5/ui/h;->m:Landroid/view/View;

    const v2, 0x7f0a00c6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/cootek/smartinput5/ui/h;->n:Landroid/widget/TextView;

    const v2, 0x7f0f0343

    invoke-direct {v0, v2}, Lcom/cootek/smartinput5/ui/h;->r(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/cootek/smartinput5/ui/h;->m:Landroid/view/View;

    const v2, 0x7f0a01a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/cootek/smartinput5/ui/h;->o:Landroid/view/View;

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v1, v0, Lcom/cootek/smartinput5/ui/h;->s:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, v0, Lcom/cootek/smartinput5/ui/h;->r:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, v0, Lcom/cootek/smartinput5/ui/h;->t:Landroid/view/animation/AnimationSet;

    iget-object v7, v0, Lcom/cootek/smartinput5/ui/h;->s:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, v0, Lcom/cootek/smartinput5/ui/h;->t:Landroid/view/animation/AnimationSet;

    iget-object v7, v0, Lcom/cootek/smartinput5/ui/h;->r:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, v0, Lcom/cootek/smartinput5/ui/h;->t:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v1, v0, Lcom/cootek/smartinput5/ui/h;->t:Landroid/view/animation/AnimationSet;

    new-instance v7, Lcom/cootek/smartinput5/ui/h$e;

    invoke-direct {v7, v0}, Lcom/cootek/smartinput5/ui/h$e;-><init>(Lcom/cootek/smartinput5/ui/h;)V

    invoke-virtual {v1, v7}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v16}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v1, v0, Lcom/cootek/smartinput5/ui/h;->u:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v7, 0x1f4

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v7, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v2, v2, v7, v2}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    iput-object v1, v0, Lcom/cootek/smartinput5/ui/h;->v:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, v0, Lcom/cootek/smartinput5/ui/h;->v:Landroid/view/animation/Animation;

    invoke-virtual {v1, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/cootek/smartinput5/ui/h;->q:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    sget v2, Lcom/cootek/smartinput5/engine/ClipboardBackend;->clipboardSlotNum:I

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lcom/cootek/smartinput5/ui/h;->q:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/cootek/smartinput5/ui/h;)I
    .locals 0

    iget p0, p0, Lcom/cootek/smartinput5/ui/h;->p:I

    return p0
.end method

.method static synthetic b(Lcom/cootek/smartinput5/ui/h;I)I
    .locals 0

    iput p1, p0, Lcom/cootek/smartinput5/ui/h;->p:I

    return p1
.end method

.method static synthetic c(Lcom/cootek/smartinput5/ui/h;)Lcom/cootek/smartinput5/ui/h$n;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/ui/h;->w:Lcom/cootek/smartinput5/ui/h$n;

    return-object p0
.end method

.method static synthetic d(Lcom/cootek/smartinput5/ui/h;)Landroid/view/animation/AnimationSet;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/ui/h;->t:Landroid/view/animation/AnimationSet;

    return-object p0
.end method

.method static synthetic e(Lcom/cootek/smartinput5/ui/h;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/ui/h;->h:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lcom/cootek/smartinput5/ui/h;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/ui/h;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Lcom/cootek/smartinput5/ui/h;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/h;->r(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcom/cootek/smartinput5/ui/h;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/h;->k(I)I

    move-result p0

    return p0
.end method

.method static synthetic i(Lcom/cootek/smartinput5/ui/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/h;->u()V

    return-void
.end method

.method private k(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/h;->n()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public static m()I
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x144

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private q()I
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/h;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/h;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "premium_notification"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private r(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/h;->h:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private varargs s(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/h;->h:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/cootek/smartinput5/func/resource/d;->i(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private u()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/h;->h:Landroid/content/Context;

    const-class v2, Lcom/cootek/smartinput5/func/vip/PurchaseVipActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/h;->h:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private x()V
    .locals 6

    sget v0, Lcom/cootek/smartinput5/engine/ClipboardBackend;->clipboardSlotNum:I

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/h;->l()I

    move-result v1

    sub-int v1, v0, v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const v0, 0x7f0f087f

    invoke-direct {p0, v0, v3}, Lcom/cootek/smartinput5/ui/h;->s(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/h;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/h;->k:Landroid/view/View;

    const v1, 0x7f0a02c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/h;->i:Landroid/content/res/Resources;

    const v3, 0x7f0702c4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getInstance()Lcom/cootek/smartinput5/engine/ClipboardBackend;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getClipboardSlots()I

    move-result v3

    sget v5, Lcom/cootek/smartinput5/engine/ClipboardBackend;->clipboardSlotNum:I

    if-lt v3, v5, :cond_0

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/h;->k:Landroid/view/View;

    const v5, 0x7f0800b5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/h;->l:Landroid/widget/TextView;

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/h;->k:Landroid/view/View;

    new-instance v1, Lcom/cootek/smartinput5/ui/h$l;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/ui/h$l;-><init>(Lcom/cootek/smartinput5/ui/h;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/cootek/smartinput5/ui/h;->k:Landroid/view/View;

    const v3, 0x7f0800b4

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/h;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/h;->k:Landroid/view/View;

    new-instance v1, Lcom/cootek/smartinput5/ui/h$m;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/ui/h$m;-><init>(Lcom/cootek/smartinput5/ui/h;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x144

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/h;->m:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/h;->m:Landroid/view/View;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/h;->u:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/h;->w:Lcom/cootek/smartinput5/ui/h$n;

    invoke-interface {v0}, Lcom/cootek/smartinput5/ui/h$n;->e()V

    :cond_0
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    iget-object p3, p0, Lcom/cootek/smartinput5/ui/h;->j:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    const-string v0, "first_notification"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    const/16 v0, 0x8

    if-eqz p3, :cond_2

    iget-object p2, p0, Lcom/cootek/smartinput5/ui/h;->o:Landroid/view/View;

    new-instance p3, Lcom/cootek/smartinput5/ui/h$f;

    invoke-direct {p3, p0, p1}, Lcom/cootek/smartinput5/ui/h$f;-><init>(Lcom/cootek/smartinput5/ui/h;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 p1, 0x144

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/h;->l()I

    move-result p1

    if-gtz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/h;->m:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/h;->m:Landroid/view/View;

    return-object p1

    :cond_2
    iget-object p3, p0, Lcom/cootek/smartinput5/ui/h;->j:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    const-string v1, "premium_notification"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/h;->x()V

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/h;->k:Landroid/view/View;

    return-object p1

    :cond_3
    sget p3, Lcom/cootek/smartinput5/engine/ClipboardBackend;->clipboardSlotNum:I

    if-gt p1, p3, :cond_9

    iget-object p3, p0, Lcom/cootek/smartinput5/ui/h;->j:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    const-string v1, "text"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_4

    goto/16 :goto_3

    :cond_4
    iget-object p2, p0, Lcom/cootek/smartinput5/ui/h;->h:Landroid/content/Context;

    const p3, 0x7f0c002e

    const/4 v2, 0x0

    invoke-static {p2, p3, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a00bc

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const v2, 0x7f0a00bd

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/h;->n()I

    move-result v3

    sub-int v3, p1, v3

    rem-int/lit8 v3, v3, 0x2

    const-string v4, "islocked"

    if-eqz v3, :cond_5

    const v3, 0x7f0600c3

    invoke-virtual {p3, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p3, p0, Lcom/cootek/smartinput5/ui/h;->j:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    const p3, 0x7f080111

    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/h;->n()I

    move-result v3

    sub-int v3, p1, v3

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_6

    const v3, 0x7f0600c2

    invoke-virtual {p3, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p3, p0, Lcom/cootek/smartinput5/ui/h;->j:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    const p3, 0x7f080112

    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_6
    :goto_1
    const p3, 0x7f0a00ba

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const v2, 0x7f0a00c1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/h;->q:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/h;->k(I)I

    move-result v3

    invoke-interface {v0, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/cootek/smartinput5/ui/h$g;

    invoke-direct {v0, p0, v2, p1}, Lcom/cootek/smartinput5/ui/h$g;-><init>(Lcom/cootek/smartinput5/ui/h;Landroid/view/View;I)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0a00c4

    invoke-virtual {v2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0a00c3

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0f0341

    invoke-direct {p0, v3}, Lcom/cootek/smartinput5/ui/h;->r(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/cootek/smartinput5/ui/h$h;

    invoke-direct {v0, p0, p1, v2}, Lcom/cootek/smartinput5/ui/h$h;-><init>(Lcom/cootek/smartinput5/ui/h;ILandroid/view/View;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0a00c0

    invoke-virtual {v2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/h;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const v0, 0x7f0a00bf

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a00be

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Lcom/cootek/smartinput5/ui/h;->j:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    check-cast v0, Landroid/widget/TextView;

    const v4, 0x7f0f0342

    invoke-direct {p0, v4}, Lcom/cootek/smartinput5/ui/h;->r(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    check-cast v3, Landroid/widget/ImageView;

    const v0, 0x7f080117

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_7
    check-cast v0, Landroid/widget/TextView;

    const v4, 0x7f0f0340

    invoke-direct {p0, v4}, Lcom/cootek/smartinput5/ui/h;->r(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    check-cast v3, Landroid/widget/ImageView;

    const v0, 0x7f080114

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_8
    :goto_2
    new-instance v0, Lcom/cootek/smartinput5/ui/h$i;

    invoke-direct {v0, p0, v2, p1}, Lcom/cootek/smartinput5/ui/h$i;-><init>(Lcom/cootek/smartinput5/ui/h;Landroid/view/View;I)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0a00bb

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/h;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/cootek/smartinput5/ui/h$j;

    invoke-direct {v1, p0, v0, p1}, Lcom/cootek/smartinput5/ui/h$j;-><init>(Lcom/cootek/smartinput5/ui/h;Ljava/lang/CharSequence;I)V

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/cootek/smartinput5/ui/h$k;

    invoke-direct {v0, p0, v2, p1}, Lcom/cootek/smartinput5/ui/h$k;-><init>(Lcom/cootek/smartinput5/ui/h;Landroid/view/View;I)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p2

    :cond_9
    :goto_3
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    return-object p2
.end method

.method public j()V
    .locals 3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    const-string v1, "sk_back_from_clipboard"

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Engine;->getKeyId(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/cootek/smartinput5/engine/Engine;->fireKeyOperation(II)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->processEvent()V

    return-void
.end method

.method public l()I
    .locals 2

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/h;->p()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/h;->n()I

    move-result v0

    if-gez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/h;->p()I

    move-result v0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/h;->n()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public n()I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/cootek/smartinput5/ui/h;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/h;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "text"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public o()I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/cootek/smartinput5/ui/h;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/h;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "first_notification"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public p()I
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/h;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/h;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "text"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public t(Landroid/view/View;)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v1, Lcom/cootek/smartinput5/ui/h$c;

    invoke-direct {v1, p0, v0, p1}, Lcom/cootek/smartinput5/ui/h$c;-><init>(Lcom/cootek/smartinput5/ui/h;ILandroid/view/View;)V

    new-instance v0, Lcom/cootek/smartinput5/ui/h$d;

    invoke-direct {v0, p0, p1}, Lcom/cootek/smartinput5/ui/h$d;-><init>(Lcom/cootek/smartinput5/ui/h;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public v(I)V
    .locals 6

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/h;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "islocked"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "/UI/"

    const-string v3, "CLIPBOARD_OPERATION"

    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/cootek/smartinput5/ui/h;->h:Landroid/content/Context;

    invoke-static {v4}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object v4

    const-string v5, "clipboard_lock"

    invoke-virtual {v4, v3, v5, v2}, Lcom/cootek/smartinput5/l/g;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/cootek/smartinput5/ui/h;->h:Landroid/content/Context;

    invoke-static {v4}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object v4

    const-string v5, "clipboard_unlock"

    invoke-virtual {v4, v3, v5, v2}, Lcom/cootek/smartinput5/l/g;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/cootek/smartinput5/ui/h;->j:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x145

    const v2, 0x7f0f033f

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/cootek/smartinput5/ui/h;->r(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/cootek/smartinput5/ui/control/E;->w(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/h;->k(I)I

    move-result v0

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/h;->j:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getInstance()Lcom/cootek/smartinput5/engine/ClipboardBackend;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->lockClipBoardItem(IZ)Z

    invoke-virtual {p0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public declared-synchronized w(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/cootek/smartinput5/ui/h;->p:I

    if-ltz p1, :cond_4

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/h;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/h;->j:Ljava/util/List;

    iget v0, p0, Lcom/cootek/smartinput5/ui/h;->p:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "first_notification"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/h;->j:Ljava/util/List;

    iget v0, p0, Lcom/cootek/smartinput5/ui/h;->p:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    const/16 v0, 0x144

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/cootek/smartinput5/ui/h;->p:I

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/h;->n()I

    move-result v0

    if-lt p1, v0, :cond_2

    iget p1, p0, Lcom/cootek/smartinput5/ui/h;->p:I

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/h;->p()I

    move-result v0

    if-gt p1, v0, :cond_2

    iget p1, p0, Lcom/cootek/smartinput5/ui/h;->p:I

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/h;->k(I)I

    move-result p1

    invoke-static {}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getInstance()Lcom/cootek/smartinput5/engine/ClipboardBackend;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->deleteClipBoardItem(I)V

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/h;->j:Ljava/util/List;

    iget v0, p0, Lcom/cootek/smartinput5/ui/h;->p:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/h;->l()I

    move-result p1

    sget v0, Lcom/cootek/smartinput5/engine/ClipboardBackend;->clipboardSlotNum:I

    sget v1, Lcom/cootek/smartinput5/ui/h;->x:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_3

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/h;->q()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/h;->j:Ljava/util/List;

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/h;->q()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public y(Lcom/cootek/smartinput5/ui/h$n;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/h;->w:Lcom/cootek/smartinput5/ui/h$n;

    return-void
.end method

.method public z(Landroid/view/View;I)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/cootek/smartinput5/ui/h$a;

    invoke-direct {v1, p0, v0, p1}, Lcom/cootek/smartinput5/ui/h$a;-><init>(Lcom/cootek/smartinput5/ui/h;ILandroid/view/View;)V

    new-instance v0, Lcom/cootek/smartinput5/ui/h$b;

    invoke-direct {v0, p0, p2}, Lcom/cootek/smartinput5/ui/h$b;-><init>(Lcom/cootek/smartinput5/ui/h;I)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
