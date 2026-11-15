.class final Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionButton;
.super Landroid/widget/Button;
.source "SizeSettingsPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput5/settings/SizeSettingsPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActionButton"
.end annotation


# instance fields
.field private final bounds:Landroid/graphics/RectF;

.field private final density:F

.field private final outline:Landroid/graphics/Paint;

.field private final theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;)V
    .locals 5

    .line 725
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 723
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionButton;->outline:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionButton;->bounds:Landroid/graphics/RectF;

    .line 725
    iput-object p2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionButton;->theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionButton;->density:F

    .line 726
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionButton;->setAllCaps(Z)V

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionButton;->setTextSize(F)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionButton;->setGravity(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionButton;->setMaxLines(I)V

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionButton;->setHorizontallyScrolling(Z)V

    .line 727
    new-instance v1, Landroid/content/res/ColorStateList;

    const v2, -0x101009e

    filled-new-array {v2}, [I

    move-result-object v2

    new-array v3, p1, [I

    new-array v0, v0, [[I

    aput-object v2, v0, p1

    const/4 v2, 0x1

    aput-object v3, v0, v2

    iget v2, p2, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->surface:I

    iget v3, p2, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->text:I

    const v4, 0x3ecccccd    # 0.4f

    invoke-static {v2, v3, v4}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->mix(IIF)I

    move-result v2

    iget p2, p2, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->text:I

    filled-new-array {v2, p2}, [I

    move-result-object p2

    invoke-direct {v1, v0, p2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, v1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 728
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionButton;->setMinWidth(I)V

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionButton;->setMinimumWidth(I)V

    iget p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionButton;->density:F

    const/high16 p2, 0x42400000    # 48.0f

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionButton;->setMinHeight(I)V

    iget p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionButton;->density:F

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionButton;->setMinimumHeight(I)V

    .line 729
    iget p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionButton;->density:F

    const/high16 p2, 0x41400000    # 12.0f

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionButton;->density:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionButton;->density:F

    mul-float v2, v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionButton;->density:F

    mul-float v2, v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionButton;->setPadding(IIII)V

    .line 730
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .line 731
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionButton;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 732
    iget-object v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionButton;->theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

    iget-object v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionButton;->outline:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionButton;->bounds:Landroid/graphics/RectF;

    iget v5, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionButton;->density:F

    move-object v0, p1

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SizeSettingsPage;->access$1600(Landroid/graphics/Canvas;Landroid/view/View;Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;Landroid/graphics/Paint;Landroid/graphics/RectF;F)V

    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
