.class public final Lcom/cootek/smartinput5/settings/SizeModel;
.super Ljava/lang/Object;
.source "SizeModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput5/settings/SizeModel$Session;,
        Lcom/cootek/smartinput5/settings/SizeModel$Store;
    }
.end annotation


# static fields
.field public static final CANDIDATE:I = 0x4

.field private static final DEFAULTS:[I

.field public static final FONT:I = 0x0

.field public static final GAP:I = 0x5

.field public static final HEIGHT:I = 0x6

.field public static final HEIGHT_LANDSCAPE:I = 0x7

.field public static final KEYBOARD:I = 0x3

.field private static final KEYS:[Ljava/lang/String;

.field public static final PANEL_LANDSCAPE:I = 0x2

.field public static final PANEL_PORTRAIT:I = 0x1

.field private static final STORES:[Ljava/lang/String;

.field private static final TITLES:[Ljava/lang/String;

.field private static final VALUES:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 7
    const/16 v0, 0x8

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "option_keyboard_text_size_list"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "option_keyboard_panel_height_portrait_list"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "option_keyboard_panel_height_list"

    aput-object v5, v1, v4

    const/4 v5, 0x3

    const-string v6, "option_keyboard_size_list"

    aput-object v6, v1, v5

    const/4 v6, 0x4

    const-string v7, "option_candidate_size_list"

    aput-object v7, v1, v6

    const/4 v7, 0x5

    const-string v8, "option_candidate_gap_list"

    aput-object v8, v1, v7

    const/4 v8, 0x6

    const-string v9, "option_keyboard_height_page"

    aput-object v9, v1, v8

    const/4 v9, 0x7

    const-string v10, "option_keyboard_height_landscape_page"

    aput-object v10, v1, v9

    sput-object v1, Lcom/cootek/smartinput5/settings/SizeModel;->KEYS:[Ljava/lang/String;

    .line 10
    new-array v1, v0, [Ljava/lang/String;

    const-string v10, "keyboard_text_size_custom"

    aput-object v10, v1, v2

    const-string v10, "keyboard_panel_height_portrait_custom"

    aput-object v10, v1, v3

    const-string v10, "keyboard_panel_height_custom"

    aput-object v10, v1, v4

    const/4 v10, 0x0

    aput-object v10, v1, v5

    aput-object v10, v1, v6

    const-string v11, "candidate_gap_custom"

    aput-object v11, v1, v7

    aput-object v10, v1, v8

    aput-object v10, v1, v9

    sput-object v1, Lcom/cootek/smartinput5/settings/SizeModel;->STORES:[Ljava/lang/String;

    .line 13
    const/16 v1, 0x20

    const/16 v10, 0x1a

    const/16 v11, 0x1c

    const/16 v12, 0x1e

    filled-new-array {v10, v11, v12, v1}, [I

    move-result-object v1

    const/16 v10, 0x19

    const/16 v11, 0x23

    const/16 v13, 0x28

    const/16 v14, 0x2b

    filled-new-array {v10, v12, v11, v13, v14}, [I

    move-result-object v15

    filled-new-array {v10, v12, v11, v13, v14}, [I

    move-result-object v10

    const/4 v11, -0x2

    const/4 v12, -0x1

    filled-new-array {v11, v12, v2, v3, v4}, [I

    move-result-object v11

    filled-new-array {v2, v4, v6}, [I

    move-result-object v12

    new-array v13, v0, [I

    fill-array-data v13, :array_0

    new-array v14, v2, [I

    new-array v9, v2, [I

    new-array v8, v0, [[I

    aput-object v1, v8, v2

    aput-object v15, v8, v3

    aput-object v10, v8, v4

    aput-object v11, v8, v5

    aput-object v12, v8, v6

    aput-object v13, v8, v7

    const/4 v1, 0x6

    aput-object v14, v8, v1

    const/4 v1, 0x7

    aput-object v9, v8, v1

    sput-object v8, Lcom/cootek/smartinput5/settings/SizeModel;->VALUES:[[I

    .line 15
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/cootek/smartinput5/settings/SizeModel;->DEFAULTS:[I

    .line 16
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0420\u0430\u0437\u043c\u0435\u0440 \u0448\u0440\u0438\u0444\u0442\u0430 \u043a\u043b\u0430\u0432\u0438\u0430\u0442\u0443\u0440\u044b"

    aput-object v1, v0, v2

    const-string v1, "\u0412\u044b\u0441\u043e\u0442\u0430 \u043f\u0430\u043d\u0435\u043b\u0438: \u043f\u043e\u0440\u0442\u0440\u0435\u0442"

    aput-object v1, v0, v3

    const-string v1, "\u0412\u044b\u0441\u043e\u0442\u0430 \u043f\u0430\u043d\u0435\u043b\u0438: \u0430\u043b\u044c\u0431\u043e\u043c"

    aput-object v1, v0, v4

    const-string v1, "\u041c\u0430\u0441\u0448\u0442\u0430\u0431 \u043f\u0430\u043d\u0435\u043b\u0438 \u043a\u0430\u043d\u0434\u0438\u0434\u0430\u0442\u043e\u0432"

    aput-object v1, v0, v5

    const-string v1, "\u0420\u0430\u0437\u043c\u0435\u0440 \u043a\u0430\u043d\u0434\u0438\u0434\u0430\u0442\u043e\u0432"

    aput-object v1, v0, v6

    const-string v1, "\u0420\u0430\u0441\u0441\u0442\u043e\u044f\u043d\u0438\u0435 \u043c\u0435\u0436\u0434\u0443 \u043f\u0440\u0435\u0434\u043b\u0430\u0433\u0430\u0435\u043c\u044b\u043c\u0438 \u0441\u043b\u043e\u0432\u0430\u043c\u0438"

    aput-object v1, v0, v7

    const-string v1, "\u0412\u044b\u0441\u043e\u0442\u0430 \u043a\u043b\u0430\u0432\u0438\u0430\u0442\u0443\u0440\u044b: \u043f\u043e\u0440\u0442\u0440\u0435\u0442"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "\u0412\u044b\u0441\u043e\u0442\u0430 \u043a\u043b\u0430\u0432\u0438\u0430\u0442\u0443\u0440\u044b: \u0430\u043b\u044c\u0431\u043e\u043c"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/cootek/smartinput5/settings/SizeModel;->TITLES:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        0xa
    .end array-data

    :array_1
    .array-data 4
        0x1a
        0x2b
        0x2b
        0x0
        0x2
        0xa
        -0x1
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)V
    .locals 0

    .line 4
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/SizeModel;->check(I)V

    return-void
.end method

.method private static check(I)V
    .locals 1

    .line 22
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/SizeModel;->validMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "size mode"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static count(I)I
    .locals 1

    .line 33
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/SizeModel;->check(I)V

    sget-object v0, Lcom/cootek/smartinput5/settings/SizeModel;->VALUES:[[I

    aget-object p0, v0, p0

    array-length p0, p0

    return p0
.end method

.method public static defaultRaw(I)I
    .locals 1

    .line 34
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/SizeModel;->check(I)V

    sget-object v0, Lcom/cootek/smartinput5/settings/SizeModel;->DEFAULTS:[I

    aget p0, v0, p0

    return p0
.end method

.method public static handles(Ljava/lang/String;)Z
    .locals 0

    .line 28
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/SizeModel;->modeForKey(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static indexOf(II)I
    .locals 2

    .line 37
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/SizeModel;->check(I)V

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/cootek/smartinput5/settings/SizeModel;->VALUES:[[I

    aget-object v1, v1, p0

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/cootek/smartinput5/settings/SizeModel;->VALUES:[[I

    aget-object v1, v1, p0

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static isDefault(II)Z
    .locals 0

    .line 35
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/SizeModel;->defaultRaw(I)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHeight(I)Z
    .locals 1

    .line 20
    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

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

.method public static modeForKey(Ljava/lang/String;)I
    .locals 2

    .line 24
    const-string v0, "option_customize_keyboard_size"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 25
    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/cootek/smartinput5/settings/SizeModel;->KEYS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/cootek/smartinput5/settings/SizeModel;->KEYS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static nativeId(I)I
    .locals 1

    .line 31
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/SizeModel;->check(I)V

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/16 p0, 0x55

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    const/16 p0, 0x7f

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static preferenceKey(I)Ljava/lang/String;
    .locals 1

    .line 29
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/SizeModel;->check(I)V

    sget-object v0, Lcom/cootek/smartinput5/settings/SizeModel;->KEYS:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static storeKey(I)Ljava/lang/String;
    .locals 1

    .line 30
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/SizeModel;->check(I)V

    sget-object v0, Lcom/cootek/smartinput5/settings/SizeModel;->STORES:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static themeDefault(II)Z
    .locals 2

    .line 45
    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    invoke-static {p0}, Lcom/cootek/smartinput5/settings/SizeModel;->isHeight(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {p0, p1}, Lcom/cootek/smartinput5/settings/SizeModel;->isDefault(II)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static title(I)Ljava/lang/String;
    .locals 1

    .line 47
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/SizeModel;->check(I)V

    sget-object v0, Lcom/cootek/smartinput5/settings/SizeModel;->TITLES:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static validMode(I)Z
    .locals 1

    .line 21
    if-ltz p0, :cond_0

    sget-object v0, Lcom/cootek/smartinput5/settings/SizeModel;->KEYS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueAt(II)I
    .locals 1

    .line 41
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/SizeModel;->check(I)V

    if-ltz p1, :cond_0

    sget-object v0, Lcom/cootek/smartinput5/settings/SizeModel;->VALUES:[[I

    aget-object v0, v0, p0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 42
    sget-object v0, Lcom/cootek/smartinput5/settings/SizeModel;->VALUES:[[I

    aget-object p0, v0, p0

    aget p0, p0, p1

    return p0

    .line 41
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "size index"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static values(I)[I
    .locals 1

    .line 32
    invoke-static {p0}, Lcom/cootek/smartinput5/settings/SizeModel;->check(I)V

    sget-object v0, Lcom/cootek/smartinput5/settings/SizeModel;->VALUES:[[I

    aget-object p0, v0, p0

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method
