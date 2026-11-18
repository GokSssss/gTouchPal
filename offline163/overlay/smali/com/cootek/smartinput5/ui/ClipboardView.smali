.class public Lcom/cootek/smartinput5/ui/ClipboardView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/cootek/smartinput5/ui/ClipboardListView$a;
.implements Lcom/cootek/smartinput5/ui/h$n;
.implements Lcom/squareup/picasso/z;
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final A:Ljava/lang/String; = "premium_notification"

.field private static final t:Ljava/lang/String; = "ClipboardView"

.field private static final u:I = 0x2

.field public static final v:I = 0x1

.field public static final w:Ljava/lang/String; = "text"

.field public static final x:Ljava/lang/String; = "short_key"

.field public static final y:Ljava/lang/String; = "islocked"

.field static final z:Ljava/lang/String; = "first_notification"


# instance fields
.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:Landroid/content/res/TypedArray;

.field private l:Landroid/content/Context;

.field private m:Ljava/util/List;
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

.field private mClipboardTabAll:Landroid/widget/TextView;

.field private mClipboardTabLocked:Landroid/widget/TextView;

.field private mClipboardTabs:Landroid/widget/LinearLayout;

.field private mCurrentClipboardTab:I

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/support/v7/widget/RecyclerView;

.field private p:Lcom/cootek/smartinput5/ui/q0/f;

.field private q:Lcom/cootek/smartinput5/ui/J/d;

.field private r:Lcom/cootek/smartinput5/ui/J/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cootek/smartinput5/ui/J/c<",
            "Lcom/cootek/smartinput5/ui/J/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private s:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/ui/ClipboardView;->q(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/ui/ClipboardView;->q(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private applyClipboardTabFilter()V
    .locals 7

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->m:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "islocked"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    instance-of v6, v4, Ljava/lang/Boolean;

    if-eqz v6, :cond_1

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :cond_1
    iget v4, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->mCurrentClipboardTab:I

    if-nez v4, :cond_2

    if-nez v5, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private clipboardDp(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private closeCursor(Landroid/database/Cursor;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private enlargeClipboardBackButton()V
    .locals 11

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->n:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v3, v2

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    if-lez v5, :cond_0

    if-lez v6, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int v7, v2, v7

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    sub-int v8, v2, v8

    if-lez v7, :cond_0

    if-lez v8, :cond_0

    int-to-float v7, v7

    int-to-float v9, v5

    div-float/2addr v7, v9

    int-to-float v8, v8

    int-to-float v9, v6

    div-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/high16 v8, 0x3fc00000    # 1.5f

    mul-float/2addr v7, v8

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    sub-int v8, v3, v8

    int-to-float v8, v8

    int-to-float v9, v5

    mul-float/2addr v9, v7

    sub-float/2addr v8, v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    sub-int v9, v3, v9

    int-to-float v9, v9

    int-to-float v10, v6

    mul-float/2addr v10, v7

    sub-float/2addr v9, v10

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method private static getCurrentApp()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getEditor()Lcom/cootek/smartinput5/engine/Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Editor;->getEditorPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private initClipboardTabs()V
    .locals 9

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->mClipboardTabs:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/ClipboardView;->updateClipboardTabs()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->l:Landroid/content/Context;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/cootek/smartinput5/ui/ClipboardView;->clipboardDp(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/cootek/smartinput5/ui/ClipboardView;->clipboardDp(I)I

    move-result v3

    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/cootek/smartinput5/ui/ClipboardView;->clipboardDp(I)I

    move-result v4

    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/cootek/smartinput5/ui/ClipboardView;->clipboardDp(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v4, 0xa

    invoke-direct {p0, v4}, Lcom/cootek/smartinput5/ui/ClipboardView;->clipboardDp(I)I

    move-result v4

    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lcom/cootek/smartinput5/ui/ClipboardView;->clipboardDp(I)I

    move-result v5

    const/16 v6, 0xa

    invoke-direct {p0, v6}, Lcom/cootek/smartinput5/ui/ClipboardView;->clipboardDp(I)I

    move-result v6

    const/16 v7, 0x8

    invoke-direct {p0, v7}, Lcom/cootek/smartinput5/ui/ClipboardView;->clipboardDp(I)I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v4, "\ud83d\udcdd"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v4, "\ud83d\udccc"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iput-object v1, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->mClipboardTabs:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->mClipboardTabAll:Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->mClipboardTabLocked:Landroid/widget/TextView;

    new-instance v4, Lcom/cootek/smartinput5/ui/q0/f$LongClickListener;

    iget-object v5, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->p:Lcom/cootek/smartinput5/ui/q0/f;

    invoke-direct {v4, v5}, Lcom/cootek/smartinput5/ui/q0/f$LongClickListener;-><init>(Lcom/cootek/smartinput5/ui/q0/f;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/ClipboardView;->updateClipboardTabs()V

    :cond_2
    return-void
.end method

.method static synthetic j(Lcom/cootek/smartinput5/ui/ClipboardView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/ClipboardView;->o(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k(Lcom/cootek/smartinput5/ui/ClipboardView;)Lcom/cootek/smartinput5/ui/J/c;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->r:Lcom/cootek/smartinput5/ui/J/c;

    return-object p0
.end method

.method static synthetic l(Lcom/cootek/smartinput5/ui/ClipboardView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/ClipboardView;->w(I)V

    return-void
.end method

.method static synthetic m(Lcom/cootek/smartinput5/ui/ClipboardView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->l:Landroid/content/Context;

    return-object p0
.end method

.method private n()Z
    .locals 3

    sget v0, Lcom/cootek/smartinput5/engine/ClipboardBackend;->clipboardSlotNum:I

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    const/16 v2, 0x146

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget v1, Lcom/cootek/smartinput5/engine/ClipboardBackend;->CLIP_BOARD_EXPANDED_SLOT:I

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private o(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "OPERATION"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/cootek/smartinput5/ui/ClipboardView;->getCurrentApp()Ljava/lang/String;

    move-result-object p1

    const-string v1, "USE_IN_APP"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->l:Landroid/content/Context;

    invoke-static {p1}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object p1

    const-string v1, "CLIPBOARD_OPERATION"

    const-string v2, "/UI/"

    invoke-virtual {p1, v1, v0, v2}, Lcom/cootek/smartinput5/l/g;->n(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private p(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->l:Landroid/content/Context;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f0f083c

    invoke-static {p1, v1}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0f083d

    invoke-static {p1, v1}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->s:[Ljava/lang/String;

    return-void
.end method

.method private q(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/cootek/smartinput5/ui/o0;->y()Lcom/cootek/smartinput5/ui/SoftKeyboardView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/cootek/smartinput5/ui/SoftKeyboardView;->getKeyboard()Lcom/cootek/smartinput5/ui/W;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/cootek/smartinput5/ui/SoftKeyboardView;->getKeyboard()Lcom/cootek/smartinput5/ui/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/ui/W;->q()I

    move-result v1

    iput v1, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->h:I

    :cond_0
    if-eqz p2, :cond_1

    sget-object v1, Lcom/cootek/smartinputv5/R$styleable;->SoftKeyboard:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    iput-object p2, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->k:Landroid/content/res/TypedArray;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p2, v1, v0, v2}, Lcom/cootek/smartinput5/ui/control/n;->b(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->i:I

    iget-object p2, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->k:Landroid/content/res/TypedArray;

    const/4 v0, 0x5

    iget v1, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->h:I

    invoke-static {p2, v0, v1, v2}, Lcom/cootek/smartinput5/ui/control/n;->b(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->j:I

    :cond_1
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/ClipboardView;->v()V

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/ClipboardView;->p(Landroid/content/Context;)V

    return-void
.end method

.method private r()Z
    .locals 3

    invoke-static {}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getInstance()Lcom/cootek/smartinput5/engine/ClipboardBackend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getClipboardSlots()I

    move-result v0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    const/16 v2, 0x144

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private s()Z
    .locals 5

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->q(Landroid/content/Context;)Lcom/cootek/smartinput5/configuration/ConfigurationManager;

    move-result-object v0

    sget-object v1, Lcom/cootek/smartinput5/configuration/ConfigurationType;->option_clip_premium_notification:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->G(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getInstance()Lcom/cootek/smartinput5/engine/ClipboardBackend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getClipboardSlots()I

    move-result v0

    sget v2, Lcom/cootek/smartinput5/engine/ClipboardBackend;->clipboardSlotNum:I

    sget v3, Lcom/cootek/smartinput5/ui/h;->x:I

    sget v4, Lcom/cootek/smartinput5/engine/ClipboardBackend;->CLIP_BOARD_EXPANDED_SLOT:I

    sub-int v3, v2, v3

    if-lt v0, v3, :cond_0

    if-eq v2, v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private selectClipboardTab(I)V
    .locals 2

    iget v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->mCurrentClipboardTab:I

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/ClipboardView;->updateClipboardTabs()V

    return-void

    :cond_0
    iput p1, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->mCurrentClipboardTab:I

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/ClipboardView;->updateClipboardTabs()V

    :try_start_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/ClipboardView;->u()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private t()V
    .locals 6

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x1ba

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getInstance()Lcom/cootek/smartinput5/engine/ClipboardBackend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getLockedClipQueue()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getInstance()Lcom/cootek/smartinput5/engine/ClipboardBackend;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getUnlockedClipQueue()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v3, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getInstance()Lcom/cootek/smartinput5/engine/ClipboardBackend;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->deleteClipBoardItem(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->s:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getInstance()Lcom/cootek/smartinput5/engine/ClipboardBackend;

    move-result-object v4

    iget-object v5, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->s:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->addNewItem(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getInstance()Lcom/cootek/smartinput5/engine/ClipboardBackend;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->lockClipBoardItem(IZ)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getInstance()Lcom/cootek/smartinput5/engine/ClipboardBackend;

    move-result-object v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cootek/smartinput5/engine/ClipBoardItem;

    iget-object v5, v5, Lcom/cootek/smartinput5/engine/ClipBoardItem;->text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->addNewItem(Ljava/lang/CharSequence;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getInstance()Lcom/cootek/smartinput5/engine/ClipboardBackend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->update()V

    :cond_3
    return-void
.end method

.method private tryAddLatestScreenshot()V
    .locals 14

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x284

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->l:Landroid/content/Context;

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getInstance()Lcom/cootek/smartinput5/engine/ClipboardBackend;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-wide v3, v2, Lcom/cootek/smartinput5/engine/ClipboardBackend;->mScreenshotBaselineTime:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v3, v3, v5

    const-wide/16 v5, 0x3c

    sub-long v3, v3, v5

    iput-wide v3, v2, Lcom/cootek/smartinput5/engine/ClipboardBackend;->mScreenshotBaselineTime:J

    :cond_0
    iget-wide v5, v2, Lcom/cootek/smartinput5/engine/ClipboardBackend;->mLastImportedScreenshotTime:J

    cmp-long v7, v5, v3

    if-lez v7, :cond_1

    move-wide v3, v5

    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const-string v10, "_id"

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const-string v10, "_data"

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const-string v10, "date_added"

    const/4 v11, 0x2

    aput-object v10, v9, v11

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "date_added ASC, _id ASC"

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "_id"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "_data"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "date_added"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    if-ltz v7, :cond_6

    if-ltz v8, :cond_6

    if-ltz v9, :cond_6

    :cond_2
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "screenshot"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v10, v5, v3

    if-lez v10, :cond_5

    invoke-virtual {v2}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->isClipboardLocked()Z

    move-result v10

    if-eqz v10, :cond_3

    iput-wide v5, v2, Lcom/cootek/smartinput5/engine/ClipboardBackend;->mScreenshotBaselineTime:J

    goto :goto_0

    :cond_3
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    sget-object v12, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getItemIndexByShortcut(Ljava/lang/CharSequence;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_4

    iput-wide v5, v2, Lcom/cootek/smartinput5/engine/ClipboardBackend;->mLastImportedScreenshotTime:J

    goto :goto_0

    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "image:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v2, v10, v11, v12}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->saveClipBoardItem(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    iput-wide v5, v2, Lcom/cootek/smartinput5/engine/ClipboardBackend;->mLastImportedScreenshotTime:J

    :cond_5
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_2

    :cond_6
    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/ClipboardView;->closeCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/ClipboardView;->closeCursor(Landroid/database/Cursor;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private u()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getInstance()Lcom/cootek/smartinput5/engine/ClipboardBackend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->readClipBoardItems()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->m:Ljava/util/List;

    const/16 v8, 0x56

    iget v9, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->mCurrentClipboardTab:I

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    sget v2, Lcom/cootek/smartinput5/engine/ClipboardBackend;->clipboardSlotNum:I

    if-ge v1, v2, :cond_5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cootek/smartinput5/engine/ClipBoardItem;

    iget-boolean v10, v2, Lcom/cootek/smartinput5/engine/ClipBoardItem;->locked:Z

    if-nez v9, :cond_0

    if-nez v10, :cond_4

    goto :goto_1

    :cond_0
    if-eqz v10, :cond_4

    :goto_1
    iget-object v3, v2, Lcom/cootek/smartinput5/engine/ClipBoardItem;->text:Ljava/lang/String;

    iget-object v4, v2, Lcom/cootek/smartinput5/engine/ClipBoardItem;->shortcut:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "image:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "content://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "text"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "full_text"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "is_image"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, v2, Lcom/cootek/smartinput5/engine/ClipBoardItem;->locked:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "islocked"

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "short_key"

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "backend_index"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->m:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v7, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_3

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    const-string v6, "text"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "full_text"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "is_image"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, v2, Lcom/cootek/smartinput5/engine/ClipBoardItem;->locked:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "islocked"

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "short_key"

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "backend_index"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->m:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    const v0, 0x7f0a0098

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->o:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$o;)V

    new-instance v0, Lcom/cootek/smartinput5/ui/q0/f;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->l:Landroid/content/Context;

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->m:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cootek/smartinput5/ui/q0/f;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->p:Lcom/cootek/smartinput5/ui/q0/f;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$g;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->r:Lcom/cootek/smartinput5/ui/J/c;

    if-nez v0, :cond_6

    new-instance v0, Lcom/cootek/smartinput5/ui/J/c;

    new-instance v1, Lcom/cootek/smartinput5/ui/J/a/a;

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v1, v2}, Lcom/cootek/smartinput5/ui/J/a/a;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    new-instance v2, Lcom/cootek/smartinput5/ui/ClipboardView$a;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/ui/ClipboardView$a;-><init>(Lcom/cootek/smartinput5/ui/ClipboardView;)V

    invoke-direct {v0, v1, v2}, Lcom/cootek/smartinput5/ui/J/c;-><init>(Lcom/cootek/smartinput5/ui/J/a/b;Lcom/cootek/smartinput5/ui/J/c$e;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->r:Lcom/cootek/smartinput5/ui/J/c;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_6
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->o:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->r:Lcom/cootek/smartinput5/ui/J/c;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/ui/J/c;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$s;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->q:Lcom/cootek/smartinput5/ui/J/d;

    if-nez v0, :cond_7

    new-instance v0, Lcom/cootek/smartinput5/ui/J/d;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->l:Landroid/content/Context;

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->o:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/cootek/smartinput5/ui/ClipboardView$b;

    invoke-direct {v3, p0}, Lcom/cootek/smartinput5/ui/ClipboardView$b;-><init>(Lcom/cootek/smartinput5/ui/ClipboardView;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/cootek/smartinput5/ui/J/d;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lcom/cootek/smartinput5/ui/J/b;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->q:Lcom/cootek/smartinput5/ui/J/d;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->o:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->m(Landroid/support/v7/widget/RecyclerView$r;)V

    :cond_7
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/ClipboardView;->initClipboardTabs()V

    return-void
.end method

.method private updateClipboardTabs()V
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->mClipboardTabAll:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->mClipboardTabLocked:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->mCurrentClipboardTab:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->mClipboardTabLocked:Landroid/widget/TextView;

    const-string v1, "\ud83d\udccc"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->mClipboardTabLocked:Landroid/widget/TextView;

    const-string v1, "\u2795"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->mCurrentClipboardTab:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->mClipboardTabAll:Landroid/widget/TextView;

    const v1, -0x19191a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->mClipboardTabAll:Landroid/widget/TextView;

    const v1, 0x33ffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->mClipboardTabLocked:Landroid/widget/TextView;

    const v1, -0x7f7f80

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->mClipboardTabLocked:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->mClipboardTabLocked:Landroid/widget/TextView;

    const v1, -0x19191a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->mClipboardTabLocked:Landroid/widget/TextView;

    const v1, 0x33ffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->mClipboardTabAll:Landroid/widget/TextView;

    const v1, -0x7f7f80

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->mClipboardTabAll:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :goto_1
    invoke-static {}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getInstance()Lcom/cootek/smartinput5/engine/ClipboardBackend;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->isClipboardLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->mClipboardTabLocked:Landroid/widget/TextView;

    const v1, 0x7f0f0b89

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method

.method private v()V
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Lcom/cootek/smartinput5/func/i0;->b0(II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private w(I)V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->l:Landroid/content/Context;

    const-class v2, Lcom/cootek/smartinput5/ui/settings/EditShortcutDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "short_key"

    const-string v2, "text"

    const-string v3, ""

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/ClipboardView;->getDataOffset()I

    move-result v4

    sub-int v4, p1, v4

    if-ltz v4, :cond_3

    iget-object v5, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->m:Ljava/util/List;

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "is_image"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/lang/Boolean;

    if-eqz v7, :cond_0

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    return-void

    :cond_0
    const-string v6, "full_text"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_1

    move-object v3, v6

    goto :goto_0

    :cond_1
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    :goto_0
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    const-string v4, "backend_index"

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_1

    :cond_2
    const/4 v7, -0x1

    invoke-static {}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getInstance()Lcom/cootek/smartinput5/engine/ClipboardBackend;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4, v3}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getItemIndex(Ljava/lang/CharSequence;)I

    move-result v7

    goto :goto_1

    :cond_3
    const-string v3, ""

    const-string v6, ""

    const/4 v7, -0x1

    :cond_4
    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    if-ltz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_2

    :cond_5
    add-int/lit8 v7, v7, 0x1

    :goto_2
    const-string v1, "position"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->l:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public A()V
    .locals 5

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/ClipboardView;->t()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/func/smileypanel/widget/q;->s(Landroid/content/Context;)Lcom/cootek/smartinput5/func/smileypanel/widget/q;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/cootek/smartinput5/func/smileypanel/widget/q;->q(Landroid/content/Context;Lcom/squareup/picasso/z;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v0

    const v1, 0x7f0a00c8

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->n:Landroid/widget/ImageView;

    sget-object v1, Lcom/cootek/smartinput5/ui/RendingColorPosition;->SOFTSMILEYDRWER_CLIP_BACK_ICON:Lcom/cootek/smartinput5/ui/RendingColorPosition;

    const v2, 0x7f080213

    invoke-virtual {v0, v2, v1}, Lcom/cootek/smartinput5/func/i0;->V(ILcom/cootek/smartinput5/ui/RendingColorPosition;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->n:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0603d0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/i0;->x(I)I

    move-result v1

    const v2, 0x7f0603d2

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/func/i0;->x(I)I

    move-result v0

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->n:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->l:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4, v1, v0}, Lcom/cootek/smartinput5/func/smileypanel/widget/f;->i(Landroid/content/Context;Lcom/cootek/smartinput5/func/smileypanel/widget/c;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/ClipboardView;->enlargeClipboardBackButton()V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->n:Landroid/widget/ImageView;

    new-instance v1, Lcom/cootek/smartinput5/ui/ClipboardView$c;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/ui/ClipboardView$c;-><init>(Lcom/cootek/smartinput5/ui/ClipboardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/cootek/smartinput5/ui/ClipboardView$dragListener;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/ui/ClipboardView$dragListener;-><init>(Lcom/cootek/smartinput5/ui/ClipboardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lcom/cootek/smartinput5/ui/ClipboardView$positionRestorer;

    invoke-direct {v1, p0, v0}, Lcom/cootek/smartinput5/ui/ClipboardView$positionRestorer;-><init>(Lcom/cootek/smartinput5/ui/ClipboardView;Landroid/widget/ImageView;)V

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object v0

    const-string v1, "CLIPBOARD_ENTRANCE"

    const-string v2, "clipboard_launch"

    const-string v3, "/UI/"

    invoke-virtual {v0, v1, v2, v3}, Lcom/cootek/smartinput5/l/g;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public B()V
    .locals 0

    return-void
.end method

.method public a(II)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d(I)V
    .locals 9

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/ui/ClipboardView;->getDataIndexForAdapterPosition(I)I

    move-result p1

    if-ltz p1, :cond_b

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->m:Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_b

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "backend_index"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_0

    :cond_0
    const/4 v8, -0x1

    :goto_0
    const-string v1, "full_text"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "text"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :cond_1
    const-string v2, "short_key"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "image:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getInstance()Lcom/cootek/smartinput5/engine/ClipboardBackend;

    move-result-object v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v4, :cond_2

    iget-object v3, v4, Lcom/cootek/smartinput5/engine/ClipboardBackend;->mIgnoredImageUris:Ljava/util/HashSet;

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v4, :cond_6

    if-ltz v8, :cond_3

    invoke-virtual {v4, v8}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->deleteClipBoardItem(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v1}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getItemIndex(Ljava/lang/CharSequence;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_4

    invoke-virtual {v4, v3}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->deleteClipBoardItem(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getDbHelper()Lcom/cootek/smartinput5/engine/ClipboardDbHelper;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/cootek/smartinput5/engine/ClipboardDbHelper;->deleteItem(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->update()V

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->deleteLocalImage(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/ClipboardView;->z()V

    goto :goto_3

    :cond_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getInstance()Lcom/cootek/smartinput5/engine/ClipboardBackend;

    move-result-object v3

    if-eqz v3, :cond_9

    if-ltz v8, :cond_8

    invoke-virtual {v3, v8}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->deleteClipBoardItem(I)V

    goto :goto_2

    :cond_8
    invoke-virtual {v3, v1}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getItemIndex(Ljava/lang/CharSequence;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_9

    invoke-virtual {v3, v4}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->deleteClipBoardItem(I)V

    :cond_9
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/smartinput5/func/z;->m0()Lcom/cootek/smartinput5/engine/Okinawa;

    move-result-object v3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/cootek/smartinput5/clipboard/ShortcutAliases;->delete(Lcom/cootek/smartinput5/engine/Okinawa;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/smartinput5/engine/Engine;->processEvent()V

    :cond_a
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/ClipboardView;->z()V

    :cond_b
    :goto_3
    return-void
.end method

.method public f(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/ClipboardView;->v()V

    return-void
.end method

.method public g(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/ClipboardView;->v()V

    return-void
.end method

.method public getBackendIndexForClick(I)I
    .locals 5

    const/4 v0, -0x1

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/ui/ClipboardView;->getDataIndexForAdapterPosition(I)I

    move-result v1

    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->m:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "backend_index"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_3

    :cond_0
    const-string v3, "full_text"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v3, "text"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getInstance()Lcom/cootek/smartinput5/engine/ClipboardBackend;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getItemIndex(Ljava/lang/CharSequence;)I

    move-result v0

    if-gez v0, :cond_3

    :cond_2
    const-string v3, "short_key"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getInstance()Lcom/cootek/smartinput5/engine/ClipboardBackend;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, v2}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getItemIndexByShortcut(Ljava/lang/CharSequence;)I

    move-result v0

    :cond_3
    return v0
.end method

.method public getCurrentClipboardTab()I
    .locals 1

    iget v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->mCurrentClipboardTab:I

    return v0
.end method

.method public getDataIndexForAdapterPosition(I)I
    .locals 4

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/ClipboardView;->getDataOffset()I

    move-result v0

    sub-int v0, p1, v0

    const/4 v1, -0x1

    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->m:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method public getDataOffset()I
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->p:Lcom/cootek/smartinput5/ui/q0/f;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->m:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/q0/f;->c()I

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gt v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayHeight()I
    .locals 5

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->y()Lcom/cootek/smartinput5/ui/SoftKeyboardView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/ui/SoftKeyboardView;->getKeyboard()Lcom/cootek/smartinput5/ui/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/ui/W;->q()I

    move-result v1

    iget v2, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->h:I

    if-eq v2, v1, :cond_0

    iput v1, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->h:I

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->k:Landroid/content/res/TypedArray;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Lcom/cootek/smartinput5/ui/control/n;->b(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->j:I

    :cond_0
    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->O()Lcom/cootek/smartinput5/ui/control/r;

    move-result-object v0

    iget v1, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->j:I

    int-to-double v1, v1

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/control/r;->t()D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayWidth()I
    .locals 5

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->O()Lcom/cootek/smartinput5/ui/control/r;

    move-result-object v0

    iget v1, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->i:I

    int-to-double v1, v1

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/control/r;->J()D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public h(I)V
    .locals 0

    return-void
.end method

.method public i(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/ClipboardView;->v()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->mClipboardTabAll:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/ClipboardView;->selectClipboardTab(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->mClipboardTabLocked:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->mCurrentClipboardTab:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/ClipboardView;->selectClipboardTab(I)V

    return-void

    :cond_1
    const-string v0, "ADD"

    invoke-static {p0, v0}, Lcom/cootek/smartinput5/ui/ClipboardView;->j(Lcom/cootek/smartinput5/ui/ClipboardView;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/ClipboardView;->w(I)V

    :cond_2
    return-void
.end method

.method public showPinnedTab()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/ClipboardView;->selectClipboardTab(I)V

    return-void
.end method

.method public x()V
    .locals 3

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/ClipboardView;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f0344

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object v1

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->l:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/cootek/smartinput5/ui/control/E;->w(Ljava/lang/String;Z)V

    const/16 v0, 0x146

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    :cond_0
    return-void
.end method

.method public y()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->r:Lcom/cootek/smartinput5/ui/J/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/J/c;->k()Z

    :cond_0
    return-void
.end method

.method public z()V
    .locals 15

    invoke-static {}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getInstance()Lcom/cootek/smartinput5/engine/ClipboardBackend;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/ClipboardView;->tryAddLatestScreenshot()V

    :try_start_0
    iget-object v1, p0, Lcom/cootek/smartinput5/ui/ClipboardView;->l:Landroid/content/Context;

    if-eqz v1, :cond_4

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-lez v3, :cond_4

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v6

    if-eqz v6, :cond_4

    const-string v7, "image/*"

    invoke-virtual {v6, v7}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->isClipboardLocked()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v0, Lcom/cootek/smartinput5/engine/ClipboardBackend;->mIgnoredImageUris:Ljava/util/HashSet;

    if-eqz v7, :cond_4

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v7, v0, Lcom/cootek/smartinput5/engine/ClipboardBackend;->mIgnoredImageUris:Ljava/util/HashSet;

    if-eqz v7, :cond_2

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v6}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->getItemIndexByShortcut(Ljava/lang/CharSequence;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v9

    const/16 v10, 0x284

    invoke-virtual {v9, v10}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v0, v6}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->copyImageToLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "image:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v6, v8}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->saveClipBoardItem(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/ClipboardView;->u()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :try_start_1
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/ClipboardView;->u()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
