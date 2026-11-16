.class public final Lcom/cootek/smartinput5/backup/BackupSettings;
.super Ljava/lang/Object;
.source "BackupSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput5/backup/BackupSettings$DictionaryShortcut;
    }
.end annotation


# static fields
.field public static final DICTIONARY_KEY:Ljava/lang/String; = "tp_dictionary_backup154"

.field public static final KEY:Ljava/lang/String; = "touchpal_full_backup"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findParent(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/preference/PreferenceGroup;
    .locals 4

    .line 73
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 74
    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 75
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 76
    if-ne v2, p1, :cond_1

    return-object p0

    .line 77
    :cond_1
    instance-of v3, v2, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_2

    .line 78
    check-cast v2, Landroid/preference/PreferenceGroup;

    invoke-static {v2, p1}, Lcom/cootek/smartinput5/backup/BackupSettings;->findParent(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/preference/PreferenceGroup;

    move-result-object v2

    .line 79
    if-eqz v2, :cond_2

    return-object v2

    .line 74
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :cond_3
    return-object v0
.end method

.method public static install(Landroid/preference/PreferenceActivity;)V
    .locals 4

    .line 17
    if-eqz p0, :cond_4

    const-string v0, "touchpal_full_backup"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 19
    if-nez v1, :cond_1

    return-void

    .line 20
    :cond_1
    const-string v2, "tp_additions"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 21
    instance-of v3, v2, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_2

    .line 22
    check-cast v2, Landroid/preference/PreferenceGroup;

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 23
    :goto_0
    new-instance v3, Lcom/cootek/smartinput5/backup/BackupSettings$DictionaryShortcut;

    invoke-direct {v3, p0}, Lcom/cootek/smartinput5/backup/BackupSettings$DictionaryShortcut;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 26
    const-string v0, "\u0420\u0435\u0437\u0435\u0440\u0432\u043d\u0430\u044f \u043a\u043e\u043f\u0438\u044f \u0438 \u0432\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u0435"

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 27
    const-string v0, "western.usr \u00b7 \u0441\u043b\u043e\u0432\u0430\u0440\u0438 \u0438 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u00b7 ZIP"

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 28
    if-ne v2, v1, :cond_3

    const/16 v0, 0x41f

    goto :goto_1

    :cond_3
    const/16 v0, 0x37

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 29
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 30
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 31
    return-void

    .line 17
    :cond_4
    :goto_2
    return-void
.end method

.method public static installDictionaryShortcut(Landroid/preference/PreferenceActivity;)V
    .locals 9

    .line 35
    const-string v0, "option_category_manager_dictionary"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 36
    instance-of v1, v0, Landroid/preference/PreferenceGroup;

    if-nez v1, :cond_0

    return-void

    .line 37
    :cond_0
    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 38
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "option_edit_dictionary"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "option_backup_dictionary"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "option_restore_dictionary"

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const-string v3, "option_rebuild_language_data"

    const/4 v5, 0x3

    aput-object v3, v2, v5

    .line 40
    nop

    .line 41
    const v3, 0x7fffffff

    const/4 v5, 0x0

    const v6, 0x7fffffff

    :goto_0
    if-ge v5, v1, :cond_2

    aget-object v7, v2, v5

    .line 42
    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 43
    if-eqz v7, :cond_1

    .line 44
    invoke-virtual {v7}, Landroid/preference/Preference;->getOrder()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 45
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/cootek/smartinput5/backup/BackupSettings;->findParent(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/preference/PreferenceGroup;

    move-result-object v8

    .line 46
    if-eqz v8, :cond_1

    invoke-virtual {v8, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 41
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 49
    :cond_2
    const-string v1, "tp_dictionary_backup154"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 50
    if-eqz v2, :cond_3

    return-void

    .line 51
    :cond_3
    new-instance v2, Lcom/cootek/smartinput5/backup/BackupSettings$DictionaryShortcut;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/backup/BackupSettings$DictionaryShortcut;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 53
    const-string v1, "\u0421\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u0438\u0435 \u0438 \u0432\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u0435 \u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u0435\u043b\u044c\u0441\u043a\u043e\u0433\u043e \u0441\u043b\u043e\u0432\u0430\u0440\u044f"

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    const-string v1, "\u0424\u0430\u0439\u043b western.usr \u0441 \u0432\u044b\u0431\u043e\u0440\u043e\u043c \u043f\u0443\u0442\u0438 \u0438\u043b\u0438 \u0441\u043b\u043e\u0432\u0430 \u0432 TXT."

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 55
    if-ne v6, v3, :cond_4

    const/16 v6, 0x19

    :cond_4
    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setOrder(I)V

    .line 56
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 57
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 58
    return-void
.end method
