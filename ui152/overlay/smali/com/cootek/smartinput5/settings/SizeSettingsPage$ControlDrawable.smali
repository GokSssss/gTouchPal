.class final Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SizeSettingsPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput5/settings/SizeSettingsPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ControlDrawable"
.end annotation


# static fields
.field static final CHECKBOX:I = 0x3

.field static final PROGRESS:I = 0x2

.field static final THUMB:I = 0x0

.field static final TRACK:I = 0x1


# instance fields
.field private alpha:I

.field private final density:F

.field private final kind:I

.field private final paint:Landroid/graphics/Paint;

.field private final theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;I)V
    .locals 2

    .line 777
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 775
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->paint:Landroid/graphics/Paint;

    .line 776
    const/16 v0, 0xff

    iput v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->alpha:I

    .line 778
    iput-object p2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

    iput p3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->kind:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->density:F

    .line 779
    return-void
.end method

.method private color(I)V
    .locals 2

    .line 800
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->paint:Landroid/graphics/Paint;

    ushr-int/lit8 p1, p1, 0x18

    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->alpha:I

    mul-int p1, p1, v1

    add-int/lit8 p1, p1, 0x7f

    div-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 785
    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 786
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 787
    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->kind:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

    iget v1, v1, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->line:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

    iget v1, v1, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->accent:I

    :goto_0
    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->color(I)V

    .line 788
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    .line 789
    iget v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->kind:I

    const/high16 v9, 0x40e00000    # 7.0f

    if-nez v3, :cond_1

    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->density:F

    mul-float v0, v0, v9

    iget-object v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 790
    :cond_1
    iget v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->kind:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 791
    const/high16 v0, 0x41800000    # 16.0f

    iget v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->density:F

    mul-float v3, v3, v0

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v3, v10

    sub-float v4, v1, v3

    sub-float v6, v5, v3

    add-float/2addr v1, v3

    add-float/2addr v3, v5

    invoke-direct {v0, v4, v6, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 792
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->paint:Landroid/graphics/Paint;

    const v3, 0x3fa66666    # 1.3f

    iget v4, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->density:F

    mul-float v4, v4, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 793
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

    iget v1, v1, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->line:I

    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->color(I)V

    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->density:F

    mul-float v1, v1, v10

    iget v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->density:F

    mul-float v3, v3, v10

    iget-object v4, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 794
    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->getState()[I

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget v7, v1, v4

    const v8, 0x10100a0

    if-ne v7, v8, :cond_2

    const/4 v6, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 795
    :cond_3
    if-eqz v6, :cond_4

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

    iget v1, v1, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->accent:I

    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->color(I)V

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->density:F

    mul-float v2, v2, v10

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 796
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->density:F

    const/high16 v11, 0x40400000    # 3.0f

    mul-float v2, v2, v11

    add-float v4, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->density:F

    mul-float v2, v2, v9

    add-float v6, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->density:F

    mul-float v2, v2, v11

    sub-float v7, v1, v2

    iget-object v8, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 797
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->density:F

    mul-float v2, v2, v9

    add-float v4, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->density:F

    mul-float v2, v2, v11

    sub-float v5, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->density:F

    mul-float v2, v2, v10

    sub-float v6, v1, v2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->density:F

    mul-float v1, v1, v11

    add-float v7, v0, v1

    iget-object v8, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 798
    :cond_4
    goto :goto_2

    :cond_5
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v7, v1

    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->density:F

    sub-float v8, v5, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v9, v0

    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->density:F

    add-float v10, v5, v0

    iget-object v11, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->paint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 799
    :goto_2
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 781
    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->kind:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/16 v0, 0x18

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->kind:I

    if-nez v0, :cond_1

    const/16 v0, 0x12

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    :goto_0
    int-to-float v0, v0

    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->density:F

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 780
    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->kind:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/16 v0, 0x18

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->kind:I

    if-nez v0, :cond_1

    const/16 v0, 0x12

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    int-to-float v0, v0

    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->density:F

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 803
    const/4 v0, -0x3

    return v0
.end method

.method public isStateful()Z
    .locals 2

    .line 782
    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->kind:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onStateChange([I)Z
    .locals 0

    .line 783
    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->invalidateSelf()V

    const/4 p1, 0x1

    return p1
.end method

.method public setAlpha(I)V
    .locals 0

    .line 801
    iput p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->alpha:I

    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;->invalidateSelf()V

    return-void
.end method
