.class public final Lcom/cootek/smartinput5/settings/SizeSettingsPage;
.super Ljava/lang/Object;
.source "SizeSettingsPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;,
        Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;,
        Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;,
        Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;,
        Lcom/cootek/smartinput5/settings/SizeSettingsPage$PageHost;,
        Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;,
        Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionButton;,
        Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;,
        Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionGlyph;,
        Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;,
        Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;,
        Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;,
        Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;
    }
.end annotation


# static fields
.field public static final EXTRA_MODE:Ljava/lang/String; = "touchpal.size.mode"

.field private static final OPENED:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/preference/Preference;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final PAGES:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Lcom/cootek/smartinput5/settings/SizeSettingsPage$PageHost;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage;->PAGES:Ljava/util/WeakHashMap;

    .line 50
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage;->OPENED:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1200(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;)V
    .locals 0

    .line 46
    invoke-static {p0, p1, p2, p3}, Lcom/cootek/smartinput5/settings/SizeSettingsPage;->pageHeader(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/content/Context;)Lcom/cootek/smartinput5/settings/SizeDrag134;
    .locals 0

    .line 46
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage;->inactiveDrag(Landroid/content/Context;)Lcom/cootek/smartinput5/settings/SizeDrag134;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Landroid/graphics/Canvas;Landroid/view/View;Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;Landroid/graphics/Paint;Landroid/graphics/RectF;F)V
    .locals 0

    .line 46
    invoke-static/range {p0 .. p5}, Lcom/cootek/smartinput5/settings/SizeSettingsPage;->paintButton(Landroid/graphics/Canvas;Landroid/view/View;Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;Landroid/graphics/Paint;Landroid/graphics/RectF;F)V

    return-void
.end method

.method public static actionButton(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Button;
    .locals 2

    .line 711
    new-instance v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionButton;

    new-instance v1, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p0, v1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionButton;-><init>(Landroid/content/Context;Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private static arrangeGap(Landroid/preference/PreferenceActivity;)V
    .locals 2

    .line 87
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SizeModel;->preferenceKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    .line 88
    if-nez p0, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SizeModel;->title(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method

.method public static configure(Landroid/preference/PreferenceActivity;)V
    .locals 9

    .line 54
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SizeModel;->preferenceKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 55
    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SizeModel;->title(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    :cond_0
    const/4 v1, 0x7

    const/4 v2, 0x6

    filled-new-array {v2, v1}, [I

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    if-ge v4, v5, :cond_4

    aget v5, v1, v4

    .line 57
    invoke-static {v5}, Lcom/cootek/smartinput5/settings/SizeModel;->preferenceKey(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 58
    if-nez v6, :cond_3

    .line 59
    new-instance v6, Landroid/preference/Preference;

    invoke-direct {v6, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-static {v5}, Lcom/cootek/smartinput5/settings/SizeModel;->preferenceKey(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v6, v3}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 61
    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SizeModel;->preferenceKey(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 62
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/preference/Preference;->getOrder()I

    move-result v8

    add-int/2addr v8, v5

    sub-int/2addr v8, v2

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setOrder(I)V

    invoke-virtual {v7}, Landroid/preference/Preference;->getLayoutResource()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 63
    :cond_1
    new-instance v7, Lcom/cootek/smartinput5/settings/SizeSettingsPage$1;

    invoke-direct {v7}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$1;-><init>()V

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 66
    const-string v7, "option_genreal_screen_category_candidates"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 67
    instance-of v8, v7, Landroid/preference/PreferenceGroup;

    if-eqz v8, :cond_2

    check-cast v7, Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 70
    :cond_3
    :goto_1
    invoke-static {v5}, Lcom/cootek/smartinput5/settings/SizeModel;->title(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 72
    :cond_4
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/LandscapeHeight152;->seed(Landroid/content/Context;)V

    .line 73
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage;->arrangeGap(Landroid/preference/PreferenceActivity;)V

    .line 74
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage;->updateSummaries(Landroid/preference/PreferenceActivity;)V

    .line 75
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/CandidatePanel141;->configure(Landroid/preference/PreferenceActivity;)V

    .line 76
    return-void
.end method

.method private static containing(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/preference/PreferenceGroup;
    .locals 4

    .line 78
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 79
    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 80
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 81
    if-ne v2, p1, :cond_1

    return-object p0

    .line 82
    :cond_1
    instance-of v3, v2, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/preference/PreferenceGroup;

    invoke-static {v2, p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage;->containing(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/preference/PreferenceGroup;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    .line 79
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_3
    return-object v0
.end method

.method public static create(Landroid/app/Activity;)Z
    .locals 6

    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 142
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 143
    :cond_0
    const-string v2, "touchpal.candidate.count"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 144
    new-instance v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;-><init>(Landroid/app/Activity;)V

    sget-object v1, Lcom/cootek/smartinput5/settings/SizeSettingsPage;->PAGES:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->create()V

    return v3

    .line 146
    :cond_1
    const-string v2, "touchpal.candidate.buttons"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    new-instance v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;

    invoke-direct {v0, p0, v3}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;-><init>(Landroid/app/Activity;Z)V

    sget-object v1, Lcom/cootek/smartinput5/settings/SizeSettingsPage;->PAGES:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->create()V

    return v3

    .line 149
    :cond_2
    const-string v2, "touchpal.toolbar.page"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 150
    new-instance v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;

    invoke-direct {v0, p0, v1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;-><init>(Landroid/app/Activity;Z)V

    sget-object v1, Lcom/cootek/smartinput5/settings/SizeSettingsPage;->PAGES:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->create()V

    return v3

    .line 152
    :cond_3
    const-string v2, "touchpal.size.mode"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_4

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    .line 153
    :goto_0
    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SizeModel;->validMode(I)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 154
    :cond_5
    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    goto :goto_2

    .line 155
    :cond_6
    if-eq v0, v3, :cond_8

    const/4 v2, 0x3

    if-eq v0, v2, :cond_8

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SizeModel;->isHeight(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_1

    .line 156
    :cond_7
    goto :goto_3

    .line 155
    :cond_8
    :goto_1
    const/4 v5, 0x7

    goto :goto_3

    .line 154
    :cond_9
    :goto_2
    const/4 v5, 0x6

    .line 157
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    if-eq v1, v5, :cond_a

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 158
    :cond_a
    new-instance v1, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    invoke-direct {v1, p0, v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;-><init>(Landroid/app/Activity;I)V

    .line 159
    sget-object v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage;->PAGES:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-virtual {v1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->create()V

    .line 161
    return v3
.end method

.method public static destroy(Landroid/app/Activity;)V
    .locals 2

    .line 169
    sget-object v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage;->PAGES:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PageHost;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PageHost;->cancelDrag()V

    .line 172
    :cond_0
    sget-object p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage;->OPENED:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 173
    invoke-virtual {v0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 174
    instance-of v1, v0, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage;->updateSummaries(Landroid/preference/PreferenceActivity;)V

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/CandidatePanel141;->configure(Landroid/preference/PreferenceActivity;)V

    .line 175
    :cond_1
    goto :goto_0

    .line 176
    :cond_2
    return-void
.end method

.method private static inactiveDrag(Landroid/content/Context;)Lcom/cootek/smartinput5/settings/SizeDrag134;
    .locals 2

    .line 451
    new-instance v0, Lcom/cootek/smartinput5/settings/SizeDrag134;

    new-instance v1, Lcom/cootek/smartinput5/settings/SizeSettingsPage$3;

    invoke-direct {v1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$3;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/cootek/smartinput5/settings/SizeDrag134;-><init>(Landroid/content/Context;Lcom/cootek/smartinput5/settings/SizeDrag134$Listener;)V

    .line 454
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Lcom/cootek/smartinput5/settings/SizeDrag134;->setVisibility(I)V

    return-object v0
.end method

.method public static isActive(Landroid/app/Activity;)Z
    .locals 1

    .line 163
    sget-object v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage;->PAGES:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static keyboardHidden(Landroid/view/View;)V
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->scheduleKeyboardHidden(Landroid/view/View;)V

    return-void
.end method

.method public static open(Landroid/preference/Preference;)Z
    .locals 6

    .line 124
    const-string v0, "option_eng_candidate_max_words_list"

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 125
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/CandidatePanel141;->openCount(Landroid/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 126
    :cond_0
    sget-object v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage;->OPENED:Ljava/util/WeakHashMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 128
    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SizeModel;->modeForKey(Ljava/lang/String;)I

    move-result v0

    .line 129
    if-gez v0, :cond_2

    return v2

    .line 131
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 132
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/cootek/smartinput5/ui/settings/KeyboardCustomizeActivity;

    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    const-string v5, "touchpal.size.mode"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    instance-of v0, v3, Landroid/app/Activity;

    if-nez v0, :cond_3

    const/high16 v0, 0x10000000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 135
    :cond_3
    invoke-static {v3, v4}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    .line 136
    sget-object v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage;->OPENED:Ljava/util/WeakHashMap;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    return v1

    .line 138
    :catch_0
    move-exception p0

    return v2
.end method

.method private static pageHeader(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;)V
    .locals 6

    .line 442
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 443
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 444
    new-instance v2, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;

    invoke-direct {v2, p0, p3}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;-><init>(Landroid/content/Context;Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;)V

    const-string v3, "\u2039"

    invoke-virtual {v2, v3}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41e00000    # 28.0f

    invoke-virtual {v2, v3}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->setTextSize(F)V

    const-string v3, "\u041d\u0430\u0437\u0430\u0434"

    invoke-virtual {v2, v3}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 445
    new-instance v3, Lcom/cootek/smartinput5/settings/SizeSettingsPage$2;

    invoke-direct {v3, p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42400000    # 48.0f

    mul-float v4, v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p0, 0x41900000    # 18.0f

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTextSize(F)V

    iget p0, p3, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->text:I

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p0, 0x41000000    # 8.0f

    mul-float p0, p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/high16 p2, 0x40800000    # 4.0f

    mul-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {v2, p0, p2, v0, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 448
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 449
    return-void
.end method

.method private static paintButton(Landroid/graphics/Canvas;Landroid/view/View;Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;Landroid/graphics/Paint;Landroid/graphics/RectF;F)V
    .locals 5

    .line 714
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 715
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p5, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    invoke-virtual {p4, v2, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 716
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz v0, :cond_2

    iget v2, p2, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->surface:I

    iget v3, p2, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->accent:I

    const v4, 0x3e3851ec    # 0.18f

    invoke-static {v2, v3, v4}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->mix(IIF)I

    move-result v2

    goto :goto_1

    :cond_2
    iget v2, p2, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->button:I

    :goto_1
    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 717
    const/high16 v2, 0x41100000    # 9.0f

    mul-float v2, v2, p5

    invoke-virtual {p0, p4, v2, v2, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 718
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz v0, :cond_3

    iget p2, p2, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->accent:I

    goto :goto_2

    :cond_3
    iget p2, p2, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->line:I

    :goto_2
    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 719
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_4

    const/high16 p2, 0x3fc00000    # 1.5f

    goto :goto_3

    :cond_4
    const p2, 0x3f19999a    # 0.6f

    :goto_3
    mul-float p5, p5, p2

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p5}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p2

    div-float/2addr p2, v1

    .line 720
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p5

    int-to-float p5, p5

    sub-float/2addr p5, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, p2

    invoke-virtual {p4, p2, p2, p5, p1}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0, p4, v2, v2, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 721
    return-void
.end method

.method public static pause(Landroid/app/Activity;)V
    .locals 1

    .line 167
    sget-object v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage;->PAGES:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PageHost;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PageHost;->cancelDrag()V

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->flushPendingHeight()V

    return-void
.end method

.method public static resume(Landroid/app/Activity;)V
    .locals 1

    .line 165
    sget-object v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage;->PAGES:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PageHost;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PageHost;->reload()V

    .line 166
    :cond_0
    return-void
.end method

.method private static updateSummaries(Landroid/preference/PreferenceActivity;)V
    .locals 13

    .line 96
    nop

    .line 97
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x8

    if-gt v3, v4, :cond_d

    .line 98
    const/4 v4, 0x7

    if-le v3, v4, :cond_0

    const/4 v5, 0x4

    goto :goto_1

    :cond_0
    move v5, v3

    .line 99
    :goto_1
    if-le v3, v4, :cond_1

    .line 100
    const-string v6, "option_customize_keyboard_size"

    goto :goto_2

    :cond_1
    invoke-static {v5}, Lcom/cootek/smartinput5/settings/SizeModel;->preferenceKey(I)Ljava/lang/String;

    move-result-object v6

    .line 99
    :goto_2
    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 101
    if-nez v6, :cond_2

    goto/16 :goto_8

    .line 103
    :cond_2
    :try_start_0
    invoke-static {p0, v5}, Lcom/cootek/smartinput5/sizes/SizePixels130;->read(Landroid/content/Context;I)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    const-string v8, " (\u043f\u043e \u0443\u043c\u043e\u043b\u0447\u0430\u043d\u0438\u044e)"

    const-string v9, ""

    const-string v10, " px"

    if-lez v7, :cond_4

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v5}, Lcom/cootek/smartinput5/settings/FreshDefaults137;->pixels(I)I

    move-result v5

    if-ne v7, v5, :cond_3

    goto :goto_3

    :cond_3
    move-object v8, v9

    :goto_3
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 106
    :cond_4
    if-ne v5, v4, :cond_6

    .line 107
    if-nez v2, :cond_5

    new-instance v4, Lcom/cootek/smartinput5/settings/SizePreview;

    invoke-static {p0, v5}, Lcom/cootek/smartinput5/settings/LandscapeHeight152;->context(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/cootek/smartinput5/settings/SizePreview;-><init>(Landroid/content/Context;)V

    move-object v2, v4

    .line 108
    :cond_5
    move-object v4, v2

    goto :goto_4

    .line 110
    :cond_6
    if-nez v0, :cond_7

    new-instance v4, Lcom/cootek/smartinput5/settings/SizePreview;

    invoke-direct {v4, p0}, Lcom/cootek/smartinput5/settings/SizePreview;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v4

    .line 111
    :cond_7
    move-object v4, v2

    move-object v2, v0

    .line 113
    :goto_4
    :try_start_2
    new-instance v7, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;

    invoke-direct {v7, p0, v5}, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v7, v5}, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->read(I)I

    move-result v7

    .line 117
    invoke-static {v5}, Lcom/cootek/smartinput5/settings/SizeModel;->isHeight(I)Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x6

    goto :goto_5

    :cond_8
    move v11, v5

    :goto_5
    invoke-static {v5, v7}, Lcom/cootek/smartinput5/settings/SizeModel;->themeDefault(II)Z

    move-result v12

    invoke-virtual {v2, v11, v7, v12}, Lcom/cootek/smartinput5/settings/SizePreview;->resolvedCaption(IIZ)Ljava/lang/String;

    move-result-object v2

    .line 118
    const-string v11, "([0-9]+) px"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_c

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v5}, Lcom/cootek/smartinput5/settings/FreshDefaults137;->pixels(I)I

    move-result v12

    if-lez v12, :cond_a

    invoke-static {v5}, Lcom/cootek/smartinput5/settings/FreshDefaults137;->pixels(I)I

    move-result v5

    if-ne v2, v5, :cond_9

    goto :goto_6

    :cond_9
    const/4 v11, 0x0

    goto :goto_6

    :cond_a
    invoke-static {v5, v7}, Lcom/cootek/smartinput5/settings/SizeModel;->isDefault(II)Z

    move-result v11

    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v11, :cond_b

    goto :goto_7

    :cond_b
    move-object v8, v9

    :goto_7
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 120
    :cond_c
    move-object v2, v4

    goto :goto_8

    :catch_0
    move-exception v2

    move-object v2, v4

    goto :goto_8

    :catch_1
    move-exception v4

    .line 97
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 122
    :cond_d
    return-void
.end method
