.class final Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;
.super Landroid/view/ViewGroup;
.source "SizeSettingsPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput5/settings/SizeSettingsPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PresetGrid"
.end annotation


# instance fields
.field private columns:I

.field private final gap:I

.field private final portraitColumns:I

.field private rowHeight:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 609
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 610
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 608
    const/4 v0, 0x3

    iput v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->columns:I

    .line 610
    iput p2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->portraitColumns:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x40800000    # 4.0f

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->gap:I

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2

    .line 631
    sub-int/2addr p4, p2

    iget p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->gap:I

    iget p2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->columns:I

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    mul-int p1, p1, p2

    sub-int/2addr p4, p1

    iget p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->columns:I

    div-int/2addr p4, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 632
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->getChildCount()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 633
    iget p3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->columns:I

    rem-int p3, p2, p3

    iget p4, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->gap:I

    add-int/2addr p4, p1

    mul-int p3, p3, p4

    iget p4, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->columns:I

    div-int p4, p2, p4

    iget p5, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->rowHeight:I

    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->gap:I

    add-int/2addr p5, v0

    mul-int p4, p4, p5

    .line 634
    invoke-virtual {p0, p2}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    add-int v0, p3, p1

    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->rowHeight:I

    add-int/2addr v1, p4

    invoke-virtual {p5, p3, p4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 632
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 636
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 612
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->getChildCount()I

    move-result p2

    .line 613
    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 614
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->portraitColumns:I

    if-lez v4, :cond_2

    iget v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->portraitColumns:I

    goto :goto_1

    :cond_2
    const/4 v4, 0x4

    if-gt p2, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x3

    :goto_1
    iput v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->columns:I

    .line 615
    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 616
    if-eqz v0, :cond_4

    const/16 v0, 0x1c

    goto :goto_2

    :cond_4
    const/16 v0, 0x2c

    :goto_2
    int-to-float v0, v0

    mul-float v0, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->rowHeight:I

    .line 617
    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->gap:I

    iget v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->columns:I

    sub-int/2addr v3, v2

    mul-int v0, v0, v3

    sub-int v0, p1, v0

    iget v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->columns:I

    div-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 618
    const/4 v3, 0x0

    :goto_3
    const/high16 v4, 0x40000000    # 2.0f

    if-ge v3, p2, :cond_5

    .line 619
    invoke-virtual {p0, v3}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 620
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 621
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 620
    invoke-virtual {v5, v4, v6}, Landroid/view/View;->measure(II)V

    .line 622
    iget v4, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->rowHeight:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->rowHeight:I

    .line 618
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 624
    :cond_5
    const/4 v3, 0x0

    :goto_4
    if-ge v3, p2, :cond_6

    invoke-virtual {p0, v3}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 625
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v7, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->rowHeight:I

    .line 626
    invoke-static {v7, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 624
    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 627
    :cond_6
    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->columns:I

    add-int/2addr p2, v0

    sub-int/2addr p2, v2

    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->columns:I

    div-int/2addr p2, v0

    .line 628
    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->rowHeight:I

    mul-int v0, v0, p2

    sub-int/2addr p2, v2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->gap:I

    mul-int p2, p2, v1

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->setMeasuredDimension(II)V

    .line 629
    return-void
.end method
