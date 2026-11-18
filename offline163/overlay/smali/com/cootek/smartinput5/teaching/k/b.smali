.class public Lcom/cootek/smartinput5/teaching/k/b;
.super Ljava/lang/Object;


# static fields
.field public static A:Z = false

.field public static B:Z = false

.field public static C:Z = false

.field public static final p:I = 0x0

.field public static final q:I = 0x1

.field public static final r:I = 0x2

.field public static final s:I = 0x3

.field public static final t:I = 0x4

.field public static final u:I = 0x5

.field public static final v:I = 0x6

.field public static final w:[Ljava/lang/String;

.field public static final x:I = 0x0

.field public static final y:I = 0x1

.field private static z:Z


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/cootek/smartinput5/wizard/a;

.field private d:Landroid/app/Activity;

.field private e:Ljava/lang/String;

.field private f:Lcom/cootek/smartinput5/teaching/j;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field public o:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TUTORIAL_DEL_SLIDE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TUTORIAL_CHS_BIHUA"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "TUTORIAL_HANDWRITE_MASK"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "TUTORIAL_CURVE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "TUTORIAL_TIPS_FOR_TYPING"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "TUTORIAL_GUIDE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TUTORIAL_WELCOME"

    aput-object v2, v0, v1

    sput-object v0, Lcom/cootek/smartinput5/teaching/k/b;->w:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "hw_mask"

    iput-object v0, p0, Lcom/cootek/smartinput5/teaching/k/b;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/cootek/smartinput5/teaching/k/b;->b:Landroid/content/Context;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cootek/smartinput5/teaching/k/b;->g:Z

    return-void
.end method

.method public static a(Landroid/content/Context;I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/cootek/smartinput5/teaching/k/b;->b(Landroid/content/Context;)Z

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/cootek/smartinput5/teaching/k/b;->t()Z

    move-result p0

    :goto_0
    if-nez p0, :cond_2

    sget-boolean p1, Lcom/cootek/smartinput5/teaching/k/b;->A:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    sput-boolean p1, Lcom/cootek/smartinput5/teaching/k/b;->A:Z

    :cond_2
    return p0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->q(Landroid/content/Context;)Lcom/cootek/smartinput5/configuration/ConfigurationManager;

    move-result-object p0

    sget-object v0, Lcom/cootek/smartinput5/configuration/ConfigurationType;->WELCOME_DIALOG_SHOW:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->j(Lcom/cootek/smartinput5/configuration/ConfigurationType;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p0

    const/16 v1, 0xb8

    invoke-virtual {p0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p0

    const/16 v2, 0x9c

    invoke-virtual {p0, v2}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->getEditor()Lcom/cootek/smartinput5/engine/Editor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Editor;->isSpecialMode()Z

    move-result p0

    if-nez p0, :cond_2

    sget-boolean p0, Lcom/cootek/smartinput5/teaching/k/b;->z:Z

    if-nez p0, :cond_2

    sget-boolean p0, Lcom/cootek/smartinput5/teaching/k/b;->A:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/z;->o0()Lcom/cootek/smartinput5/func/paopao/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/paopao/b;->j()Lcom/cootek/smartinput5/func/paopao/a;

    move-result-object p0

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/cootek/smartinput5/func/paopao/a;->j(I)Lcom/cootek/smartinput5/func/paopao/PaopaoData;

    move-result-object p0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/func/z;->o0()Lcom/cootek/smartinput5/func/paopao/b;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/cootek/smartinput5/func/paopao/b;->v(Lcom/cootek/smartinput5/func/paopao/PaopaoData;)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private c(ILjava/lang/String;)V
    .locals 9

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->m0()Lcom/cootek/smartinput5/engine/Okinawa;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/cootek/smartinput5/engine/Okinawa;->getLanguageCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v4, p1

    invoke-virtual/range {v2 .. v8}, Lcom/cootek/smartinput5/engine/Settings;->setIntSetting(IIILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;Z)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getCurrentLanguageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->d0()Lcom/cootek/smartinput5/func/N;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/N;->V(Ljava/lang/String;)Lcom/cootek/smartinput5/func/language/a;

    move-result-object p1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0xa

    iget-object p1, p1, Lcom/cootek/smartinput5/func/language/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/cootek/smartinput5/engine/Settings;->setStringSetting(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private g(I)I
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method private h(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "english"

    return-object p1

    :cond_1
    const-string p1, "chinese_pinyin"

    return-object p1
.end method

.method private i()V
    .locals 3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->isHandwriteMaskVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v1

    const-string v2, "sk_hw_mask"

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/engine/Engine;->getKeyId(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/engine/Engine;->fireKeyOperation(II)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->processEvent()V

    :cond_0
    return-void
.end method

.method private static j()Z
    .locals 4

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getCurrentLanguageId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chinese_pinyin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getSurfaceType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getSurfaceSubType()I

    move-result v0

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private m(I)Z
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cootek/smartinput5/teaching/k/b;->e:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/teaching/k/b;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/z;->d0()Lcom/cootek/smartinput5/func/N;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/func/N;->O0(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/engine/Settings;->isLanguageEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/cootek/smartinput5/engine/Settings;->setLanguageEnabled(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/cootek/smartinput5/teaching/k/b;->e:Ljava/lang/String;

    :cond_1
    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/teaching/k/b;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getStringSetting(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/teaching/k/b;->g(I)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    invoke-direct {p0, v1, v0}, Lcom/cootek/smartinput5/teaching/k/b;->c(ILjava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Lcom/cootek/smartinput5/teaching/k/b;->g:Z

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/teaching/k/b;->n(I)Z

    move-result p1

    if-nez p1, :cond_4

    return v3

    :cond_4
    return v2
.end method

.method private r(Z)Z
    .locals 9

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1, p1}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getStringSetting(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    array-length v7, v0

    if-ge v5, v7, :cond_2

    if-eqz v5, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-object v7, v0, v5

    const-string v8, "hw_mask"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hw_mask:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    aget-object v7, v0, v5

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/cootek/smartinput5/engine/Settings;->setStringSetting(ILjava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->q0()Lcom/cootek/smartinput5/func/Y;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/Y;->p()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/o0;->C()Lcom/cootek/smartinput5/ui/FunctionBar;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/o0;->C()Lcom/cootek/smartinput5/ui/FunctionBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/FunctionBar;->v0()V

    move v4, v6

    :cond_3
    return v4
.end method

.method private static t()Z
    .locals 5

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x95

    const/16 v2, 0x14

    const-string v3, "chinese_pinyin"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(IILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-lt v0, v2, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v2, 0xa0

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/teaching/k/b;->j()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-boolean v0, Lcom/cootek/smartinput5/teaching/k/b;->B:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/cootek/smartinput5/teaching/k/b;->C:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    sput-boolean v1, Lcom/cootek/smartinput5/teaching/k/b;->C:Z

    const/4 v0, 0x1

    return v0
.end method

.method private w()V
    .locals 3

    new-instance v0, Lcom/cootek/smartinput5/teaching/j;

    iget-object v1, p0, Lcom/cootek/smartinput5/teaching/k/b;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cootek/smartinput5/teaching/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/teaching/k/b;->f:Lcom/cootek/smartinput5/teaching/j;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/teaching/j;->e()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0xb8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    return-void
.end method

.method private x()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/cootek/smartinput5/teaching/k/b;->b:Landroid/content/Context;

    const-class v2, Lcom/cootek/smartinput5/teaching/TutorialActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/teaching/k/b;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/teaching/k/b;->g:Z

    iget-object v0, p0, Lcom/cootek/smartinput5/teaching/k/b;->d:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cootek/smartinput5/teaching/k/b;->d:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/cootek/smartinput5/teaching/k/b;->f()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/teaching/k/b;->q()V

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/teaching/k/b;->c:Lcom/cootek/smartinput5/wizard/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/cootek/smartinput5/teaching/k/b;->n:Z

    invoke-virtual {v0}, Lcom/cootek/smartinput5/wizard/a;->l()V

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/teaching/k/b;->f:Lcom/cootek/smartinput5/teaching/j;

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/cootek/smartinput5/teaching/k/b;->n:Z

    invoke-virtual {v0}, Lcom/cootek/smartinput5/teaching/j;->c()V

    :cond_1
    return-void
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cootek/smartinput5/teaching/k/b;->n:Z

    return v0
.end method

.method public l()Z
    .locals 1

    sget-boolean v0, Lcom/cootek/smartinput5/teaching/k/b;->z:Z

    return v0
.end method

.method public n(I)Z
    .locals 5

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x239

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(I)I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcom/cootek/smartinput5/engine/Settings;->setIntSetting(II)V

    iput-boolean v4, p0, Lcom/cootek/smartinput5/teaching/k/b;->h:Z

    :cond_0
    if-eq p1, v4, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    if-eq p1, v2, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    iput-boolean v4, p0, Lcom/cootek/smartinput5/teaching/k/b;->l:Z

    :cond_2
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    const/16 v0, 0x94

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    invoke-virtual {p1, v0, v4}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    iput-boolean v4, p0, Lcom/cootek/smartinput5/teaching/k/b;->i:Z

    :cond_3
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    const/16 v0, 0x35

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/cootek/smartinput5/engine/Settings;->setWaveEnableSetting(Z)V

    iput-boolean v4, p0, Lcom/cootek/smartinput5/teaching/k/b;->m:Z

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-direct {p0, v4}, Lcom/cootek/smartinput5/teaching/k/b;->r(Z)Z

    move-result p1

    iput-boolean v4, p0, Lcom/cootek/smartinput5/teaching/k/b;->k:Z

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    invoke-virtual {p1, v0, v4}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    iput-boolean v4, p0, Lcom/cootek/smartinput5/teaching/k/b;->j:Z

    :cond_6
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean v4, p0, Lcom/cootek/smartinput5/teaching/k/b;->g:Z

    return p1
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/cootek/smartinput5/teaching/k/b;->o:I

    return-void
.end method

.method public p()V
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/teaching/k/b;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/teaching/k/b;->e:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->setLanguageEnabled(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 4

    iget-boolean v0, p0, Lcom/cootek/smartinput5/teaching/k/b;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/cootek/smartinput5/teaching/k/b;->h:Z

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v2, 0x239

    invoke-virtual {v0, v2, v1}, Lcom/cootek/smartinput5/engine/Settings;->setIntSetting(II)V

    :cond_0
    iget-boolean v0, p0, Lcom/cootek/smartinput5/teaching/k/b;->i:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/cootek/smartinput5/teaching/k/b;->i:Z

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v2, 0x94

    invoke-virtual {v0, v2, v1}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    :cond_1
    iget-boolean v0, p0, Lcom/cootek/smartinput5/teaching/k/b;->l:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/cootek/smartinput5/teaching/k/b;->l:Z

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    :cond_2
    iget-boolean v0, p0, Lcom/cootek/smartinput5/teaching/k/b;->j:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/cootek/smartinput5/teaching/k/b;->j:Z

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v1}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    :cond_3
    iget-boolean v0, p0, Lcom/cootek/smartinput5/teaching/k/b;->k:Z

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/cootek/smartinput5/teaching/k/b;->k:Z

    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/teaching/k/b;->r(Z)Z

    :cond_4
    iget-boolean v0, p0, Lcom/cootek/smartinput5/teaching/k/b;->m:Z

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/cootek/smartinput5/teaching/k/b;->m:Z

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/engine/Settings;->setWaveEnableSetting(Z)V

    :cond_5
    return-void
.end method

.method public s(Z)V
    .locals 0

    sput-boolean p1, Lcom/cootek/smartinput5/teaching/k/b;->z:Z

    return-void
.end method

.method public u(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/teaching/k/b;->m(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/teaching/k/b;->e()V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/teaching/k/b;->n:Z

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/cootek/smartinput5/teaching/k/b;->w()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->o0()Lcom/cootek/smartinput5/func/paopao/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/paopao/b;->j()Lcom/cootek/smartinput5/func/paopao/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/func/paopao/a;->j(I)Lcom/cootek/smartinput5/func/paopao/PaopaoData;

    move-result-object p1

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->o0()Lcom/cootek/smartinput5/func/paopao/b;

    move-result-object v0

    iget p1, p1, Lcom/cootek/smartinput5/func/paopao/PaopaoData;->id:I

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/paopao/b;->B(I)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/teaching/k/b;->x()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/cootek/smartinput5/teaching/k/b;->i()V

    :goto_0
    return-void
.end method

.method public v(ILandroid/app/Activity;I)V
    .locals 0

    iput-object p2, p0, Lcom/cootek/smartinput5/teaching/k/b;->d:Landroid/app/Activity;

    iput p3, p0, Lcom/cootek/smartinput5/teaching/k/b;->o:I

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/teaching/k/b;->u(I)V

    return-void
.end method
