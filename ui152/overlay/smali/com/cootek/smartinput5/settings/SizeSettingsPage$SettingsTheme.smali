.class final Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;
.super Ljava/lang/Object;
.source "SizeSettingsPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput5/settings/SizeSettingsPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SettingsTheme"
.end annotation


# instance fields
.field final accent:I

.field final button:I

.field final line:I

.field final muted:I

.field final surface:I

.field final text:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 739
    nop

    .line 740
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "option_dark_theme"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    .line 742
    :goto_0
    if-eqz v1, :cond_0

    const v2, -0xdededf

    goto :goto_1

    :cond_0
    const v2, -0x50506

    .line 743
    :goto_1
    if-eqz v1, :cond_1

    const v3, -0xa0a0b

    goto :goto_2

    :cond_1
    const v3, -0xdfdfe0

    .line 744
    :goto_2
    if-eqz v1, :cond_2

    const v1, -0x424243

    goto :goto_3

    :cond_2
    const v1, -0x99999a

    .line 745
    :goto_3
    nop

    .line 747
    const v4, 0x101009b

    const v5, 0x1010435

    const v6, 0x1010031

    const v7, 0x1010036

    const v8, 0x1010038

    filled-new-array {v6, v7, v8, v4, v5}, [I

    move-result-object v4

    .line 749
    nop

    .line 751
    const v5, -0xb64d18

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {p1, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 752
    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    const/4 p1, 0x1

    invoke-virtual {v6, p1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 753
    const/4 p1, 0x2

    invoke-virtual {v6, p1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 754
    const/4 p1, 0x3

    invoke-virtual {v6, p1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    const/4 v0, 0x4

    invoke-virtual {v6, v0, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 756
    if-eqz v6, :cond_4

    :goto_4
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_5

    :catchall_0
    move-exception p1

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    throw p1

    .line 755
    :catch_1
    move-exception p1

    .line 756
    if-eqz v6, :cond_4

    goto :goto_4

    .line 757
    :cond_4
    :goto_5
    const/high16 p1, -0x1000000

    or-int/2addr p1, v2

    iput p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->surface:I

    iput v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->text:I

    iput v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->muted:I

    iput v5, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->accent:I

    .line 758
    iget p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->surface:I

    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->text:I

    const v1, 0x3e6147ae    # 0.22f

    invoke-static {p1, v0, v1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->mix(IIF)I

    move-result p1

    iput p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->line:I

    iget p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->surface:I

    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->text:I

    const v1, 0x3d6147ae    # 0.055f

    invoke-static {p1, v0, v1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->mix(IIF)I

    move-result p1

    iput p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->button:I

    .line 759
    return-void
.end method

.method static mix(IIF)I
    .locals 4

    .line 762
    ushr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    mul-float v0, v0, v1

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float v2, v2, p2

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 763
    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float v2, v2, v1

    ushr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 764
    and-int/lit16 p0, p0, 0xff

    int-to-float p0, p0

    mul-float p0, p0, v1

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 765
    const/high16 p1, -0x1000000

    shl-int/lit8 p2, v0, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, v2, 0x8

    or-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method newBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 760
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->surface:I

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p1
.end method
