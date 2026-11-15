.class Lcom/cootek/smartinput5/settings/KeyboardActivation152$1;
.super Ljava/lang/Object;
.source "KeyboardActivation152.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/settings/KeyboardActivation152;->install(Landroid/preference/PreferenceActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/preference/PreferenceActivity;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/cootek/smartinput5/settings/KeyboardActivation152$1;->val$activity:Landroid/preference/PreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .line 70
    :try_start_0
    iget-object p1, p0, Lcom/cootek/smartinput5/settings/KeyboardActivation152$1;->val$activity:Landroid/preference/PreferenceActivity;

    invoke-static {p1}, Lcom/cootek/smartinput5/settings/KeyboardActivation152;->enabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/cootek/smartinput5/settings/KeyboardActivation152$1;->val$activity:Landroid/preference/PreferenceActivity;

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 72
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_0

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/cootek/smartinput5/settings/KeyboardActivation152$1;->val$activity:Landroid/preference/PreferenceActivity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    nop

    .line 74
    nop

    .line 75
    const/4 p1, 0x1

    return p1

    .line 74
    :catch_0
    move-exception p1

    const/4 p1, 0x0

    return p1
.end method
