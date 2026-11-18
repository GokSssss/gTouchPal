.class public Lcom/cootek/smartinput5/func/asset/LoadFailedActivity;
.super Landroid/app/Activity;


# instance fields
.field private h:Landroid/support/v7/app/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cootek/smartinput5/func/asset/LoadFailedActivity;->h:Landroid/support/v7/app/c;

    return-void
.end method

.method static synthetic a(Lcom/cootek/smartinput5/func/asset/LoadFailedActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/asset/LoadFailedActivity;->d()V

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/asset/LoadFailedActivity;->h:Landroid/support/v7/app/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/func/asset/LoadFailedActivity;->h:Landroid/support/v7/app/c;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 4

    new-instance v0, Lcom/cootek/smartinput5/ui/c$a;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/ui/c$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f053d

    invoke-static {p0, v1}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/c$a;->K(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v1

    const v2, 0x7f0f053c

    invoke-static {p0, v2}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/c$a;->n(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    move-result-object v1

    new-instance v2, Lcom/cootek/smartinput5/func/asset/LoadFailedActivity$b;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/func/asset/LoadFailedActivity$b;-><init>(Lcom/cootek/smartinput5/func/asset/LoadFailedActivity;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/support/v7/app/c$a;->B(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object v1

    new-instance v2, Lcom/cootek/smartinput5/func/asset/LoadFailedActivity$a;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/func/asset/LoadFailedActivity$a;-><init>(Lcom/cootek/smartinput5/func/asset/LoadFailedActivity;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v2}, Landroid/support/v7/app/c$a;->r(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->a()Landroid/support/v7/app/c;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/smartinput5/func/asset/LoadFailedActivity;->h:Landroid/support/v7/app/c;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private d()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-static {p0, v1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/asset/LoadFailedActivity;->b()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/asset/LoadFailedActivity;->c()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/asset/LoadFailedActivity;->b()V

    return-void
.end method
