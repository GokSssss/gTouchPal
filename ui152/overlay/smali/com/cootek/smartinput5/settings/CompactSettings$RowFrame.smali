.class final Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;
.super Landroid/widget/LinearLayout;
.source "CompactSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput5/settings/CompactSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RowFrame"
.end annotation


# instance fields
.field body:Landroid/view/View;

.field final icon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 76
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;->setOrientation(I)V

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;->setGravity(I)V

    .line 77
    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 78
    const/high16 v2, 0x41600000    # 14.0f

    mul-float v2, v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0, v2, v0, v0, v0}, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;->setPadding(IIII)V

    .line 79
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;->icon:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;->icon:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 80
    iget-object p1, p0, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object p1, p0, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 81
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x41b00000    # 22.0f

    mul-float v2, v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {p1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 82
    const/high16 v2, 0x41400000    # 12.0f

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, p1}, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;->setClickable(Z)V

    .line 84
    return-void
.end method


# virtual methods
.method body(Landroid/view/View;)V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;->body:Landroid/view/View;

    if-ne v0, p1, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;->body:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;->body:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;->removeView(Landroid/view/View;)V

    .line 88
    :cond_1
    iput-object p1, p0, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;->body:Landroid/view/View;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, p1, v0}, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    return-void
.end method
