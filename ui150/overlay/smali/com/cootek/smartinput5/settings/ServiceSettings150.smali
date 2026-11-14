.class public final Lcom/cootek/smartinput5/settings/ServiceSettings150;
.super Ljava/lang/Object;
.source "ServiceSettings150.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput5/settings/ServiceSettings150$JournalHold;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static install(Landroid/preference/PreferenceActivity;)V
    .locals 6

    .line 11
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    const-string v1, "tp_development_history"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 13
    const-string v2, "tp_diagnostics"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 14
    if-eqz v1, :cond_4

    instance-of v3, v2, Landroid/preference/PreferenceScreen;

    if-nez v3, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 16
    invoke-virtual {v3}, Landroid/widget/ListView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v4

    .line 17
    instance-of v5, v4, Lcom/cootek/smartinput5/settings/ServiceSettings150$JournalHold;

    if-eqz v5, :cond_2

    check-cast v4, Lcom/cootek/smartinput5/settings/ServiceSettings150$JournalHold;

    iget-object v4, v4, Lcom/cootek/smartinput5/settings/ServiceSettings150$JournalHold;->previous:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 18
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object p0

    .line 19
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 20
    invoke-static {v0, v2}, Lcom/cootek/smartinput5/settings/ServiceSettings150;->remove(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 21
    :cond_3
    invoke-virtual {p0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 22
    new-instance v0, Lcom/cootek/smartinput5/settings/ServiceSettings150$JournalHold;

    invoke-direct {v0, v1, p0, v4}, Lcom/cootek/smartinput5/settings/ServiceSettings150$JournalHold;-><init>(Landroid/preference/Preference;Landroid/preference/PreferenceScreen;Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 23
    const/4 p0, 0x1

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 24
    return-void

    .line 14
    :cond_4
    :goto_0
    return-void
.end method

.method private static remove(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z
    .locals 4

    .line 26
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 27
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 28
    if-ne v2, p1, :cond_0

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result p0

    return p0

    .line 29
    :cond_0
    instance-of v3, v2, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/preference/PreferenceGroup;

    invoke-static {v2, p1}, Lcom/cootek/smartinput5/settings/ServiceSettings150;->remove(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    .line 26
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    :cond_2
    return v0
.end method
