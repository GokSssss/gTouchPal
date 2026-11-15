.class public final Lcom/cootek/smartinput5/settings/LandscapeHeight152;
.super Ljava/lang/Object;
.source "LandscapeHeight152.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static arrange(Landroid/preference/PreferenceActivity;)V
    .locals 5

    .line 41
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SizeModel;->preferenceKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 42
    const/4 v2, 0x7

    invoke-static {v2}, Lcom/cootek/smartinput5/settings/SizeModel;->preferenceKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 43
    if-eqz v1, :cond_5

    if-nez v2, :cond_0

    goto :goto_2

    .line 44
    :cond_0
    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SizeModel;->title(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/settings/KeyboardActivation152;->parent(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/cootek/smartinput5/settings/KeyboardActivation152;->parent(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Landroid/preference/PreferenceGroup;

    move-result-object p0

    .line 47
    if-eqz v0, :cond_4

    if-nez p0, :cond_1

    goto :goto_1

    .line 48
    :cond_1
    if-eq p0, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 49
    :cond_2
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_3

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    mul-int/lit8 v4, p0, 0x2

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOrder(I)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 50
    :cond_3
    invoke-virtual {v1}, Landroid/preference/Preference;->getOrder()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOrder(I)V

    .line 51
    return-void

    .line 47
    :cond_4
    :goto_1
    return-void

    .line 43
    :cond_5
    :goto_2
    return-void
.end method

.method static context(Landroid/content/Context;I)Landroid/content/Context;
    .locals 6

    .line 16
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    :try_start_0
    new-instance p1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 19
    iput v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 20
    const-class v0, Landroid/content/Context;

    const-string v1, "createConfigurationContext"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/res/Configuration;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 21
    :catch_0
    move-exception p1

    return-object p0

    .line 16
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static seed(Landroid/content/Context;)V
    .locals 8

    .line 25
    :try_start_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 26
    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    .line 27
    new-instance v6, Lcom/cootek/smartinput5/engine/Config;

    const/4 v1, 0x2

    invoke-direct {v6, v1}, Lcom/cootek/smartinput5/engine/Config;-><init>(I)V

    .line 28
    const/16 v2, 0x239

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v4, v3, v6}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(IILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;)I

    move-result v2

    .line 29
    if-ne v2, v1, :cond_1

    const/16 v2, 0x235

    goto :goto_0

    :cond_1
    const/4 v5, 0x4

    if-ne v2, v5, :cond_2

    const/16 v2, 0x267

    goto :goto_0

    :cond_2
    const/16 v2, 0x102

    .line 30
    :goto_0
    invoke-virtual {v0, v2, v4, v3, v6}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(IILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;)I

    move-result v3

    if-eq v3, v4, :cond_3

    return-void

    .line 31
    :cond_3
    const/4 v3, 0x7

    invoke-static {p0, v3}, Lcom/cootek/smartinput5/settings/LandscapeHeight152;->context(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object p0

    .line 32
    invoke-static {p0}, Lcom/cootek/smartinput5/ui/SizePreviewBridge;->heightSpec(Landroid/content/Context;)Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;

    move-result-object p0

    .line 33
    iget-boolean v3, p0, Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;->available:Z

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;->orientation:I

    if-eq v3, v1, :cond_4

    goto :goto_2

    .line 34
    :cond_4
    iget v1, p0, Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;->panelPx:I

    rsub-int v1, v1, 0x226

    int-to-float v1, v1

    iget-boolean p0, p0, Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;->numberLine:Z

    if-eqz p0, :cond_5

    const p0, 0x3f99999a    # 1.2f

    goto :goto_1

    :cond_5
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_1
    div-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 35
    if-gtz v3, :cond_6

    return-void

    .line 36
    :cond_6
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v4, -0x1

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lcom/cootek/smartinput5/engine/Settings;->setIntSetting(IIILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;Z)V

    .line 37
    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Settings;->writeBack()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 33
    :cond_7
    :goto_2
    return-void

    .line 38
    :catch_0
    move-exception p0

    :goto_3
    nop

    .line 39
    return-void
.end method
