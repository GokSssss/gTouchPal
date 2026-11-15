.class final Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;
.super Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;
.source "SizeSettingsPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput5/settings/SizeSettingsPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActionChoiceButton"
.end annotation


# instance fields
.field private final density:F

.field private final glyph:Landroid/graphics/drawable/Drawable;

.field private final iconOnly:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;Ljava/lang/String;)V
    .locals 2

    .line 645
    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;-><init>(Landroid/content/Context;Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->density:F

    const-string p1, "undo"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->iconOnly:Z

    .line 646
    new-instance p1, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;

    const-string v0, "none"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget p2, p2, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->muted:I

    goto :goto_0

    :cond_0
    iget p2, p2, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->text:I

    :goto_0
    invoke-direct {p1, p3, p2}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->glyph:Landroid/graphics/drawable/Drawable;

    .line 647
    invoke-static {p3}, Lcom/cootek/smartinput5/settings/ToolbarConfig140;->label(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->setIncludeFontPadding(Z)V

    const/4 p1, 0x0

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->setLineSpacing(FF)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->setMaxLines(I)V

    .line 648
    iget-boolean p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->iconOnly:Z

    if-eqz p1, :cond_1

    const-string p1, ""

    goto :goto_1

    :cond_1
    const-string p1, "clipboard"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "\u0411\u0443\u0444\u0435\u0440\n\u043e\u0431\u043c\u0435\u043d\u0430"

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "\u041d\u0435 \u043f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c\n\u043a\u043d\u043e\u043f\u043a\u0443"

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lcom/cootek/smartinput5/settings/ToolbarConfig140;->label(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->setText(Ljava/lang/CharSequence;)V

    .line 649
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 665
    invoke-super {p0, p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 666
    iget-boolean v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->iconOnly:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x41b00000    # 22.0f

    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->density:F

    mul-float v1, v1, v0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x41000000    # 8.0f

    iget v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->density:F

    mul-float v3, v3, v2

    sub-float/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->glyph:Landroid/graphics/drawable/Drawable;

    add-int v4, v1, v0

    add-int/2addr v0, v2

    invoke-virtual {v3, v1, v2, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->glyph:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 667
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 651
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1c

    goto :goto_0

    :cond_0
    const/16 v0, 0x2c

    :goto_0
    int-to-float v0, v0

    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->density:F

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 652
    const/high16 v1, 0x41900000    # 18.0f

    iget v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->density:F

    mul-float v2, v2, v1

    int-to-float v1, p2

    const/high16 v3, 0x41000000    # 8.0f

    iget v4, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->density:F

    mul-float v4, v4, v3

    sub-float/2addr v1, v4

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float v1, v1, v4

    int-to-float v4, v0

    const/high16 v5, 0x40c00000    # 6.0f

    iget v6, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->density:F

    mul-float v6, v6, v5

    sub-float/2addr v4, v6

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 653
    iget-boolean v4, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->iconOnly:Z

    if-nez v4, :cond_2

    .line 654
    iget-object v4, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->glyph:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->glyph:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6, v6, v6}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/high16 v4, 0x40800000    # 4.0f

    iget v6, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->density:F

    mul-float v6, v6, v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->setCompoundDrawablePadding(I)V

    .line 655
    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v6, 0x41600000    # 14.0f

    mul-float v4, v4, v6

    invoke-virtual {p0, v5, v4}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->setTextSize(IF)V

    .line 656
    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v10, v6, v8

    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 657
    :cond_1
    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->getPaddingLeft()I

    move-result v7

    sub-int/2addr p2, v7

    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->getPaddingRight()I

    move-result v7

    sub-int/2addr p2, v7

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->getCompoundDrawablePadding()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    .line 658
    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->getPaddingTop()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v1, v7

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    .line 659
    div-float/2addr p2, v9

    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontSpacing()F

    move-result v2

    array-length v6, v6

    int-to-float v6, v6

    mul-float v2, v2, v6

    div-float/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 660
    mul-float v4, v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-virtual {p0, v5, p2}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;->setTextSize(IF)V

    .line 662
    :cond_2
    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->onMeasure(II)V

    .line 663
    return-void
.end method
