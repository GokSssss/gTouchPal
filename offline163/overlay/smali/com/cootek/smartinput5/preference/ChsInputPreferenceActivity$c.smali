.class Lcom/cootek/smartinput5/preference/ChsInputPreferenceActivity$c;
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

    iput-object p1, p0, Lcom/cootek/smartinput5/preference/ChsInputPreferenceActivity$c;->h:Lcom/cootek/smartinput5/preference/ChsInputPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/cootek/smartinput5/preference/ChsInputPreferenceActivity$c;->h:Lcom/cootek/smartinput5/preference/ChsInputPreferenceActivity;

    const-class v1, Lcom/cootek/smartinput5/preference/FuzzyPinyinPreferenceActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/cootek/smartinput5/preference/ChsInputPreferenceActivity$c;->h:Lcom/cootek/smartinput5/preference/ChsInputPreferenceActivity;

    invoke-static {v0, p1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
