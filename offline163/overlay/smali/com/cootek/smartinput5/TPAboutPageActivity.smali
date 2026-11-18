.class public Lcom/cootek/smartinput5/TPAboutPageActivity;
.super Lcom/cootek/smartinput5/ui/g0;


# static fields
.field private static final s:I = 0x0

.field private static final t:I = 0x1

.field private static final u:I = 0x2

.field private static final v:I = 0x3

.field private static final w:I = 0xa

.field private static x:I = 0x0

.field private static final y:I = 0xa


# instance fields
.field private q:Landroid/content/Context;

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/g0;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/cootek/smartinput5/TPAboutPageActivity;->r:I

    return-void
.end method

.method static synthetic L(Lcom/cootek/smartinput5/TPAboutPageActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/TPAboutPageActivity;->q:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic M(Lcom/cootek/smartinput5/TPAboutPageActivity;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/TPAboutPageActivity;->h0(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic N(Lcom/cootek/smartinput5/TPAboutPageActivity;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/TPAboutPageActivity;->f0(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic O(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/cootek/smartinput5/TPAboutPageActivity;->d0(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic P(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/cootek/smartinput5/TPAboutPageActivity;->i0(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic Q(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/cootek/smartinput5/TPAboutPageActivity;->e0(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic R(Lcom/cootek/smartinput5/TPAboutPageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/TPAboutPageActivity;->c0()V

    return-void
.end method

.method static synthetic S(Lcom/cootek/smartinput5/TPAboutPageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/TPAboutPageActivity;->b0()V

    return-void
.end method

.method static synthetic T(Lcom/cootek/smartinput5/TPAboutPageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/TPAboutPageActivity;->U()V

    return-void
.end method

.method private U()V
    .locals 4

    invoke-static {p0}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object v0

    const-string v1, "STORE_SETTINGS_ABOUT_PAGE_MAINLAND_SHARE"

    const-string v2, "clicked"

    const-string v3, "/UI/DRAWER/"

    invoke-virtual {v0, v1, v2, v3}, Lcom/cootek/smartinput5/l/g;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private V()V
    .locals 4

    invoke-static {p0}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object v0

    const-string v1, "STORE_SETTINGS_ABOUT_PAGE"

    const-string v2, "SHOW"

    const-string v3, "/UI/DRAWER/"

    invoke-virtual {v0, v1, v2, v3}, Lcom/cootek/smartinput5/l/g;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static X(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/cootek/tark/privacy/d;->f(Landroid/content/Context;)Lcom/cootek/tark/privacy/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/tark/privacy/d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0f07c2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static Y(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 2

    const v0, 0x7f0f07c2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f0f0983

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const p1, 0x7f0f0987

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const p1, 0x7f0f0982

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/cootek/smartinput5/TPAboutPageActivity;->X(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private Z()V
    .locals 4

    const v0, 0x7f0a01a8

    invoke-virtual {p0, v0}, Landroid/support/v7/app/d;->findViewById(I)Landroid/view/View;

    const v0, 0x7f0a03ae

    invoke-virtual {p0, v0}, Landroid/support/v7/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cootek/smartinput5/func/resource/ui/TTextView;

    new-instance v1, Lcom/cootek/smartinput5/TPAboutPageActivity$a;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/TPAboutPageActivity$a;-><init>(Lcom/cootek/smartinput5/TPAboutPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03af

    invoke-virtual {p0, v0}, Landroid/support/v7/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cootek/smartinput5/func/resource/ui/TTextView;

    new-instance v1, Lcom/cootek/smartinput5/TPAboutPageActivity$c;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/TPAboutPageActivity$c;-><init>(Lcom/cootek/smartinput5/TPAboutPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03ad

    invoke-virtual {p0, v0}, Landroid/support/v7/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cootek/smartinput5/func/resource/ui/TTextView;

    new-instance v1, Lcom/cootek/smartinput5/TPAboutPageActivity$d;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/TPAboutPageActivity$d;-><init>(Lcom/cootek/smartinput5/TPAboutPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03a8

    invoke-virtual {p0, v0}, Landroid/support/v7/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cootek/smartinput5/func/resource/ui/TTextView;

    new-instance v1, Lcom/cootek/smartinput5/TPAboutPageActivity$e;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/TPAboutPageActivity$e;-><init>(Lcom/cootek/smartinput5/TPAboutPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03ab

    invoke-virtual {p0, v0}, Landroid/support/v7/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/cootek/smartinput5/TPAboutPageActivity$f;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/TPAboutPageActivity$f;-><init>(Lcom/cootek/smartinput5/TPAboutPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03b1

    invoke-virtual {p0, v0}, Landroid/support/v7/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/cootek/smartinput5/TPAboutPageActivity$g;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/TPAboutPageActivity$g;-><init>(Lcom/cootek/smartinput5/TPAboutPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/TPAboutPageActivity;->q:Landroid/content/Context;

    invoke-static {v1}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->q(Landroid/content/Context;)Lcom/cootek/smartinput5/configuration/ConfigurationManager;

    move-result-object v1

    sget-object v2, Lcom/cootek/smartinput5/configuration/ConfigurationType;->SHOW_TP_ABOUT_TWITTER:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->j(Lcom/cootek/smartinput5/configuration/ConfigurationType;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0a03ac

    invoke-virtual {p0, v0}, Landroid/support/v7/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/cootek/smartinput5/TPAboutPageActivity$h;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/TPAboutPageActivity$h;-><init>(Lcom/cootek/smartinput5/TPAboutPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03a9

    invoke-virtual {p0, v0}, Landroid/support/v7/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cootek/smartinput5/func/resource/ui/TTextView;

    new-instance v1, Lcom/cootek/smartinput5/TPAboutPageActivity$i;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/TPAboutPageActivity$i;-><init>(Lcom/cootek/smartinput5/TPAboutPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03aa

    invoke-virtual {p0, v0}, Landroid/support/v7/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cootek/smartinput5/func/resource/ui/TTextView;

    new-instance v1, Lcom/cootek/smartinput5/TPAboutPageActivity$j;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/TPAboutPageActivity$j;-><init>(Lcom/cootek/smartinput5/TPAboutPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a0()Z
    .locals 3

    invoke-static {p0}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->q(Landroid/content/Context;)Lcom/cootek/smartinput5/configuration/ConfigurationManager;

    move-result-object v0

    sget-object v1, Lcom/cootek/smartinput5/configuration/ConfigurationType;->SUPPORT_ABOUT_PAGE_CHANGE_SHARES:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->j(Lcom/cootek/smartinput5/configuration/ConfigurationType;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private b0()V
    .locals 2

    const v0, 0x7f0f082f

    invoke-static {p0, v0}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f0985

    invoke-static {p0, v1}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/cootek/smartinput5/func/share/e;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c0()V
    .locals 2

    sget v0, Lcom/cootek/smartinput5/TPAboutPageActivity;->x:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/cootek/smartinput5/TPAboutPageActivity;->x:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/TPAboutPageActivity;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/cootek/smartinput5/TouchPalOption;->b0(Landroid/content/Context;)V

    const/4 v0, 0x0

    sput v0, Lcom/cootek/smartinput5/TPAboutPageActivity;->x:I

    :cond_0
    return-void
.end method

.method private static d0(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/cootek/smartinput5/TPAboutPageActivity;->j0(Landroid/content/Context;I)V

    return-void
.end method

.method private static e0(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/cootek/smartinput5/TPAboutPageActivity;->j0(Landroid/content/Context;I)V

    return-void
.end method

.method private f0(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-class v1, Lcom/cootek/smartinput5/ui/settings/OpenResourceLicensesActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static g0(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/cootek/smartinput5/TPAboutPageActivity;->j0(Landroid/content/Context;I)V

    return-void
.end method

.method private h0(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-class v1, Lcom/cootek/smartinput5/ui/settings/SpecialThanksActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private static i0(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/cootek/smartinput5/TPAboutPageActivity;->j0(Landroid/content/Context;I)V

    return-void
.end method

.method private static j0(Landroid/content/Context;I)V
    .locals 3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/TouchPalIME;->requestHideSelf(I)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/cootek/smartinput5/TPAboutPageActivity;->Y(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p0, v0, v1}, Lcom/cootek/smartinput5/func/w0;->d0(Landroid/content/Context;Landroid/content/Intent;I)V

    return-void
.end method

.method private k0()V
    .locals 3

    invoke-direct {p0}, Lcom/cootek/smartinput5/TPAboutPageActivity;->a0()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a0015

    invoke-virtual {p0, v0}, Landroid/support/v7/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0014

    invoke-virtual {p0, v1}, Landroid/support/v7/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Lcom/cootek/smartinput5/TPAboutPageActivity$b;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/TPAboutPageActivity$b;-><init>(Lcom/cootek/smartinput5/TPAboutPageActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03b0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cootek/smartinput5/func/resource/ui/TTextView;

    const v1, 0x7f0f0613

    invoke-static {p0, v1}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected W()V
    .locals 0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->A()V

    invoke-super {p0}, Lcom/cootek/smartinput5/ui/g0;->onDestroy()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0}, Lcom/cootek/smartinput5/mod/ThemeMod;->init(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/cootek/smartinput5/mod/ThemeMod;->applyTheme(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Lcom/cootek/smartinput5/ui/g0;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/cootek/smartinput5/TPAboutPageActivity;->q:Landroid/content/Context;

    invoke-static {p0}, Lcom/cootek/smartinput5/func/z;->G0(Landroid/content/Context;)V

    const p1, 0x7f0f05c7

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/ui/g0;->D(I)V

    const p1, 0x7f0c014b

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/ui/g0;->setContentView(I)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/TPAboutPageActivity;->Z()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/TPAboutPageActivity;->k0()V

    const/4 p1, 0x0

    sput p1, Lcom/cootek/smartinput5/TPAboutPageActivity;->x:I

    invoke-static {p0}, Lcom/cootek/smartinput5/settings/AboutPage149;->install(Landroid/app/Activity;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/TPAboutPageActivity;->V()V

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    return-void
.end method
