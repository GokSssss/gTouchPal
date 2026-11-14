.class public final Lcom/cootek/smartinput5/settings/AboutPage149;
.super Ljava/lang/Object;
.source "AboutPage149.java"


# static fields
.field public static final GITHUB:Ljava/lang/String; = "https://github.com/GokSssss/gTouchPal-"

.field public static final TANH:Ljava/lang/String; = "https://4pda.to/forum/index.php?showtopic=256287&view=findpost&p=139436147"


# instance fields
.field private final accent:I

.field private final activity:Landroid/app/Activity;

.field private final line:I

.field private final primary:I

.field private final secondary:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/cootek/smartinput5/settings/AboutPage149;->activity:Landroid/app/Activity;

    .line 27
    invoke-static {p1}, Lcom/cootek/smartinput5/settings/SettingsIcons149;->dark(Landroid/content/Context;)Z

    move-result p1

    .line 28
    if-eqz p1, :cond_0

    const v0, -0x101011

    goto :goto_0

    :cond_0
    const v0, -0xdfdfe0

    :goto_0
    iput v0, p0, Lcom/cootek/smartinput5/settings/AboutPage149;->primary:I

    if-eqz p1, :cond_1

    const v0, -0x474748

    goto :goto_1

    :cond_1
    const v0, -0x99999a

    :goto_1
    iput v0, p0, Lcom/cootek/smartinput5/settings/AboutPage149;->secondary:I

    .line 29
    if-eqz p1, :cond_2

    const v0, -0xa64922

    goto :goto_2

    :cond_2
    const v0, -0xdb8661

    :goto_2
    iput v0, p0, Lcom/cootek/smartinput5/settings/AboutPage149;->accent:I

    if-eqz p1, :cond_3

    const p1, -0xbfbfc0

    goto :goto_3

    :cond_3
    const p1, -0x222223

    :goto_3
    iput p1, p0, Lcom/cootek/smartinput5/settings/AboutPage149;->line:I

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/cootek/smartinput5/settings/AboutPage149;)Landroid/app/Activity;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/cootek/smartinput5/settings/AboutPage149;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method private credit(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 47
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/AboutPage149;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 48
    const/high16 v1, 0x422c0000    # 43.0f

    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/settings/AboutPage149;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 49
    const/high16 v1, 0x41600000    # 14.0f

    iget v2, p0, Lcom/cootek/smartinput5/settings/AboutPage149;->secondary:I

    invoke-direct {p0, p2, v1, v2}, Lcom/cootek/smartinput5/settings/AboutPage149;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object p2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    const/high16 p2, 0x41880000    # 17.0f

    iget v1, p0, Lcom/cootek/smartinput5/settings/AboutPage149;->primary:I

    invoke-direct {p0, p3, p2, v1}, Lcom/cootek/smartinput5/settings/AboutPage149;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object p2

    const/high16 p3, 0x41400000    # 12.0f

    invoke-direct {p0, p3}, Lcom/cootek/smartinput5/settings/AboutPage149;->dp(F)I

    move-result p3

    invoke-virtual {p2, p3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 51
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 52
    return-void
.end method

.method private dp(F)I
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/AboutPage149;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private gap(Landroid/widget/LinearLayout;I)V
    .locals 3

    .line 39
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/AboutPage149;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float p2, p2

    invoke-direct {p0, p2}, Lcom/cootek/smartinput5/settings/AboutPage149;->dp(F)I

    move-result p2

    const/4 v2, 0x1

    invoke-direct {v1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static install(Landroid/app/Activity;)V
    .locals 1

    .line 78
    new-instance v0, Lcom/cootek/smartinput5/settings/AboutPage149;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/settings/AboutPage149;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0}, Lcom/cootek/smartinput5/settings/AboutPage149;->show()V

    return-void
.end method

.method private link(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 54
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/AboutPage149;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v1, 0x42700000    # 60.0f

    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/settings/AboutPage149;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 55
    const/high16 v1, 0x41000000    # 8.0f

    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/settings/AboutPage149;->dp(F)I

    move-result v2

    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/settings/AboutPage149;->dp(F)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 56
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/cootek/smartinput5/settings/AboutPage149;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/cootek/smartinput5/settings/AboutPage149;->activity:Landroid/app/Activity;

    iget v4, p0, Lcom/cootek/smartinput5/settings/AboutPage149;->accent:I

    invoke-static {v2, p2, v4}, Lcom/cootek/smartinput5/settings/SettingsIcons149;->drawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x41a80000    # 21.0f

    invoke-direct {p0, v2}, Lcom/cootek/smartinput5/settings/AboutPage149;->dp(F)I

    move-result v4

    invoke-direct {p0, v2}, Lcom/cootek/smartinput5/settings/AboutPage149;->dp(F)I

    move-result v2

    invoke-direct {p2, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41500000    # 13.0f

    invoke-direct {p0, v2}, Lcom/cootek/smartinput5/settings/AboutPage149;->dp(F)I

    move-result v4

    iput v4, p2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 58
    invoke-virtual {v0, v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/AboutPage149;->vertical()Landroid/widget/LinearLayout;

    move-result-object p2

    const/high16 v1, 0x41800000    # 16.0f

    iget v4, p0, Lcom/cootek/smartinput5/settings/AboutPage149;->primary:I

    invoke-direct {p0, p3, v1, v4}, Lcom/cootek/smartinput5/settings/AboutPage149;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget v1, p0, Lcom/cootek/smartinput5/settings/AboutPage149;->secondary:I

    invoke-direct {p0, p4, v2, v1}, Lcom/cootek/smartinput5/settings/AboutPage149;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 60
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    new-instance p2, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/AboutPage149;->activity:Landroid/app/Activity;

    invoke-direct {p2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/AboutPage149;->activity:Landroid/app/Activity;

    const-string v2, "arrow-up-right"

    iget v3, p0, Lcom/cootek/smartinput5/settings/AboutPage149;->secondary:I

    invoke-static {v1, v2, v3}, Lcom/cootek/smartinput5/settings/SettingsIcons149;->drawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-direct {p0, v2}, Lcom/cootek/smartinput5/settings/AboutPage149;->dp(F)I

    move-result v3

    invoke-direct {p0, v2}, Lcom/cootek/smartinput5/settings/AboutPage149;->dp(F)I

    move-result v2

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 64
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/AboutPage149;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101030e

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_0

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 65
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 66
    new-instance p2, Lcom/cootek/smartinput5/settings/AboutPage149$1;

    invoke-direct {p2, p0, p5}, Lcom/cootek/smartinput5/settings/AboutPage149$1;-><init>(Lcom/cootek/smartinput5/settings/AboutPage149;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    return-void
.end method

.method public static modVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 74
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 75
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    .line 76
    :catch_0
    move-exception p0

    const-string p0, "\u2014"

    return-object p0
.end method

.method private section(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 4

    .line 41
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/AboutPage149;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/cootek/smartinput5/settings/AboutPage149;->line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 42
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v2}, Lcom/cootek/smartinput5/settings/AboutPage149;->dp(F)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41600000    # 14.0f

    invoke-direct {p0, v2}, Lcom/cootek/smartinput5/settings/AboutPage149;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/high16 v2, 0x41700000    # 15.0f

    invoke-direct {p0, v2}, Lcom/cootek/smartinput5/settings/AboutPage149;->dp(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    const/high16 v0, 0x41500000    # 13.0f

    iget v1, p0, Lcom/cootek/smartinput5/settings/AboutPage149;->accent:I

    invoke-direct {p0, p2, v0, v1}, Lcom/cootek/smartinput5/settings/AboutPage149;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 p2, 0x9

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/settings/AboutPage149;->gap(Landroid/widget/LinearLayout;I)V

    .line 45
    return-void
.end method

.method private show()V
    .locals 17

    .line 80
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/cootek/smartinput5/settings/AboutPage149;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SettingsIcons149;->dark(Landroid/content/Context;)Z

    move-result v0

    .line 81
    iget-object v1, v7, Lcom/cootek/smartinput5/settings/AboutPage149;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v7, Lcom/cootek/smartinput5/settings/AboutPage149;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 82
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/cootek/smartinput5/settings/AboutPage149;->vertical()Landroid/widget/LinearLayout;

    move-result-object v8

    if-eqz v0, :cond_1

    const v1, -0xdfdfe0

    goto :goto_0

    :cond_1
    const v1, -0x50506

    :goto_0
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 83
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, v7, Lcom/cootek/smartinput5/settings/AboutPage149;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 84
    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {v7, v2}, Lcom/cootek/smartinput5/settings/AboutPage149;->dp(F)I

    move-result v3

    const/high16 v4, 0x41600000    # 14.0f

    invoke-direct {v7, v4}, Lcom/cootek/smartinput5/settings/AboutPage149;->dp(F)I

    move-result v4

    const/4 v9, 0x0

    invoke-virtual {v1, v3, v9, v4, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    if-eqz v0, :cond_2

    const v0, -0xeaeaeb

    goto :goto_1

    :cond_2
    const v0, -0x111112

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 85
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v3, v7, Lcom/cootek/smartinput5/settings/AboutPage149;->activity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iget-object v3, v7, Lcom/cootek/smartinput5/settings/AboutPage149;->activity:Landroid/app/Activity;

    const-string v4, "arrow-left"

    iget v5, v7, Lcom/cootek/smartinput5/settings/AboutPage149;->primary:I

    invoke-static {v3, v4, v5}, Lcom/cootek/smartinput5/settings/SettingsIcons149;->drawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    const-string v3, "\u041d\u0430\u0437\u0430\u0434"

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 87
    const/high16 v3, 0x41300000    # 11.0f

    invoke-direct {v7, v3}, Lcom/cootek/smartinput5/settings/AboutPage149;->dp(F)I

    move-result v4

    invoke-direct {v7, v3}, Lcom/cootek/smartinput5/settings/AboutPage149;->dp(F)I

    move-result v5

    invoke-direct {v7, v3}, Lcom/cootek/smartinput5/settings/AboutPage149;->dp(F)I

    move-result v6

    invoke-direct {v7, v3}, Lcom/cootek/smartinput5/settings/AboutPage149;->dp(F)I

    move-result v3

    invoke-virtual {v0, v4, v5, v6, v3}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 88
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 89
    new-instance v3, Lcom/cootek/smartinput5/settings/AboutPage149$2;

    invoke-direct {v3, v7}, Lcom/cootek/smartinput5/settings/AboutPage149$2;-><init>(Lcom/cootek/smartinput5/settings/AboutPage149;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42300000    # 44.0f

    invoke-direct {v7, v4}, Lcom/cootek/smartinput5/settings/AboutPage149;->dp(F)I

    move-result v5

    invoke-direct {v7, v4}, Lcom/cootek/smartinput5/settings/AboutPage149;->dp(F)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget v0, v7, Lcom/cootek/smartinput5/settings/AboutPage149;->primary:I

    const-string v10, "\u041e \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0438"

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-direct {v7, v10, v3, v0}, Lcom/cootek/smartinput5/settings/AboutPage149;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {v7, v2}, Lcom/cootek/smartinput5/settings/AboutPage149;->dp(F)I

    move-result v2

    invoke-virtual {v0, v2, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 92
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42600000    # 56.0f

    invoke-direct {v7, v2}, Lcom/cootek/smartinput5/settings/AboutPage149;->dp(F)I

    move-result v2

    const/4 v11, -0x1

    invoke-direct {v0, v11, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, v7, Lcom/cootek/smartinput5/settings/AboutPage149;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 94
    invoke-direct/range {p0 .. p0}, Lcom/cootek/smartinput5/settings/AboutPage149;->vertical()Landroid/widget/LinearLayout;

    move-result-object v13

    invoke-direct {v7, v3}, Lcom/cootek/smartinput5/settings/AboutPage149;->dp(F)I

    move-result v1

    const/high16 v14, 0x41c00000    # 24.0f

    invoke-direct {v7, v14}, Lcom/cootek/smartinput5/settings/AboutPage149;->dp(F)I

    move-result v2

    invoke-direct {v7, v3}, Lcom/cootek/smartinput5/settings/AboutPage149;->dp(F)I

    move-result v3

    const/high16 v4, 0x41900000    # 18.0f

    invoke-direct {v7, v4}, Lcom/cootek/smartinput5/settings/AboutPage149;->dp(F)I

    move-result v4

    invoke-virtual {v13, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 95
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v15, -0x2

    invoke-direct {v1, v11, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v13, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v1, v11, v9, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    invoke-direct/range {p0 .. p0}, Lcom/cootek/smartinput5/settings/AboutPage149;->vertical()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 97
    new-instance v2, Landroid/widget/ImageView;

    iget-object v0, v7, Lcom/cootek/smartinput5/settings/AboutPage149;->activity:Landroid/app/Activity;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 98
    :try_start_0
    iget-object v0, v7, Lcom/cootek/smartinput5/settings/AboutPage149;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, v7, Lcom/cootek/smartinput5/settings/AboutPage149;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 99
    :goto_2
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42980000    # 76.0f

    invoke-direct {v7, v3}, Lcom/cootek/smartinput5/settings/AboutPage149;->dp(F)I

    move-result v4

    invoke-direct {v7, v3}, Lcom/cootek/smartinput5/settings/AboutPage149;->dp(F)I

    move-result v3

    invoke-direct {v0, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    const/16 v0, 0xc

    invoke-direct {v7, v1, v0}, Lcom/cootek/smartinput5/settings/AboutPage149;->gap(Landroid/widget/LinearLayout;I)V

    const/high16 v2, 0x41d00000    # 26.0f

    iget v3, v7, Lcom/cootek/smartinput5/settings/AboutPage149;->primary:I

    const-string v4, "gTouchPal"

    invoke-direct {v7, v4, v2, v3}, Lcom/cootek/smartinput5/settings/AboutPage149;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v2

    const/16 v5, 0x11

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 101
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v2, 0x5

    invoke-direct {v7, v1, v2}, Lcom/cootek/smartinput5/settings/AboutPage149;->gap(Landroid/widget/LinearLayout;I)V

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0412\u0435\u0440\u0441\u0438\u044f \u043c\u043e\u0434\u0438\u0444\u0438\u043a\u0430\u0446\u0438\u0438 \u00b7 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v7, Lcom/cootek/smartinput5/settings/AboutPage149;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/cootek/smartinput5/settings/AboutPage149;->modVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41500000    # 13.0f

    iget v4, v7, Lcom/cootek/smartinput5/settings/AboutPage149;->secondary:I

    invoke-direct {v7, v2, v3, v4}, Lcom/cootek/smartinput5/settings/AboutPage149;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 103
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 104
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v11, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {v7, v13, v0}, Lcom/cootek/smartinput5/settings/AboutPage149;->gap(Landroid/widget/LinearLayout;I)V

    .line 105
    const-string v0, "\u041e\u0441\u043d\u043e\u0432\u0430\u043d\u043e \u043d\u0430"

    invoke-direct {v7, v13, v0}, Lcom/cootek/smartinput5/settings/AboutPage149;->section(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    const/high16 v0, 0x41880000    # 17.0f

    iget v1, v7, Lcom/cootek/smartinput5/settings/AboutPage149;->primary:I

    const-string v2, "TouchPal Keyboard 6.2.7.1"

    invoke-direct {v7, v2, v0, v1}, Lcom/cootek/smartinput5/settings/AboutPage149;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 106
    const-string v0, "\u0420\u0430\u0437\u0440\u0430\u0431\u043e\u0442\u043a\u0430"

    invoke-direct {v7, v13, v0}, Lcom/cootek/smartinput5/settings/AboutPage149;->section(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 107
    const-string v0, "\u0421 \u0431\u043b\u0430\u0433\u043e\u0434\u0430\u0440\u043d\u043e\u0441\u0442\u044c\u044e \u0437\u0430 \u0441\u043e\u0437\u0434\u0430\u043d\u0438\u0435 \u0438 \u0440\u0430\u0437\u0432\u0438\u0442\u0438\u0435"

    const-string v1, "Tanh"

    invoke-direct {v7, v13, v0, v1}, Lcom/cootek/smartinput5/settings/AboutPage149;->credit(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v0, "\u041f\u0440\u043e\u0434\u043e\u043b\u0436\u0435\u043d\u0438\u0435 \u0438 \u0440\u0430\u0437\u0432\u0438\u0442\u0438\u0435"

    const-string v1, "GokS"

    invoke-direct {v7, v13, v0, v1}, Lcom/cootek/smartinput5/settings/AboutPage149;->credit(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "\u041f\u0440\u043e\u0435\u043a\u0442"

    invoke-direct {v7, v13, v0}, Lcom/cootek/smartinput5/settings/AboutPage149;->section(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 110
    const-string v0, "\u0418\u0441\u0445\u043e\u0434\u043d\u0430\u044f \u043c\u043e\u0434\u0438\u0444\u0438\u043a\u0430\u0446\u0438\u044f"

    const-string v16, "https://4pda.to/forum/index.php?showtopic=256287&view=findpost&p=139436147"

    const-string v3, "messages-square"

    const-string v4, "\u041c\u043e\u0434 Tanh \u043d\u0430 4PDA"

    move-object/from16 v1, p0

    move-object v2, v13

    const/16 v11, 0x11

    move-object v5, v0

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/cootek/smartinput5/settings/AboutPage149;->link(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v5, "\u0420\u0435\u043f\u043e\u0437\u0438\u0442\u043e\u0440\u0438\u0439 \u043f\u0440\u043e\u0435\u043a\u0442\u0430"

    const-string v6, "https://github.com/GokSssss/gTouchPal-"

    const-string v3, "github-logo"

    const-string v4, "gTouchPal \u043d\u0430 GitHub"

    invoke-direct/range {v1 .. v6}, Lcom/cootek/smartinput5/settings/AboutPage149;->link(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v0, Landroid/view/View;

    iget-object v1, v7, Lcom/cootek/smartinput5/settings/AboutPage149;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v12, v9, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v13, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    const/high16 v0, 0x41400000    # 12.0f

    iget v1, v7, Lcom/cootek/smartinput5/settings/AboutPage149;->secondary:I

    const-string v2, "\u041e\u0441\u043d\u043e\u0432\u0430 TouchPal Keyboard \u2014 CooTek"

    invoke-direct {v7, v2, v0, v1}, Lcom/cootek/smartinput5/settings/AboutPage149;->text(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v0

    .line 114
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setGravity(I)V

    invoke-direct {v7, v14}, Lcom/cootek/smartinput5/settings/AboutPage149;->dp(F)I

    move-result v1

    invoke-virtual {v0, v9, v1, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v0, v7, Lcom/cootek/smartinput5/settings/AboutPage149;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v10}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, v7, Lcom/cootek/smartinput5/settings/AboutPage149;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v8}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 116
    return-void
.end method

.method private text(Ljava/lang/String;FI)Landroid/widget/TextView;
    .locals 2

    .line 33
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/AboutPage149;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    const/4 p1, 0x2

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method

.method private vertical()Landroid/widget/LinearLayout;
    .locals 2

    .line 37
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/AboutPage149;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-object v0
.end method
