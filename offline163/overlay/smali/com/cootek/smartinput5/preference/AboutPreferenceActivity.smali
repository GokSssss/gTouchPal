.class public Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;
.super Lcom/cootek/smartinput5/func/resource/ui/c;


# static fields
.field private static final l:Ljava/lang/String; = "TouchPalOptionInternational"


# instance fields
.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/resource/ui/c;-><init>()V

    return-void
.end method

.method static synthetic L(Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;->Q()V

    return-void
.end method

.method static synthetic M(Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/func/resource/ui/c;->n(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic N(Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/func/resource/ui/c;->n(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic O(Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;->T()V

    return-void
.end method

.method private Q()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cootek/smartinput5/ui/settings/TouchPalFAQActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private R()Z
    .locals 3

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private S()Z
    .locals 5

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private T()V
    .locals 4

    new-instance v0, Lcom/cootek/smartinput5/ui/l;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/ui/l;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/l;->A0(Z)V

    invoke-static {p0}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object v0

    sget-object v1, Lcom/cootek/smartinput5/configuration/ConfigurationType;->option_erase_privacy_data:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "clicked"

    const-string v3, "/UI/TouchPalOptionInternational/"

    invoke-virtual {v0, v1, v2, v3}, Lcom/cootek/smartinput5/l/g;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private U()V
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;->k:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;->S()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;->R()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method protected P()V
    .locals 6

    sget-object v0, Lcom/cootek/smartinput5/configuration/ConfigurationType;->option_about_screen:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/cootek/smartinput5/ui/settings/CustomizablePreference;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$a;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$a;-><init>(Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    sget-object v0, Lcom/cootek/smartinput5/configuration/ConfigurationType;->option_tutorial:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/cootek/smartinput5/ui/settings/CustomizablePreference;

    iget-object v1, p0, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0c00ed

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;->S()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;->R()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    invoke-static {p0}, Lcom/cootek/smartinput5/TouchPalOption;->U(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    new-instance v2, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$b;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$b;-><init>(Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_3
    sget-object v0, Lcom/cootek/smartinput5/configuration/ConfigurationType;->option_faq:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v2, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$c;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$c;-><init>(Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_4
    sget-object v0, Lcom/cootek/smartinput5/configuration/ConfigurationType;->option_feedback:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/cootek/smartinput5/ui/settings/CustomizablePreference;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    invoke-static {p0}, Lcom/cootek/smartinput5/TouchPalOption;->M(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    new-instance v2, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$d;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$d;-><init>(Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_5
    sget-object v2, Lcom/cootek/smartinput5/configuration/ConfigurationType;->option_feedback_uservoice:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/cootek/smartinput5/ui/settings/CustomizablePreference;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    new-instance v3, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$e;

    invoke-direct {v3, p0}, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$e;-><init>(Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_6
    sget-object v2, Lcom/cootek/smartinput5/configuration/ConfigurationType;->option_debugging_mode:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/cootek/smartinput5/ui/settings/CustomizableCheckBoxPreference;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    const/16 v3, 0x3f

    invoke-static {v2, v3}, Lcom/cootek/smartinput5/TouchPalOption;->W(Landroid/preference/CheckBoxPreference;I)V

    :cond_7
    sget-object v2, Lcom/cootek/smartinput5/configuration/ConfigurationType;->option_send_usage_statistics:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    new-instance v3, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$f;

    invoke-direct {v3, p0, v2}, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$f;-><init>(Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;Landroid/preference/CheckBoxPreference;)V

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v4

    const/16 v5, 0x26e

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v4, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$g;

    invoke-direct {v4, p0, v3}, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$g;-><init>(Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;Lcom/cootek/smartinput5/ui/i$c;)V

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_8
    sget-object v2, Lcom/cootek/smartinput5/configuration/ConfigurationType;->option_erase_privacy_data:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/cootek/smartinput5/ui/settings/CustomizablePreference;

    if-eqz v2, :cond_9

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    new-instance v1, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$h;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity$h;-><init>(Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;)V

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_9
    invoke-static {p0}, Lcom/cootek/smartinput5/func/L;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Lcom/cootek/smartinput5/configuration/ConfigurationType;->option_help_about_category_share:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_a
    sget-object v1, Lcom/cootek/smartinput5/configuration/ConfigurationType;->option_help_about_category_support:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_b

    if-eqz v0, :cond_b

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_b
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/cootek/smartinput5/func/resource/ui/c;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f120011

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    const p1, 0x7f0f0680

    invoke-static {p0, p1}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/func/resource/ui/a;->r(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;->k:Ljava/util/List;

    invoke-direct {p0}, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;->S()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object p1

    const v0, 0x7f0f05c6

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/func/resource/ui/c;->n(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/cootek/smartinput5/ui/control/E;->w(Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;->P()V

    invoke-static {p0}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->q(Landroid/content/Context;)Lcom/cootek/smartinput5/configuration/ConfigurationManager;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->q(Landroid/content/Context;)Lcom/cootek/smartinput5/configuration/ConfigurationManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->c(Landroid/preference/PreferenceGroup;)V

    :cond_1
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/AboutPage149;->install(Landroid/app/Activity;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/cootek/smartinput5/func/resource/ui/c;->onDestroy()V

    iget-object v0, p0, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;->k:Ljava/util/List;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/cootek/smartinput5/func/resource/ui/c;->onResume()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/preference/AboutPreferenceActivity;->U()V

    return-void
.end method
