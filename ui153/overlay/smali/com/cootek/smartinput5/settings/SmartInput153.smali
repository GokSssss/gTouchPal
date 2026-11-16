.class public final Lcom/cootek/smartinput5/settings/SmartInput153;
.super Ljava/lang/Object;
.source "SmartInput153.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput5/settings/SmartInput153$SectionLine;
    }
.end annotation


# static fields
.field static final CONTEXT:Ljava/lang/String; = "option_advanced_prediction"

.field static final GENERAL:Ljava/lang/String; = "tp153_smart_general"

.field private static final GENERAL_KEYS:[Ljava/lang/String;

.field static final SPACE:Ljava/lang/String; = "option_space_to_input_nextword"

.field static final T9:Ljava/lang/String; = "tp153_t9"

.field private static final T9_KEYS:[Ljava/lang/String;

.field static final WAVE:Ljava/lang/String; = "tp153_wave"

.field private static final WAVE_KEYS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 19
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "option_curve"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "option_wave"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "option_wave_without_next_word_on_candidate"

    aput-object v5, v1, v4

    sput-object v1, Lcom/cootek/smartinput5/settings/SmartInput153;->WAVE_KEYS:[Ljava/lang/String;

    .line 20
    new-array v1, v4, [Ljava/lang/String;

    const-string v5, "option_predict"

    aput-object v5, v1, v2

    const-string v5, "option_auto_correction"

    aput-object v5, v1, v3

    sput-object v1, Lcom/cootek/smartinput5/settings/SmartInput153;->T9_KEYS:[Ljava/lang/String;

    .line 21
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v5, "option_auto_save"

    aput-object v5, v1, v2

    const-string v2, "option_advanced_prediction"

    aput-object v2, v1, v3

    const-string v2, "option_space_to_input_nextword"

    aput-object v2, v1, v4

    const-string v2, "option_auto_space"

    aput-object v2, v1, v0

    const-string v0, "smartdash"

    const/4 v2, 0x4

    aput-object v0, v1, v2

    const-string v0, "option_emoji_prediction"

    const/4 v2, 0x5

    aput-object v0, v1, v2

    const-string v0, "option_auto_capitalization"

    const/4 v2, 0x6

    aput-object v0, v1, v2

    sput-object v1, Lcom/cootek/smartinput5/settings/SmartInput153;->GENERAL_KEYS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static category(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;I)Landroid/preference/PreferenceCategory;
    .locals 2

    .line 58
    invoke-virtual {p0, p2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 60
    instance-of v1, v0, Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/preference/PreferenceCategory;

    goto :goto_0

    .line 61
    :cond_0
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceCategory;->setPersistent(Z)V

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 62
    :goto_0
    invoke-virtual {v0, p3}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p4}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    return-object v0
.end method

.method static heading(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/cootek/smartinput5/settings/SmartInput153$SectionLine;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cootek/smartinput5/settings/SmartInput153$SectionLine;

    iget-object v0, v0, Lcom/cootek/smartinput5/settings/SmartInput153$SectionLine;->base:Landroid/graphics/drawable/Drawable;

    .line 85
    :cond_0
    invoke-static {p1}, Lcom/cootek/smartinput5/settings/SmartInput153;->ownHeading(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "tp153_wave"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/cootek/smartinput5/settings/SmartInput153$SectionLine;

    invoke-direct {p1, v0, p0}, Lcom/cootek/smartinput5/settings/SmartInput153$SectionLine;-><init>(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Lcom/cootek/smartinput5/settings/SmartInput153$SectionLine;

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    :cond_2
    :goto_0
    return-void
.end method

.method public static install(Landroid/preference/PreferenceActivity;)V
    .locals 8

    .line 25
    const-string v0, "option_predict"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 26
    if-nez v1, :cond_0

    return-void

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 28
    const-string v3, "tp153_wave"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 29
    const-string v5, "tp153_t9"

    if-nez v4, :cond_1

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 30
    :cond_1
    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v4

    :goto_0
    invoke-static {v2, v1}, Lcom/cootek/smartinput5/settings/KeyboardActivation152;->parent(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    .line 31
    if-nez v1, :cond_3

    return-void

    .line 32
    :cond_3
    sget-object v2, Lcom/cootek/smartinput5/settings/SmartInput153;->WAVE_KEYS:[Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/cootek/smartinput5/settings/SmartInput153;->present(Landroid/preference/PreferenceActivity;[Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    const-string v2, "Wave"

    const/4 v6, 0x0

    invoke-static {p0, v1, v3, v2, v6}, Lcom/cootek/smartinput5/settings/SmartInput153;->category(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;I)Landroid/preference/PreferenceCategory;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, v4

    .line 33
    :goto_1
    const-string v3, "T9"

    const/16 v6, 0xa

    invoke-static {p0, v1, v5, v3, v6}, Lcom/cootek/smartinput5/settings/SmartInput153;->category(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;I)Landroid/preference/PreferenceCategory;

    move-result-object v3

    .line 34
    const-string v5, "\u041e\u0431\u0449\u0438\u0435 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438"

    const/16 v6, 0x14

    const-string v7, "tp153_smart_general"

    invoke-static {p0, v1, v7, v5, v6}, Lcom/cootek/smartinput5/settings/SmartInput153;->category(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;I)Landroid/preference/PreferenceCategory;

    move-result-object v1

    .line 35
    sget-object v5, Lcom/cootek/smartinput5/settings/SmartInput153;->WAVE_KEYS:[Ljava/lang/String;

    invoke-static {p0, v2, v5}, Lcom/cootek/smartinput5/settings/SmartInput153;->move(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceGroup;[Ljava/lang/String;)V

    sget-object v2, Lcom/cootek/smartinput5/settings/SmartInput153;->T9_KEYS:[Ljava/lang/String;

    invoke-static {p0, v3, v2}, Lcom/cootek/smartinput5/settings/SmartInput153;->move(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceGroup;[Ljava/lang/String;)V

    sget-object v2, Lcom/cootek/smartinput5/settings/SmartInput153;->GENERAL_KEYS:[Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/cootek/smartinput5/settings/SmartInput153;->move(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceGroup;[Ljava/lang/String;)V

    .line 36
    const-string v1, "\u041f\u0440\u0435\u0434\u0443\u0433\u0430\u0434\u044b\u0432\u0430\u043d\u0438\u0435/\u04229"

    const-string v2, "\u04229 \u043a\u043b\u0430\u0432\u0438\u0430\u0442\u0443\u0440\u0430: \u043f\u043e\u0434\u0431\u043e\u0440 \u0441\u043b\u043e\u0432\u0430 \u043f\u043e \u0433\u0440\u0443\u043f\u043f\u0430\u043c \u0431\u0443\u043a\u0432. \u041f\u043e\u043b\u043d\u0430\u044f: \u0434\u043e\u043f\u043e\u043b\u043d\u044f\u0442\u044c \u043d\u0430\u0431\u0438\u0440\u0430\u0435\u043c\u043e\u0435 \u0441\u043b\u043e\u0432\u043e."

    invoke-static {p0, v0, v1, v2}, Lcom/cootek/smartinput5/settings/SmartInput153;->label(Landroid/preference/PreferenceActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "\u0410\u0432\u0442\u043e\u0437\u0430\u043c\u0435\u043d\u0430"

    const-string v1, "\u041f\u0440\u043e\u0431\u0435\u043b\u043e\u043c \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u0435\u0441\u043a\u0438 \u0438\u0441\u043f\u0440\u0430\u0432\u043b\u044f\u0442\u044c \u043e\u043f\u0435\u0447\u0430\u0442\u043a\u0438 \u0438 \u043e\u0448\u0438\u0431\u043a\u0438 \u043f\u0440\u0438 \u043d\u0430\u0431\u043e\u0440\u0435 \u0442\u0435\u043a\u0441\u0442\u0430."

    const-string v2, "option_auto_correction"

    invoke-static {p0, v2, v0, v1}, Lcom/cootek/smartinput5/settings/SmartInput153;->label(Landroid/preference/PreferenceActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v0, "\u041a\u043e\u043d\u0442\u0435\u043a\u0441\u0442\u043d\u043e\u0435 \u043f\u0440\u043e\u0433\u043d\u043e\u0437\u0438\u0440\u043e\u0432\u0430\u043d\u0438\u0435"

    const-string v1, "\u041f\u0440\u0435\u0434\u043b\u0430\u0433\u0430\u0442\u044c \u0441\u043b\u0435\u0434\u0443\u044e\u0449\u0435\u0435 \u0441\u043b\u043e\u0432\u043e \u043f\u043e \u043a\u043e\u043d\u0442\u0435\u043a\u0441\u0442\u0443."

    const-string v2, "option_advanced_prediction"

    invoke-static {p0, v2, v0, v1}, Lcom/cootek/smartinput5/settings/SmartInput153;->label(Landroid/preference/PreferenceActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "\u0412\u044b\u0431\u0438\u0440\u0430\u0442\u044c \u0441\u043b\u0435\u0434. \u0441\u043b\u043e\u0432\u043e \u043f\u0440\u043e\u0431\u0435\u043b\u043e\u043c"

    const-string v1, "\u0414\u043e \u043d\u0430\u0447\u0430\u043b\u0430 \u043d\u0430\u0431\u043e\u0440\u0430 \u043f\u0440\u043e\u0431\u0435\u043b \u0432\u044b\u0431\u0438\u0440\u0430\u0435\u0442 \u043f\u0435\u0440\u0432\u044b\u0439 \u0432\u0430\u0440\u0438\u0430\u043d\u0442 \u043a\u043e\u043d\u0442\u0435\u043a\u0441\u0442\u043d\u043e\u0433\u043e \u043f\u0440\u043e\u0433\u043d\u043e\u0437\u0430."

    const-string v3, "option_space_to_input_nextword"

    invoke-static {p0, v3, v0, v1}, Lcom/cootek/smartinput5/settings/SmartInput153;->label(Landroid/preference/PreferenceActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v0, "option_curve"

    const-string v1, "\u0412\u0435\u0434\u0438\u0442\u0435 \u043f\u0430\u043b\u044c\u0446\u0435\u043c \u043f\u043e \u0431\u0443\u043a\u0432\u0430\u043c \u043e\u0434\u043d\u043e\u0433\u043e \u0441\u043b\u043e\u0432\u0430. \u041e\u0442\u043f\u0443\u0441\u0442\u0438\u0442\u0435 \u043f\u0430\u043b\u0435\u0446, \u0447\u0442\u043e\u0431\u044b \u0437\u0430\u0432\u0435\u0440\u0448\u0438\u0442\u044c \u0432\u0432\u043e\u0434."

    invoke-static {p0, v0, v4, v1}, Lcom/cootek/smartinput5/settings/SmartInput153;->label(Landroid/preference/PreferenceActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v0, "option_wave"

    const-string v1, "\u0412\u0432\u043e\u0434\u0438\u0442\u0435 \u0444\u0440\u0430\u0437\u044b \u0436\u0435\u0441\u0442\u0430\u043c\u0438, \u0432\u044b\u0431\u0438\u0440\u0430\u044f \u0441\u043b\u043e\u0432\u0430 \u0438\u0437 \u043f\u043e\u0434\u0441\u043a\u0430\u0437\u043e\u043a \u0431\u0435\u0437 \u043e\u0431\u044b\u0447\u043d\u043e\u0433\u043e \u043d\u0430\u0431\u043e\u0440\u0430."

    invoke-static {p0, v0, v4, v1}, Lcom/cootek/smartinput5/settings/SmartInput153;->label(Landroid/preference/PreferenceActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "option_wave_without_next_word_on_candidate"

    const-string v1, "\u0421\u043a\u0440\u044b\u0432\u0430\u0442\u044c \u0441\u043b\u0435\u0434\u0443\u044e\u0449\u0438\u0435 \u0441\u043b\u043e\u0432\u0430 \u0432 \u043f\u0440\u0435\u0434\u043b\u043e\u0436\u043a\u0435 Wave. \u0414\u043e\u0441\u0442\u0443\u043f\u043d\u043e, \u043a\u043e\u0433\u0434\u0430 \u0432\u043a\u043b\u044e\u0447\u0451\u043d \u0440\u0435\u0436\u0438\u043c Wave."

    invoke-static {p0, v0, v4, v1}, Lcom/cootek/smartinput5/settings/SmartInput153;->label(Landroid/preference/PreferenceActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "option_auto_save"

    const-string v1, "\u0410\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u0435\u0441\u043a\u0438 \u0441\u043e\u0445\u0440\u0430\u043d\u044f\u0442\u044c \u043d\u043e\u0432\u044b\u0435 \u0441\u043b\u043e\u0432\u0430 \u0432 \u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u0435\u043b\u044c\u0441\u043a\u0438\u0439 \u0441\u043b\u043e\u0432\u0430\u0440\u044c."

    invoke-static {p0, v0, v4, v1}, Lcom/cootek/smartinput5/settings/SmartInput153;->label(Landroid/preference/PreferenceActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v0, "smartdash"

    const-string v1, "\u0420\u0430\u0441\u0441\u0442\u0430\u0432\u043b\u044f\u0442\u044c \u043f\u0440\u043e\u0431\u0435\u043b\u044b \u0432\u043e\u043a\u0440\u0443\u0433 \u0442\u0438\u0440\u0435 \u0438 \u0443\u0431\u0438\u0440\u0430\u0442\u044c \u043f\u0440\u043e\u0431\u0435\u043b \u043f\u0435\u0440\u0435\u0434 \u0434\u0435\u0444\u0438\u0441\u043e\u043c."

    invoke-static {p0, v0, v4, v1}, Lcom/cootek/smartinput5/settings/SmartInput153;->label(Landroid/preference/PreferenceActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "option_auto_space"

    const-string v1, "\u0414\u043e\u0431\u0430\u0432\u043b\u044f\u0442\u044c \u043f\u0440\u043e\u0431\u0435\u043b \u043f\u043e\u0441\u043b\u0435 \u0432\u044b\u0431\u0440\u0430\u043d\u043d\u043e\u0433\u043e \u0441\u043b\u043e\u0432\u0430 \u0434\u043b\u044f \u043f\u0440\u043e\u0434\u043e\u043b\u0436\u0435\u043d\u0438\u044f \u0432\u0432\u043e\u0434\u0430 \u0441\u043b\u0435\u0434\u0443\u044e\u0449\u0435\u0433\u043e."

    invoke-static {p0, v0, v4, v1}, Lcom/cootek/smartinput5/settings/SmartInput153;->label(Landroid/preference/PreferenceActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v0, "option_auto_capitalization"

    const-string v1, "\u041d\u0430\u0447\u0438\u043d\u0430\u0442\u044c \u043f\u0440\u0435\u0434\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0441 \u0437\u0430\u0433\u043b\u0430\u0432\u043d\u043e\u0439 \u0431\u0443\u043a\u0432\u044b \u043f\u0440\u0438 \u0432\u0432\u043e\u0434\u0435 \u043d\u0430 \u043b\u044e\u0431\u043e\u0439 \u0440\u0430\u0441\u043a\u043b\u0430\u0434\u043a\u0435."

    invoke-static {p0, v0, v4, v1}, Lcom/cootek/smartinput5/settings/SmartInput153;->label(Landroid/preference/PreferenceActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "option_emoji_prediction"

    const-string v1, "\u041f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c \u043f\u043e\u0434\u0445\u043e\u0434\u044f\u0449\u0438\u0435 \u044d\u043c\u043e\u0434\u0437\u0438 \u0440\u044f\u0434\u043e\u043c \u0441\u043e \u0441\u043b\u043e\u0432\u0430\u043c\u0438 \u0432 \u043f\u0430\u043d\u0435\u043b\u0438 \u043f\u043e\u0434\u0441\u043a\u0430\u0437\u043e\u043a."

    invoke-static {p0, v0, v4, v1}, Lcom/cootek/smartinput5/settings/SmartInput153;->label(Landroid/preference/PreferenceActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v0, "option_import_contact"

    const-string v1, "\u0414\u043e\u0431\u0430\u0432\u0438\u0442\u044c \u0438\u043c\u0435\u043d\u0430 \u0438\u0437 \u043a\u043e\u043d\u0442\u0430\u043a\u0442\u043e\u0432 \u0432 \u0441\u043b\u043e\u0432\u0430\u0440\u044c \u0434\u043b\u044f \u043f\u043e\u0434\u0441\u043a\u0430\u0437\u043e\u043a \u043f\u0440\u0438 \u0434\u0430\u043b\u044c\u043d\u0435\u0439\u0448\u0435\u043c \u043d\u0430\u0431\u043e\u0440\u0435."

    invoke-static {p0, v0, v4, v1}, Lcom/cootek/smartinput5/settings/SmartInput153;->label(Landroid/preference/PreferenceActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "option_manage_user_word"

    const-string v1, "\u041f\u0440\u043e\u0441\u043c\u0430\u0442\u0440\u0438\u0432\u0430\u0442\u044c \u0438 \u0440\u0435\u0434\u0430\u043a\u0442\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u0441\u043e\u0445\u0440\u0430\u043d\u0451\u043d\u043d\u044b\u0435 \u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u0435\u043b\u044c\u0441\u043a\u0438\u0435 \u0441\u043b\u043e\u0432\u0430."

    invoke-static {p0, v0, v4, v1}, Lcom/cootek/smartinput5/settings/SmartInput153;->label(Landroid/preference/PreferenceActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v0, "option_category_manager_dictionary"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_5

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 52
    :cond_5
    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_6

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Landroid/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 55
    :cond_6
    return-void
.end method

.method private static label(Landroid/preference/PreferenceActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 75
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0, p3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 76
    :cond_2
    return-void
.end method

.method private static move(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceGroup;[Ljava/lang/String;)V
    .locals 3

    .line 65
    if-nez p1, :cond_0

    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_5

    .line 67
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/cootek/smartinput5/settings/KeyboardActivation152;->parent(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/preference/PreferenceGroup;

    move-result-object v2

    .line 69
    if-eq v2, p1, :cond_3

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 70
    :cond_3
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 66
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_5
    return-void
.end method

.method static ownHeading(Ljava/lang/String;)Z
    .locals 1

    .line 77
    const-string v0, "tp153_wave"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "tp153_t9"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "tp153_smart_general"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "option_category_manager_dictionary"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static ownRow(Ljava/lang/String;)Z
    .locals 9

    .line 79
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 80
    :cond_0
    const/4 v1, 0x3

    new-array v2, v1, [[Ljava/lang/String;

    sget-object v3, Lcom/cootek/smartinput5/settings/SmartInput153;->WAVE_KEYS:[Ljava/lang/String;

    aput-object v3, v2, v0

    sget-object v3, Lcom/cootek/smartinput5/settings/SmartInput153;->T9_KEYS:[Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Lcom/cootek/smartinput5/settings/SmartInput153;->GENERAL_KEYS:[Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v5, v2, v3

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    return v4

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    :cond_3
    const-string v1, "option_import_contact"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "option_manage_user_word"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "option_edit_dictionary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "option_backup_dictionary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "option_restore_dictionary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "option_rebuild_language_data"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "option_clear_language_data"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method private static present(Landroid/preference/PreferenceActivity;[Ljava/lang/String;)Z
    .locals 4

    .line 56
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
