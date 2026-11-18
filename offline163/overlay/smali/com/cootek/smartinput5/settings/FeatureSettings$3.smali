.class Lcom/cootek/smartinput5/settings/FeatureSettings$3;
.super Ljava/lang/Object;
.source "FeatureSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/settings/FeatureSettings;->link(Landroid/preference/PreferenceActivity;Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$activity:Landroid/preference/PreferenceActivity;

.field final synthetic val$component:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/preference/PreferenceActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/cootek/smartinput5/settings/FeatureSettings$3;->val$component:Ljava/lang/String;

    iput-object p2, p0, Lcom/cootek/smartinput5/settings/FeatureSettings$3;->val$activity:Landroid/preference/PreferenceActivity;

    iput-object p3, p0, Lcom/cootek/smartinput5/settings/FeatureSettings$3;->val$action:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .line 155
    iget-object p1, p0, Lcom/cootek/smartinput5/settings/FeatureSettings$3;->val$component:Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 156
    :try_start_0
    iget-object p1, p0, Lcom/cootek/smartinput5/settings/FeatureSettings$3;->val$activity:Landroid/preference/PreferenceActivity;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    iget-object v3, p0, Lcom/cootek/smartinput5/settings/FeatureSettings$3;->val$component:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 157
    :catch_0
    move-exception p1

    .line 159
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/cootek/smartinput5/settings/FeatureSettings$3;->val$activity:Landroid/preference/PreferenceActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cootek/smartinput5/settings/FeatureSettings$3;->val$action:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 168
    goto :goto_0

    .line 160
    :catch_1
    move-exception p1

    .line 161
    const-string p1, "android.settings.INPUT_METHOD_SETTINGS"

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/FeatureSettings$3;->val$action:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 162
    iget-object p1, p0, Lcom/cootek/smartinput5/settings/FeatureSettings$3;->val$activity:Landroid/preference/PreferenceActivity;

    const-string v2, "\u042d\u0442\u043e\u0442 \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u044b\u0439 \u044d\u043a\u0440\u0430\u043d \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u0435\u043d \u043d\u0430 \u043f\u0440\u043e\u0448\u0438\u0432\u043a\u0435"

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v0

    .line 164
    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/cootek/smartinput5/settings/FeatureSettings$3;->val$activity:Landroid/preference/PreferenceActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 167
    goto :goto_0

    .line 165
    :catch_2
    move-exception p1

    .line 166
    iget-object p1, p0, Lcom/cootek/smartinput5/settings/FeatureSettings$3;->val$activity:Landroid/preference/PreferenceActivity;

    const-string v2, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043e\u0442\u043a\u0440\u044b\u0442\u044c \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u044b\u0435 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438"

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 169
    :goto_0
    return v0
.end method
