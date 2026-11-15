.class Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;
.super Landroid/widget/TextView;
.source "SizeSettingsPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput5/settings/SizeSettingsPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PresetButton"
.end annotation


# instance fields
.field private final bounds:Landroid/graphics/RectF;

.field private final density:F

.field private final outline:Landroid/graphics/Paint;

.field private final theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;)V
    .locals 3

    .line 693
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 689
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->outline:Landroid/graphics/Paint;

    .line 690
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->bounds:Landroid/graphics/RectF;

    .line 693
    iput-object p2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

    .line 694
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->density:F

    .line 695
    const/high16 p1, 0x41600000    # 14.0f

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->setTextSize(F)V

    iget p1, p2, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->text:I

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->setTextColor(I)V

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->setGravity(I)V

    .line 696
    iget p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->density:F

    const/high16 p2, 0x40800000    # 4.0f

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->density:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->density:F

    mul-float v2, v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->density:F

    mul-float v2, v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->setPadding(IIII)V

    .line 697
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->setMaxLines(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->setClickable(Z)V

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->setFocusable(Z)V

    .line 698
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .line 700
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 701
    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->invalidate()V

    .line 702
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 704
    iget-object v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

    iget-object v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->outline:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->bounds:Landroid/graphics/RectF;

    iget v5, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->density:F

    move-object v0, p1

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SizeSettingsPage;->access$1600(Landroid/graphics/Canvas;Landroid/view/View;Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;Landroid/graphics/Paint;Landroid/graphics/RectF;F)V

    .line 705
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 706
    return-void
.end method
