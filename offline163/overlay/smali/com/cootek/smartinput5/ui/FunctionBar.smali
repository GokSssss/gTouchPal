.class public Lcom/cootek/smartinput5/ui/FunctionBar;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/cootek/smartinput5/ui/g$a;
.implements Lcom/cootek/smartinput5/ui/control/r$a;
.implements Lcom/cootek/smartinput5/func/N$f;
.implements Lcom/cootek/smartinput5/presentations/i$f;
.implements Lcom/cootek/smartinput5/ui/settings/f$e;
.implements Lcom/cootek/smartinput5/ui/extensionpoint/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput5/ui/FunctionBar$i;,
        Lcom/cootek/smartinput5/ui/FunctionBar$j;,
        Lcom/cootek/smartinput5/ui/FunctionBar$h;
    }
.end annotation


# static fields
.field private static final U:Ljava/lang/String; = "FunctionBar"

.field protected static final V:Ljava/lang/String; = "onQuickPanelShown"

.field protected static final W:I = 0x0

.field protected static final a0:I = 0x1

.field protected static final b0:I = 0x7

.field protected static final c0:I = 0x5


# instance fields
.field protected A:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/cootek/smartinput5/ui/extensionpoint/d;",
            ">;"
        }
    .end annotation
.end field

.field protected B:Lcom/cootek/smartinput5/ui/B;

.field protected C:Lcom/cootek/smartinput5/ui/F;

.field protected D:Lcom/cootek/smartinput5/ui/F;

.field protected E:Lcom/cootek/smartinput5/ui/F;

.field protected F:Lcom/cootek/smartinput5/ui/F;

.field protected G:Lcom/cootek/smartinput5/ui/D;

.field protected H:Lcom/cootek/smartinput5/ui/F;

.field public I:Lcom/cootek/smartinput5/ui/F;

.field public J:Lcom/cootek/smartinput5/ui/F;

.field protected K:I

.field protected L:I

.field protected M:I

.field protected N:I

.field protected O:I

.field protected P:I

.field protected Q:I

.field protected R:Lcom/cootek/smartinput5/func/smileypanel/widget/SoftSmileyPadView;

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private firstButton:Lcom/cootek/smartinput5/ui/F;

.field protected h:Landroid/content/Context;

.field protected i:Lcom/cootek/smartinput5/ui/control/r;

.field protected j:Lcom/cootek/smartinput5/ui/t;

.field protected k:I

.field protected l:I

.field private languageButton:Lcom/cootek/smartinput5/ui/F;

.field protected m:Z

.field protected n:Z

.field protected o:I

.field protected p:I

.field public q:Z

.field protected r:Z

.field protected s:Z

.field private secondButton:Lcom/cootek/smartinput5/ui/F;

.field protected t:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

.field private thirdButton:Lcom/cootek/smartinput5/ui/F;

.field protected u:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

.field protected v:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

.field protected w:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

.field protected x:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

.field protected y:Landroid/widget/RelativeLayout;

.field protected z:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->m:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->n:Z

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->q:Z

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->r:Z

    iput-boolean v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->s:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->Q:I

    const-string v0, ""

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->S:Ljava/lang/String;

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->T:Ljava/lang/String;

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->h:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/FunctionBar;->setup(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->m:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->n:Z

    iput-boolean p2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->q:Z

    iput-boolean p2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->r:Z

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->s:Z

    const/4 p2, 0x5

    iput p2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->Q:I

    const-string p2, ""

    iput-object p2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->S:Ljava/lang/String;

    iput-object p2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->T:Ljava/lang/String;

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->h:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/FunctionBar;->setup(Landroid/content/Context;)V

    return-void
.end method

.method private A0(Lcom/cootek/presentation/service/toast/ToolbarToast;)V
    .locals 2

    invoke-virtual {p1}, Lcom/cootek/presentation/service/toast/PresentToast;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->S:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cootek/presentation/service/toast/PresentToast;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v1, "onQuickPanelShown"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->S:Ljava/lang/String;

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->T:Ljava/lang/String;

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/FunctionBar;->g0(Z)V

    invoke-static {v0}, Lcom/cootek/presentation/sdk/PresentationManager;->shown(Ljava/lang/String;)V

    return-void
.end method

.method private E()V
    .locals 0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->v0()V

    return-void
.end method

.method private F(Ljava/lang/String;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, p1, v2

    iget-object v5, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->h:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget v6, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->L:I

    invoke-static {v5, v4, v6, v6}, Lcom/cootek/smartinput5/ui/w;->e(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    const/16 v5, 0x32

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-lez v3, :cond_2

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private G()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->y:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->z:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private J()V
    .locals 3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->o:I

    iget v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->p:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->o0()V

    return-void
.end method

.method private K()V
    .locals 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->Q:I

    const v0, 0x7f0a0184

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->y:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->L:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->z:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    const v0, 0x7f0a0185

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->L:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    return-void
.end method

.method private M()Z
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWindowLayoutManager()Lcom/cootek/smartinput5/ui/p0;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    sget-object v1, Lcom/cootek/smartinput5/ui/layout/ExtractViewType;->boom_text:Lcom/cootek/smartinput5/ui/layout/ExtractViewType;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/p0;->d()Lcom/cootek/smartinput5/ui/layout/ExtractViewType;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private O()Z
    .locals 3

    sget-object v0, Lcom/cootek/smartinput5/configuration/ConfigurationType;->FUNCTIONBAR_EMOJI_VIEW_SHOW:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->h:Landroid/content/Context;

    invoke-static {v1}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->q(Landroid/content/Context;)Lcom/cootek/smartinput5/configuration/ConfigurationManager;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->G(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private P()Z
    .locals 2

    iget v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->Q:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private Y()V
    .locals 4

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x19d

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/cootek/smartinput5/ui/L;

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->Q()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/cootek/smartinput5/ui/L;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/L;->A0(Z)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->n:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->j:Lcom/cootek/smartinput5/ui/t;

    if-nez v0, :cond_2

    new-instance v0, Lcom/cootek/smartinput5/ui/t;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->getLanguageSelectorPopupDismissListener()Lcom/cootek/smartinput5/ui/t$a;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/cootek/smartinput5/ui/t;-><init>(Landroid/content/Context;Lcom/cootek/smartinput5/ui/t$a;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->j:Lcom/cootek/smartinput5/ui/t;

    :cond_2
    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->m:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->m:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->X()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->u()V

    :goto_0
    return-void
.end method

.method private b0()V
    .locals 1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->N()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->bringToFront()V

    :cond_0
    return-void
.end method

.method private c0()V
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->G:Lcom/cootek/smartinput5/ui/D;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/D;->i0()V

    :cond_1
    return-void
.end method

.method private g0(Z)V
    .locals 1

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->w:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->v:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->t:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->u:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->x:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->P()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private getLanguageSelectorPopupDismissListener()Lcom/cootek/smartinput5/ui/t$a;
    .locals 1

    new-instance v0, Lcom/cootek/smartinput5/ui/FunctionBar$f;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/ui/FunctionBar$f;-><init>(Lcom/cootek/smartinput5/ui/FunctionBar;)V

    return-object v0
.end method

.method private i0(Lcom/cootek/presentation/service/toast/ToolbarToast;)V
    .locals 2

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->j0()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/o0;->U(Z)Lcom/cootek/smartinput5/func/paopaopanel/a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->q:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->l0()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->S:Ljava/lang/String;

    invoke-static {v1}, Lcom/cootek/presentation/sdk/PresentationManager;->isToastExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/cootek/smartinput5/ui/FunctionBar;->q(Lcom/cootek/smartinput5/func/paopaopanel/a;Lcom/cootek/presentation/service/toast/ToolbarToast;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/FunctionBar;->A0(Lcom/cootek/presentation/service/toast/ToolbarToast;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->S:Ljava/lang/String;

    invoke-static {v1}, Lcom/cootek/presentation/sdk/PresentationManager;->isToastExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0, p1}, Lcom/cootek/smartinput5/ui/FunctionBar;->q(Lcom/cootek/smartinput5/func/paopaopanel/a;Lcom/cootek/presentation/service/toast/ToolbarToast;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->z0()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->u0()V

    :goto_0
    return-void
.end method

.method private j0()V
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->A:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    new-instance v0, Lcom/cootek/smartinput5/ui/FunctionBar$i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cootek/smartinput5/ui/FunctionBar$i;-><init>(Lcom/cootek/smartinput5/ui/FunctionBar;Lcom/cootek/smartinput5/ui/FunctionBar$a;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/cootek/smartinput5/ui/extensionpoint/e;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/m0;->executeInThreadPool([Ljava/lang/Object;)V

    return-void
.end method

.method private k0()V
    .locals 6

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->K()V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->A:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->y:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->A:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cootek/smartinput5/ui/extensionpoint/d;

    if-nez v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    check-cast v3, Lcom/cootek/smartinput5/ui/F;

    iget v4, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->L:I

    invoke-virtual {v3, v4}, Lcom/cootek/smartinput5/ui/F;->V(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_2

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {v3}, Lcom/cootek/smartinput5/ui/F;->U()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v5, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v5

    if-nez v5, :cond_3

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    :cond_4
    if-lez v2, :cond_5

    const/4 v0, 0x7

    iput v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->Q:I

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->r0()V

    goto :goto_2

    :cond_5
    const/4 v0, 0x5

    iput v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->Q:I

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->y:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method private l0()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/FunctionBar;->g0(Z)V

    iget-boolean v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->r:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->w:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/FunctionBar;->m0(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->w:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/FunctionBar;->m0(Z)V

    :goto_0
    return-void
.end method

.method static synthetic m(Lcom/cootek/smartinput5/ui/FunctionBar;Lcom/cootek/presentation/service/toast/ToolbarToast;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/FunctionBar;->w0(Lcom/cootek/presentation/service/toast/ToolbarToast;)V

    return-void
.end method

.method private m0(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/ui/FunctionBar;->p0(Z)V

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/ui/FunctionBar;->h0(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->w:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/cootek/smartinput5/ui/FunctionBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->k0()V

    return-void
.end method

.method private n0()V
    .locals 3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->u()Lcom/cootek/smartinput5/ui/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/g;->h()I

    move-result v0

    iput v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->k:I

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->u()Lcom/cootek/smartinput5/ui/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/g;->j()I

    move-result v0

    iput v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->l:I

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->i:Lcom/cootek/smartinput5/ui/control/r;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/control/r;->k()I

    move-result v0

    iget v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->K:I

    div-int/lit8 v0, v0, 0x7

    if-le v1, v0, :cond_0

    iput v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->L:I

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->L:I

    :goto_0
    iget v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->N:I

    iget v2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->L:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->O:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->O:I

    :cond_1
    iget v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->O:I

    iput v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->P:I

    sub-int/2addr v2, v0

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->M:I

    return-void
.end method

.method private o()Z
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->q0()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private p(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private q(Lcom/cootek/smartinput5/func/paopaopanel/a;Lcom/cootek/presentation/service/toast/ToolbarToast;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/cootek/presentation/service/toast/PresentToast;->getTag()Ljava/lang/String;

    move-result-object p2

    const-string v1, "onQuickPanelShown"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object p2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->S:Ljava/lang/String;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->T:Ljava/lang/String;

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private q0(Z)V
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->u:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->G:Lcom/cootek/smartinput5/ui/D;

    iget v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->L:I

    iget v2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->M:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;->b(Lcom/cootek/smartinput5/ui/F;II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->F:Lcom/cootek/smartinput5/ui/F;

    iget v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->L:I

    iget v2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->M:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;->b(Lcom/cootek/smartinput5/ui/F;II)V

    :goto_0
    return-void
.end method

.method private r(Z)V
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->G:Lcom/cootek/smartinput5/ui/D;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/D;->g0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->G:Lcom/cootek/smartinput5/ui/D;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/ui/D;->h0(Z)V

    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->j:Lcom/cootek/smartinput5/ui/t;

    if-nez v0, :cond_2

    new-instance v0, Lcom/cootek/smartinput5/ui/t;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->getLanguageSelectorPopupDismissListener()Lcom/cootek/smartinput5/ui/t$a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/cootek/smartinput5/ui/t;-><init>(Landroid/content/Context;Lcom/cootek/smartinput5/ui/t$a;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->j:Lcom/cootek/smartinput5/ui/t;

    :cond_2
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->j:Lcom/cootek/smartinput5/ui/t;

    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/t;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->j:Lcom/cootek/smartinput5/ui/t;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/t;->b()V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->j:Lcom/cootek/smartinput5/ui/t;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/t;->d()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->j:Lcom/cootek/smartinput5/ui/t;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/t;->g()V

    :cond_4
    :goto_0
    iput-boolean p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->m:Z

    return-void

    :cond_5
    :goto_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->m:Z

    return-void
.end method

.method private setup(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->d0()Lcom/cootek/smartinput5/func/N;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/cootek/smartinput5/func/N;->i1(Lcom/cootek/smartinput5/func/N$f;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object p1

    sget-object v0, Lcom/cootek/smartinput5/ui/RendingColorPosition;->FUNCTION_BAR_BG:Lcom/cootek/smartinput5/ui/RendingColorPosition;

    const v1, 0x7f0801cd

    invoke-virtual {p1, v1, v0}, Lcom/cootek/smartinput5/func/i0;->V(ILcom/cootek/smartinput5/ui/RendingColorPosition;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/o0;->O()Lcom/cootek/smartinput5/ui/control/r;

    move-result-object p1

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->i:Lcom/cootek/smartinput5/ui/control/r;

    invoke-virtual {p1, p0}, Lcom/cootek/smartinput5/ui/control/r;->Z(Lcom/cootek/smartinput5/ui/control/r$a;)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/o0;->N()Lcom/cootek/smartinput5/ui/settings/f;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/cootek/smartinput5/ui/settings/f;->L(Lcom/cootek/smartinput5/ui/settings/f$e;)V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->A:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->o:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->p:I

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->h:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0701cc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->K:I

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->h:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07019a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->N:I

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->d0()V

    return-void
.end method

.method private tp38HideView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->E:Lcom/cootek/smartinput5/ui/F;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->I:Lcom/cootek/smartinput5/ui/F;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->w:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private u0()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/FunctionBar;->g0(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/FunctionBar;->m0(Z)V

    return-void
.end method

.method private v()V
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->P()Lcom/cootek/smartinput5/ui/A;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/A;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/A;->dismiss()V

    :cond_2
    return-void
.end method

.method private w0(Lcom/cootek/presentation/service/toast/ToolbarToast;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/FunctionBar;->i0(Lcom/cootek/presentation/service/toast/ToolbarToast;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->n0()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->L()V

    return-void
.end method

.method private x(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object v0

    const-string v1, "FUNC_PLUGIN_CLICKED"

    const-string v2, "/UI/"

    invoke-virtual {v0, v1, p1, v2}, Lcom/cootek/smartinput5/l/g;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private x0(Z)V
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->J0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-instance p1, Lcom/cootek/smartinput5/ui/FunctionBar$j;

    invoke-direct {p1, p0, v0}, Lcom/cootek/smartinput5/ui/FunctionBar$j;-><init>(Lcom/cootek/smartinput5/ui/FunctionBar;Lcom/cootek/smartinput5/ui/FunctionBar$a;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/func/m0;->executeInThreadPool([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/FunctionBar;->w0(Lcom/cootek/presentation/service/toast/ToolbarToast;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private y0()V
    .locals 5

    sget-object v0, Lcom/cootek/smartinput5/ui/RendingColorPosition;->PLUGIN_BAR:Lcom/cootek/smartinput5/ui/RendingColorPosition;

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v1

    const v2, 0x7f080560

    invoke-virtual {v1, v2, v0}, Lcom/cootek/smartinput5/func/i0;->V(ILcom/cootek/smartinput5/ui/RendingColorPosition;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->D:Lcom/cootek/smartinput5/ui/F;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Lcom/cootek/smartinput5/ui/F;->f0(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const v2, 0x7f08055f

    invoke-virtual {v1, v2, v0}, Lcom/cootek/smartinput5/func/i0;->V(ILcom/cootek/smartinput5/ui/RendingColorPosition;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->F:Lcom/cootek/smartinput5/ui/F;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Lcom/cootek/smartinput5/ui/F;->f0(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->O()Z

    move-result v2

    const v3, 0x7f08056d

    if-eqz v2, :cond_2

    const v2, 0x7f08056b

    invoke-virtual {v1, v2, v0}, Lcom/cootek/smartinput5/func/i0;->V(ILcom/cootek/smartinput5/ui/RendingColorPosition;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v3, v0}, Lcom/cootek/smartinput5/func/i0;->V(ILcom/cootek/smartinput5/ui/RendingColorPosition;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    iget-object v4, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->J:Lcom/cootek/smartinput5/ui/F;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v2}, Lcom/cootek/smartinput5/ui/F;->f0(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->B:Lcom/cootek/smartinput5/ui/B;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/cootek/smartinput5/ui/B;->r0()V

    :cond_4
    invoke-virtual {v1, v3, v0}, Lcom/cootek/smartinput5/func/i0;->V(ILcom/cootek/smartinput5/ui/RendingColorPosition;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->C:Lcom/cootek/smartinput5/ui/F;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/ui/F;->f0(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method

.method private z0()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/FunctionBar;->g0(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/FunctionBar;->m0(Z)V

    return-void
.end method


# virtual methods
.method protected A()V
    .locals 2

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/tool/perf/d;->H()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->isInputPaused()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->n:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->G()Lcom/cootek/smartinput5/func/b;

    move-result-object v0

    const v1, 0x7f0f01e6

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/b;->n(I)V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->f0()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/TouchPalIME;->requestHideSelf(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected B()V
    .locals 2

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/tool/perf/d;->H()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0xe9

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->D0()Lcom/cootek/smartinput5/func/s0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/s0;->e(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->w()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->Y()V

    return-void
.end method

.method protected C()V
    .locals 4

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->T()Lcom/cootek/smartinput5/func/paopaopanel/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    const-string v2, "/UI/DRAWER/"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/paopaopanel/a;->d()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object v0

    const-string v1, "DRAWER_CLOSED"

    invoke-virtual {v0, v1, v3, v2}, Lcom/cootek/smartinput5/l/g;->o(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/paopaopanel/a;->o()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->u()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object v0

    const-string v1, "DRAWER_OPENED"

    invoke-virtual {v0, v1, v3, v2}, Lcom/cootek/smartinput5/l/g;->o(Ljava/lang/String;ZLjava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->B:Lcom/cootek/smartinput5/ui/B;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/extensionpoint/a;->d()V

    :cond_2
    return-void
.end method

.method public D(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v0

    sget-object v1, Lcom/cootek/smartinput5/ui/RendingColorPosition;->FUNCTION_BAR_BG:Lcom/cootek/smartinput5/ui/RendingColorPosition;

    const v2, 0x7f0801cd

    invoke-virtual {v0, v2, v1}, Lcom/cootek/smartinput5/func/i0;->V(ILcom/cootek/smartinput5/ui/RendingColorPosition;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->G()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->J()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->L()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->y0()V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public H()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->w:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->w:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLongClickable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->w:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->u:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->B:Lcom/cootek/smartinput5/ui/B;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/B;->n0(I)V

    const v0, 0x7f0a0187

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public I()V
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/presentations/i;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/presentations/i;->p()Lcom/cootek/smartinput5/presentations/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cootek/smartinput5/presentations/i;->D(Lcom/cootek/smartinput5/presentations/i$f;)V

    :cond_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->n0()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->L()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->k0()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->J()V

    return-void
.end method

.method protected L()V
    .locals 4

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->t:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    if-nez v0, :cond_1

    const v0, 0x7f0a0180

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->t:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->t:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->D:Lcom/cootek/smartinput5/ui/F;

    if-eqz v1, :cond_2

    iget v2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->L:I

    iget v3, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->M:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;->b(Lcom/cootek/smartinput5/ui/F;II)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->D:Lcom/cootek/smartinput5/ui/F;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/extensionpoint/a;->c()V

    :cond_2
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->u:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->F:Lcom/cootek/smartinput5/ui/F;

    if-eqz v0, :cond_3

    const v0, 0x7f0a0182

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->u:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->L:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->F:Lcom/cootek/smartinput5/ui/F;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/extensionpoint/a;->c()V

    :cond_3
    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->r0()V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->v:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    if-nez v0, :cond_4

    const v0, 0x7f0a0186

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->v:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    :cond_4
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->v:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->J:Lcom/cootek/smartinput5/ui/F;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/extensionpoint/a;->c()V

    :cond_5
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->w:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    if-nez v0, :cond_6

    const v0, 0x7f0a0181

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->w:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    :cond_6
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->w:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->I:Lcom/cootek/smartinput5/ui/F;

    if-eqz v1, :cond_7

    iget v2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->L:I

    iget v3, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->M:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;->b(Lcom/cootek/smartinput5/ui/F;II)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->I:Lcom/cootek/smartinput5/ui/F;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/extensionpoint/a;->c()V

    :cond_7
    return-void
.end method

.method public N()Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->R:Lcom/cootek/smartinput5/func/smileypanel/widget/SoftSmileyPadView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->m:Z

    return v0
.end method

.method public R()V
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->d0()Lcom/cootek/smartinput5/func/N;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cootek/smartinput5/func/N;->y1(Lcom/cootek/smartinput5/func/N$f;)V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->u()V

    invoke-static {}, Lcom/cootek/smartinput5/presentations/i;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/presentations/i;->p()Lcom/cootek/smartinput5/presentations/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cootek/smartinput5/presentations/i;->H(Lcom/cootek/smartinput5/presentations/i$f;)V

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->N()Lcom/cootek/smartinput5/ui/settings/f;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/cootek/smartinput5/ui/settings/f;->T(Lcom/cootek/smartinput5/ui/settings/f$e;)V

    :cond_1
    return-void
.end method

.method public S()V
    .locals 0

    return-void
.end method

.method public T()V
    .locals 0

    return-void
.end method

.method public U()V
    .locals 0

    return-void
.end method

.method public V()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->B:Lcom/cootek/smartinput5/ui/B;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/B;->p0()V

    :cond_0
    return-void
.end method

.method public W()V
    .locals 0

    return-void
.end method

.method public X()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/FunctionBar;->r(Z)V

    return-void
.end method

.method public Z()V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->E()V

    return-void
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->R:Lcom/cootek/smartinput5/func/smileypanel/widget/SoftSmileyPadView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->R:Lcom/cootek/smartinput5/func/smileypanel/widget/SoftSmileyPadView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->R:Lcom/cootek/smartinput5/func/smileypanel/widget/SoftSmileyPadView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected a0()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->x:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->S()Lcom/cootek/e/b/c/a/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/cootek/e/b/c/a/e;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->I()V

    return-void
.end method

.method public c(Landroid/view/ViewGroup;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->M()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->getSoftSmileyPadDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->i:Lcom/cootek/smartinput5/ui/control/r;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/ui/control/r;->k()I

    move-result v1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/ui/o0;->u()Lcom/cootek/smartinput5/ui/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/ui/g;->o()I

    move-result v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x50

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->R:Lcom/cootek/smartinput5/func/smileypanel/widget/SoftSmileyPadView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    :cond_3
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method protected d0()V
    .locals 15

    sget-object v0, Lcom/cootek/smartinput5/ui/RendingColorPosition;->PLUGIN_BAR:Lcom/cootek/smartinput5/ui/RendingColorPosition;

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v1

    new-instance v2, Lcom/cootek/smartinput5/ui/B;

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->h:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cootek/smartinput5/ui/B;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->B:Lcom/cootek/smartinput5/ui/B;

    new-instance v3, Lcom/cootek/smartinput5/ui/FunctionBar$a;

    invoke-direct {v3, p0}, Lcom/cootek/smartinput5/ui/FunctionBar$a;-><init>(Lcom/cootek/smartinput5/ui/FunctionBar;)V

    invoke-virtual {v2, v3}, Lcom/cootek/smartinput5/ui/F;->b0(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/cootek/smartinput5/ui/MenuSettingsHold;

    invoke-direct {v3}, Lcom/cootek/smartinput5/ui/MenuSettingsHold;-><init>()V

    invoke-virtual {v2, v3}, Lcom/cootek/smartinput5/ui/F;->c0(Landroid/view/View$OnLongClickListener;)V

    sget-object v2, Lcom/cootek/smartinput5/ui/RendingColorPosition;->FUNCTION_BAR_CLOSE:Lcom/cootek/smartinput5/ui/RendingColorPosition;

    const v3, 0x7f0802af

    invoke-virtual {v1, v3, v2}, Lcom/cootek/smartinput5/func/i0;->V(ILcom/cootek/smartinput5/ui/RendingColorPosition;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Lcom/cootek/smartinput5/ui/F;

    iget-object v4, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->h:Landroid/content/Context;

    sget-object v5, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->PLUGIN_BAR_HIDE:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/cootek/smartinput5/ui/F;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->E:Lcom/cootek/smartinput5/ui/F;

    invoke-virtual {v3, v2}, Lcom/cootek/smartinput5/ui/F;->a0(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->E:Lcom/cootek/smartinput5/ui/F;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/cootek/smartinput5/ui/F;->Z(Z)V

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->E:Lcom/cootek/smartinput5/ui/F;

    new-instance v4, Lcom/cootek/smartinput5/ui/FunctionBar$b;

    invoke-direct {v4, p0}, Lcom/cootek/smartinput5/ui/FunctionBar$b;-><init>(Lcom/cootek/smartinput5/ui/FunctionBar;)V

    invoke-virtual {v2, v4}, Lcom/cootek/smartinput5/ui/F;->b0(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f08056d

    invoke-virtual {v1, v2, v0}, Lcom/cootek/smartinput5/func/i0;->V(ILcom/cootek/smartinput5/ui/RendingColorPosition;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v4, Lcom/cootek/smartinput5/ui/F;

    iget-object v5, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->h:Landroid/content/Context;

    sget-object v6, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->PLUGIN_BAR_EMOJI:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/cootek/smartinput5/ui/F;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->C:Lcom/cootek/smartinput5/ui/F;

    invoke-virtual {v4, v2}, Lcom/cootek/smartinput5/ui/F;->a0(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->C:Lcom/cootek/smartinput5/ui/F;

    invoke-virtual {v2, v3}, Lcom/cootek/smartinput5/ui/F;->Z(Z)V

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->C:Lcom/cootek/smartinput5/ui/F;

    new-instance v4, Lcom/cootek/smartinput5/ui/FunctionBar$c;

    invoke-direct {v4, p0}, Lcom/cootek/smartinput5/ui/FunctionBar$c;-><init>(Lcom/cootek/smartinput5/ui/FunctionBar;)V

    invoke-virtual {v2, v4}, Lcom/cootek/smartinput5/ui/F;->b0(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f080560

    invoke-virtual {v1, v2, v0}, Lcom/cootek/smartinput5/func/i0;->V(ILcom/cootek/smartinput5/ui/RendingColorPosition;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v4, Lcom/cootek/smartinput5/ui/F;

    iget-object v5, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->h:Landroid/content/Context;

    sget-object v6, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->PLUGIN_EDIT:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/cootek/smartinput5/ui/F;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->D:Lcom/cootek/smartinput5/ui/F;

    invoke-virtual {v4, v2}, Lcom/cootek/smartinput5/ui/F;->a0(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->D:Lcom/cootek/smartinput5/ui/F;

    invoke-virtual {v2, v3}, Lcom/cootek/smartinput5/ui/F;->Z(Z)V

    const v2, 0x7f08055f

    invoke-virtual {v1, v2, v0}, Lcom/cootek/smartinput5/func/i0;->V(ILcom/cootek/smartinput5/ui/RendingColorPosition;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v4, Lcom/cootek/smartinput5/ui/F;

    iget-object v5, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->h:Landroid/content/Context;

    sget-object v6, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->PLUGIN_CLIPBOARD:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lcom/cootek/smartinput5/ui/F;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->F:Lcom/cootek/smartinput5/ui/F;

    invoke-virtual {v4, v2}, Lcom/cootek/smartinput5/ui/F;->a0(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->F:Lcom/cootek/smartinput5/ui/F;

    invoke-virtual {v2, v3}, Lcom/cootek/smartinput5/ui/F;->Z(Z)V

    new-instance v2, Lcom/cootek/smartinput5/ui/D;

    iget-object v4, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->h:Landroid/content/Context;

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/cootek/smartinput5/ui/D;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->G:Lcom/cootek/smartinput5/ui/D;

    invoke-virtual {v2, v3}, Lcom/cootek/smartinput5/ui/F;->Z(Z)V

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->G:Lcom/cootek/smartinput5/ui/D;

    new-instance v4, Lcom/cootek/smartinput5/ui/FunctionBar$d;

    invoke-direct {v4, p0}, Lcom/cootek/smartinput5/ui/FunctionBar$d;-><init>(Lcom/cootek/smartinput5/ui/FunctionBar;)V

    invoke-virtual {v2, v4}, Lcom/cootek/smartinput5/ui/F;->b0(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f08056b

    invoke-virtual {v1, v2, v0}, Lcom/cootek/smartinput5/func/i0;->V(ILcom/cootek/smartinput5/ui/RendingColorPosition;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v4, Lcom/cootek/smartinput5/ui/E;

    iget-object v5, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->h:Landroid/content/Context;

    sget-object v6, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->MORE_SKIN:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x24f

    const/16 v8, 0x1fa

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/cootek/smartinput5/ui/E;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    iput-object v4, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->H:Lcom/cootek/smartinput5/ui/F;

    invoke-virtual {v4, v2}, Lcom/cootek/smartinput5/ui/F;->a0(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->H:Lcom/cootek/smartinput5/ui/F;

    invoke-virtual {v2, v3}, Lcom/cootek/smartinput5/ui/F;->Z(Z)V

    const v2, 0x7f080564

    invoke-virtual {v1, v2, v0}, Lcom/cootek/smartinput5/func/i0;->V(ILcom/cootek/smartinput5/ui/RendingColorPosition;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v4, Lcom/cootek/smartinput5/ui/F;

    iget-object v5, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->h:Landroid/content/Context;

    sget-object v6, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->PLUGIN_LANGUAGE:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/cootek/smartinput5/ui/F;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->languageButton:Lcom/cootek/smartinput5/ui/F;

    invoke-virtual {v4, v2}, Lcom/cootek/smartinput5/ui/F;->a0(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->languageButton:Lcom/cootek/smartinput5/ui/F;

    invoke-virtual {v2, v3}, Lcom/cootek/smartinput5/ui/F;->Z(Z)V

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->h:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "first_button_type"

    const-string v5, "editor"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "clipboard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v4, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->F:Lcom/cootek/smartinput5/ui/F;

    goto :goto_0

    :cond_0
    const-string v5, "emoji"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v4, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->C:Lcom/cootek/smartinput5/ui/F;

    goto :goto_0

    :cond_1
    const-string v5, "language"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v4, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->languageButton:Lcom/cootek/smartinput5/ui/F;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->D:Lcom/cootek/smartinput5/ui/F;

    :goto_0
    iput-object v4, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->D:Lcom/cootek/smartinput5/ui/F;

    const-string v4, "second_button_type"

    const-string v5, "clipboard"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "editor"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const v5, 0x7f080560

    invoke-virtual {v1, v5, v0}, Lcom/cootek/smartinput5/func/i0;->V(ILcom/cootek/smartinput5/ui/RendingColorPosition;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v6, Lcom/cootek/smartinput5/ui/F;

    iget-object v7, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->h:Landroid/content/Context;

    sget-object v8, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->PLUGIN_EDIT:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/cootek/smartinput5/ui/F;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lcom/cootek/smartinput5/ui/F;->a0(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v3}, Lcom/cootek/smartinput5/ui/F;->Z(Z)V

    move-object v4, v6

    goto :goto_1

    :cond_3
    const-string v5, "emoji"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const v5, 0x7f08056d

    invoke-virtual {v1, v5, v0}, Lcom/cootek/smartinput5/func/i0;->V(ILcom/cootek/smartinput5/ui/RendingColorPosition;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v6, Lcom/cootek/smartinput5/ui/F;

    iget-object v7, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->h:Landroid/content/Context;

    sget-object v8, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->PLUGIN_BAR_EMOJI:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/cootek/smartinput5/ui/F;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lcom/cootek/smartinput5/ui/F;->a0(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v3}, Lcom/cootek/smartinput5/ui/F;->Z(Z)V

    new-instance v5, Lcom/cootek/smartinput5/ui/FunctionBar$c;

    invoke-direct {v5, p0}, Lcom/cootek/smartinput5/ui/FunctionBar$c;-><init>(Lcom/cootek/smartinput5/ui/FunctionBar;)V

    invoke-virtual {v6, v5}, Lcom/cootek/smartinput5/ui/F;->b0(Landroid/view/View$OnClickListener;)V

    move-object v4, v6

    goto :goto_1

    :cond_4
    const-string v5, "language"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const v5, 0x7f080564

    invoke-virtual {v1, v5, v0}, Lcom/cootek/smartinput5/func/i0;->V(ILcom/cootek/smartinput5/ui/RendingColorPosition;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v6, Lcom/cootek/smartinput5/ui/F;

    iget-object v7, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->h:Landroid/content/Context;

    sget-object v8, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->PLUGIN_LANGUAGE:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/cootek/smartinput5/ui/F;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lcom/cootek/smartinput5/ui/F;->a0(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v3}, Lcom/cootek/smartinput5/ui/F;->Z(Z)V

    move-object v4, v6

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->F:Lcom/cootek/smartinput5/ui/F;

    :goto_1
    iput-object v4, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->F:Lcom/cootek/smartinput5/ui/F;

    const-string v4, "third_button_type"

    const-string v5, "emoji"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "editor"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const v4, 0x7f080560

    invoke-virtual {v1, v4, v0}, Lcom/cootek/smartinput5/func/i0;->V(ILcom/cootek/smartinput5/ui/RendingColorPosition;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Lcom/cootek/smartinput5/ui/F;

    iget-object v6, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->h:Landroid/content/Context;

    sget-object v7, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->PLUGIN_EDIT:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/cootek/smartinput5/ui/F;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/cootek/smartinput5/ui/F;->a0(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v3}, Lcom/cootek/smartinput5/ui/F;->Z(Z)V

    iput-object v5, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->thirdButton:Lcom/cootek/smartinput5/ui/F;

    goto :goto_2

    :cond_6
    const-string v5, "clipboard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const v4, 0x7f08055f

    invoke-virtual {v1, v4, v0}, Lcom/cootek/smartinput5/func/i0;->V(ILcom/cootek/smartinput5/ui/RendingColorPosition;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Lcom/cootek/smartinput5/ui/F;

    iget-object v6, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->h:Landroid/content/Context;

    sget-object v7, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->PLUGIN_CLIPBOARD:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/cootek/smartinput5/ui/F;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/cootek/smartinput5/ui/F;->a0(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v3}, Lcom/cootek/smartinput5/ui/F;->Z(Z)V

    iput-object v5, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->thirdButton:Lcom/cootek/smartinput5/ui/F;

    goto :goto_2

    :cond_7
    const-string v5, "language"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const v4, 0x7f080564

    invoke-virtual {v1, v4, v0}, Lcom/cootek/smartinput5/func/i0;->V(ILcom/cootek/smartinput5/ui/RendingColorPosition;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v4, Lcom/cootek/smartinput5/ui/F;

    iget-object v5, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->h:Landroid/content/Context;

    sget-object v6, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->PLUGIN_LANGUAGE:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/cootek/smartinput5/ui/F;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/cootek/smartinput5/ui/F;->a0(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v3}, Lcom/cootek/smartinput5/ui/F;->Z(Z)V

    iput-object v4, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->thirdButton:Lcom/cootek/smartinput5/ui/F;

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->C:Lcom/cootek/smartinput5/ui/F;

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->thirdButton:Lcom/cootek/smartinput5/ui/F;

    :goto_2
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->h:Landroid/content/Context;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->D:Lcom/cootek/smartinput5/ui/F;

    invoke-static {v0, v4, v5}, Lcom/cootek/smartinput5/settings/ToolbarActions143;->button(Landroid/content/Context;ILcom/cootek/smartinput5/ui/F;)Lcom/cootek/smartinput5/ui/F;

    move-result-object v5

    iput-object v5, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->D:Lcom/cootek/smartinput5/ui/F;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->F:Lcom/cootek/smartinput5/ui/F;

    invoke-static {v0, v4, v5}, Lcom/cootek/smartinput5/settings/ToolbarActions143;->button(Landroid/content/Context;ILcom/cootek/smartinput5/ui/F;)Lcom/cootek/smartinput5/ui/F;

    move-result-object v5

    iput-object v5, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->F:Lcom/cootek/smartinput5/ui/F;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->thirdButton:Lcom/cootek/smartinput5/ui/F;

    invoke-static {v0, v4, v5}, Lcom/cootek/smartinput5/settings/ToolbarActions143;->button(Landroid/content/Context;ILcom/cootek/smartinput5/ui/F;)Lcom/cootek/smartinput5/ui/F;

    move-result-object v5

    iput-object v5, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->thirdButton:Lcom/cootek/smartinput5/ui/F;

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->O()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->thirdButton:Lcom/cootek/smartinput5/ui/F;

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->I:Lcom/cootek/smartinput5/ui/F;

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->H:Lcom/cootek/smartinput5/ui/F;

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->J:Lcom/cootek/smartinput5/ui/F;

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->E:Lcom/cootek/smartinput5/ui/F;

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->I:Lcom/cootek/smartinput5/ui/F;

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->thirdButton:Lcom/cootek/smartinput5/ui/F;

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->J:Lcom/cootek/smartinput5/ui/F;

    :goto_3
    new-instance v1, Lcom/cootek/smartinput5/ui/FunctionBar$clipboardLongClick;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/ui/FunctionBar$clipboardLongClick;-><init>(Lcom/cootek/smartinput5/ui/FunctionBar;)V

    const-string v3, "first_button_type"

    const-string v4, "editor"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "second_button_type"

    const-string v5, "clipboard"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "third_button_type"

    const-string v6, "emoji"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "clipboard"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->D:Lcom/cootek/smartinput5/ui/F;

    if-eqz v3, :cond_a

    invoke-virtual {v3, v1}, Lcom/cootek/smartinput5/ui/F;->c0(Landroid/view/View$OnLongClickListener;)V

    :cond_a
    const-string v3, "clipboard"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->F:Lcom/cootek/smartinput5/ui/F;

    if-eqz v4, :cond_b

    invoke-virtual {v4, v1}, Lcom/cootek/smartinput5/ui/F;->c0(Landroid/view/View$OnLongClickListener;)V

    :cond_b
    const-string v4, "clipboard"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->thirdButton:Lcom/cootek/smartinput5/ui/F;

    if-eqz v2, :cond_c

    invoke-virtual {v2, v1}, Lcom/cootek/smartinput5/ui/F;->c0(Landroid/view/View$OnLongClickListener;)V

    :cond_c
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->R:Lcom/cootek/smartinput5/func/smileypanel/widget/SoftSmileyPadView;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/smileypanel/widget/SoftSmileyPadView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->B:Lcom/cootek/smartinput5/ui/B;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/guidepoint/a;->w(Z)V

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->C:Lcom/cootek/smartinput5/ui/F;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/guidepoint/a;->w(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->j0()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->E()V

    return-void
.end method

.method public e0()V
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->w:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->w:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLongClickable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->w:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->B:Lcom/cootek/smartinput5/ui/B;

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/ui/B;->n0(I)V

    invoke-virtual {p0, v1}, Lcom/cootek/smartinput5/ui/FunctionBar;->p0(Z)V

    const v0, 0x7f0a0187

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public f0()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->B:Lcom/cootek/smartinput5/ui/B;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/B;->q0()V

    :cond_0
    return-void
.end method

.method public g(I)V
    .locals 0

    return-void
.end method

.method public getDecorView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->R:Lcom/cootek/smartinput5/func/smileypanel/widget/SoftSmileyPadView;

    return-object v0
.end method

.method public getExtensionPointType()Lcom/cootek/smartinput5/ui/extensionpoint/ExtensionPointType;
    .locals 1

    sget-object v0, Lcom/cootek/smartinput5/ui/extensionpoint/ExtensionPointType;->FUNCTION_BAR_EXTENSION_LIST:Lcom/cootek/smartinput5/ui/extensionpoint/ExtensionPointType;

    return-object v0
.end method

.method public getHandwriteRect()Landroid/graphics/Rect;
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public getLanguageBtnRect()Landroid/graphics/Rect;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->u:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/widget/RelativeLayout;->measure(II)V

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->u:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    iget-object v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->t:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    if-eqz v1, :cond_1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->t:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :cond_1
    return-object v0
.end method

.method public getSoftSmileyPadDecorView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->R:Lcom/cootek/smartinput5/func/smileypanel/widget/SoftSmileyPadView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->h:Landroid/content/Context;

    const v1, 0x7f100169

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/ui/control/i;->a(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/cootek/smartinput5/func/smileypanel/widget/SoftSmileyPadView;

    invoke-direct {v1, v0}, Lcom/cootek/smartinput5/func/smileypanel/widget/SoftSmileyPadView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->R:Lcom/cootek/smartinput5/func/smileypanel/widget/SoftSmileyPadView;

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->y()Lcom/cootek/smartinput5/ui/SoftKeyboardView;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->R:Lcom/cootek/smartinput5/func/smileypanel/widget/SoftSmileyPadView;

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/func/smileypanel/widget/SoftSmileyPadView;->setPopParentView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->R:Lcom/cootek/smartinput5/func/smileypanel/widget/SoftSmileyPadView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/smileypanel/widget/SoftSmileyPadView;->j(Z)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->R:Lcom/cootek/smartinput5/func/smileypanel/widget/SoftSmileyPadView;

    const v1, 0x7f0a037c

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->R:Lcom/cootek/smartinput5/func/smileypanel/widget/SoftSmileyPadView;

    const v1, 0x7f0a03f3

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cootek/smartinput5/ui/TouchpalViewPager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->R:Lcom/cootek/smartinput5/func/smileypanel/widget/SoftSmileyPadView;

    return-object v0
.end method

.method public h(Landroid/content/Context;Lcom/cootek/presentation/service/toast/ExtensionStaticToast;)Lcom/cootek/smartinput5/ui/extensionpoint/d;
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/cootek/presentation/service/toast/ExtensionStaticToast;->getGuidePointId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cootek/smartinput5/ui/extensionpoint/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/cootek/presentation/service/toast/ExtensionStaticToast;->getGuidePointId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/cootek/presentation/service/toast/PresentToast;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cootek/smartinput5/ui/F;

    invoke-direct {v3, p1, v1, v2}, Lcom/cootek/smartinput5/ui/F;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/cootek/presentation/service/toast/ExtensionStaticToast;->getExtensionPosition()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/cootek/smartinput5/ui/F;->d0(I)V

    new-instance p1, Lcom/cootek/smartinput5/ui/FunctionBar$g;

    invoke-direct {p1, p0, p2}, Lcom/cootek/smartinput5/ui/FunctionBar$g;-><init>(Lcom/cootek/smartinput5/ui/FunctionBar;Lcom/cootek/presentation/service/toast/ExtensionStaticToast;)V

    invoke-virtual {v3, p1}, Lcom/cootek/smartinput5/ui/F;->b0(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/cootek/presentation/service/toast/PresentToast;->getDownloadFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/FunctionBar;->F(Ljava/lang/String;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/cootek/presentation/service/toast/PresentToast;->getImagePath()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->h:Landroid/content/Context;

    iget v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->L:I

    invoke-static {p2, p1, v1, v1}, Lcom/cootek/smartinput5/ui/w;->e(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v3, p1}, Lcom/cootek/smartinput5/ui/F;->a0(Landroid/graphics/drawable/Drawable;)V

    move-object v0, v3

    :cond_2
    return-object v0
.end method

.method public h0(Z)V
    .locals 3

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->v:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->J:Lcom/cootek/smartinput5/ui/F;

    iget v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->L:I

    iget v2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->M:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;->b(Lcom/cootek/smartinput5/ui/F;II)V

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->v:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x19d

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->j:Lcom/cootek/smartinput5/ui/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/t;->f()V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->u()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->b0()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->w()V

    return-void
.end method

.method public l(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/cootek/smartinput5/ui/extensionpoint/d;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->A:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public o0()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/ui/FunctionBar;->p0(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    const-string v0, "FunctionBar"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/cootek/smartinput/utilities/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->a0()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-static {p0}, Lcom/cootek/smartinput5/settings/ToolbarReflow145;->prepare(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->tp38HideView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/ui/CandidateCollapseButton;->preparePanel(Landroid/view/View;)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/o0;->u()Lcom/cootek/smartinput5/ui/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/g;->o()I

    move-result p1

    iget-object p2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->i:Lcom/cootek/smartinput5/ui/control/r;

    invoke-virtual {p2}, Lcom/cootek/smartinput5/ui/control/r;->k()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p2, v0

    or-int/2addr p1, v0

    :try_start_0
    invoke-super {p0, p2, p1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->tp38HideView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/ui/CandidateCollapseButton;->widenPanel(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->O()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/cootek/smartinput5/settings/ToolbarReflow145;->apply(Landroid/view/View;Z)V

    return-void
.end method

.method public p0(Z)V
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getCurrentLanguageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/func/N;->A0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/FunctionBar;->q0(Z)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->c0()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/FunctionBar;->q0(Z)V

    :goto_0
    return-void
.end method

.method protected r0()V
    .locals 8

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->i:Lcom/cootek/smartinput5/ui/control/r;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/ui/control/r;->k()I

    move-result v1

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->x:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    if-nez v2, :cond_1

    const v2, 0x7f0a0183

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    iput-object v2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->x:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    :cond_1
    iget-object v2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->x:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->B:Lcom/cootek/smartinput5/ui/B;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->L:I

    iget v4, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->Q:I

    add-int/lit8 v4, v4, -0x1

    mul-int v4, v4, v3

    sub-int/2addr v1, v4

    sub-int v3, v1, v3

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->x:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->x:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    iget-object v5, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->B:Lcom/cootek/smartinput5/ui/B;

    iget v6, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->L:I

    iget v7, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->M:I

    invoke-virtual {v2, v5, v6, v7}, Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;->b(Lcom/cootek/smartinput5/ui/F;II)V

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->B:Lcom/cootek/smartinput5/ui/B;

    invoke-virtual {v2}, Lcom/cootek/smartinput5/ui/extensionpoint/a;->c()V

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->x:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->x:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const v1, 0x7f080405

    sget-object v2, Lcom/cootek/smartinput5/ui/RendingColorPosition;->FUNCTION_BAR_BG:Lcom/cootek/smartinput5/ui/RendingColorPosition;

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/func/i0;->V(ILcom/cootek/smartinput5/ui/RendingColorPosition;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->x:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    new-instance v2, Lcom/cootek/smartinput5/ui/FunctionBar$e;

    invoke-direct {v2, p0, v0, v3}, Lcom/cootek/smartinput5/ui/FunctionBar$e;-><init>(Lcom/cootek/smartinput5/ui/FunctionBar;Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    return-void
.end method

.method public s()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->q:Z

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->r:Z

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->v0()V

    return-void
.end method

.method public s0()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/ui/FunctionBar;->t0(Z)V

    return-void
.end method

.method public setClickEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->n:Z

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->B:Lcom/cootek/smartinput5/ui/B;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/ui/F;->Z(Z)V

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->w:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    :cond_1
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->x:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    :cond_2
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->u:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    :cond_3
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->t:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    :cond_4
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->v:Lcom/cootek/smartinput5/ui/FunctionBarItemLayout;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    :cond_5
    return-void
.end method

.method public setClickableOnAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->s:Z

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->S:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/FunctionBar;->x0(Z)V

    const-string p1, ""

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->S:Ljava/lang/String;

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->T:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public t0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->B:Lcom/cootek/smartinput5/ui/B;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->B:Lcom/cootek/smartinput5/ui/B;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/ui/B;->s0(Z)V

    :cond_0
    return-void
.end method

.method public u()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/FunctionBar;->r(Z)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->v()V

    return-void
.end method

.method public v0()V
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/teaching/k/c;->q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->y0()Lcom/cootek/smartinput5/teaching/k/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/teaching/k/b;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/presentations/i;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/FunctionBar;->x0(Z)V

    return-void
.end method

.method public w()V
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/o0;->U(Z)Lcom/cootek/smartinput5/func/paopaopanel/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/paopaopanel/a;->d()V

    :cond_0
    return-void
.end method

.method protected y()V
    .locals 4

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/tool/perf/d;->H()V

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v0

    sget-object v1, Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;->EMOJI:Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;

    invoke-virtual {v0, v1}, Lcom/cootek/tool/perf/d;->F(Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;)V

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v0

    sget-object v1, Lcom/cootek/tool/perf/PerfActionType;->EMOJI_ENTRANCE:Lcom/cootek/tool/perf/PerfActionType;

    invoke-virtual {v0, v1}, Lcom/cootek/tool/perf/d;->B(Lcom/cootek/tool/perf/PerfActionType;)V

    invoke-static {}, Lcom/cootek/smartinput5/actionflow/a;->f()Lcom/cootek/smartinput5/actionflow/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "KEYBOARD_EMOJI_OPEN_CLICK"

    invoke-virtual {v0, v3, v2}, Lcom/cootek/smartinput5/actionflow/a;->i(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v2, 0xe9

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->D0()Lcom/cootek/smartinput5/func/s0;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/func/s0;->e(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->w()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/FunctionBar;->u()V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->C:Lcom/cootek/smartinput5/ui/F;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/extensionpoint/a;->d()V

    :cond_2
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->b0()Lcom/cootek/smartinput5/func/smileypanel/widget/SmileyDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/smileypanel/widget/SmileyDrawer;->n()V

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cootek/tool/perf/d;->G(Lcom/cootek/tool/perf/PerfActionType;)Z

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/FunctionBar;->C:Lcom/cootek/smartinput5/ui/F;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/guidepoint/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/FunctionBar;->x(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected z()Z
    .locals 3

    invoke-static {}, Lcom/cootek/smartinput5/devconsole/DevSettings;->b()Lcom/cootek/smartinput5/devconsole/DevSettings;

    move-result-object v0

    sget-object v1, Lcom/cootek/smartinput5/devconsole/DevSettings$BoolKey;->TEST_BOOL:Lcom/cootek/smartinput5/devconsole/DevSettings$BoolKey;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/devconsole/DevSettings;->a(Lcom/cootek/smartinput5/devconsole/DevSettings$BoolKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cootek/smartinput5/devconsole/DevLogTag;->perf:Lcom/cootek/smartinput5/devconsole/DevLogTag;

    const-string v1, "start DevOptionActivity"

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/devconsole/a;->i(Lcom/cootek/smartinput5/devconsole/DevLogTag;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/tool/perf/d;->H()V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/cootek/smartinput5/devconsole/DevOptionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method
