.class Lcom/cootek/smartinput5/preference/ChsInputPreferenceActivity$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/preference/ChsInputPreferenceActivity;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/cootek/smartinput5/preference/ChsInputPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/preference/ChsInputPreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/preference/ChsInputPreferenceActivity$b;->h:Lcom/cootek/smartinput5/preference/ChsInputPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->d0()Lcom/cootek/smartinput5/func/N;

    move-result-object p1

    const-string v0, "chinese_pinyin"

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/func/N;->S0(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cootek/smartinput5/preference/ChsInputPreferenceActivity$b;->h:Lcom/cootek/smartinput5/preference/ChsInputPreferenceActivity;

    invoke-static {p1}, Lcom/cootek/smartinput5/preference/ChsInputPreferenceActivity;->M(Lcom/cootek/smartinput5/preference/ChsInputPreferenceActivity;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->d0()Lcom/cootek/smartinput5/func/N;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/func/N;->O0(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object p1

    iget-object v0, p0, Lcom/cootek/smartinput5/preference/ChsInputPreferenceActivity$b;->h:Lcom/cootek/smartinput5/preference/ChsInputPreferenceActivity;

    const v1, 0x7f0f04f1

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/preference/ChsInputPreferenceActivity;->N(Lcom/cootek/smartinput5/preference/ChsInputPreferenceActivity;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/ui/control/E;->s(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/cootek/smartinput5/preference/ChsInputPreferenceActivity$b;->h:Lcom/cootek/smartinput5/preference/ChsInputPreferenceActivity;

    const-class v1, Lcom/cootek/smartinput5/func/asset/UpdatePinyinActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/cootek/smartinput5/preference/ChsInputPreferenceActivity$b;->h:Lcom/cootek/smartinput5/preference/ChsInputPreferenceActivity;

    invoke-static {v0, p1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
