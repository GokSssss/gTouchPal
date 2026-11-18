.class public Lcom/cootek/smartinput5/ui/settings/SkinActivity;
.super Lcom/cootek/smartinput5/func/resource/ui/b;


# static fields
.field private static final h:Ljava/lang/String; = "SkinActivity"

.field public static final i:Ljava/lang/String; = "CURRENT_SKIN"

.field public static final j:Ljava/lang/String; = "SHOW_SPONSOR_THEME"

.field public static final k:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/resource/ui/b;-><init>()V

    return-void
.end method

.method private h(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    new-instance p1, Ljava/io/File;

    const-string v1, "skin"

    invoke-static {v1}, Lcom/cootek/smartinput5/func/x;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/cootek/smartinput/utilities/c;->d(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/net/URISyntaxException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private i(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SHOW_SPONSOR_THEME"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "CURRENT_SKIN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/i0;->i0(Ljava/lang/String;)Lcom/cootek/smartinput5/func/h0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cootek/smartinput5/func/skin/SponsorThemeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.cootek.smartinput5.func.skin.SponsorThemeActivity.EXTRA_SKIN_PKG"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string p1, "theme"

    const-string v0, "source_plugin_skin"

    invoke-static {p0, p1, v0, v2}, Lcom/cootek/rnstore/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {p0}, Lcom/cootek/smartinput5/mod/ThemeMod;->initDark(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Lcom/cootek/smartinput5/func/resource/ui/b;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const p1, 0x7f0c0123

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    :try_start_0
    invoke-static {p0}, Lcom/cootek/smartinput5/func/z;->G0(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/cootek/smartinput5/func/asset/ExtractAssetsException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/settings/SkinActivity;->h(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/settings/SkinActivity;->i(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    new-instance p1, Lcom/cootek/smartinput5/ui/settings/SkinActivity$a;

    invoke-direct {p1, p0}, Lcom/cootek/smartinput5/ui/settings/SkinActivity$a;-><init>(Lcom/cootek/smartinput5/ui/settings/SkinActivity;)V

    new-instance v0, Lcom/cootek/smartinput5/ui/settings/SkinActivity$b;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/ui/settings/SkinActivity$b;-><init>(Lcom/cootek/smartinput5/ui/settings/SkinActivity;)V

    invoke-static {p0, p1, v0}, Lcom/cootek/smartinput5/func/asset/c;->b(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/actionflow/a;->f()Lcom/cootek/smartinput5/actionflow/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/actionflow/a;->k()V

    invoke-static {}, Lcom/cootek/smartinput5/actionflow/StatesCollector;->g()Lcom/cootek/smartinput5/actionflow/StatesCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/actionflow/StatesCollector;->l()V

    invoke-super {p0}, Lcom/cootek/smartinput5/func/resource/ui/b;->onDestroy()V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->A()V

    return-void
.end method
