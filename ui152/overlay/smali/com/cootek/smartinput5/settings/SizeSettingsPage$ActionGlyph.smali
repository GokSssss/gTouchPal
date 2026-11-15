.class final Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;
.super Landroid/graphics/drawable/Drawable;
.source "SizeSettingsPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput5/settings/SizeSettingsPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActionGlyph"
.end annotation


# instance fields
.field private final action:Ljava/lang/String;

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 672
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 671
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->path:Landroid/graphics/Path;

    .line 672
    iput-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->action:Ljava/lang/String;

    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->paint:Landroid/graphics/Paint;

    const p2, 0x3fe66666    # 1.8f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 16

    .line 674
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v2, v4

    sub-float/2addr v3, v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v5

    invoke-virtual {v7, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x41c00000    # 24.0f

    div-float/2addr v2, v1

    invoke-virtual {v7, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v1, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 675
    const-string v1, "language"

    iget-object v2, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v9, 0x41a80000    # 21.0f

    const/high16 v10, 0x41800000    # 16.0f

    const/high16 v11, 0x41000000    # 8.0f

    const/high16 v12, 0x40400000    # 3.0f

    const/high16 v13, 0x41400000    # 12.0f

    const/high16 v14, 0x41100000    # 9.0f

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v13, v13, v14, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v5, 0x41400000    # 12.0f

    iget-object v6, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x41400000    # 12.0f

    const/high16 v4, 0x41a80000    # 21.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v11, v12, v10, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 676
    :cond_0
    const-string v1, "clipboard"

    iget-object v2, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x40e00000    # 7.0f

    if-eqz v1, :cond_1

    new-instance v1, Landroid/graphics/RectF;

    const/high16 v3, 0x41980000    # 19.0f

    const/high16 v5, 0x41b00000    # 22.0f

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-direct {v1, v6, v6, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4, v4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v11, v4, v10, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v7, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/high16 v5, 0x41300000    # 11.0f

    iget-object v6, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x41000000    # 8.0f

    const/high16 v3, 0x41300000    # 11.0f

    const/high16 v4, 0x41800000    # 16.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v5, 0x41700000    # 15.0f

    iget-object v6, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v5, 0x41980000    # 19.0f

    iget-object v6, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x41980000    # 19.0f

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 677
    :cond_1
    const-string v1, "editor"

    iget-object v3, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->action:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v10, 0x41700000    # 15.0f

    if-eqz v1, :cond_2

    const/high16 v5, 0x41a00000    # 20.0f

    iget-object v6, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x41400000    # 12.0f

    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v4, 0x41400000    # 12.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v5, 0x40800000    # 4.0f

    iget-object v6, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x41100000    # 9.0f

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v5, 0x41a00000    # 20.0f

    iget-object v6, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->path:Landroid/graphics/Path;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-virtual {v1, v2, v14}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v10}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->path:Landroid/graphics/Path;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v1, v2, v14}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v9, v13}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v10}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->path:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 678
    :cond_2
    const-string v1, "emoji"

    iget-object v3, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->action:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v13, v13, v14, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v14, v14, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v10, v14, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    new-instance v3, Landroid/graphics/RectF;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-direct {v3, v2, v14, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x41a00000    # 20.0f

    const/high16 v9, 0x430c0000    # 140.0f

    move-object/from16 v1, p1

    move-object v2, v3

    move v3, v4

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 679
    :cond_3
    const-string v1, "undo"

    iget-object v3, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->action:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->path:Landroid/graphics/Path;

    const/high16 v3, 0x41300000    # 11.0f

    invoke-virtual {v1, v12, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v10}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v12, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->path:Landroid/graphics/Path;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v9, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->path:Landroid/graphics/Path;

    const/high16 v14, 0x41600000    # 14.0f

    const/high16 v15, 0x41a80000    # 21.0f

    const/high16 v10, 0x41b00000    # 22.0f

    const/high16 v11, 0x41300000    # 11.0f

    const/high16 v12, 0x41b00000    # 22.0f

    const/high16 v13, 0x41a80000    # 21.0f

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v1, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->path:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 680
    :cond_4
    const/high16 v5, 0x41400000    # 12.0f

    iget-object v6, v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x40e00000    # 7.0f

    const/high16 v3, 0x41400000    # 12.0f

    const/high16 v4, 0x41880000    # 17.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 681
    :goto_0
    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 682
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 684
    const/16 v0, 0x18

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 684
    const/16 v0, 0x18

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 683
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;->invalidateSelf()V

    return-void
.end method
