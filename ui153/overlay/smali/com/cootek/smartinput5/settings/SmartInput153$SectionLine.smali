.class final Lcom/cootek/smartinput5/settings/SmartInput153$SectionLine;
.super Landroid/graphics/drawable/Drawable;
.source "SmartInput153.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput5/settings/SmartInput153;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SectionLine"
.end annotation


# instance fields
.field final base:Landroid/graphics/drawable/Drawable;

.field final inset:F

.field final paint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 2

    .line 90
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/cootek/smartinput5/settings/SmartInput153$SectionLine;->paint:Landroid/graphics/Paint;

    .line 90
    iput-object p1, p0, Lcom/cootek/smartinput5/settings/SmartInput153$SectionLine;->base:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41600000    # 14.0f

    mul-float v0, v0, p1

    iput v0, p0, Lcom/cootek/smartinput5/settings/SmartInput153$SectionLine;->inset:F

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SmartInput153$SectionLine;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/cootek/smartinput5/settings/SettingsIcons149;->dark(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, -0xa4a4a5

    goto :goto_0

    :cond_0
    const p2, -0x424243

    :goto_0
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/cootek/smartinput5/settings/SmartInput153$SectionLine;->paint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 92
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SmartInput153$SectionLine;->base:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SmartInput153$SectionLine;->base:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SmartInput153$SectionLine;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/cootek/smartinput5/settings/SmartInput153$SectionLine;->inset:F

    add-float v4, v1, v2

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/cootek/smartinput5/settings/SmartInput153$SectionLine;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v5, v1, v2

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lcom/cootek/smartinput5/settings/SmartInput153$SectionLine;->inset:F

    sub-float v6, v1, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SmartInput153$SectionLine;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float/2addr v1, v3

    add-float v7, v0, v1

    iget-object v8, p0, Lcom/cootek/smartinput5/settings/SmartInput153$SectionLine;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 95
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SmartInput153$SectionLine;->base:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SmartInput153$SectionLine;->base:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SmartInput153$SectionLine;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SmartInput153$SectionLine;->base:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SmartInput153$SectionLine;->base:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SmartInput153$SectionLine;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SmartInput153$SectionLine;->base:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SmartInput153$SectionLine;->base:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method
