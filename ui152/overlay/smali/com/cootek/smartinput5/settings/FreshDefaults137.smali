.class public final Lcom/cootek/smartinput5/settings/FreshDefaults137;
.super Ljava/lang/Object;
.source "FreshDefaults137.java"


# static fields
.field private static final LOCAL:Ljava/lang/String; = "touchpal_install138"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static afterSettings(Landroid/content/Context;)V
    .locals 12

    .line 65
    const-string v0, "height_pending"

    invoke-static {p0}, Lcom/cootek/smartinput5/settings/LandscapeHeight152;->seed(Landroid/content/Context;)V

    .line 67
    :try_start_0
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/CandidatePanel141;->migrate(Landroid/content/Context;)V

    .line 68
    const-string v1, "touchpal_install138"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 69
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v3

    .line 71
    if-nez v3, :cond_1

    return-void

    .line 72
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 72
    invoke-static {v4, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 74
    int-to-float p0, p0

    const v4, 0x3f266666    # 0.65f

    mul-float p0, p0, v4

    const/high16 v4, 0x40a00000    # 5.0f

    div-float/2addr p0, v4

    float-to-int p0, p0

    mul-int/lit8 p0, p0, 0x5

    const/16 v4, 0x3e8

    invoke-static {v4, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 75
    const/16 v4, 0x64

    if-gt p0, v4, :cond_2

    return-void

    .line 76
    :cond_2
    const/16 v5, 0x18d

    invoke-virtual {v3, v5}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v5

    .line 77
    sub-int/2addr p0, v4

    int-to-float p0, p0

    if-eqz v5, :cond_3

    const v4, 0x3f99999a    # 1.2f

    goto :goto_0

    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_0
    div-float/2addr p0, v4

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 78
    new-instance v11, Lcom/cootek/smartinput5/engine/Config;

    const/4 v4, 0x1

    invoke-direct {v11, v4}, Lcom/cootek/smartinput5/engine/Config;-><init>(I)V

    .line 79
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/16 v5, 0x102

    const/4 v7, -0x1

    move-object v4, v3

    move v6, p0

    move-object v9, v11

    invoke-virtual/range {v4 .. v10}, Lcom/cootek/smartinput5/engine/Settings;->setIntSetting(IIILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;Z)V

    .line 80
    invoke-virtual {v3}, Lcom/cootek/smartinput5/engine/Settings;->writeBack()V

    .line 81
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x102

    invoke-virtual {v3, v6, v4, v5, v11}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(IILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;)I

    move-result v3

    if-ne v3, p0, :cond_4

    .line 82
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 83
    :catch_0
    move-exception p0

    :cond_4
    :goto_1
    nop

    .line 84
    return-void
.end method

.method private static factory(Landroid/content/SharedPreferences;Ljava/lang/String;I)Z
    .locals 0

    .line 60
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 61
    if-eqz p0, :cond_1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static pixels(I)I
    .locals 1

    .line 46
    if-nez p0, :cond_0

    const/16 p0, 0x50

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    const/4 p0, 0x5

    goto :goto_1

    :cond_2
    const/4 v0, 0x6

    if-ne p0, v0, :cond_3

    const/16 p0, 0x3e8

    goto :goto_1

    :cond_3
    const/4 v0, 0x7

    if-ne p0, v0, :cond_4

    const/16 p0, 0x226

    goto :goto_1

    :cond_4
    const/4 p0, -0x1

    goto :goto_1

    .line 46
    :cond_5
    :goto_0
    const/16 p0, 0x64

    :goto_1
    return p0
.end method

.method private static putMissing(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V
    .locals 0

    .line 57
    invoke-interface {p0, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 58
    :cond_0
    return-void
.end method

.method public static restored(Landroid/content/Context;)V
    .locals 3

    .line 52
    const-string v0, "touchpal_install138"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "checked"

    const/4 v2, 0x1

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 53
    const-string v0, "height_pending"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    return-void
.end method

.method public static seed(Landroid/content/Context;)V
    .locals 11

    .line 17
    const-string v0, "candidate_vertical_separators"

    const-string v1, "EMOJI_PREDICTION"

    const-string v2, "checked"

    :try_start_0
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/CandidatePanel141;->migrate(Landroid/content/Context;)V

    .line 18
    const-string v3, "touchpal_install138"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 19
    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    .line 20
    :cond_0
    const-string v5, "TouchPalOptions"

    invoke-virtual {p0, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 21
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v6

    const-string v7, "FIRST_START_INPUTMETHOD"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 22
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_2

    const-string v7, "true"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "IME_CUR_VERSION"

    .line 23
    invoke-interface {v5, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "CURRENT_LANGUAGE"

    invoke-interface {v5, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v6, 0x1

    .line 25
    :goto_1
    if-eqz v6, :cond_3

    invoke-interface {v5, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 26
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 27
    :cond_3
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 28
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 29
    if-nez v6, :cond_4

    const-string v7, "keyboard_text_size_custom"

    const/16 v9, 0x1a

    invoke-static {p0, v7, v9}, Lcom/cootek/smartinput5/settings/FreshDefaults137;->factory(Landroid/content/SharedPreferences;Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    const-string v7, "tp_size130_font_px"

    const/16 v9, 0x50

    invoke-static {p0, v1, v7, v9}, Lcom/cootek/smartinput5/settings/FreshDefaults137;->putMissing(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    .line 30
    :cond_5
    const/16 v7, 0x2b

    const/16 v9, 0x64

    if-nez v6, :cond_6

    const-string v10, "keyboard_panel_height_portrait_custom"

    invoke-static {p0, v10, v7}, Lcom/cootek/smartinput5/settings/FreshDefaults137;->factory(Landroid/content/SharedPreferences;Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_6
    const-string v10, "tp_size130_panel_port_px"

    invoke-static {p0, v1, v10, v9}, Lcom/cootek/smartinput5/settings/FreshDefaults137;->putMissing(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    .line 31
    :cond_7
    if-nez v6, :cond_8

    const-string v10, "keyboard_panel_height_custom"

    invoke-static {p0, v10, v7}, Lcom/cootek/smartinput5/settings/FreshDefaults137;->factory(Landroid/content/SharedPreferences;Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_8
    const-string v7, "tp_size130_panel_land_px"

    invoke-static {p0, v1, v7, v9}, Lcom/cootek/smartinput5/settings/FreshDefaults137;->putMissing(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    .line 32
    :cond_9
    if-nez v6, :cond_a

    const-string v7, "candidate_gap_custom"

    const/16 v9, 0xa

    invoke-static {p0, v7, v9}, Lcom/cootek/smartinput5/settings/FreshDefaults137;->factory(Landroid/content/SharedPreferences;Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_a
    const-string v7, "tp_size130_gap_px"

    const/4 v9, 0x5

    invoke-static {p0, v1, v7, v9}, Lcom/cootek/smartinput5/settings/FreshDefaults137;->putMissing(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    .line 33
    :cond_b
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_c

    invoke-interface {v1, v0, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 34
    :cond_c
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-nez p0, :cond_d

    return-void

    .line 35
    :cond_d
    nop

    .line 36
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 37
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "KEYBOARD_HEIGHT_NORMAL"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "-1"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x0

    .line 38
    :cond_e
    goto :goto_2

    .line 39
    :cond_f
    if-nez v6, :cond_10

    if-eqz v0, :cond_11

    :cond_10
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "height_pending"

    invoke-interface {p0, v0, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-nez p0, :cond_11

    return-void

    .line 40
    :cond_11
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v2, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 41
    :catch_0
    move-exception p0

    :goto_3
    nop

    .line 42
    return-void
.end method
