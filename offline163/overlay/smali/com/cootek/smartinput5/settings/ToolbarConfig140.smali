.class public final Lcom/cootek/smartinput5/settings/ToolbarConfig140;
.super Ljava/lang/Object;
.source "ToolbarConfig140.java"


# static fields
.field private static final DEFAULTS:[Ljava/lang/String;

.field public static final EXTRA_PAGE:Ljava/lang/String; = "touchpal.toolbar.page"

.field private static final KEYS:[Ljava/lang/String;

.field private static final LABELS:[Ljava/lang/String;

.field private static final TYPES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 14
    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "first_button_type"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "second_button_type"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "third_button_type"

    aput-object v5, v1, v4

    const/4 v5, 0x3

    const-string v6, "candidate_first_button_type"

    aput-object v6, v1, v5

    const/4 v6, 0x4

    const-string v7, "candidate_second_button_type"

    aput-object v7, v1, v6

    sput-object v1, Lcom/cootek/smartinput5/settings/ToolbarConfig140;->KEYS:[Ljava/lang/String;

    .line 16
    new-array v1, v0, [Ljava/lang/String;

    const-string v7, "editor"

    aput-object v7, v1, v2

    const-string v8, "clipboard"

    aput-object v8, v1, v3

    const-string v9, "emoji"

    aput-object v9, v1, v4

    aput-object v7, v1, v5

    aput-object v9, v1, v6

    sput-object v1, Lcom/cootek/smartinput5/settings/ToolbarConfig140;->DEFAULTS:[Ljava/lang/String;

    .line 17
    const/4 v1, 0x6

    new-array v10, v1, [Ljava/lang/String;

    const-string v11, "language"

    aput-object v11, v10, v2

    aput-object v8, v10, v3

    aput-object v7, v10, v4

    aput-object v9, v10, v5

    const-string v7, "undo"

    aput-object v7, v10, v6

    const-string v7, "none"

    aput-object v7, v10, v0

    sput-object v10, Lcom/cootek/smartinput5/settings/ToolbarConfig140;->TYPES:[Ljava/lang/String;

    .line 18
    new-array v1, v1, [Ljava/lang/String;

    const-string v7, "\u042f\u0437\u044b\u043a"

    aput-object v7, v1, v2

    const-string v2, "\u0411\u0443\u0444\u0435\u0440 \u043e\u0431\u043c\u0435\u043d\u0430"

    aput-object v2, v1, v3

    const-string v2, "\u0420\u0435\u0434\u0430\u043a\u0442\u043e\u0440"

    aput-object v2, v1, v4

    const-string v2, "\u042d\u043c\u043e\u0434\u0437\u0438"

    aput-object v2, v1, v5

    const-string v2, "\u041e\u0442\u043c\u0435\u043d\u0430 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0435\u0433\u043e \u0434\u0435\u0439\u0441\u0442\u0432\u0438\u044f"

    aput-object v2, v1, v6

    const-string v2, "\u041d\u0435 \u043f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0442\u044c \u043a\u043d\u043e\u043f\u043a\u0443"

    aput-object v2, v1, v0

    sput-object v1, Lcom/cootek/smartinput5/settings/ToolbarConfig140;->LABELS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static choices()I
    .locals 1

    .line 21
    sget-object v0, Lcom/cootek/smartinput5/settings/ToolbarConfig140;->TYPES:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public static count()I
    .locals 1

    .line 20
    sget-object v0, Lcom/cootek/smartinput5/settings/ToolbarConfig140;->KEYS:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public static label(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 24
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/cootek/smartinput5/settings/ToolbarConfig140;->TYPES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/cootek/smartinput5/settings/ToolbarConfig140;->TYPES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/cootek/smartinput5/settings/ToolbarConfig140;->LABELS:[Ljava/lang/String;

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    :cond_1
    const-string p0, "\u0414\u0440\u0443\u0433\u043e\u0435 \u0434\u0435\u0439\u0441\u0442\u0432\u0438\u0435"

    return-object p0
.end method

.method public static open(Landroid/preference/Preference;)Z
    .locals 3

    .line 47
    :try_start_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cootek/smartinput5/ui/settings/KeyboardCustomizeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    const-string v1, "touchpal.toolbar.page"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 51
    :cond_0
    invoke-static {p0, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 52
    :catch_0
    move-exception p0

    const/4 p0, 0x0

    return p0
.end method

.method public static read(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 28
    if-ltz p1, :cond_0

    sget-object v0, Lcom/cootek/smartinput5/settings/ToolbarConfig140;->KEYS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 29
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    sget-object v0, Lcom/cootek/smartinput5/settings/ToolbarConfig140;->KEYS:[Ljava/lang/String;

    aget-object v0, v0, p1

    sget-object v1, Lcom/cootek/smartinput5/settings/ToolbarConfig140;->DEFAULTS:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 30
    :catch_0
    move-exception p0

    sget-object p0, Lcom/cootek/smartinput5/settings/ToolbarConfig140;->DEFAULTS:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "toolbar slot"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static select(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 7

    .line 33
    const/4 v0, 0x0

    if-ltz p1, :cond_6

    sget-object v1, Lcom/cootek/smartinput5/settings/ToolbarConfig140;->KEYS:[Ljava/lang/String;

    array-length v1, v1

    if-lt p1, v1, :cond_0

    goto :goto_2

    .line 34
    :cond_0
    sget-object v1, Lcom/cootek/smartinput5/settings/ToolbarConfig140;->TYPES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v2, :cond_2

    aget-object v6, v1, v3

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 35
    :cond_2
    if-nez v4, :cond_3

    return v0

    .line 36
    :cond_3
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 37
    invoke-static {p0, p1}, Lcom/cootek/smartinput5/settings/ToolbarConfig140;->read(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/cootek/smartinput5/settings/ToolbarConfig140;->KEYS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 38
    :cond_4
    invoke-static {p0, p1}, Lcom/cootek/smartinput5/settings/ToolbarConfig140;->read(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v0

    .line 42
    :cond_5
    const/4 p0, 0x6

    :try_start_0
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->refresh(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 43
    :goto_1
    return v5

    .line 33
    :cond_6
    :goto_2
    return v0
.end method

.method public static type(I)Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/cootek/smartinput5/settings/ToolbarConfig140;->TYPES:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
