.class public Lcom/cootek/smartinput5/Guide;
.super Lcom/cootek/smartinput5/func/resource/ui/b;


# static fields
.field private static final A:I = 0x2

.field public static final w:Ljava/lang/String; = "com.cootek.smartinput5.Guide.EXTRA_SHOW_THEME_SELECTOR"

.field static x:Z = false

.field private static final y:I = 0x0

.field private static final z:I = 0x1


# instance fields
.field private h:I

.field private i:Z

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Lcom/cootek/smartinput5/d;

.field private final p:[I

.field private final q:[I

.field private r:Ljava/lang/String;

.field private s:Landroid/graphics/Typeface;

.field private t:Lcom/cootek/smartinput5/e;

.field private u:Z

.field private v:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/resource/ui/b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/cootek/smartinput5/Guide;->h:I

    iput-boolean v0, p0, Lcom/cootek/smartinput5/Guide;->i:Z

    const/16 v1, 0xbb8

    iput v1, p0, Lcom/cootek/smartinput5/Guide;->j:I

    iput-boolean v0, p0, Lcom/cootek/smartinput5/Guide;->k:Z

    iput-boolean v0, p0, Lcom/cootek/smartinput5/Guide;->l:Z

    iput-boolean v0, p0, Lcom/cootek/smartinput5/Guide;->m:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cootek/smartinput5/Guide;->n:Z

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/cootek/smartinput5/Guide;->p:[I

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/cootek/smartinput5/Guide;->q:[I

    iput-boolean v1, p0, Lcom/cootek/smartinput5/Guide;->u:Z

    iput-boolean v0, p0, Lcom/cootek/smartinput5/Guide;->v:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0f0437
        0x7f0f051f
    .end array-data

    :array_1
    .array-data 4
        0x7f08037b
        0x7f08037c
    .end array-data
.end method

.method private A()V
    .locals 2

    const v0, 0x7f0a0191

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/Guide;->j(Landroid/view/View;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/cootek/smartinput5/Guide;->h:I

    return-void
.end method

.method private B()V
    .locals 7

    const v0, 0x7f0a02b3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Landroid/text/SpannableString;

    const v2, 0x7f0f0479

    invoke-virtual {p0, v2}, Lcom/cootek/smartinput5/func/resource/ui/b;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/SpannableString;

    const v3, 0x7f0f047a

    invoke-virtual {p0, v3}, Lcom/cootek/smartinput5/func/resource/ui/b;->getResString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/cootek/smartinput5/TPAboutPageActivity;->X(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/text/style/URLSpan;

    invoke-direct {v4, v3}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v3

    const v4, 0x7f0601e0

    invoke-virtual {v3, v4}, Lcom/cootek/smartinput5/func/i0;->x(I)I

    move-result v3

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private C()V
    .locals 3

    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->L()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/Guide;->H(I)V

    return-void

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/Guide;->H(I)V

    return-void
.end method

.method private D()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "Xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private E()Z
    .locals 3

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->J0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/func/z;->p0()Lcom/cootek/smartinput5/func/permission/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/cootek/smartinput5/func/permission/a;->g(Ljava/util/ArrayList;Z)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method private F()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private G()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->q(Landroid/content/Context;)Lcom/cootek/smartinput5/configuration/ConfigurationManager;

    move-result-object v0

    sget-object v1, Lcom/cootek/smartinput5/configuration/ConfigurationType;->ENABLE_NOTIFICATIONS:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->j(Lcom/cootek/smartinput5/configuration/ConfigurationType;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f02c6

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cootek/smartinput5/func/W;->a(Landroid/content/Context;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x7f080257

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x7f0f0476

    invoke-virtual {p0, v3}, Lcom/cootek/smartinput5/func/resource/ui/b;->getResString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x7f0f0475

    invoke-virtual {p0, v3}, Lcom/cootek/smartinput5/func/resource/ui/b;->getResString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    const/16 v2, 0xf5

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method private H(I)V
    .locals 1

    const v0, 0x7f0a0196

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private I()V
    .locals 7

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0c0038

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0046

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/cootek/smartinput5/Guide;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->q(Landroid/content/Context;)Lcom/cootek/smartinput5/configuration/ConfigurationManager;

    move-result-object v2

    sget-object v3, Lcom/cootek/smartinput5/configuration/ConfigurationType;->CHANNEL_LOGO_PIC_SHOW:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0500c0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->j(Lcom/cootek/smartinput5/configuration/ConfigurationType;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const v2, 0x7f0a00ae

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-static {p0}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->q(Landroid/content/Context;)Lcom/cootek/smartinput5/configuration/ConfigurationManager;

    move-result-object v2

    sget-object v4, Lcom/cootek/smartinput5/configuration/ConfigurationType;->CHANNEL_LOGO_TEXT_SHOW:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0500c2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->j(Lcom/cootek/smartinput5/configuration/ConfigurationType;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0a00af

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v4, -0x1

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/cootek/smartinput5/Guide$a;

    invoke-direct {v3, p0, v1, v0}, Lcom/cootek/smartinput5/Guide$a;-><init>(Lcom/cootek/smartinput5/Guide;Landroid/view/View;Landroid/view/WindowManager;)V

    iget v0, p0, Lcom/cootek/smartinput5/Guide;->j:I

    int-to-long v0, v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private J()V
    .locals 3

    invoke-direct {p0, p0}, Lcom/cootek/smartinput5/Guide;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const v0, 0x7f0f0468

    invoke-static {p0, v0, v1}, Lcom/cootek/smartinput5/func/resource/d;->i(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/ui/control/E;->s(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private K(Z)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->F()Z

    move-result v3

    if-nez v3, :cond_0

    const p1, 0x7f0f0481

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/cootek/smartinput5/Guide;->r:Ljava/lang/String;

    aput-object v3, v1, v0

    invoke-virtual {p0, p1, v1}, Lcom/cootek/smartinput5/func/resource/ui/b;->getResString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_0
    nop

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const p1, 0x7f0f0482

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/cootek/smartinput5/Guide;->r:Ljava/lang/String;

    aput-object v3, v1, v0

    invoke-virtual {p0, p1, v1}, Lcom/cootek/smartinput5/func/resource/ui/b;->getResString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v2, p1

    :cond_1
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    :try_start_1
    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/cootek/smartinput5/ui/control/E;->s(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    return-void
.end method

.method private L()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private M()V
    .locals 3

    invoke-static {}, Lcom/cootek/smartinput5/func/TAccountManager;->d()Lcom/cootek/smartinput5/func/TAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/TAccountManager;->c()Lcom/cootek/smartinput5/net/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/net/login/g;->k()Z

    invoke-static {p0}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->q(Landroid/content/Context;)Lcom/cootek/smartinput5/configuration/ConfigurationManager;

    move-result-object v0

    sget-object v1, Lcom/cootek/smartinput5/configuration/ConfigurationType;->ENABLE_SHOW_LOGIN_PAGE:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->j(Lcom/cootek/smartinput5/configuration/ConfigurationType;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    const-class v0, Lcom/cootek/smartinput5/net/login/TLoginActivity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-class v1, Lcom/cootek/smartinput5/TouchPalOption;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private N()V
    .locals 2

    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/Guide;->t:Lcom/cootek/smartinput5/e;

    iget-boolean v1, p0, Lcom/cootek/smartinput5/Guide;->u:Z

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/e;->d(Z)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/Guide;->K(Z)V

    iput-boolean v0, p0, Lcom/cootek/smartinput5/Guide;->v:Z

    return-void
.end method

.method private O()V
    .locals 9

    iget v0, p0, Lcom/cootek/smartinput5/Guide;->h:I

    if-ltz v0, :cond_2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const v0, 0x7f0a0191

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget v5, p0, Lcom/cootek/smartinput5/Guide;->h:I

    const v6, 0x7f0a0286

    const v7, 0x7f0a0089

    if-ne v3, v5, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setClickable(Z)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0602a4

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0602ac

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0602a7

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0602ab

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private P()I
    .locals 1

    invoke-static {p0}, Lcom/cootek/smartinput5/func/w0;->R(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/cootek/smartinput5/func/w0;->Q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method static synthetic h(Lcom/cootek/smartinput5/Guide;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->x()V

    return-void
.end method

.method static synthetic i(Lcom/cootek/smartinput5/Guide;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->M()V

    return-void
.end method

.method private j(Landroid/view/View;)V
    .locals 10

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v2, v4, :cond_2

    const v4, 0x7f0c0082

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v5, 0x7f0a0288

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/cootek/smartinput5/Guide;->q:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    const v5, 0x7f0a0089

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->y()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v6, p0, Lcom/cootek/smartinput5/Guide;->p:[I

    aget v6, v6, v2

    invoke-direct {p0, p0}, Lcom/cootek/smartinput5/Guide;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v7, v9, v1

    invoke-virtual {p0, v6, v9}, Lcom/cootek/smartinput5/func/resource/ui/b;->getResString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v5, :cond_0

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :cond_0
    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setId(I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    if-nez v3, :cond_1

    invoke-virtual {v4, v1, v1}, Landroid/widget/LinearLayout;->measure(II)V

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    :cond_1
    div-int/lit8 v6, v6, 0xe

    div-int/lit8 v7, v3, 0x5

    invoke-virtual {v5, v6, v7, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    move-object v6, p1

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static k(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cootek/smartinput5/Guide;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private m()V
    .locals 2

    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->P()I

    move-result v0

    iget v1, p0, Lcom/cootek/smartinput5/Guide;->h:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lcom/cootek/smartinput5/Guide;->h:I

    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->O()V

    return-void
.end method

.method private n()V
    .locals 3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0xf5

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->Q()Landroid/content/Context;

    move-result-object v0

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    :cond_0
    return-void
.end method

.method private o(IZ)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/cootek/smartinput5/l/j/a;->b(Landroid/content/Context;)Lcom/cootek/smartinput5/l/j/a;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string p2, "ACTIVE_GUIDE/NEW_USER"

    goto :goto_0

    :cond_0
    const-string p2, "ACTIVE_GUIDE/OLD_USER"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STEP_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "/COMMERCIAL/"

    invoke-virtual {v0, p2, p1, v1}, Lcom/cootek/smartinput5/l/j/a;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private p()V
    .locals 8

    iget-boolean v0, p0, Lcom/cootek/smartinput5/Guide;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "/COMMERCIAL/"

    if-ge v3, v4, :cond_2

    :try_start_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object v6

    const-string v7, "INSTALLED_IME_PACKAGES_INFO/INSTALLED_IME_PACKAGES/"

    invoke-virtual {v6, v7, v4, v5}, Lcom/cootek/smartinput5/l/g;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/cootek/smartinput5/func/w0;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object v0

    const-string v2, "INSTALLED_IME_PACKAGES_INFO/LAST_DEFAULT_IME_PACKAGE_NAME/"

    invoke-virtual {v0, v2, v1, v5}, Lcom/cootek/smartinput5/l/g;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/Guide;->k:Z

    return-void
.end method

.method private q()V
    .locals 6

    const/4 v0, 0x0

    sput-boolean v0, Lcom/cootek/smartinput5/h;->Z:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.cootek.smartinput5.Guide.EXTRA_SHOW_THEME_SELECTOR"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/cootek/smartinput5/Guide;->u:Z

    new-instance v1, Lcom/cootek/smartinput5/e;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/Guide;->t:Lcom/cootek/smartinput5/e;

    invoke-static {p0}, Lcom/cootek/smartinput5/func/z;->G0(Landroid/content/Context;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/x0;->d()Lcom/cootek/smartinput5/func/x0;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, p0, v2}, Lcom/cootek/smartinput5/func/x0;->h(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cootek/smartinput5/Guide;->r:Ljava/lang/String;

    sput-boolean v0, Lcom/cootek/smartinput5/Guide;->x:Z

    invoke-static {p0}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->q(Landroid/content/Context;)Lcom/cootek/smartinput5/configuration/ConfigurationManager;

    move-result-object v1

    sget-object v2, Lcom/cootek/smartinput5/configuration/ConfigurationType;->CHANNEL_LOGO_SHOW_TIME:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00aa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->r(Lcom/cootek/smartinput5/configuration/ConfigurationType;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/cootek/smartinput5/Guide;->j:I

    invoke-static {p0}, Lcom/cootek/smartinput5/Guide;->z(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x159

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    :cond_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->M()V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/cootek/smartinput5/func/w0;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/actionflow/StatesCollector;->g()Lcom/cootek/smartinput5/actionflow/StatesCollector;

    move-result-object v2

    const-string v4, "DEFAULT_INPUT_METHOD"

    invoke-virtual {v2, v4, v1}, Lcom/cootek/smartinput5/actionflow/StatesCollector;->j(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    invoke-static {p0}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->q(Landroid/content/Context;)Lcom/cootek/smartinput5/configuration/ConfigurationManager;

    move-result-object v1

    sget-object v2, Lcom/cootek/smartinput5/configuration/ConfigurationType;->CHANNEL_LOGO_SCREEN_SHOW:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0500c1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->j(Lcom/cootek/smartinput5/configuration/ConfigurationType;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->I()V

    :cond_3
    const v1, 0x7f0c0081

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->A()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->C()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->B()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->p()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->s()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    const/16 v2, 0xe8

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(I)I

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-static {p0}, Lcom/cootek/smartinput5/l/j/a;->b(Landroid/content/Context;)Lcom/cootek/smartinput5/l/j/a;

    move-result-object v1

    if-eqz v0, :cond_5

    const-string v0, "ACTIVE_GUIDE/NEW_USER"

    goto :goto_0

    :cond_5
    const-string v0, "ACTIVE_GUIDE/OLD_USER"

    :goto_0
    const-string v2, "SHOW"

    const-string v3, "/STATISTIC/"

    invoke-virtual {v1, v0, v2, v3}, Lcom/cootek/smartinput5/l/j/a;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private r()V
    .locals 4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/cootek/smartinput5/h;->Z:Z

    iget-object v0, p0, Lcom/cootek/smartinput5/Guide;->t:Lcom/cootek/smartinput5/e;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/e;->c()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->n()V

    invoke-static {p0}, Lcom/cootek/smartinput5/func/w0;->R(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0}, Lcom/cootek/smartinput5/func/w0;->Q(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p0}, Lcom/cootek/smartinput5/l/j/a;->b(Landroid/content/Context;)Lcom/cootek/smartinput5/l/j/a;

    move-result-object v2

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "GUIDE_RESUME_BUTTON_STATES/"

    const-string v3, "/UI/"

    invoke-virtual {v2, v1, v0, v3}, Lcom/cootek/smartinput5/l/j/a;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/cootek/smartinput5/Guide;->z(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->m()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->M()V

    :goto_0
    return-void
.end method

.method private s()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, v0}, Lcom/cootek/smartinput5/ui/r0/c;->l(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SRC_GUIDE_PAGE"

    invoke-static {p0, v0}, Lcom/cootek/smartinput5/ui/r0/c;->r(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private t(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/func/x0;->d()Lcom/cootek/smartinput5/func/x0;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1}, Lcom/cootek/smartinput5/func/x0;->h(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private u()V
    .locals 3

    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->J()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->N()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0xe8

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/cootek/smartinput5/Guide;->o(IZ)V

    iput-boolean v1, p0, Lcom/cootek/smartinput5/Guide;->l:Z

    return-void
.end method

.method private v()Lcom/cootek/smartinput5/d;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/Guide;->o:Lcom/cootek/smartinput5/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cootek/smartinput5/d;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/Guide;->o:Lcom/cootek/smartinput5/d;

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/Guide;->o:Lcom/cootek/smartinput5/d;

    return-object v0
.end method

.method private w()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/cootek/smartinput5/Guide;->r:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0f0482

    invoke-virtual {p0, v1, v0}, Lcom/cootek/smartinput5/func/resource/ui/b;->getResString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private x()V
    .locals 4

    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->D()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/Guide;->K(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->v()Lcom/cootek/smartinput5/d;

    move-result-object v0

    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/cootek/smartinput5/d;->m(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    iput-boolean v2, p0, Lcom/cootek/smartinput5/Guide;->i:Z

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v3, 0xe8

    invoke-virtual {v0, v3}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/cootek/smartinput5/Guide;->o(IZ)V

    iput-boolean v2, p0, Lcom/cootek/smartinput5/Guide;->m:Z

    return-void
.end method

.method private y()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/Guide;->s:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/func/r0;->c()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/smartinput5/Guide;->s:Landroid/graphics/Typeface;

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/Guide;->s:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static z(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/cootek/smartinput5/func/w0;->R(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/cootek/smartinput5/func/w0;->Q(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/cootek/smartinput5/a;->a(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/cootek/smartinput5/func/w0;->R(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->x()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->u()V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/cootek/smartinput5/func/resource/ui/b;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-static {p0}, Lcom/cootek/smartinput5/ui/TouchPalDarkUi;->prepareGuide(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->q()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/Guide;->t:Lcom/cootek/smartinput5/e;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/e;->b()V

    invoke-static {}, Lcom/cootek/smartinput5/actionflow/a;->f()Lcom/cootek/smartinput5/actionflow/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/actionflow/a;->k()V

    invoke-static {}, Lcom/cootek/smartinput5/actionflow/StatesCollector;->g()Lcom/cootek/smartinput5/actionflow/StatesCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/actionflow/StatesCollector;->l()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->v()Lcom/cootek/smartinput5/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/d;->i()V

    invoke-super {p0}, Lcom/cootek/smartinput5/func/resource/ui/b;->onDestroy()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cootek/smartinput5/func/z;->B(Z)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "com.cootek.smartinput5.Guide.EXTRA_SHOW_THEME_SELECTOR"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cootek/smartinput5/Guide;->u:Z

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->r()V

    invoke-static {p0}, Lcom/cootek/smartinput5/ui/TouchPalDarkUi;->finishGuide(Landroid/app/Activity;)V

    return-void
.end method

.method protected onStop()V
    .locals 4

    iget-boolean v0, p0, Lcom/cootek/smartinput5/Guide;->v:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/cootek/smartinput5/func/w0;->R(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/cootek/smartinput5/func/w0;->Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0xf5

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->G()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    goto :goto_1

    :cond_2
    iput-boolean v1, p0, Lcom/cootek/smartinput5/Guide;->v:Z

    :goto_1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/cootek/smartinput5/Guide;->i:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->m()V

    :cond_0
    iput-boolean v0, p0, Lcom/cootek/smartinput5/Guide;->i:Z

    iget-boolean v1, p0, Lcom/cootek/smartinput5/Guide;->l:Z

    const-string v2, "/STATISTIC/"

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/cootek/smartinput5/func/w0;->R(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/actionflow/a;->f()Lcom/cootek/smartinput5/actionflow/a;

    move-result-object v1

    const-string v3, "SETTING_ENABLE_TOUCHPAL"

    invoke-virtual {v1, v3, p0}, Lcom/cootek/smartinput5/actionflow/a;->i(Ljava/lang/String;Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/cootek/smartinput5/Guide;->l:Z

    invoke-static {p0}, Lcom/cootek/smartinput5/l/j/a;->b(Landroid/content/Context;)Lcom/cootek/smartinput5/l/j/a;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "ACTIVE_GUIDE/GUIDE_ENABLE_ENTER/"

    invoke-virtual {v1, v4, v3, v2}, Lcom/cootek/smartinput5/l/j/a;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/cootek/smartinput5/Guide$b;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/Guide$b;-><init>(Lcom/cootek/smartinput5/Guide;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/cootek/smartinput5/Guide;->m:Z

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/cootek/smartinput5/func/w0;->Q(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/actionflow/a;->f()Lcom/cootek/smartinput5/actionflow/a;

    move-result-object v1

    const-string v3, "SETTING_SELECT_TOUCHPAL"

    invoke-virtual {v1, v3, p0}, Lcom/cootek/smartinput5/actionflow/a;->i(Ljava/lang/String;Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/cootek/smartinput5/Guide;->m:Z

    invoke-static {p0}, Lcom/cootek/smartinput5/l/j/a;->b(Landroid/content/Context;)Lcom/cootek/smartinput5/l/j/a;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "ACTIVE_GUIDE/CURRENT_DEFAULT_IME"

    invoke-virtual {v1, v4, v3, v2}, Lcom/cootek/smartinput5/l/j/a;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget v1, p0, Lcom/cootek/smartinput5/Guide;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    const/16 v2, 0x1c1

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/cootek/smartinput5/Guide;->n:Z

    if-eqz v1, :cond_4

    iput-boolean v0, p0, Lcom/cootek/smartinput5/Guide;->n:Z

    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->E()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->M()V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->p0()Lcom/cootek/smartinput5/func/permission/a;

    move-result-object v0

    new-instance v1, Lcom/cootek/smartinput5/Guide$c;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/Guide$c;-><init>(Lcom/cootek/smartinput5/Guide;)V

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/permission/a;->y(Lcom/cootek/smartinput5/func/permission/a$b;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/cootek/smartinput5/Guide;->M()V

    :cond_5
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method
