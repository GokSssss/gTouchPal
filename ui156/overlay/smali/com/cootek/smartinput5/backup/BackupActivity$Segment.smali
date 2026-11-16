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

.field final strip:Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;Ljava/lang/String;I)V
    .locals 5

    .line 119
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 117
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->ink:Landroid/graphics/Paint;

    .line 119
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

    .line 120
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

    .line 121
    invoke-virtual {p0, p3}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->setContentDescription(Ljava/lang/CharSequence;)V

    if-nez p4, :cond_0

    invoke-virtual {p0, p3}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 124
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->strip:Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;

    iget v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->surface:I

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->strip:Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;

    iget v1, v1, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->accent:I

    const v2, 0x3e3851ec    # 0.18f

    invoke-static {v0, v1, v2}, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->mix(IIF)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 125
    :cond_1
    iget v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->icon:I

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 126
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->strip:Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;

    iget v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;->density:F

    const/high16 v1, 0x41b00000    # 22.0f

    mul-float v0, v0, v1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    div-float/2addr v3, v2

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x41c00000    # 24.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 127
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->ink:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->ink:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->ink:Landroid/graphics/Paint;

    const v1, 0x3fe66666    # 1.8f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->ink:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->ink:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 128
    iget v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->icon:I

    const/4 v1, 0x1

    const/high16 v6, 0x41980000    # 19.0f

    const/high16 v7, 0x40a00000    # 5.0f

    const/high16 v8, 0x41900000    # 18.0f

    const/high16 v9, 0x40c00000    # 6.0f

    if-ne v0, v1, :cond_3

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1, v9}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v0, v1, v2, v7, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    const/high16 v3, 0x41100000    # 9.0f

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {v0, v2, v9}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x41000000    # 8.0f

    const/high16 v3, 0x41a80000    # 21.0f

    invoke-virtual {v0, v3, v9, v3, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {v0, v3, v8}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v3, v2, v6, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {v0, v7, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v1, v2, v1, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->ink:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 129
    :cond_3
    const v4, 0x40c9999a    # 6.3f

    iget-object v5, p0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->ink:Landroid/graphics/Paint;

    const v1, 0x41033333    # 8.2f

    const v2, 0x412b3333    # 10.7f

    const v3, 0x417ccccd    # 15.8f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v4, 0x418d999a    # 17.7f

    iget-object v5, p0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->ink:Landroid/graphics/Paint;

    const v2, 0x4154cccd    # 13.3f

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->ink:Landroid/graphics/Paint;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-virtual {p1, v8, v7, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v0, 0x41400000    # 12.0f

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->ink:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->ink:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v6, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 130
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 131
    return-void
.end method
