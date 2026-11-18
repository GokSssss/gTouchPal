.class final Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;
.super Landroid/widget/LinearLayout;
.source "BackupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput5/backup/BackupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActionStrip"
.end annotation


# instance fields
.field final accent:I

.field final bounds:Landroid/graphics/RectF;

.field final clip:Landroid/graphics/Path;

.field final density:F

.field final fill:I

.field final line:I

.field final paint:Landroid/graphics/Paint;

.field final separator:I

.field final surface:I

.field final text:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 212
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 210
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->bounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->clip:Landroid/graphics/Path;

    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->setOrientation(I)V

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->density:F

    .line 213
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "option_dark_theme"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 214
    if-eqz v2, :cond_0

    const v3, -0xdededf

    goto :goto_0

    :cond_0
    const v3, -0x50506

    :goto_0
    if-eqz v2, :cond_1

    const v2, -0xa0a0b

    goto :goto_1

    :cond_1
    const v2, -0xdfdfe0

    .line 215
    :goto_1
    nop

    .line 216
    const v4, -0xb64d18

    const/4 v5, 0x0

    const v6, 0x1010031

    const v7, 0x1010036

    const v8, 0x101009b

    const v9, 0x1010435

    :try_start_0
    filled-new-array {v6, v7, v8, v9}, [I

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    const/4 p1, 0x1

    invoke-virtual {v5, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    const/4 p1, 0x2

    invoke-virtual {v5, p1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {v5, v1, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    if-eqz v5, :cond_3

    :goto_2
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :catchall_0
    move-exception p1

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    throw p1

    .line 217
    :catch_0
    move-exception p1

    .line 218
    if-eqz v5, :cond_3

    goto :goto_2

    .line 219
    :cond_3
    :goto_3
    const/high16 p1, -0x1000000

    or-int/2addr p1, v3

    iput p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->surface:I

    iput v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->text:I

    iput v4, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->accent:I

    iget p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->surface:I

    iget v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->text:I

    const v1, 0x3e851eb8    # 0.26f

    invoke-static {p1, v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->mix(IIF)I

    move-result p1

    iput p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->line:I

    iget p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->surface:I

    iget v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->text:I

    const v1, 0x3eeb851f    # 0.46f

    invoke-static {p1, v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->mix(IIF)I

    move-result p1

    iput p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->separator:I

    iget p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->surface:I

    iget v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->text:I

    const v1, 0x3d6147ae    # 0.055f

    invoke-static {p1, v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->mix(IIF)I

    move-result p1

    iput p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->fill:I

    .line 220
    return-void
.end method

.method static mix(IIF)I
    .locals 4

    .line 221
    ushr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    mul-float v0, v0, v1

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float v2, v2, p2

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float v2, v2, v1

    ushr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-float p0, p0

    mul-float p0, p0, v1

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method private shape()V
    .locals 5

    .line 223
    iget v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->density:F

    const v1, 0x3f19999a    # 0.6f

    mul-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->clip:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->clip:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 226
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->shape()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->clip:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 227
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->density:F

    const v2, 0x3f19999a    # 0.6f

    mul-float v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->line:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->clip:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 228
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->separator:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->density:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 229
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v5, v1

    iget v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->density:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float v4, v1, v2

    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->density:F

    mul-float v3, v3, v2

    sub-float v6, v1, v3

    iget-object v7, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 224
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->shape()V

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->fill:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->clip:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method segment(Ljava/lang/String;I)Landroid/widget/Button;
    .locals 2

    .line 222
    new-instance v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;

    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;-><init>(Landroid/content/Context;Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;Ljava/lang/String;I)V

    return-object v0
.end method
