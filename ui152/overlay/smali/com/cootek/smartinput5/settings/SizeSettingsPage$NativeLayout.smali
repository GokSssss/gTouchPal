.class final Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;
.super Landroid/view/ViewGroup;
.source "SizeSettingsPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput5/settings/SizeSettingsPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NativeLayout"
.end annotation


# instance fields
.field private final controls:Landroid/widget/ScrollView;

.field private final drag:Lcom/cootek/smartinput5/settings/SizeDrag134;

.field private final handleGap:I

.field private final keyboard:Lcom/cootek/smartinput5/settings/SizePreview;

.field private final minimumControls:I

.field private final mode:I

.field private targets:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/widget/ScrollView;Lcom/cootek/smartinput5/settings/SizePreview;Lcom/cootek/smartinput5/settings/SizeDrag134;ILcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;)V
    .locals 7

    .line 569
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->controls:Landroid/widget/ScrollView;

    iput-object p3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->keyboard:Lcom/cootek/smartinput5/settings/SizePreview;

    iput-object p4, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->drag:Lcom/cootek/smartinput5/settings/SizeDrag134;

    iput p5, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->mode:I

    .line 570
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 571
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 572
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 573
    :goto_0
    const/high16 v3, 0x41e00000    # 28.0f

    if-eqz v2, :cond_1

    mul-float v1, v0, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_1

    :cond_1
    const/high16 v2, 0x42800000    # 64.0f

    mul-float v2, v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/high16 v5, 0x42100000    # 36.0f

    mul-float v1, v1, v5

    const/high16 v5, 0x41200000    # 10.0f

    mul-float v5, v5, v0

    add-float/2addr v1, v5

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->minimumControls:I

    .line 574
    if-eqz p5, :cond_3

    const/4 v1, 0x4

    if-eq p5, v1, :cond_3

    const/4 v1, 0x5

    if-ne p5, v1, :cond_2

    goto :goto_2

    :cond_2
    mul-float v0, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    :cond_3
    :goto_2
    iput v4, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->handleGap:I

    .line 575
    invoke-virtual {p6, p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->newBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 576
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p5, -0x1

    invoke-direct {p1, p5, p5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 577
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, p5, p5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p3, p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, p5, p5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p4, p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 579
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 3

    .line 595
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 596
    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->keyboard:Lcom/cootek/smartinput5/settings/SizePreview;

    iget-object p2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->keyboard:Lcom/cootek/smartinput5/settings/SizePreview;

    invoke-virtual {p2}, Lcom/cootek/smartinput5/settings/SizePreview;->getMeasuredHeight()I

    move-result p2

    sub-int p2, p5, p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2, p4, p5}, Lcom/cootek/smartinput5/settings/SizePreview;->layout(IIII)V

    .line 597
    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->controls:Landroid/widget/ScrollView;

    iget-object p2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->controls:Landroid/widget/ScrollView;

    invoke-virtual {p2}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p1, p3, p3, p4, p2}, Landroid/widget/ScrollView;->layout(IIII)V

    .line 598
    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->drag:Lcom/cootek/smartinput5/settings/SizeDrag134;

    invoke-virtual {p1, p3, p3, p4, p5}, Lcom/cootek/smartinput5/settings/SizeDrag134;->layout(IIII)V

    .line 599
    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->keyboard:Lcom/cootek/smartinput5/settings/SizePreview;

    iget p2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->mode:I

    invoke-static {p2}, Lcom/cootek/smartinput5/settings/SizeModel;->isHeight(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x6

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->mode:I

    :goto_0
    invoke-virtual {p1, p2}, Lcom/cootek/smartinput5/settings/SizePreview;->adjustmentBounds(I)Landroid/graphics/RectF;

    move-result-object p1

    iget-object p2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->keyboard:Lcom/cootek/smartinput5/settings/SizePreview;

    invoke-virtual {p2}, Lcom/cootek/smartinput5/settings/SizePreview;->getLeft()I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->keyboard:Lcom/cootek/smartinput5/settings/SizePreview;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/settings/SizePreview;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 600
    iget-object p2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->drag:Lcom/cootek/smartinput5/settings/SizeDrag134;

    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->mode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->keyboard:Lcom/cootek/smartinput5/settings/SizePreview;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/settings/SizePreview;->adjustmentColor()I

    move-result v1

    iget-object v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->controls:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getBottom()I

    move-result v2

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/cootek/smartinput5/settings/SizeDrag134;->bounds(Landroid/graphics/RectF;ZII)V

    .line 601
    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->targets:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->targets:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;

    iget-object p2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->keyboard:Lcom/cootek/smartinput5/settings/SizePreview;

    invoke-virtual {p2}, Lcom/cootek/smartinput5/settings/SizePreview;->getLeft()I

    move-result p2

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->keyboard:Lcom/cootek/smartinput5/settings/SizePreview;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/settings/SizePreview;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->keyboard:Lcom/cootek/smartinput5/settings/SizePreview;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/settings/SizePreview;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->keyboard:Lcom/cootek/smartinput5/settings/SizePreview;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/settings/SizePreview;->nativeHeightPx()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->controls:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getBottom()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;->place(III)V

    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->targets:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;

    invoke-virtual {p1, p3, p3, p4, p5}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;->layout(IIII)V

    .line 602
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 582
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 583
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->keyboard:Lcom/cootek/smartinput5/settings/SizePreview;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/settings/SizePreview;->nativeHeightPx()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 584
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->keyboard:Lcom/cootek/smartinput5/settings/SizePreview;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 585
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 584
    invoke-virtual {v1, v3, v4}, Lcom/cootek/smartinput5/settings/SizePreview;->measure(II)V

    .line 587
    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->minimumControls:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int v0, p2, v0

    iget v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->handleGap:I

    sub-int/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 588
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->controls:Landroid/widget/ScrollView;

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 589
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 588
    invoke-virtual {v1, v3, v0}, Landroid/widget/ScrollView;->measure(II)V

    .line 590
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->drag:Lcom/cootek/smartinput5/settings/SizeDrag134;

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/cootek/smartinput5/settings/SizeDrag134;->measure(II)V

    .line 591
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->targets:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->targets:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;->measure(II)V

    .line 592
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->setMeasuredDimension(II)V

    .line 593
    return-void
.end method

.method targets(Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;)V
    .locals 2

    .line 580
    iput-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->targets:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
