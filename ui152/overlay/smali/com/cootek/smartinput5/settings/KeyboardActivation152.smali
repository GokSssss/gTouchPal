.class public final Lcom/cootek/smartinput5/settings/KeyboardActivation152;
.super Ljava/lang/Object;
.source "KeyboardActivation152.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput5/settings/KeyboardActivation152$Activation;
    }
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "tp_enable_touchpal152"

.field public static final RED:I = -0x1aacad

.field private static final SERVICE:Ljava/lang/String; = "com.cootek.smartinput5.TouchPalIME"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static active(Landroid/content/Context;)Z
    .locals 3

    .line 33
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/KeyboardActivation152;->enabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/cootek/smartinput5/settings/KeyboardActivation152;->component(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 35
    :catch_0
    move-exception p0

    return v0
.end method

.method private static component(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2

    .line 21
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.cootek.smartinput5.TouchPalIME"

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static enabled(Landroid/content/Context;)Z
    .locals 6

    .line 24
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 25
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 26
    :cond_0
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 27
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/KeyboardActivation152;->component(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    .line 28
    :cond_1
    goto :goto_0

    .line 29
    :cond_2
    return v1
.end method

.method public static install(Landroid/preference/PreferenceActivity;)V
    .locals 6

    .line 51
    const-string v0, "tp_system_keyboard_settings"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 52
    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cootek/smartinput5/settings/KeyboardActivation152;->parent(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    .line 54
    if-nez v1, :cond_1

    return-void

    .line 55
    :cond_1
    const-string v2, "tp_enable_touchpal152"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 57
    instance-of v4, v3, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Activation;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Activation;

    goto :goto_1

    .line 59
    :cond_2
    if-eqz v3, :cond_3

    return-void

    .line 60
    :cond_3
    new-instance v3, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Activation;

    invoke-direct {v3, p0}, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Activation;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-virtual {v3, v2}, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Activation;->setKey(Ljava/lang/String;)V

    .line 62
    const-string v2, "\u0412\u043a\u043b\u044e\u0447\u0438\u0442\u044c TouchPal"

    invoke-virtual {v3, v2}, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Activation;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Activation;->setPersistent(Z)V

    .line 64
    invoke-virtual {v0}, Landroid/preference/Preference;->getLayoutResource()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Activation;->setLayoutResource(I)V

    .line 65
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_4

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x2

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOrder(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 66
    :cond_4
    invoke-virtual {v0}, Landroid/preference/Preference;->getOrder()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Activation;->setOrder(I)V

    .line 67
    new-instance v0, Lcom/cootek/smartinput5/settings/KeyboardActivation152$1;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/settings/KeyboardActivation152$1;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-virtual {v3, v0}, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Activation;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 78
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 80
    :goto_1
    invoke-virtual {v3}, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Activation;->refresh()V

    .line 81
    return-void
.end method

.method static parent(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/preference/PreferenceGroup;
    .locals 4

    .line 38
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 39
    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 40
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 41
    if-ne v2, p1, :cond_1

    return-object p0

    .line 42
    :cond_1
    instance-of v3, v2, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_2

    .line 43
    check-cast v2, Landroid/preference/PreferenceGroup;

    invoke-static {v2, p1}, Lcom/cootek/smartinput5/settings/KeyboardActivation152;->parent(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/preference/PreferenceGroup;

    move-result-object v2

    .line 44
    if-eqz v2, :cond_2

    return-object v2

    .line 39
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_3
    return-object v0
.end method
