.class final Lcom/cootek/smartinput5/settings/SizeRuntimeStore;
.super Ljava/lang/Object;
.source "SizeRuntimeStore.java"

# interfaces
.implements Lcom/cootek/smartinput5/settings/SizeModel$Store;


# static fields
.field private static heightPending:Z


# instance fields
.field private final context:Landroid/content/Context;

.field private height:Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;

.field private heightConfig:Lcom/cootek/smartinput5/engine/Config;

.field private final heightMode:I

.field private final preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->heightMode:I

    invoke-static {p1, p2}, Lcom/cootek/smartinput5/settings/LandscapeHeight152;->context(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->preferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 20
    sput-boolean p0, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->heightPending:Z

    return p0
.end method

.method private allowedHeight(I)Z
    .locals 6

    .line 34
    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->height()Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;

    move-result-object v0

    iget-boolean v0, v0, Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;->available:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 35
    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    return v2

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->height:Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;

    iget-object v0, v0, Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;->values:[I

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget v5, v0, v4

    if-ne v5, p1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 37
    :cond_3
    return v1
.end method

.method private static clearPendingHeight(Z)Z
    .locals 4

    .line 68
    sget-boolean v0, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->heightPending:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 69
    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v2

    .line 70
    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    if-nez p0, :cond_2

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/TouchPalIME;->isInputViewShown()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    .line 73
    :cond_2
    sput-boolean v1, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->heightPending:Z

    .line 75
    const/4 p0, 0x1

    :try_start_0
    invoke-virtual {v2}, Lcom/cootek/smartinput5/ui/o0;->z0()V

    .line 76
    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWindowLayoutManager()Lcom/cootek/smartinput5/ui/p0;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWindowLayoutManager()Lcom/cootek/smartinput5/ui/p0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/p0;->j0()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_3
    return p0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    sput-boolean p0, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->heightPending:Z

    .line 80
    return v1

    .line 70
    :cond_4
    :goto_0
    return v1

    .line 68
    :cond_5
    :goto_1
    return v1
.end method

.method static flushPendingHeight()V
    .locals 3

    .line 84
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->clearPendingHeight(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    const/16 v1, 0x10

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/engine/Engine;->updateResult(II)V

    .line 85
    :cond_0
    return-void
.end method

.method static keyboardHidden(Landroid/view/View;)V
    .locals 2

    .line 94
    sget-boolean v0, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->heightPending:Z

    if-eqz v0, :cond_6

    if-eqz p0, :cond_6

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 95
    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->y()Lcom/cootek/smartinput5/ui/SoftKeyboardView;

    move-result-object v0

    if-eq v0, p0, :cond_1

    goto :goto_2

    .line 97
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    .line 99
    :goto_1
    if-eqz p0, :cond_4

    invoke-static {v1}, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->clearPendingHeight(Z)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p0

    const/16 v0, 0x10

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/cootek/smartinput5/engine/Engine;->updateResult(II)V

    .line 100
    :cond_4
    return-void

    .line 96
    :cond_5
    :goto_2
    return-void

    .line 94
    :cond_6
    :goto_3
    return-void
.end method

.method static refresh(I)V
    .locals 4

    .line 102
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v1

    .line 104
    if-nez v1, :cond_1

    return-void

    .line 105
    :cond_1
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/SizeModel;->isHeight(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 106
    sput-boolean v3, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->heightPending:Z

    .line 107
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->clearPendingHeight(Z)Z

    .line 108
    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v1

    .line 109
    if-nez v1, :cond_2

    return-void

    .line 111
    :cond_2
    invoke-virtual {v1}, Lcom/cootek/smartinput5/ui/o0;->u()Lcom/cootek/smartinput5/ui/g;

    move-result-object v2

    .line 112
    if-eqz v2, :cond_3

    .line 113
    invoke-virtual {v2}, Lcom/cootek/smartinput5/ui/g;->x()V

    .line 114
    invoke-virtual {v2}, Lcom/cootek/smartinput5/ui/g;->c()Lcom/cootek/smartinput5/ui/CandidateBar;

    move-result-object v2

    .line 115
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/cootek/smartinput5/ui/CandidateBar;->Y0()V

    invoke-virtual {v2}, Lcom/cootek/smartinput5/ui/CandidateBar;->requestLayout()V

    invoke-virtual {v2}, Lcom/cootek/smartinput5/ui/CandidateBar;->invalidate()V

    .line 117
    :cond_3
    invoke-virtual {v1}, Lcom/cootek/smartinput5/ui/o0;->y()Lcom/cootek/smartinput5/ui/SoftKeyboardView;

    move-result-object v2

    .line 118
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/cootek/smartinput5/ui/SoftKeyboardView;->size127RefreshPreferences()V

    .line 120
    :cond_4
    const/4 v2, 0x3

    if-eq p0, v2, :cond_5

    if-eq p0, v3, :cond_5

    const/4 v2, 0x2

    if-eq p0, v2, :cond_5

    invoke-static {p0}, Lcom/cootek/smartinput5/settings/SizeModel;->isHeight(I)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 121
    :cond_5
    invoke-virtual {v1}, Lcom/cootek/smartinput5/ui/o0;->O()Lcom/cootek/smartinput5/ui/control/r;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {v1}, Lcom/cootek/smartinput5/ui/o0;->O()Lcom/cootek/smartinput5/ui/control/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/control/r;->r0()V

    .line 122
    :cond_6
    const/16 p0, 0x10

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Lcom/cootek/smartinput5/engine/Engine;->updateResult(II)V

    .line 123
    return-void
.end method

.method static scheduleKeyboardHidden(Landroid/view/View;)V
    .locals 2

    .line 87
    sget-boolean v0, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->heightPending:Z

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/cootek/smartinput5/settings/SizeRuntimeStore$1;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/settings/SizeRuntimeStore$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    return-void

    .line 87
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method height()Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->height:Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cootek/smartinput5/ui/SizePreviewBridge;->heightSpec(Landroid/content/Context;)Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->height:Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;

    new-instance v0, Lcom/cootek/smartinput5/engine/Config;

    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->heightMode:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->height:Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;

    iget v1, v1, Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;->orientation:I

    :goto_0
    invoke-direct {v0, v1}, Lcom/cootek/smartinput5/engine/Config;-><init>(I)V

    iput-object v0, p0, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->heightConfig:Lcom/cootek/smartinput5/engine/Config;

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->height:Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;

    return-object v0
.end method

.method public read(I)I
    .locals 4

    .line 40
    invoke-static {p1}, Lcom/cootek/smartinput5/settings/SizeModel;->isHeight(I)Z

    move-result v0

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->height()Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;

    move-result-object p1

    iget-boolean p1, p1, Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;->available:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 41
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->height:Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;

    iget v0, v0, Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;->nativeId:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->heightConfig:Lcom/cootek/smartinput5/engine/Config;

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(IILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;)I

    move-result v1

    goto :goto_0

    :cond_0
    nop

    .line 40
    :goto_0
    return v1

    .line 42
    :cond_1
    invoke-static {p1}, Lcom/cootek/smartinput5/settings/SizeModel;->nativeId(I)I

    move-result v0

    .line 43
    if-ltz v0, :cond_3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(I)I

    move-result v1

    :cond_2
    return v1

    .line 44
    :cond_3
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->preferences:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/cootek/smartinput5/settings/SizeModel;->storeKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/cootek/smartinput5/settings/SizeModel;->defaultRaw(I)I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public write(II)Z
    .locals 10

    .line 47
    invoke-static {p1}, Lcom/cootek/smartinput5/settings/SizeModel;->isHeight(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 48
    invoke-direct {p0, p2}, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->allowedHeight(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 49
    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    .line 50
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->height:Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;

    iget v4, v0, Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;->nativeId:I

    iget-object v8, p0, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->heightConfig:Lcom/cootek/smartinput5/engine/Config;

    const/4 v9, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v3 .. v9}, Lcom/cootek/smartinput5/engine/Settings;->setIntSetting(IIILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;Z)V

    .line 51
    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Settings;->writeBack()V

    .line 52
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->height:Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;

    iget v0, v0, Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;->nativeId:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->heightConfig:Lcom/cootek/smartinput5/engine/Config;

    const/4 v5, -0x1

    invoke-virtual {p1, v0, v5, v3, v4}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(IILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;)I

    move-result p1

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 48
    :cond_2
    :goto_1
    return v2

    .line 54
    :cond_3
    invoke-static {p1, p2}, Lcom/cootek/smartinput5/settings/SizeModel;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_4

    return v2

    .line 55
    :cond_4
    invoke-static {p1}, Lcom/cootek/smartinput5/settings/SizeModel;->nativeId(I)I

    move-result v0

    .line 56
    if-ltz v0, :cond_7

    .line 57
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    .line 58
    :cond_5
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    .line 59
    invoke-virtual {p1, v0, p2}, Lcom/cootek/smartinput5/engine/Settings;->setIntSetting(II)V

    .line 60
    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Settings;->writeBack()V

    .line 61
    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(I)I

    move-result p1

    if-ne p1, p2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    return v1

    .line 63
    :cond_7
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Lcom/cootek/smartinput5/settings/SizeModel;->storeKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 64
    const/4 v1, 0x5

    if-ne p1, v1, :cond_8

    invoke-static {p2}, Lcom/cootek/smartinput5/ui/settings/CandidateGapListPreference;->setCachedValue(I)V

    .line 65
    :cond_8
    return v0
.end method
