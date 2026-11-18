.class Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$d$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$d;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Landroid/preference/Preference;

.field final synthetic i:Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$d;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$d;Landroid/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$d$a;->i:Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$d;

    iput-object p2, p0, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$d$a;->h:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$d$a;->h:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/cootek/smartinput5/func/x;->f()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/cootek/smartinput5/TouchPalOption$h;

    iget-object v2, p0, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$d$a;->i:Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$d;

    iget-object v2, v2, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$d;->h:Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;

    invoke-direct {v1, v2, v0}, Lcom/cootek/smartinput5/TouchPalOption$h;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/func/m0;->executeInThreadPool([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$d$a;->i:Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$d;

    iget-object v1, v1, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$d;->h:Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;

    invoke-static {v1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
