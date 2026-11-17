.class final Lcom/cootek/smartinput5/backup/BackupActivity$Segment;
.super Landroid/widget/Button;
.source "BackupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput5/backup/BackupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Segment"
.end annotation


# instance fields
.field final icon:I

.field final ink:Landroid/graphics/Paint;

.field private pressedUntil:J

.field final strip:Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;

.field private working:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;Ljava/lang/String;I)V
    .locals 5

    .line 164
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 162
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->ink:Landroid/graphics/Paint;

    .line 164
    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->strip:Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;

    iput p4, p0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->icon:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->setAllCaps(Z)V

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->setTextSize(F)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->setGravity(I)V

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->setPadding(IIII)V

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->setMinHeight(I)V

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->setMinimumHeight(I)V

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->setMinWidth(I)V

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->setMinimumWidth(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->setMaxLines(I)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    new-instance v1, Landroid/content/res/ColorStateList;

    const v2, -0x101009e

    filled-new-array {v2}, [I

    move-result-object v2

    new-array v3, p1, [I

    const/4 v4, 0x2

    new-array v4, v4, [[I

    aput-object v2, v4, p1

    aput-object v3, v4, v0

    iget p1, p2, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->surface:I

    iget v0, p2, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->text:I

    const v2, 0x3ecccccd    # 0.4f

    invoke-static {p1, v0, v2}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->mix(IIF)I

    move-result p1

    iget p2, p2, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->text:I

    filled-new-array {p1, p2}, [I

    move-result-object p1

    invoke-direct {v1, v4, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 166
    invoke-virtual {p0, p3}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->setContentDescription(Ljava/lang/CharSequence;)V

    if-nez p4, :cond_0

    invoke-virtual {p0, p3}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :cond_0
    if-eqz p4, :cond_1

    new-instance p1, Lcom/cootek/smartinput5/backup/BackupActivity$Segment$1;

    invoke-direct {p1, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment$1;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity$Segment;)V

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 171
    :cond_1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    .line 181
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->working:Z

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->isPressed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->isFocused()Z

    move-result v3

    if-nez v3, :cond_0

    iget-wide v3, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->pressedUntil:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    :cond_0
    iget-object v3, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->strip:Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;

    iget v3, v3, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->surface:I

    iget-object v4, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->strip:Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;

    iget v4, v4, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->accent:I

    const v5, 0x3e99999a    # 0.3f

    invoke-static {v3, v4, v5}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->mix(IIF)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 183
    :cond_1
    iget-boolean v3, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->working:Z

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, 0x40400000    # 3.0f

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->ink:Landroid/graphics/Paint;

    iget-object v4, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->strip:Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;

    iget v4, v4, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->accent:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->ink:Landroid/graphics/Paint;

    iget-object v4, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->strip:Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;

    iget v4, v4, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->density:F

    mul-float v4, v4, v8

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float v3, v3, v4

    const-wide/16 v4, 0x384

    rem-long/2addr v1, v4

    long-to-float v1, v1

    const/high16 v2, 0x44610000    # 900.0f

    div-float/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    mul-float v1, v1, v2

    sub-float/2addr v1, v3

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->strip:Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;

    iget v5, v5, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->density:F

    mul-float v5, v5, v9

    sub-float/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v3

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->strip:Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;

    iget v3, v3, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->density:F

    mul-float v3, v3, v9

    sub-float v6, v1, v3

    iget-object v10, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->ink:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const-wide/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->postInvalidateDelayed(J)V

    goto :goto_0

    .line 184
    :cond_2
    iget-wide v3, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->pressedUntil:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_3

    iget-wide v3, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->pressedUntil:J

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->postInvalidateDelayed(J)V

    .line 185
    :cond_3
    :goto_0
    iget v1, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->icon:I

    if-nez v1, :cond_4

    invoke-super/range {p0 .. p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 186
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->strip:Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;

    iget v1, v1, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->density:F

    const/high16 v2, 0x41b00000    # 22.0f

    mul-float v1, v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    div-float/2addr v2, v8

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    div-float/2addr v3, v8

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, 0x41c00000    # 24.0f

    div-float/2addr v1, v2

    invoke-virtual {v7, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 187
    iget-object v1, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->ink:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->getCurrentTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->ink:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->ink:Landroid/graphics/Paint;

    const v2, 0x3fe66666    # 1.8f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->ink:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->ink:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 188
    iget v1, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->icon:I

    const/4 v2, 0x1

    const/high16 v8, 0x41980000    # 19.0f

    const/high16 v10, 0x40a00000    # 5.0f

    const/high16 v11, 0x41900000    # 18.0f

    const/high16 v12, 0x40800000    # 4.0f

    const/high16 v13, 0x40c00000    # 6.0f

    const/high16 v14, 0x41a00000    # 20.0f

    const/high16 v15, 0x41a80000    # 21.0f

    if-ne v1, v2, :cond_5

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v1, v9, v13}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v1, v9, v12, v10, v12}, Landroid/graphics/Path;->quadTo(FFFF)V

    const/high16 v2, 0x41100000    # 9.0f

    invoke-virtual {v1, v2, v12}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {v1, v2, v13}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v1, v8, v13}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v1, v15, v13, v15, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {v1, v15, v11}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v1, v15, v14, v8, v14}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {v1, v10, v14}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v1, v9, v14, v9, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v2, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->ink:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 189
    :cond_5
    iget v1, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->icon:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    const/high16 v5, 0x41800000    # 16.0f

    iget-object v6, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->ink:Landroid/graphics/Paint;

    const/high16 v2, 0x41400000    # 12.0f

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v4, 0x41400000    # 12.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v6, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->ink:Landroid/graphics/Paint;

    const/high16 v2, 0x40e00000    # 7.0f

    const/high16 v3, 0x41300000    # 11.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v6, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->ink:Landroid/graphics/Paint;

    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v1, v12, v2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v1, v12, v15}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v1, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v1, v14, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->ink:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 190
    :cond_6
    const v5, 0x40c9999a    # 6.3f

    iget-object v6, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->ink:Landroid/graphics/Paint;

    const v2, 0x41033333    # 8.2f

    const v3, 0x412b3333    # 10.7f

    const v4, 0x417ccccd    # 15.8f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v5, 0x418d999a    # 17.7f

    iget-object v6, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->ink:Landroid/graphics/Paint;

    const v3, 0x4154cccd    # 13.3f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->ink:Landroid/graphics/Paint;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-virtual {v7, v11, v10, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x41400000    # 12.0f

    iget-object v3, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->ink:Landroid/graphics/Paint;

    invoke-virtual {v7, v13, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->ink:Landroid/graphics/Paint;

    invoke-virtual {v7, v11, v8, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 191
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 192
    return-void
.end method

.method public performClick()Z
    .locals 4

    .line 174
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/cootek/smartinput5/backup/BackupActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 175
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1000(Lcom/cootek/smartinput5/backup/BackupActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    return v0

    .line 176
    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v0, p0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1702(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/BackupActivity$Segment;)Lcom/cootek/smartinput5/backup/BackupActivity$Segment;

    .line 177
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xb4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->pressedUntil:J

    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->invalidate()V

    invoke-virtual {p0, v2, v3}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->postInvalidateDelayed(J)V

    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    return v0
.end method

.method public setPressed(Z)V
    .locals 4

    .line 172
    invoke-super {p0, p1}, Landroid/widget/Button;->setPressed(Z)V

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xb4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->pressedUntil:J

    :cond_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->invalidate()V

    return-void
.end method

.method working(Z)V
    .locals 0

    .line 179
    iput-boolean p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->working:Z

    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->invalidate()V

    return-void
.end method
