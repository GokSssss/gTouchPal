.class Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;->P()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$a;->h:Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$a;->h:Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;

    const-class v1, Lcom/cootek/smartinput5/TPAboutPageActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$a;->h:Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;

    invoke-static {v0, p1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
