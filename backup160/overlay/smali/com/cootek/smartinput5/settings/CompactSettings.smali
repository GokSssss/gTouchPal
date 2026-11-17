.class public final Lcom/cootek/smartinput5/settings/CompactSettings;
.super Ljava/lang/Object;
.source "CompactSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput5/settings/CompactSettings$Render;,
        Lcom/cootek/smartinput5/settings/CompactSettings$Rows;,
        Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/preference/PreferenceActivity;)V
    .locals 0

    .line 19
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/CompactSettings;->hideKeyboard(Landroid/preference/PreferenceActivity;)V

    return-void
.end method

.method static synthetic access$100(Landroid/preference/PreferenceActivity;Landroid/widget/ListView;)Z
    .locals 0

    .line 19
    invoke-static {p0, p1}, Lcom/cootek/smartinput5/settings/CompactSettings;->bindRows(Landroid/preference/PreferenceActivity;Landroid/widget/ListView;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Landroid/view/View;I)V
    .locals 0

    .line 19
    invoke-static {p0, p1}, Lcom/cootek/smartinput5/settings/CompactSettings;->trim(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$300(Landroid/view/View;)V
    .locals 0

    .line 19
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/CompactSettings;->removeNativeIcon(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Landroid/view/View;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 19
    invoke-static {p0, p1, p2}, Lcom/cootek/smartinput5/settings/CompactSettings;->alignTextBranch(Landroid/view/View;Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static alignTextBranch(Landroid/view/View;Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    .line 93
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_1

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 94
    :goto_1
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    .line 95
    move-object v3, p0

    check-cast v3, Landroid/view/ViewGroup;

    .line 96
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/cootek/smartinput5/settings/CompactSettings;->alignTextBranch(Landroid/view/View;Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v2, 0x1

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 98
    :cond_4
    if-eqz v2, :cond_5

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 101
    instance-of p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_5

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 103
    :cond_5
    return v2
.end method

.method private static bindRows(Landroid/preference/PreferenceActivity;Landroid/widget/ListView;)Z
    .locals 2

    .line 51
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/SettingsIcons149;->dark(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, -0xdfdfe0

    goto :goto_0

    :cond_0
    const p0, -0x50506

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 52
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .line 53
    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    .line 54
    :cond_1
    instance-of v1, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;

    if-nez v1, :cond_2

    new-instance v0, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;-><init>(Landroid/widget/ListAdapter;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 p0, 0x1

    return p0

    .line 55
    :cond_2
    return v0
.end method

.method private static hideKeyboard(Landroid/preference/PreferenceActivity;)V
    .locals 2

    .line 58
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 60
    and-int/lit8 v1, v1, -0x10

    or-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 61
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 63
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 64
    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 66
    :cond_0
    return-void
.end method

.method public static install(Landroid/preference/PreferenceActivity;)V
    .locals 2

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 23
    const-string v1, "com.cootek.smartinput5.preference.AboutPreferenceActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 24
    :cond_0
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/CompactSettings;->hideKeyboard(Landroid/preference/PreferenceActivity;)V

    .line 26
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/ServiceSettings150;->install(Landroid/preference/PreferenceActivity;)V

    .line 27
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/KeyboardActivation152;->install(Landroid/preference/PreferenceActivity;)V

    .line 28
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/LandscapeHeight152;->arrange(Landroid/preference/PreferenceActivity;)V

    .line 29
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/RecentSettings146;->install(Landroid/preference/PreferenceActivity;)V

    .line 30
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/SmartInput153;->install(Landroid/preference/PreferenceActivity;)V

    .line 31
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/CompactSettings;->installLanguageFile(Landroid/preference/PreferenceActivity;)V

    .line 32
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/SettingsIcons149;->configurePage(Landroid/preference/PreferenceActivity;)V

    .line 33
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p0, v0}, Lcom/cootek/smartinput5/settings/CompactSettings;->bindRows(Landroid/preference/PreferenceActivity;Landroid/widget/ListView;)Z

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 37
    new-instance v1, Lcom/cootek/smartinput5/settings/CompactSettings$Render;

    invoke-direct {v1, p0, v0}, Lcom/cootek/smartinput5/settings/CompactSettings$Render;-><init>(Landroid/preference/PreferenceActivity;Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 39
    :goto_0
    return-void

    .line 23
    :cond_2
    :goto_1
    return-void
.end method

.method private static installLanguageFile(Landroid/preference/PreferenceActivity;)V
    .locals 3

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string v1, "com.cootek.smartinput5.ui.settings.LanguageListActivityInte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.cootek.smartinput5.ui.settings.LanguageListActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    const-string v0, "tp_language_file159"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    return-void

    .line 44
    :cond_1
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 45
    const-string v0, "\u0417\u0430\u0433\u0440\u0443\u0437\u0438\u0442\u044c \u0441\u043b\u043e\u0432\u0430\u0440\u044c \u044f\u0437\u044b\u043a\u0430"

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "\u0412\u044b\u0431\u0440\u0430\u0442\u044c TPL \u0438\u043b\u0438 TPL.apk \u0438\u0437 \u043f\u0430\u043c\u044f\u0442\u0438 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430."

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 46
    const/high16 v0, -0x80000000

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.cootek.smartinputv5.action.IMPORT_LANGUAGE159"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 48
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 49
    return-void
.end method

.method private static removeNativeIcon(Landroid/view/View;)V
    .locals 4

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "android"

    const-string v3, "icon_frame"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 107
    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 108
    :goto_0
    const/16 v1, 0x8

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    :cond_1
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_2

    if-eq v0, p0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    :cond_2
    return-void
.end method

.method private static trim(Landroid/view/View;I)V
    .locals 4

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 82
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 83
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 84
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 86
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumHeight(I)V

    check-cast p0, Landroid/view/ViewGroup;

    .line 88
    nop

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/cootek/smartinput5/settings/CompactSettings;->trim(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_1
    return-void
.end method
