.class public final Lcom/cootek/smartinput5/settings/RecentSettings146;
.super Ljava/lang/Object;
.source "RecentSettings146.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput5/settings/RecentSettings146$TopLine;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static install(Landroid/preference/PreferenceActivity;)V
    .locals 8

    .line 16
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v1, "option_about_screen"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 17
    :cond_0
    const-string v1, "tp_recent_category146"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 18
    instance-of v3, v2, Landroid/preference/PreferenceCategory;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    check-cast v2, Landroid/preference/PreferenceCategory;

    goto :goto_1

    .line 20
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    instance-of v6, v5, Landroid/preference/PreferenceCategory;

    if-eqz v6, :cond_2

    move-object v2, v5

    check-cast v2, Landroid/preference/PreferenceCategory;

    :cond_2
    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setOrder(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 21
    :cond_3
    new-instance v3, Landroid/preference/PreferenceCategory;

    invoke-direct {v3, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->setPersistent(Z)V

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    const-string v1, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u044f\u044f \u0438\u0437\u043c\u0435\u043d\u0451\u043d\u043d\u0430\u044f \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430"

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getLayoutResource()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceCategory;->setLayoutResource(I)V

    :cond_4
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    move-object v2, v3

    .line 23
    :goto_1
    const-string v1, "tp_development_history"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 24
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    if-ge v3, v6, :cond_6

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    if-eq v6, v2, :cond_5

    if-eq v6, v1, :cond_5

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setOrder(I)V

    move v5, v7

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 25
    :cond_6
    const-string v3, "tp_recent_setting146"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 26
    if-nez v6, :cond_7

    new-instance v6, Landroid/preference/Preference;

    invoke-direct {v6, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setPersistent(Z)V

    invoke-virtual {v6, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setOrder(I)V

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 27
    :cond_7
    const-string v3, "\u041a\u043e\u043b\u0438\u0447\u0435\u0441\u0442\u0432\u043e \u043f\u0440\u0435\u0434\u043b\u0430\u0433\u0430\u0435\u043c\u044b\u0445 \u0441\u043b\u043e\u0432"

    invoke-virtual {v6, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/cootek/smartinput5/settings/CandidatePanel141;->count(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, " \u0441\u043b\u043e\u0432 \u00b7 \u043f\u0430\u043d\u0435\u043b\u044c \u043f\u0440\u0435\u0434\u043b\u0430\u0433\u0430\u0435\u043c\u044b\u0445 \u0441\u043b\u043e\u0432"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 29
    new-instance p0, Lcom/cootek/smartinput5/settings/RecentSettings146$1;

    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/RecentSettings146$1;-><init>()V

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 30
    if-eqz v1, :cond_a

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/settings/RecentSettings146;->parent(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/preference/PreferenceGroup;

    move-result-object p0

    if-eq p0, v0, :cond_9

    if-eqz p0, :cond_8

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_9
    add-int/lit8 p0, v5, 0x1

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setOrder(I)V

    move v5, p0

    .line 31
    :cond_a
    const-string p0, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u0438\u0439 \u0438\u0437\u043c\u0435\u043d\u0451\u043d\u043d\u044b\u0439 \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440"

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 32
    return-void

    .line 16
    :cond_b
    :goto_3
    return-void
.end method

.method private static parent(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/preference/PreferenceGroup;
    .locals 3

    .line 12
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-object p0

    :cond_0
    instance-of v2, v1, Landroid/preference/PreferenceGroup;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/preference/PreferenceGroup;

    invoke-static {v1, p1}, Lcom/cootek/smartinput5/settings/RecentSettings146;->parent(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static separator(Landroid/view/View;Z)V
    .locals 1

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 35
    if-eqz p1, :cond_0

    instance-of p1, v0, Lcom/cootek/smartinput5/settings/RecentSettings146$TopLine;

    if-nez p1, :cond_1

    new-instance p1, Lcom/cootek/smartinput5/settings/RecentSettings146$TopLine;

    invoke-direct {p1, v0, p0}, Lcom/cootek/smartinput5/settings/RecentSettings146$TopLine;-><init>(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 36
    :cond_0
    instance-of p1, v0, Lcom/cootek/smartinput5/settings/RecentSettings146$TopLine;

    if-eqz p1, :cond_1

    check-cast v0, Lcom/cootek/smartinput5/settings/RecentSettings146$TopLine;

    iget-object p1, v0, Lcom/cootek/smartinput5/settings/RecentSettings146$TopLine;->original:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    :cond_1
    :goto_0
    return-void
.end method
