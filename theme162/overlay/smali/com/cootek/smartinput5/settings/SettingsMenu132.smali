.class public final Lcom/cootek/smartinput5/settings/SettingsMenu132;
.super Ljava/lang/Object;
.source "SettingsMenu132.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "tp_keyboard_theme132"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static install(Landroid/preference/PreferenceActivity;)V
    .locals 7

    .line 14
    const-string v0, "option_general_screen"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    const-string v1, "\u0412\u0432\u043e\u0434, \u0437\u0432\u0443\u043a, \u0431\u0443\u0444\u0435\u0440 \u0438 \u043f\u0430\u043d\u0435\u043b\u044c \u0441\u043b\u043e\u0432"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 17
    const-string v1, "option_about_screen"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 18
    if-eqz v0, :cond_c

    if-nez v1, :cond_1

    goto/16 :goto_6

    .line 19
    :cond_1
    const-string v2, "tp_keyboard_theme132"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 20
    const/4 v4, 0x0

    if-nez v3, :cond_2

    new-instance v3, Landroid/preference/Preference;

    invoke-direct {v3, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setPersistent(Z)V

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 21
    :cond_2
    const-string v2, "\u0422\u0435\u043c\u0430 \u043a\u043b\u0430\u0432\u0438\u0430\u0442\u0443\u0440\u044b"

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v2, "\u0412\u044b\u0431\u0440\u0430\u0442\u044c \u0442\u0435\u043c\u0443 \u043a\u043b\u0430\u0432\u0438\u0430\u0442\u0443\u0440\u044b"

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {v1}, Landroid/preference/Preference;->getLayoutResource()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 23
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 24
    new-instance v5, Lcom/cootek/smartinput5/settings/SettingsMenu132$1;

    invoke-direct {v5, p0}, Lcom/cootek/smartinput5/settings/SettingsMenu132$1;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 27
    const-string v5, "tp_additions"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 28
    instance-of v6, v5, Landroid/preference/PreferenceGroup;

    if-eqz v6, :cond_5

    .line 29
    check-cast v5, Landroid/preference/PreferenceGroup;

    .line 30
    invoke-static {v0, v3}, Lcom/cootek/smartinput5/settings/SettingsMenu132;->parentOf(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    .line 31
    if-eqz v1, :cond_3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 33
    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v6

    if-ge v1, v6, :cond_4

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v6, v1}, Landroid/preference/Preference;->setOrder(I)V

    goto :goto_0

    .line 34
    :cond_4
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOrder(I)V

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 35
    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Landroid/preference/Preference;->getOrder()I

    move-result v5

    const/high16 v6, -0x80000000

    if-ne v5, v6, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Landroid/preference/Preference;->getOrder()I

    move-result v1

    add-int/lit8 v6, v1, -0x1

    :goto_1
    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setOrder(I)V

    .line 36
    :goto_2
    const-string v1, "tp_main_category144"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-nez v3, :cond_b

    .line 37
    nop

    .line 38
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v5

    if-ge v3, v5, :cond_8

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    instance-of v5, v5, Landroid/preference/PreferenceCategory;

    if-eqz v5, :cond_7

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    goto :goto_4

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 39
    :cond_8
    :goto_4
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v5

    if-ge v3, v5, :cond_9

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setOrder(I)V

    goto :goto_5

    .line 40
    :cond_9
    new-instance v3, Landroid/preference/PreferenceCategory;

    invoke-direct {v3, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->setPersistent(Z)V

    const-string p0, "\u041e\u0441\u043d\u043e\u0432\u043d\u044b\u0435 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438"

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 41
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getLayoutResource()I

    move-result p0

    invoke-virtual {v3, p0}, Landroid/preference/PreferenceCategory;->setLayoutResource(I)V

    :cond_a
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 43
    :cond_b
    return-void

    .line 18
    :cond_c
    :goto_6
    return-void
.end method

.method private static parentOf(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/preference/PreferenceGroup;
    .locals 3

    .line 45
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 46
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-object p0

    .line 47
    :cond_0
    instance-of v2, v1, Landroid/preference/PreferenceGroup;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/preference/PreferenceGroup;

    invoke-static {v1, p1}, Lcom/cootek/smartinput5/settings/SettingsMenu132;->parentOf(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    .line 45
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
