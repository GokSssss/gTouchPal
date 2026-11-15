.class final Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;
.super Landroid/view/ViewGroup;
.source "SizeSettingsPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput5/settings/SizeSettingsPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PanelTargets"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets$Selection;
    }
.end annotation


# instance fields
.field private final candidates:Z

.field private controlsBottom:I

.field private offsetX:I

.field private offsetY:I

.field private final preview:Lcom/cootek/smartinput5/settings/SizePreview;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/cootek/smartinput5/settings/SizePreview;ZLcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets$Selection;)V
    .locals 4

    .line 504
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;->preview:Lcom/cootek/smartinput5/settings/SizePreview;

    iput-boolean p3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;->candidates:Z

    .line 505
    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-eqz p3, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    :goto_1
    if-ge v0, v1, :cond_2

    .line 506
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p2, p2, p2, p2}, Landroid/widget/Button;->setPadding(IIII)V

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setMinWidth(I)V

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setMinimumWidth(I)V

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setMinHeight(I)V

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setMinimumHeight(I)V

    .line 507
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_1

    const-string v3, "candidate-target-"

    goto :goto_2

    :cond_1
    const-string v3, "toolbar-target-"

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 508
    new-instance v2, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets$1;

    invoke-direct {v2, p0, p4, v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets$1;-><init>(Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets$Selection;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;->addView(Landroid/view/View;)V

    .line 505
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 510
    :cond_2
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 8

    .line 524
    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;->preview:Lcom/cootek/smartinput5/settings/SizePreview;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/settings/SizePreview;->editableButtonBounds()[Landroid/graphics/RectF;

    move-result-object p1

    .line 525
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 526
    array-length v2, p1

    if-ge v1, v2, :cond_0

    new-instance v2, Landroid/graphics/RectF;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_0
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    :goto_1
    iget v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;->offsetX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;->offsetY:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 527
    iget v3, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;->controlsBottom:I

    iget v5, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int v5, p4, p2

    iget v6, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int v6, p5, p3

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 528
    invoke-virtual {p0, v1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-le v5, v3, :cond_1

    if-le v2, v4, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_2

    const/4 v7, 0x0

    goto :goto_3

    :cond_2
    const/16 v7, 0x8

    :goto_3
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v6, v3, v4, v5, v2}, Landroid/view/View;->layout(IIII)V

    .line 525
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 530
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 519
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;->preview:Lcom/cootek/smartinput5/settings/SizePreview;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/settings/SizePreview;->editableButtonBounds()[Landroid/graphics/RectF;

    move-result-object v0

    .line 520
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    goto :goto_1

    :cond_0
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    :goto_1
    invoke-virtual {p0, v2}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4, v5, v3}, Landroid/view/View;->measure(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 521
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;->setMeasuredDimension(II)V

    .line 522
    return-void
.end method

.method place(III)V
    .locals 0

    .line 517
    iput p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;->offsetX:I

    iput p2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;->offsetY:I

    iput p3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;->controlsBottom:I

    return-void
.end method

.method refresh(I)V
    .locals 8

    .line 512
    iget-boolean v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;->candidates:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "\u041b\u0435\u0432\u0430\u044f \u043a\u043d\u043e\u043f\u043a\u0430 \u0441\u0442\u0440\u043e\u043a\u0438 \u0441\u043b\u043e\u0432"

    aput-object v1, v0, v3

    const-string v1, "\u041f\u0440\u0430\u0432\u0430\u044f \u043a\u043d\u043e\u043f\u043a\u0430 \u0441\u0442\u0440\u043e\u043a\u0438 \u0441\u043b\u043e\u0432"

    aput-object v1, v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v4, "\u041b\u0435\u0432\u0430\u044f \u043a\u043d\u043e\u043f\u043a\u0430 \u043f\u0430\u043d\u0435\u043b\u0438"

    aput-object v4, v0, v3

    const-string v4, "\u0421\u0440\u0435\u0434\u043d\u044f\u044f \u043a\u043d\u043e\u043f\u043a\u0430 \u043f\u0430\u043d\u0435\u043b\u0438"

    aput-object v4, v0, v2

    const-string v4, "\u041f\u0440\u0430\u0432\u0430\u044f \u043a\u043d\u043e\u043f\u043a\u0430 \u043f\u0430\u043d\u0435\u043b\u0438"

    aput-object v4, v0, v1

    .line 513
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 514
    invoke-virtual {p0, v1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v1, p1, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-boolean v7, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;->candidates:Z

    if-eqz v7, :cond_2

    add-int/lit8 v7, v1, 0x3

    goto :goto_3

    :cond_2
    move v7, v1

    :goto_3
    invoke-static {v6, v7}, Lcom/cootek/smartinput5/settings/ToolbarConfig140;->read(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/cootek/smartinput5/settings/ToolbarConfig140;->label(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". \u0412\u044b\u0431\u0440\u0430\u0442\u044c \u0434\u0435\u0439\u0441\u0442\u0432\u0438\u0435"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 515
    :cond_3
    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;->requestLayout()V

    .line 516
    return-void
.end method
