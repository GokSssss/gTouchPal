.class public final Lcom/cootek/smartinput5/settings/CandidatePanel141;
.super Ljava/lang/Object;
.source "CandidatePanel141.java"


# static fields
.field public static final COUNT_KEY:Ljava/lang/String; = "option_eng_candidate_max_words_list"

.field private static final COUNT_STORE:Ljava/lang/String; = "eng_candidate_max_words_custom"

.field public static final EXTRA_BUTTONS:Ljava/lang/String; = "touchpal.candidate.buttons"

.field public static final EXTRA_COUNT:Ljava/lang/String; = "touchpal.candidate.count"

.field private static final MIGRATED:Ljava/lang/String; = "tp_unified_candidate_count149"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static choose(Landroid/content/Context;I)Z
    .locals 6

    .line 54
    const/4 v0, 0x3

    const/4 v1, 0x0

    if-lt p1, v0, :cond_4

    const/16 v0, 0x8

    if-le p1, v0, :cond_0

    goto :goto_2

    .line 55
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 56
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "option_forbid_simple_candidate_style"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "eng_candidate_max_words_custom"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "option_eng_candidate_max_words_list"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "tp_unified_candidate_count149"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 57
    :cond_1
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/CandidatePanel141;->count(Landroid/content/Context;)I

    move-result p0

    if-ne p0, p1, :cond_3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, ""

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    .line 58
    :cond_2
    invoke-static {p1}, Lcom/cootek/smartinput5/ui/settings/EngCandidateMaxWordsListPreference;->setCachedValue(I)V

    .line 59
    const/4 p0, 0x6

    :try_start_0
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->refresh(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 60
    :goto_0
    return v4

    .line 57
    :cond_3
    :goto_1
    return v1

    .line 54
    :cond_4
    :goto_2
    return v1
.end method

.method public static configure(Landroid/preference/PreferenceActivity;)V
    .locals 5

    .line 72
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/CandidatePanel141;->migrate(Landroid/content/Context;)V

    .line 73
    const-string v0, "option_forbid_simple_candidate_style"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 74
    instance-of v1, v0, Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 77
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cootek/smartinput5/settings/CandidatePanel141;->detachDependencies(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 78
    :cond_1
    const-string v1, "option_genreal_screen_category_candidates"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_2

    const-string v3, "\u041f\u0430\u043d\u0435\u043b\u044c \u043f\u0440\u0435\u0434\u043b\u0430\u0433\u0430\u0435\u043c\u044b\u0445 \u0441\u043b\u043e\u0432"

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    :cond_2
    const-string v1, "option_eng_candidate_max_words_list"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 81
    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v4, "\u041a\u043e\u043b\u0438\u0447\u0435\u0441\u0442\u0432\u043e \u043f\u0440\u0435\u0434\u043b\u0430\u0433\u0430\u0435\u043c\u044b\u0445 \u0441\u043b\u043e\u0432"

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/cootek/smartinput5/settings/CandidatePanel141;->count(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 82
    :cond_3
    const-string v1, "option_candidate_buttons_config"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_4

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v2, "\u041a\u043d\u043e\u043f\u043a\u0438 \u043f\u0430\u043d\u0435\u043b\u0438 \u043f\u0440\u0435\u0434\u043b\u0430\u0433\u0430\u0435\u043c\u044b\u0445 \u0441\u043b\u043e\u0432"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v2, "\u041b\u0435\u0432\u0430\u044f \u0438 \u043f\u0440\u0430\u0432\u0430\u044f \u043a\u043d\u043e\u043f\u043a\u0438 \u2014 \u0432\u044b\u0431\u043e\u0440 \u043d\u0430 \u043c\u0430\u043a\u0435\u0442\u0435 \u0434\u043b\u044f \u043b\u044e\u0431\u043e\u0433\u043e \u043a\u043e\u043b\u0438\u0447\u0435\u0441\u0442\u0432\u0430 \u0441\u043b\u043e\u0432"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 84
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/cootek/smartinput5/settings/CandidatePanel141;->remove(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 85
    :cond_5
    return-void
.end method

.method public static count(Landroid/content/Context;)I
    .locals 0

    .line 23
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 24
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/CandidatePanel141;->storedCount(Landroid/content/SharedPreferences;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 26
    :catch_0
    move-exception p0

    const/4 p0, 0x4

    return p0
.end method

.method private static detachDependencies(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
    .locals 5

    .line 87
    if-nez p0, :cond_0

    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 89
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 90
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    invoke-virtual {v2, p1, v0}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    .line 91
    :cond_1
    instance-of v3, v2, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/preference/PreferenceGroup;

    invoke-static {v2, p1}, Lcom/cootek/smartinput5/settings/CandidatePanel141;->detachDependencies(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 88
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_3
    return-void
.end method

.method public static migrate(Landroid/content/Context;)V
    .locals 7

    .line 29
    if-nez p0, :cond_0

    return-void

    .line 30
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 31
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/CandidatePanel141;->storedCount(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 34
    const/4 v1, 0x0

    const-string v2, "tp_unified_candidate_count149"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 35
    const-string v3, "option_eng_candidate_max_words_list"

    const-string v4, "option_forbid_simple_candidate_style"

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, ""

    invoke-interface {p0, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 37
    :cond_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 38
    const-string v1, "eng_candidate_max_words_custom"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 39
    invoke-interface {p0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-nez p0, :cond_2

    return-void

    .line 41
    :cond_2
    invoke-static {v0}, Lcom/cootek/smartinput5/ui/settings/EngCandidateMaxWordsListPreference;->setCachedValue(I)V

    .line 42
    return-void
.end method

.method private static open(Landroid/preference/Preference;Ljava/lang/String;)Z
    .locals 2

    .line 66
    :try_start_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cootek/smartinput5/ui/settings/KeyboardCustomizeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 67
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    :cond_0
    invoke-static {p0, p1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 69
    :catch_0
    move-exception p0

    const/4 p0, 0x0

    return p0
.end method

.method public static openButtons(Landroid/preference/Preference;)Z
    .locals 1

    .line 63
    const-string v0, "touchpal.candidate.buttons"

    invoke-static {p0, v0}, Lcom/cootek/smartinput5/settings/CandidatePanel141;->open(Landroid/preference/Preference;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static openCount(Landroid/preference/Preference;)Z
    .locals 1

    .line 62
    const-string v0, "touchpal.candidate.count"

    invoke-static {p0, v0}, Lcom/cootek/smartinput5/settings/CandidatePanel141;->open(Landroid/preference/Preference;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static remove(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z
    .locals 4

    .line 95
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 96
    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    if-ne v2, p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result p0

    return p0

    :cond_1
    instance-of v3, v2, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/preference/PreferenceGroup;

    invoke-static {v2, p1}, Lcom/cootek/smartinput5/settings/CandidatePanel141;->remove(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_3
    return v0
.end method

.method private static storedCount(Landroid/content/SharedPreferences;)I
    .locals 4

    .line 44
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    const-string v1, "eng_candidate_max_words_custom"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    instance-of v1, v0, Ljava/lang/Number;

    const/16 v2, 0x8

    const/4 v3, 0x3

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lt v0, v3, :cond_0

    if-gt v0, v2, :cond_0

    return v0

    .line 46
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    const-string v1, "option_eng_candidate_max_words_list"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 47
    :try_start_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v0, v3, :cond_1

    if-gt v0, v2, :cond_1

    return v0

    :catch_0
    move-exception v0

    .line 48
    :cond_1
    const-string v0, "tp_unified_candidate_count149"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 49
    const-string v0, "option_forbid_simple_candidate_style"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_2

    return v3

    .line 51
    :cond_2
    const/4 p0, 0x4

    return p0
.end method
