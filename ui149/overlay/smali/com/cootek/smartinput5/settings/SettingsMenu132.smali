.class public final Lcom/cootek/smartinput5/settings/SettingsMenu132;
.super Ljava/lang/Object;
.source "SettingsMenu132.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "tp_keyboard_theme132"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static install(Landroid/preference/PreferenceActivity;)V
    .locals 6

    .line 13
    const-string v0, "option_general_screen"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    const-string v1, "\u0412\u0432\u043e\u0434, \u0437\u0432\u0443\u043a, \u0431\u0443\u0444\u0435\u0440 \u0438 \u043f\u0430\u043d\u0435\u043b\u044c \u0441\u043b\u043e\u0432"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 16
    const-string v1, "option_about_screen"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 17
    if-eqz v0, :cond_9

    if-nez v1, :cond_1

    goto/16 :goto_4

    .line 18
    :cond_1
    const-string v2, "tp_keyboard_theme132"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 19
    const/4 v4, 0x0

    if-nez v3, :cond_2

    new-instance v3, Landroid/preference/Preference;

    invoke-direct {v3, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setPersistent(Z)V

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 20
    :cond_2
    const-string v2, "\u0422\u0435\u043c\u0430 \u043a\u043b\u0430\u0432\u0438\u0430\u0442\u0443\u0440\u044b"

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v2, "\u0412\u044b\u0431\u0440\u0430\u0442\u044c \u0442\u0435\u043c\u0443 \u043a\u043b\u0430\u0432\u0438\u0430\u0442\u0443\u0440\u044b"

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {v1}, Landroid/preference/Preference;->getLayoutResource()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 22
    invoke-virtual {v1}, Landroid/preference/Preference;->getOrder()I

    move-result v2

    const/high16 v5, -0x80000000

    if-ne v2, v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/preference/Preference;->getOrder()I

    move-result v1

    add-int/lit8 v5, v1, -0x1

    :goto_0
    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setOrder(I)V

    .line 23
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    const-string v2, "com.cootek.smartinput5.ui.settings.SkinActivity"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    const-string v2, "SHOW_SPONSOR_THEME"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 26
    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 27
    const-string v1, "tp_main_category144"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_8

    .line 28
    nop

    .line 29
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    instance-of v3, v3, Landroid/preference/PreferenceCategory;

    if-eqz v3, :cond_4

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 30
    :goto_2
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v5

    if-ge v3, v5, :cond_6

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setOrder(I)V

    goto :goto_3

    .line 31
    :cond_6
    new-instance v3, Landroid/preference/PreferenceCategory;

    invoke-direct {v3, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->setPersistent(Z)V

    const-string p0, "\u041e\u0441\u043d\u043e\u0432\u043d\u044b\u0435 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438"

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 32
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getLayoutResource()I

    move-result p0

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceCategory;->setLayoutResource(I)V

    :cond_7
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 34
    :cond_8
    return-void

    .line 17
    :cond_9
    :goto_4
    return-void
.end method
