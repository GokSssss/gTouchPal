.class public final Lcom/cootek/smartinput5/settings/SettingsIcons149;
.super Ljava/lang/Object;
.source "SettingsIcons149.java"


# static fields
.field private static final BITMAPS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cootek/smartinput5/settings/SettingsIcons149;->BITMAPS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compactLabels(Landroid/preference/PreferenceGroup;)V
    .locals 4

    .line 90
    if-nez p0, :cond_0

    return-void

    .line 91
    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 92
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 94
    const-string v3, "\u041f\u0430\u043d\u0435\u043b\u044c \u043d\u0430\u0432\u0438\u0433\u0430\u0446\u0438\u0438 \u043f\u043e\u0434 \u0446\u0432\u0435\u0442 \u0441\u043a\u0438\u043d\u0430"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    const-string v2, "\u0426\u0432\u0435\u0442 \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u043e\u0439 \u043f\u0430\u043d\u0435\u043b\u0438"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v2, "\u0418\u0441\u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u044c \u0446\u0432\u0435\u0442 \u0442\u0435\u043c\u044b \u043a\u043b\u0430\u0432\u0438\u0430\u0442\u0443\u0440\u044b"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 96
    :cond_1
    const-string v3, "\u0421\u0432\u0430\u0439\u043f \u0432\u043d\u0438\u0437 \u043f\u043e \u043a\u043b\u0430\u0432\u0438\u0448\u0430\u043c \u043d\u0430 \u0440\u0430\u0441\u043a\u043b\u0430\u0434\u043a\u0435 T9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "\u0421\u0432\u0430\u0439\u043f \u0432\u043d\u0438\u0437 \u043f\u043e \u043a\u043b\u0430\u0432\u0438\u0448\u0430\u043c T9"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 97
    :cond_2
    const-string v3, "\u0417\u0430\u0434\u0435\u0440\u0436\u043a\u0430 \u0434\u043e\u043b\u0433\u043e\u0433\u043e \u043d\u0430\u0436\u0430\u0442\u0438\u044f \u043d\u0430 \u043a\u043b\u0430\u0432\u0438\u0448\u0443"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "\u0417\u0430\u0434\u0435\u0440\u0436\u043a\u0430 \u0443\u0434\u0435\u0440\u0436\u0430\u043d\u0438\u044f"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 98
    :cond_3
    const-string v3, "\u0413\u043e\u043b\u043e\u0441\u043e\u0432\u043e\u0439 \u0432\u0432\u043e\u0434"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "\u041f\u0440\u0438 \u0443\u0434\u0435\u0440\u0436\u0430\u043d\u0438\u0438 \u043f\u0440\u043e\u0431\u0435\u043b\u0430"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 99
    :cond_4
    :goto_1
    instance-of v2, v1, Landroid/preference/PreferenceGroup;

    if-eqz v2, :cond_5

    check-cast v1, Landroid/preference/PreferenceGroup;

    invoke-static {v1}, Lcom/cootek/smartinput5/settings/SettingsIcons149;->compactLabels(Landroid/preference/PreferenceGroup;)V

    .line 91
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_6
    return-void
.end method

.method public static configurePage(Landroid/preference/PreferenceActivity;)V
    .locals 1

    .line 86
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SettingsIcons149;->compactLabels(Landroid/preference/PreferenceGroup;)V

    .line 87
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/SettingsIcons149;->configureRoot(Landroid/preference/PreferenceActivity;)V

    .line 88
    return-void
.end method

.method public static configureRoot(Landroid/preference/PreferenceActivity;)V
    .locals 8

    .line 103
    const-string v0, "option_about_screen"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/SettingsMenu132;->install(Landroid/preference/PreferenceActivity;)V

    .line 105
    const-string v1, "TouchPalG"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "r"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v7

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 107
    :goto_0
    const-string v1, "option_general_screen"

    const-string v2, "\u0412\u0432\u043e\u0434, \u0437\u0432\u0443\u043a, \u0431\u0443\u0444\u0435\u0440 \u0438 \u043f\u0430\u043d\u0435\u043b\u044c \u0441\u043b\u043e\u0432"

    invoke-static {p0, v1, v2}, Lcom/cootek/smartinput5/settings/SettingsIcons149;->describe(Landroid/preference/PreferenceActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "tp_keyboard_theme132"

    const-string v2, "\u0412\u044b\u0431\u0440\u0430\u0442\u044c \u0442\u0435\u043c\u0443 \u043a\u043b\u0430\u0432\u0438\u0430\u0442\u0443\u0440\u044b"

    invoke-static {p0, v1, v2}, Lcom/cootek/smartinput5/settings/SettingsIcons149;->describe(Landroid/preference/PreferenceActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "option_dark_theme"

    const-string v2, "\u041e\u0444\u043e\u0440\u043c\u043b\u0435\u043d\u0438\u0435 \u043d\u0430\u0441\u0442\u0440\u043e\u0435\u043a"

    invoke-static {p0, v1, v2}, Lcom/cootek/smartinput5/settings/SettingsIcons149;->describe(Landroid/preference/PreferenceActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v1, "tp_physical_keyboard"

    const-string v2, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439 \u00b7 English"

    invoke-static {p0, v1, v2}, Lcom/cootek/smartinput5/settings/SettingsIcons149;->describe(Landroid/preference/PreferenceActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "tp_spelling"

    const-string v2, "\u0414\u043b\u044f \u0444\u0438\u0437\u0438\u0447\u0435\u0441\u043a\u043e\u0439 \u043a\u043b\u0430\u0432\u0438\u0430\u0442\u0443\u0440\u044b"

    invoke-static {p0, v1, v2}, Lcom/cootek/smartinput5/settings/SettingsIcons149;->describe(Landroid/preference/PreferenceActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v1, "tp_diagnostics"

    const-string v2, "\u0417\u0430\u043f\u0438\u0441\u044c \u043f\u043e \u043a\u043d\u043e\u043f\u043a\u0435"

    invoke-static {p0, v1, v2}, Lcom/cootek/smartinput5/settings/SettingsIcons149;->describe(Landroid/preference/PreferenceActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 114
    const-string v1, "\u041e \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0438"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "\u041e\u0441\u043d\u043e\u0432\u0430, \u0430\u0432\u0442\u043e\u0440\u044b \u0438 \u0441\u0441\u044b\u043b\u043a\u0438 \u043f\u0440\u043e\u0435\u043a\u0442\u0430"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    const-string v0, "tp_additions"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "\u0414\u043e\u043f\u043e\u043b\u043d\u0435\u043d\u0438\u044f TouchPalG"

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    :cond_1
    return-void
.end method

.method public static dark(Landroid/content/Context;)Z
    .locals 2

    .line 24
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "option_dark_theme"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static describe(Landroid/preference/PreferenceActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 84
    :cond_0
    return-void
.end method

.method public static drawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 27
    invoke-static {p0, p1, p2}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->drawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    return-object v0

    .line 30
    :cond_0
    sget-object v0, Lcom/cootek/smartinput5/settings/SettingsIcons149;->BITMAPS:Ljava/util/Map;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/cootek/smartinput5/settings/SettingsIcons149;->BITMAPS:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    if-nez v1, :cond_2

    .line 34
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "settings149/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    :try_start_2
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 36
    nop

    .line 37
    if-nez v3, :cond_1

    :try_start_4
    monitor-exit v0

    return-object v1

    .line 38
    :cond_1
    sget-object v1, Lcom/cootek/smartinput5/settings/SettingsIcons149;->BITMAPS:Ljava/util/Map;

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v1, v3

    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 36
    :catch_0
    move-exception p0

    :try_start_6
    monitor-exit v0

    return-object v1

    .line 40
    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 41
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41b00000    # 22.0f

    mul-float p0, p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0, p0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 44
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 45
    return-object p1

    .line 40
    :catchall_1
    move-exception p0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p0
.end method

.method public static name(Landroid/preference/Preference;)Ljava/lang/String;
    .locals 3

    .line 48
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 49
    :goto_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 50
    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    .line 51
    :cond_1
    const-string v1, "tp_recent_setting146"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "history"

    if-eqz v1, :cond_2

    return-object v2

    .line 52
    :cond_2
    const-string v1, "option_general_screen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "keyboard"

    return-object p0

    .line 53
    :cond_3
    const-string v1, "option_about_screen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p0, "info"

    return-object p0

    .line 54
    :cond_4
    const-string v1, "tp_keyboard_theme132"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "\u0442\u0435\u043c\u0430 \u043a\u043b\u0430\u0432\u0438\u0430\u0442\u0443\u0440\u044b"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_16

    .line 55
    :cond_5
    const-string v1, "option_dark_theme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p0, "moon"

    return-object p0

    .line 56
    :cond_6
    const-string v1, "physical"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "\u0444\u0438\u0437\u0438\u0447\u0435\u0441\u043a\u0430\u044f"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_15

    .line 57
    :cond_7
    const-string v1, "spell"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    const-string v1, "\u043e\u0440\u0444\u043e\u0433\u0440\u0430\u0444"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_14

    .line 58
    :cond_8
    const-string v1, "diagnos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "\u0434\u0438\u0430\u0433\u043d\u043e\u0441\u0442"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_13

    .line 59
    :cond_9
    const-string v1, "restart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string v1, "\u043f\u0435\u0440\u0435\u0437\u0430\u043f\u0443\u0441\u0442"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto/16 :goto_12

    .line 60
    :cond_a
    const-string v1, "backup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, "\u0440\u0435\u0437\u0435\u0440\u0432\u043d"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_11

    .line 61
    :cond_b
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "\u0436\u0443\u0440\u043d\u0430\u043b \u043d\u043e\u0432\u044b\u0445"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_10

    .line 62
    :cond_c
    const-string v1, "candidate_max_words"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "\u043a\u043e\u043b\u0438\u0447\u0435\u0441\u0442\u0432\u043e"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "\u0441\u043b\u043e\u0432"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto/16 :goto_f

    .line 63
    :cond_d
    const-string v1, "font"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "text_size"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "\u0448\u0440\u0438\u0444\u0442"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto/16 :goto_d

    .line 67
    :cond_e
    const-string v1, "navigation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "\u0446\u0432\u0435\u0442 \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u043e\u0439"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "\u043d\u0430\u0432\u0438\u0433\u0430\u0446\u0438\u0438 \u043f\u043e\u0434 \u0446\u0432\u0435\u0442"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto/16 :goto_c

    .line 68
    :cond_f
    const-string v1, "popup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "\u0432\u0441\u043f\u043b\u044b\u0432\u0430\u044e\u0449"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_b

    .line 69
    :cond_10
    const-string v1, "height"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "\u0432\u044b\u0441\u043e\u0442\u0430 \u043a\u043b\u0430\u0432\u0438\u0430\u0442\u0443\u0440\u044b"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto/16 :goto_a

    .line 70
    :cond_11
    const-string v1, "swipe_down"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "\u0441\u0432\u0430\u0439\u043f \u0432\u043d\u0438\u0437"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto/16 :goto_9

    .line 71
    :cond_12
    const-string v1, "swipe_up"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "\u0441\u0432\u0430\u0439\u043f \u0432\u0432\u0435\u0440\u0445"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto/16 :goto_8

    .line 72
    :cond_13
    const-string v1, "voice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "\u0433\u043e\u043b\u043e\u0441\u043e\u0432"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto/16 :goto_7

    .line 73
    :cond_14
    const-string v1, "vibr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "\u0432\u0438\u0431\u0440\u0430\u0446"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto/16 :goto_6

    .line 74
    :cond_15
    const-string v1, "sound"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "\u0437\u0432\u0443\u043a"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_5

    .line 75
    :cond_16
    const-string v1, "delay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "long_press"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "\u0437\u0430\u0434\u0435\u0440\u0436\u043a\u0430"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_4

    .line 76
    :cond_17
    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "\u0431\u0443\u0444\u0435\u0440"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_3

    .line 77
    :cond_18
    const-string v1, "language"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "\u044f\u0437\u044b\u043a"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_2

    .line 78
    :cond_19
    const-string v1, "tp_system_keyboard_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "tp_system_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1

    .line 79
    :cond_1a
    const-string v0, "\u0434\u043e\u043f\u043e\u043b\u043d\u0438\u0442\u0435\u043b\u044c\u043d\u043e"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    const-string p0, "sliders-horizontal"

    return-object p0

    .line 78
    :cond_1b
    :goto_1
    const-string p0, "settings"

    return-object p0

    .line 77
    :cond_1c
    :goto_2
    const-string p0, "languages"

    return-object p0

    .line 76
    :cond_1d
    :goto_3
    return-object v1

    .line 75
    :cond_1e
    :goto_4
    const-string p0, "timer"

    return-object p0

    .line 74
    :cond_1f
    :goto_5
    const-string p0, "volume-2"

    return-object p0

    .line 73
    :cond_20
    :goto_6
    const-string p0, "vibrate"

    return-object p0

    .line 72
    :cond_21
    :goto_7
    const-string p0, "mic"

    return-object p0

    .line 71
    :cond_22
    :goto_8
    const-string p0, "move-up"

    return-object p0

    .line 70
    :cond_23
    :goto_9
    const-string p0, "move-down"

    return-object p0

    .line 69
    :cond_24
    :goto_a
    const-string p0, "move-vertical"

    return-object p0

    .line 68
    :cond_25
    :goto_b
    const-string p0, "popup-square"

    return-object p0

    .line 67
    :cond_26
    :goto_c
    const-string p0, "panel-top"

    return-object p0

    .line 64
    :cond_27
    :goto_d
    const-string v1, "size"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "\u0440\u0430\u0437\u043c\u0435\u0440"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_28

    goto :goto_e

    .line 65
    :cond_28
    const-string p0, "type"

    return-object p0

    .line 64
    :cond_29
    :goto_e
    const-string p0, "font-size"

    return-object p0

    .line 62
    :cond_2a
    :goto_f
    const-string p0, "candidate-count"

    return-object p0

    .line 61
    :cond_2b
    :goto_10
    const-string p0, "notebook-text"

    return-object p0

    .line 60
    :cond_2c
    :goto_11
    const-string p0, "save"

    return-object p0

    .line 59
    :cond_2d
    :goto_12
    const-string p0, "rotate-cw"

    return-object p0

    .line 58
    :cond_2e
    :goto_13
    const-string p0, "activity"

    return-object p0

    .line 57
    :cond_2f
    :goto_14
    const-string p0, "spell-check"

    return-object p0

    .line 56
    :cond_30
    :goto_15
    const-string p0, "laptop"

    return-object p0

    .line 54
    :cond_31
    :goto_16
    const-string p0, "palette"

    return-object p0
.end method
