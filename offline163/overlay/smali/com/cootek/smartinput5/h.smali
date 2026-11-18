.class public Lcom/cootek/smartinput5/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cootek/smartinput5/g;
.implements Lcom/cootek/smartinput5/engine/CommitManager$ICommitTextListener;
.implements Lcom/cootek/smartinput5/engine/InlineManager$IInlineListener;
.implements Lcom/cootek/smartinput5/func/E0/k/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput5/h$o;,
        Lcom/cootek/smartinput5/h$p;,
        Lcom/cootek/smartinput5/h$n;
    }
.end annotation


# static fields
.field private static final W:Ljava/lang/String; = "TouchPalIMEImpl"

.field private static X:Z = false

.field public static Y:I = 0x0

.field public static Z:Z = true

.field private static final a0:I = 0xf7

.field private static final b0:I = 0x1e

.field private static final c0:I = 0x64

.field private static final d0:I = 0x0

.field private static final e0:I = 0x1


# instance fields
.field private A:Landroid/view/View;

.field private B:Lcom/cootek/smartinput5/func/E0/k/a;

.field private C:Lcom/cootek/smartinput5/TouchPalIME;

.field private D:Landroid/content/BroadcastReceiver;

.field private E:Landroid/content/BroadcastReceiver;

.field private F:Landroid/content/BroadcastReceiver;

.field private G:Landroid/content/BroadcastReceiver;

.field private H:Landroid/content/BroadcastReceiver;

.field private I:Z

.field private J:Z

.field K:Lcom/cootek/smartinput5/c;

.field private L:I

.field private M:Landroid/view/inputmethod/InputMethodManager;

.field private N:Lcom/cootek/smartinput5/func/asset/ExtractTasks$a;

.field private O:I

.field private P:Landroid/os/Handler;

.field private Q:Lcom/cootek/smartinput5/func/asset/ExtractTasks$a;

.field private R:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/cootek/smartinput5/h$p;",
            ">;"
        }
    .end annotation
.end field

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Landroid/view/View;

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field n:Lcom/cootek/smartinput5/ui/u;

.field private o:Landroid/content/res/Configuration;

.field private p:Ljava/util/Locale;

.field private q:D

.field private r:Z

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cootek/smartinput5/h$o;",
            ">;"
        }
    .end annotation
.end field

.field private t:Z

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

.field private x:Lcom/cootek/smartinput5/l/a;

.field private y:Lcom/cootek/smartinput5/func/f;

.field private z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/cootek/smartinput5/TouchPalIME;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/cootek/smartinput5/h;->h:I

    const-string v1, ""

    iput-object v1, p0, Lcom/cootek/smartinput5/h;->k:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/cootek/smartinput5/h;->l:I

    iput v1, p0, Lcom/cootek/smartinput5/h;->m:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/cootek/smartinput5/h;->p:Ljava/util/Locale;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/cootek/smartinput5/h;->r:Z

    iput-boolean v1, p0, Lcom/cootek/smartinput5/h;->t:Z

    iput-boolean v1, p0, Lcom/cootek/smartinput5/h;->u:Z

    iput-object v2, p0, Lcom/cootek/smartinput5/h;->v:Ljava/lang/String;

    new-instance v3, Lcom/cootek/smartinput5/l/a;

    invoke-direct {v3}, Lcom/cootek/smartinput5/l/a;-><init>()V

    iput-object v3, p0, Lcom/cootek/smartinput5/h;->x:Lcom/cootek/smartinput5/l/a;

    iput-boolean v1, p0, Lcom/cootek/smartinput5/h;->I:Z

    iput-boolean v1, p0, Lcom/cootek/smartinput5/h;->J:Z

    iput v0, p0, Lcom/cootek/smartinput5/h;->L:I

    new-instance v0, Lcom/cootek/smartinput5/h$l;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/h$l;-><init>(Lcom/cootek/smartinput5/h;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/h;->N:Lcom/cootek/smartinput5/func/asset/ExtractTasks$a;

    iput v1, p0, Lcom/cootek/smartinput5/h;->O:I

    new-instance v0, Lcom/cootek/smartinput5/h$m;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/h$m;-><init>(Lcom/cootek/smartinput5/h;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/h;->P:Landroid/os/Handler;

    new-instance v0, Lcom/cootek/smartinput5/h$a;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/h$a;-><init>(Lcom/cootek/smartinput5/h;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/h;->Q:Lcom/cootek/smartinput5/func/asset/ExtractTasks$a;

    iput-object v2, p0, Lcom/cootek/smartinput5/h;->R:Ljava/util/Stack;

    iput-boolean v1, p0, Lcom/cootek/smartinput5/h;->S:Z

    iput-boolean v1, p0, Lcom/cootek/smartinput5/h;->T:Z

    iput-boolean v1, p0, Lcom/cootek/smartinput5/h;->U:Z

    iput-object p1, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {p1}, Lcom/cootek/smartinput5/TPApplication;->initApplication(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic A(Lcom/cootek/smartinput5/h;)Lcom/cootek/smartinput5/func/f;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/h;->y:Lcom/cootek/smartinput5/func/f;

    return-object p0
.end method

.method static synthetic B(Lcom/cootek/smartinput5/h;Lcom/cootek/smartinput5/func/f;)Lcom/cootek/smartinput5/func/f;
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/h;->y:Lcom/cootek/smartinput5/func/f;

    return-object p1
.end method

.method private B0(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/cootek/smartinput5/h;->t:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->setComposingRegion(II)Z

    :cond_0
    return-void
.end method

.method static synthetic C(Lcom/cootek/smartinput5/h;)Z
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->n0()Z

    move-result p0

    return p0
.end method

.method static synthetic D(Lcom/cootek/smartinput5/h;)Z
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->P()Z

    move-result p0

    return p0
.end method

.method static synthetic E(Lcom/cootek/smartinput5/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->E0()V

    return-void
.end method

.method private E0()V
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/cootek/smartinput5/h;->J:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/presentations/i;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/presentations/i;->p()Lcom/cootek/smartinput5/presentations/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/presentations/i;->G()V

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Engine;->onCreateInputView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/TouchPalIME;->setInputView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/h;->J:Z

    :cond_1
    return-void
.end method

.method static synthetic F(Lcom/cootek/smartinput5/h;Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/h;->v0(Landroid/view/inputmethod/EditorInfo;Z)V

    return-void
.end method

.method private F0()V
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/func/asset/DummyNotificationActionReceiver;->showExtracFailedNotification(Landroid/content/Context;)V

    :try_start_0
    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0442

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/ui/control/E;->w(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic G(Lcom/cootek/smartinput5/h;Lcom/cootek/smartinput5/func/asset/ExtractTasks$InitResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/h;->H0(Lcom/cootek/smartinput5/func/asset/ExtractTasks$InitResult;)V

    return-void
.end method

.method static synthetic H(Lcom/cootek/smartinput5/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->m0()V

    return-void
.end method

.method private H0(Lcom/cootek/smartinput5/func/asset/ExtractTasks$InitResult;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v0}, Lcom/cootek/smartinput5/func/asset/DummyNotificationActionReceiver;->removeInitializingNotification(Landroid/content/Context;)V

    sget-object v0, Lcom/cootek/smartinput5/func/asset/ExtractTasks$InitResult;->extract_failed:Lcom/cootek/smartinput5/func/asset/ExtractTasks$InitResult;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->F0()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/cootek/smartinput5/func/asset/ExtractTasks$InitResult;->load_library_failed:Lcom/cootek/smartinput5/func/asset/ExtractTasks$InitResult;

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/cootek/smartinput5/h;->I:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cootek/smartinput5/h;->I:Z

    iget-object p1, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {p1}, Lcom/cootek/smartinput5/func/w0;->e0(Landroid/content/Context;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/asset/i;->H()Lcom/cootek/smartinput5/func/asset/i;

    move-result-object p1

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/func/asset/i;->t(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic I(Lcom/cootek/smartinput5/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->I0()V

    return-void
.end method

.method private I0()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->K:Lcom/cootek/smartinput5/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/c;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cootek/smartinput5/h;->K:Lcom/cootek/smartinput5/c;

    :cond_0
    return-void
.end method

.method private J()V
    .locals 14

    const-string v0, ""

    const-class v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/cootek/smartinput5/h;->M:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v2, :cond_3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v5, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v5}, Landroid/inputmethodservice/InputMethodService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :try_start_1
    const-string v2, "android.view.inputmethod.InputMethodSubtype"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x7

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const/4 v6, 0x2

    aput-object v1, v5, v6

    const/4 v9, 0x3

    aput-object v1, v5, v9

    const/4 v10, 0x4

    aput-object v1, v5, v10

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x5

    aput-object v11, v5, v12

    const/4 v13, 0x6

    aput-object v11, v5, v13

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    const v11, 0x7f0f0309

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v7

    const v11, 0x7f080251

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v8

    aput-object v0, v4, v6

    const-string v11, "keyboard"

    aput-object v11, v4, v9

    aput-object v0, v4, v10

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v0, v4, v12

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v0, v4, v13

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v4, v7, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    const-class v5, Landroid/view/inputmethod/InputMethodManager;

    const-string v10, "setAdditionalInputMethodSubtypes"

    new-array v11, v6, [Ljava/lang/Class;

    aput-object v1, v11, v7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-virtual {v5, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iget-object v10, p0, Lcom/cootek/smartinput5/h;->M:Landroid/view/inputmethod/InputMethodManager;

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v3, v11, v7

    aput-object v4, v11, v8

    invoke-virtual {v5, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-class v4, Landroid/view/inputmethod/InputMethodManager;

    const-string v5, "setInputMethodAndSubtype"

    new-array v10, v9, [Ljava/lang/Class;

    const-class v11, Landroid/os/IBinder;

    aput-object v11, v10, v7

    aput-object v1, v10, v8

    aput-object v2, v10, v6

    invoke-virtual {v4, v5, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/cootek/smartinput5/h;->M:Landroid/view/inputmethod/InputMethodManager;

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v5}, Lcom/cootek/smartinput5/TouchPalIME;->getToken()Landroid/os/IBinder;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v3, v4, v8

    aput-object v0, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method private J0(II)V
    .locals 3

    invoke-static {}, Lcom/cootek/smartinput5/h;->e0()I

    move-result v0

    sub-int v1, v0, p1

    add-int v2, v0, p2

    invoke-direct {p0, v1, v2}, Lcom/cootek/smartinput5/h;->B0(II)V

    iput v0, p0, Lcom/cootek/smartinput5/h;->h:I

    iput p1, p0, Lcom/cootek/smartinput5/h;->i:I

    iput p2, p0, Lcom/cootek/smartinput5/h;->j:I

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->G()Lcom/cootek/smartinput5/func/b;

    move-result-object p1

    iget p2, p0, Lcom/cootek/smartinput5/h;->h:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/b;->j()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/cootek/smartinput5/h;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/cootek/smartinput5/func/b;->o(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private K()V
    .locals 3

    iget-boolean v0, p0, Lcom/cootek/smartinput5/h;->t:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/cootek/smartinput5/h;->i:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/cootek/smartinput5/h;->j:I

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/h;->e0()I

    move-result v0

    iget v1, p0, Lcom/cootek/smartinput5/h;->h:I

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object v0

    iget v1, p0, Lcom/cootek/smartinput5/h;->i:I

    iget v2, p0, Lcom/cootek/smartinput5/h;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->deleteSurroundingText(II)Z

    :cond_1
    return-void
.end method

.method private K0()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->D:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/InputMethodService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cootek/smartinput5/h;->E:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/InputMethodService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/cootek/smartinput5/h;->F:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v1, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/InputMethodService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/cootek/smartinput5/h;->G:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    :try_start_3
    iget-object v1, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/InputMethodService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/cootek/smartinput5/h;->H:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    :try_start_4
    iget-object v1, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/InputMethodService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_4
    return-void
.end method

.method private M()V
    .locals 3

    invoke-static {}, Lcom/cootek/smartinput5/func/asset/i;->H()Lcom/cootek/smartinput5/func/asset/i;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/func/asset/i;->q(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/cootek/smartinput5/func/asset/i;->H()Lcom/cootek/smartinput5/func/asset/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/asset/i;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/h;->I:Z

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v0}, Lcom/cootek/smartinput5/func/asset/DummyNotificationActionReceiver;->showInitializingNotification(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private N()V
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->V:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Engine;->getWindowLayoutManager()Lcom/cootek/smartinput5/ui/p0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/ui/p0;->S()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method private N0()Z
    .locals 4

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getEditor()Lcom/cootek/smartinput5/engine/Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Editor;->getEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "meizu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.htc.android.mail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private O()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    const-string v1, "crash_flag.ckr"

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/func/I;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    const-string v1, "java_crash_flag.ckr"

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/func/I;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/func/I;->d(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->c0()V

    const-string v0, "JAVA_CRASH"

    iput-object v0, p0, Lcom/cootek/smartinput5/h;->v:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    const-string v1, "language.ckr"

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/func/I;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/func/v0;->C(Ljava/lang/Integer;)V

    const-string v0, "NATIVE_CRASH_WHEN_DICT_INIT"

    iput-object v0, p0, Lcom/cootek/smartinput5/h;->v:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    const-string v1, "crash_flag_on_shown.ckr"

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/func/I;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/func/v0;->C(Ljava/lang/Integer;)V

    const-string v0, "NATIVE_CRASH_WHEN_USING_KEYBOARD"

    iput-object v0, p0, Lcom/cootek/smartinput5/h;->v:Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method

.method private P()Z
    .locals 4

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object v1

    iget-object v2, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    const v3, 0x7f0f0a23

    invoke-static {v2, v3}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/cootek/smartinput5/ui/control/E;->w(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v1, v3}, Lcom/cootek/smartinput5/TouchPalIME;->requestHideSelf(I)V

    :cond_0
    return v0
.end method

.method private Q()V
    .locals 3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x147

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Settings;->writeBack()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/func/v0;->C(Ljava/lang/Integer;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->C0()Lcom/cootek/smartinput5/func/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/v0;->b()V

    :cond_0
    return-void
.end method

.method private R()V
    .locals 8

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v0}, Lcom/cootek/smartinput5/func/I;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    const-string v2, ".rebuild"

    invoke-static {v1, v2}, Lcom/cootek/smartinput5/func/I;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->J0()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/smartinput5/func/z;->m0()Lcom/cootek/smartinput5/engine/Okinawa;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/smartinput5/engine/Okinawa;->release()V

    :cond_0
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/cootek/smartinput/utilities/c;->d(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->J0()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->m0()Lcom/cootek/smartinput5/engine/Okinawa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->init()V

    :cond_2
    invoke-static {v1}, Lcom/cootek/smartinput/utilities/c;->m(Ljava/io/File;)V

    :cond_3
    return-void
.end method

.method private T()Z
    .locals 5

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getCommitCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/cootek/smartinput5/engine/Engine;->getCommitType(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/cootek/smartinput5/engine/Engine;->getCommitInternalSource(I)I

    move-result v3

    invoke-static {v3}, Lcom/cootek/smartinput5/engine/CommitManager;->isFullWord(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method private U()Z
    .locals 5

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v2, 0x11a

    invoke-virtual {v0, v2, v1}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v0}, Lcom/cootek/smartinput5/l/j/a;->b(Landroid/content/Context;)Lcom/cootek/smartinput5/l/j/a;

    move-result-object v0

    const-string v2, "TOUCHPALIME"

    const-string v3, "DESTROY"

    const-string v4, "/STATISTIC/"

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/cootek/smartinput5/l/j/a;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v0}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->q(Landroid/content/Context;)Lcom/cootek/smartinput5/configuration/ConfigurationManager;

    move-result-object v0

    sget-object v2, Lcom/cootek/smartinput5/configuration/ConfigurationType;->KEEP_RES_ON_IME_DESTROY:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->j(Lcom/cootek/smartinput5/configuration/ConfigurationType;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/smartinput5/engine/Engine;->getVoiceTypingTrigger()Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->isAutoExist()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Settings;->writeBack()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_1

    :cond_3
    sget-boolean v3, Lcom/cootek/smartinput5/h;->X:Z

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->destroy()V

    if-nez v0, :cond_4

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->A()V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cootek/smartinput5/h;->n:Lcom/cootek/smartinput5/ui/u;

    iput-object v0, p0, Lcom/cootek/smartinput5/h;->o:Landroid/content/res/Configuration;

    iput-object v0, p0, Lcom/cootek/smartinput5/h;->M:Landroid/view/inputmethod/InputMethodManager;

    sput-boolean v1, Lcom/cootek/smartinput5/h;->X:Z

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->J0()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->A()V

    goto :goto_1

    :cond_6
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :goto_1
    return v2
.end method

.method private V()V
    .locals 2

    new-instance v0, Lcom/cootek/smartinput5/h$n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cootek/smartinput5/h$n;-><init>(Lcom/cootek/smartinput5/h;Lcom/cootek/smartinput5/h$e;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/m0;->executeInThreadPool([Ljava/lang/Object;)V

    return-void
.end method

.method private W(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v0}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DICT_RECOVERY/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OCCURRED"

    const-string v2, "/STATISTIC/"

    invoke-virtual {v0, p1, v1, v2}, Lcom/cootek/smartinput5/l/g;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a0()V
    .locals 2

    iget v0, p0, Lcom/cootek/smartinput5/h;->l:I

    if-nez v0, :cond_0

    iget v1, p0, Lcom/cootek/smartinput5/h;->m:I

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/cootek/smartinput5/h;->m:I

    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/h;->J0(II)V

    :cond_1
    return-void
.end method

.method private c0()V
    .locals 1

    new-instance v0, Lcom/cootek/smartinput5/h$g;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/h$g;-><init>(Lcom/cootek/smartinput5/h;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static e0()I
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cootek/smartinput5/h;->f0(Z)I

    move-result v0

    return v0
.end method

.method private static f0(Z)I
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->getImsImpl()Lcom/cootek/smartinput5/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->getExtractedText()Landroid/view/inputmethod/ExtractedText;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    iget v0, p0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget p0, p0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/2addr v0, p0

    return v0
.end method

.method private handleBackKey()Z
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->l0()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private i0()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->K:Lcom/cootek/smartinput5/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cootek/smartinput5/c;

    iget-object v1, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-direct {v0, v1}, Lcom/cootek/smartinput5/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/h;->K:Lcom/cootek/smartinput5/c;

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/h;->K:Lcom/cootek/smartinput5/c;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/c;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private j0()Lcom/cootek/smartinput5/func/E0/k/a;
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->B:Lcom/cootek/smartinput5/func/E0/k/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cootek/smartinput5/func/E0/k/a;

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->Q()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cootek/smartinput5/func/E0/k/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/h;->B:Lcom/cootek/smartinput5/func/E0/k/a;

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/h;->B:Lcom/cootek/smartinput5/func/E0/k/a;

    return-object v0
.end method

.method private k0()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    const-string v1, "crash_flag_on_shown.ckr"

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/func/I;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private l0()V
    .locals 6

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    const-string v1, "check_image.ckr"

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/func/I;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x141

    const/16 v5, 0x3f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/func/I;->d(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0, v4, v3, v2}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZZ)V

    const-string v0, "CheckImageReport"

    invoke-static {v0}, Lcom/cootek/smartinput5/func/v0;->B(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    const-string v1, "crash_flag_on_shown.ckr"

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/func/I;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/func/I;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    const-string v1, "java_crash_flag_on_shown.ckr"

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/func/I;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/func/I;->d(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/actionflow/StatesCollector;->g()Lcom/cootek/smartinput5/actionflow/StatesCollector;

    move-result-object v0

    const-string v1, "JAVA_CRASH"

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/actionflow/StatesCollector;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/actionflow/a;->f()Lcom/cootek/smartinput5/actionflow/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    const-string v2, "SETTING_JAVA_CRASH"

    invoke-virtual {v0, v2, v1}, Lcom/cootek/smartinput5/actionflow/a;->i(Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "JAVA_CRASH_WHEN_KEYBOARD_SHOWN"

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0, v4, v3, v2}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZZ)V

    const-string v0, "DiagnoseReport"

    invoke-static {v0}, Lcom/cootek/smartinput5/func/v0;->B(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/cootek/smartinput5/actionflow/StatesCollector;->g()Lcom/cootek/smartinput5/actionflow/StatesCollector;

    move-result-object v0

    const-string v1, "NATIVE_CRASH"

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/actionflow/StatesCollector;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/actionflow/a;->f()Lcom/cootek/smartinput5/actionflow/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    const-string v2, "SETTING_NATIVE_CRASH"

    invoke-virtual {v0, v2, v1}, Lcom/cootek/smartinput5/actionflow/a;->i(Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "NATIVE_CRASH_WHEN_KEYBOARD_SHOWN"

    :goto_0
    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/h;->W(Ljava/lang/String;)V

    return-void
.end method

.method private m0()V
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->Q()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/func/permission/a;->l(Landroid/content/Context;)Lcom/cootek/smartinput5/func/permission/a;

    move-result-object v0

    new-instance v1, Lcom/cootek/smartinput5/h$d;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/h$d;-><init>(Lcom/cootek/smartinput5/h;)V

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/permission/a;->y(Lcom/cootek/smartinput5/func/permission/a$b;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->Q()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/func/permission/a;->l(Landroid/content/Context;)Lcom/cootek/smartinput5/func/permission/a;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/permission/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method private n0()Z
    .locals 3

    sget-boolean v0, Lcom/cootek/smartinput5/h;->X:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v0}, Lcom/cootek/smartinput5/func/z;->G0(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v0, p0}, Lcom/cootek/smartinput5/engine/Engine;->initialize(Lcom/cootek/smartinput5/TouchPalIME;Lcom/cootek/smartinput5/h;)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->u()Lcom/cootek/smartinput5/ui/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/g;->r()V

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/F;->n()Lcom/cootek/smartinput5/ui/control/F;

    move-result-object v0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/z;->E0()Lcom/vivo/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/c;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/control/F;->p(Z)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->B0()Lcom/cootek/smartinput5/func/u0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/u0;->t()V

    new-instance v0, Lcom/cootek/smartinput5/ui/u;

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v1

    iget-object v2, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-direct {v0, v1, v2, p0}, Lcom/cootek/smartinput5/ui/u;-><init>(Lcom/cootek/smartinput5/engine/Engine;Lcom/cootek/smartinput5/TouchPalIME;Lcom/cootek/smartinput5/h;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/h;->n:Lcom/cootek/smartinput5/ui/u;

    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/h;->o:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/cootek/smartinput5/h;->M:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->Q()V

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/h;->W(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cootek/smartinput5/h;->v:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/h;->o:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/cootek/smartinput5/h;->p:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->w0()V

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->o:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/cootek/smartinput5/h;->p:Ljava/util/Locale;

    :cond_1
    invoke-static {}, Lcom/cootek/smartlang/c;->f()Lcom/cootek/smartlang/c;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/h;->o:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Lcom/cootek/smartlang/c;->m(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->E0()Lcom/vivo/c;

    move-result-object v0

    iget-object v0, v0, Lcom/vivo/c;->b:Lcom/vivo/d;

    invoke-virtual {v0}, Lcom/vivo/d;->d()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/cootek/smartinput5/h;->X:Z

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private q0(Landroid/view/inputmethod/EditorInfo;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.camshare.camfrog.android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private r0()Z
    .locals 5

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.cootek.smartinput"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b00b4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-gt v0, v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v3, 0xe10

    div-long/2addr v0, v3

    const-wide/16 v3, 0x18

    div-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    long-to-int v1, v0

    iget v0, p0, Lcom/cootek/smartinput5/h;->O:I

    const/4 v3, 0x1

    if-ge v1, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v1, v3

    iput v1, p0, Lcom/cootek/smartinput5/h;->O:I

    const/4 v2, 0x1

    :cond_1
    :goto_1
    return v2
.end method

.method static synthetic u(Lcom/cootek/smartinput5/h;)Lcom/cootek/smartinput5/TouchPalIME;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    return-object p0
.end method

.method private u0()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/h;->e0()I

    move-result v0

    iget-object v1, p0, Lcom/cootek/smartinput5/h;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, v0, v1

    invoke-direct {p0, v1, v0}, Lcom/cootek/smartinput5/h;->B0(II)V

    :cond_0
    return-void
.end method

.method static synthetic v(Lcom/cootek/smartinput5/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->F0()V

    return-void
.end method

.method private v0(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->updateEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    invoke-static {p1, p2}, Lcom/cootek/smartinput5/func/l;->q(Landroid/view/inputmethod/EditorInfo;Z)Z

    move-result p1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object p2

    sget-object v0, Lcom/cootek/smartinput5/engine/cursor/CursorAction;->PREPARE:Lcom/cootek/smartinput5/engine/cursor/CursorAction;

    invoke-virtual {p2, v0, p1}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->consumeMoveAction(Lcom/cootek/smartinput5/engine/cursor/CursorAction;Z)V

    return-void
.end method

.method static synthetic w(Lcom/cootek/smartinput5/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->a0()V

    return-void
.end method

.method private w0()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v0}, Lcom/cootek/smartinput5/func/i;->j(Landroid/content/Context;)Lcom/cootek/smartinput5/func/i;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/i;->F(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v0}, Lcom/cootek/smartinput5/func/i;->j(Landroid/content/Context;)Lcom/cootek/smartinput5/func/i;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/i;->F(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v0}, Lcom/cootek/smartinput5/func/i;->j(Landroid/content/Context;)Lcom/cootek/smartinput5/func/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/i;->F(I)V

    return-void
.end method

.method static synthetic x(Lcom/cootek/smartinput5/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->V()V

    return-void
.end method

.method private x0()V
    .locals 8

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    new-instance v1, Lcom/cootek/smartinput5/func/component/AutoUpdateReceiver;

    invoke-direct {v1}, Lcom/cootek/smartinput5/func/component/AutoUpdateReceiver;-><init>()V

    iput-object v1, p0, Lcom/cootek/smartinput5/h;->D:Landroid/content/BroadcastReceiver;

    const-string v1, "com.cootek.smartinputv5.INTERNAL_ACTION.auto_update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    iget-object v2, p0, Lcom/cootek/smartinput5/h;->D:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/inputmethodservice/InputMethodService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    new-instance v1, Lcom/cootek/smartinput5/func/AttachedPackageReceiver;

    invoke-direct {v1}, Lcom/cootek/smartinput5/func/AttachedPackageReceiver;-><init>()V

    iput-object v1, p0, Lcom/cootek/smartinput5/h;->E:Landroid/content/BroadcastReceiver;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "package"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "file"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    iget-object v7, p0, Lcom/cootek/smartinput5/h;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v0}, Landroid/inputmethodservice/InputMethodService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    iget-object v6, p0, Lcom/cootek/smartinput5/h;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v6, v4}, Landroid/inputmethodservice/InputMethodService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    iget-object v4, p0, Lcom/cootek/smartinput5/h;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v5}, Landroid/inputmethodservice/InputMethodService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    new-instance v4, Lcom/cootek/smartinput5/func/ExternalPackageReceiver;

    invoke-direct {v4}, Lcom/cootek/smartinput5/func/ExternalPackageReceiver;-><init>()V

    iput-object v4, p0, Lcom/cootek/smartinput5/h;->F:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    iget-object v2, p0, Lcom/cootek/smartinput5/h;->F:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/inputmethodservice/InputMethodService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.INPUT_METHOD_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/cootek/smartinput5/receiver/InputMethodChangedReceiver;

    invoke-direct {v1}, Lcom/cootek/smartinput5/receiver/InputMethodChangedReceiver;-><init>()V

    iput-object v1, p0, Lcom/cootek/smartinput5/h;->G:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v2, v1, v0}, Landroid/inputmethodservice/InputMethodService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.cootek.smartinputv5.INTERNAL_ACTION.PresentationClient.ACTION_DELETE_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.cootek.smartinputv5.INTERNAL_ACTION.PresentationClient.ACTION_CLICK_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/cootek/smartinput5/presentations/NotificationActionReceiver;

    invoke-direct {v1}, Lcom/cootek/smartinput5/presentations/NotificationActionReceiver;-><init>()V

    iput-object v1, p0, Lcom/cootek/smartinput5/h;->H:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v2, v1, v0}, Landroid/inputmethodservice/InputMethodService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic y(Lcom/cootek/smartinput5/h;)Ljava/util/Stack;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/h;->R:Ljava/util/Stack;

    return-object p0
.end method

.method static synthetic z(Lcom/cootek/smartinput5/h;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cootek/smartinput5/h;->S:Z

    return p0
.end method


# virtual methods
.method public A0()V
    .locals 9

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Engine;->onUpdateSelection(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/cootek/smartinput5/engine/Engine;->onUpdateSelection(IIIIIII)V

    :cond_0
    return-void
.end method

.method public C0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cootek/smartinput5/h;->u:Z

    return-void
.end method

.method public D0()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->z:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/TouchPalIME;->doOnCreateExtractTextView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/smartinput5/h;->z:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/h;->z:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    iget-object v1, p0, Lcom/cootek/smartinput5/h;->z:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodService;->setExtractView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public G0()V
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->M:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/TouchPalIME;->getToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->M:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/TouchPalIME;->getToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    :cond_0
    return-void
.end method

.method public L()V
    .locals 1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->beginBatchEdit()Z

    return-void
.end method

.method public L0(Lcom/cootek/smartinput5/h$o;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public M0()V
    .locals 4

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->isHardKeyMode()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->n:Lcom/cootek/smartinput5/ui/u;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/u;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const v1, 0x7f0804a7

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/h;->n:Lcom/cootek/smartinput5/ui/u;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/u;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    const v1, 0x7f0804a8

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/h;->n:Lcom/cootek/smartinput5/ui/u;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/u;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    const v1, 0x7f080506

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/cootek/smartinput5/h;->n:Lcom/cootek/smartinput5/ui/u;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/u;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    const v1, 0x7f080507

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getCurrentLanguageId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "english"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    if-eqz v0, :cond_5

    if-nez v3, :cond_5

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/z;->d0()Lcom/cootek/smartinput5/func/N;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/func/N;->V(Ljava/lang/String;)Lcom/cootek/smartinput5/func/language/a;

    move-result-object v0

    iget-object v0, v0, Lcom/cootek/smartinput5/func/language/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/func/N;->R(Ljava/lang/String;)I

    move-result v1

    :cond_5
    :goto_1
    if-lez v1, :cond_6

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->M:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v2}, Lcom/cootek/smartinput5/TouchPalIME;->getToken()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v3}, Landroid/inputmethodservice/InputMethodService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->showStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V

    goto :goto_2

    :cond_6
    :try_start_0
    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->hideStatusIcon()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    return-void
.end method

.method public S()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cootek/smartinput5/h;->V:Landroid/view/View;

    return-void
.end method

.method public X(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, v0}, Lcom/cootek/smartinput5/engine/Engine;->collectInputData(Ljava/lang/String;IZ)V

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/func/userinput/UserInputRecorder;->i()V

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/h;->v0(Landroid/view/inputmethod/EditorInfo;Z)V

    iget-object v2, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v2}, Lcom/cootek/smartinput5/func/verifier/a;->a(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v2}, Lcom/cootek/smartinput5/func/verifier/InstallPathVerifier;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->P()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/cootek/smartinput5/h;->r:Z

    if-nez v2, :cond_3

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/func/z;->L()Lcom/cootek/smartinput5/func/l;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/cootek/smartinput5/func/l;->n(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget p1, p0, Lcom/cootek/smartinput5/h;->L:I

    if-eqz p1, :cond_2

    iput v1, p0, Lcom/cootek/smartinput5/h;->L:I

    iget-object p1, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {p1, v1}, Lcom/cootek/smartinput5/TouchPalIME;->requestHideSelf(I)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v2

    sget v4, Lcom/cootek/smartinput5/func/learnmanager/b;->d:I

    sget v5, Lcom/cootek/smartinput5/func/learnmanager/b;->i:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/cootek/smartinput5/engine/Engine;->fireLearnTextOperation(Ljava/lang/String;II)V

    :cond_4
    if-eqz p2, :cond_7

    iget v2, p0, Lcom/cootek/smartinput5/h;->L:I

    iget v4, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-ne v2, v4, :cond_7

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/engine/Engine;->getEditor()Lcom/cootek/smartinput5/engine/Editor;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/cootek/smartinput5/engine/Editor;->getTextBeforeCursor(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0}, Lcom/cootek/smartinput5/engine/Editor;->getTextAfterCursor(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Lcom/cootek/smartinput5/engine/Engine;->onUpdateSelection(IIIIIII)V

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_6

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/cootek/smartinput5/h;->P:Landroid/os/Handler;

    new-instance v2, Lcom/cootek/smartinput5/h$k;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/h$k;-><init>(Lcom/cootek/smartinput5/h;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_0
    if-eqz p2, :cond_9

    iget v0, p0, Lcom/cootek/smartinput5/h;->L:I

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eq v0, v2, :cond_8

    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getEditor()Lcom/cootek/smartinput5/engine/Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/cootek/smartinput5/h;->k:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/engine/Editor;->getTextBeforeCursor(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/cootek/smartinput5/h;->k:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    move v0, p2

    :goto_2
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/F;->n()Lcom/cootek/smartinput5/ui/control/F;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/ui/control/F;->o()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/cootek/smartinput5/engine/Engine;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    :cond_a
    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->N0()Z

    move-result v2

    iput-boolean v2, p0, Lcom/cootek/smartinput5/h;->t:Z

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iput v2, p0, Lcom/cootek/smartinput5/h;->L:I

    iget-object v2, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v2, p1, p2}, Lcom/cootek/smartinput5/TouchPalIME;->doOnStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    iget-object v2, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v2

    if-nez v2, :cond_b

    iget-boolean v2, p0, Lcom/cootek/smartinput5/h;->T:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v2, v1}, Lcom/cootek/smartinput5/TouchPalIME;->requestHideSelf(I)V

    iput-boolean v1, p0, Lcom/cootek/smartinput5/h;->T:Z

    :cond_b
    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->u0()V

    :cond_c
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->f0()Lcom/cootek/b/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cootek/b/a;->h(Landroid/view/inputmethod/EditorInfo;Z)V

    return-void
.end method

.method public Y()V
    .locals 5

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    const/16 v1, 0x17b

    const-string v2, "OPEN_KEYBOARD"

    invoke-static {v0, v1, v2}, Lcom/cootek/smartinput5/engine/Engine;->recordDailyUsage(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v0}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object v0

    const-string v1, "APP_STATE/KEYBOARD_WINDOW_SHOWN"

    const-string v2, "OCCURRED"

    const-string v3, "/STATISTIC/"

    invoke-virtual {v0, v1, v2, v3}, Lcom/cootek/smartinput5/l/g;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/net/a;->d()Lcom/cootek/smartinput5/net/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/net/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/net/a;->d()Lcom/cootek/smartinput5/net/a;

    move-result-object v0

    iget-object v2, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/net/a;->j(Landroid/content/Context;)V

    :cond_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->l0()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->onWindowShown()V

    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/TouchPalIME;->doOnWindowShown()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->r0()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    const-class v4, Lcom/cootek/smartinput/upgrade/PackageUninstallerActivty;

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v2, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2
    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/F;->n()Lcom/cootek/smartinput5/ui/control/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/control/F;->s()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/h;->U:Z

    invoke-virtual {p0}, Lcom/cootek/smartinput5/h;->k()V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/h;->r:Z

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v0}, Lcom/cootek/smartinput5/l/j/a;->b(Landroid/content/Context;)Lcom/cootek/smartinput5/l/j/a;

    move-result-object v0

    const-string v2, "FINISH"

    invoke-virtual {v0, v1, v2, v3}, Lcom/cootek/smartinput5/l/j/a;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public Z(C)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/TouchPalIME;->sendKeyChar(C)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/h;->u:Z

    iput-object p1, p0, Lcom/cootek/smartinput5/h;->V:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    const-string v0, "TouchPalIMEImpl"

    const-string v1, "TouchPalIMEImpl onWindowHidden"

    invoke-static {v0, v1}, Lcom/cootek/smartinput/utilities/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v0

    sget-object v1, Lcom/cootek/tool/perf/PerfActionType;->ON_WINDOW_HIDDEN:Lcom/cootek/tool/perf/PerfActionType;

    invoke-virtual {v0, v1}, Lcom/cootek/tool/perf/d;->B(Lcom/cootek/tool/perf/PerfActionType;)V

    invoke-static {}, Lcom/cootek/smartinput5/actionflow/a;->f()Lcom/cootek/smartinput5/actionflow/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    const-string v2, "KEYBOARD_HIDDEN_START"

    invoke-virtual {v0, v2, v1}, Lcom/cootek/smartinput5/actionflow/a;->i(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->onWindowHidden()V

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->P:Landroid/os/Handler;

    new-instance v1, Lcom/cootek/smartinput5/h$b;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/h$b;-><init>(Lcom/cootek/smartinput5/h;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/TouchPalIME;->setWindowHidden(Z)V

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/TouchPalIME;->setCandidatesViewShown(Z)V

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/TouchPalIME;->setWindowHidden(Z)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->k0()V

    iput-boolean v2, p0, Lcom/cootek/smartinput5/h;->T:Z

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cootek/smartinput5/h$o;

    invoke-interface {v3}, Lcom/cootek/smartinput5/h$o;->a()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/cootek/smartinput5/func/asset/i;->H()Lcom/cootek/smartinput5/func/asset/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/asset/i;->T()V

    invoke-static {}, Lcom/cootek/smartinput5/func/asset/i;->H()Lcom/cootek/smartinput5/func/asset/i;

    move-result-object v0

    iget-object v3, p0, Lcom/cootek/smartinput5/h;->Q:Lcom/cootek/smartinput5/func/asset/ExtractTasks$a;

    invoke-virtual {v0, v3}, Lcom/cootek/smartinput5/func/asset/i;->m(Lcom/cootek/smartinput5/func/asset/ExtractTasks$a;)V

    iput-boolean v1, p0, Lcom/cootek/smartinput5/h;->r:Z

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v0

    sget-object v1, Lcom/cootek/tool/perf/PerfActionType;->ON_WINDOW_HIDDEN:Lcom/cootek/tool/perf/PerfActionType;

    invoke-virtual {v0, v1}, Lcom/cootek/tool/perf/d;->G(Lcom/cootek/tool/perf/PerfActionType;)Z

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v0

    sget-object v1, Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;->HIDE_KEYBOARD:Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;

    invoke-virtual {v0, v1}, Lcom/cootek/tool/perf/d;->K(Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;)V

    sput-boolean v2, Lcom/cootek/smartinput5/h;->Z:Z

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/F;->n()Lcom/cootek/smartinput5/ui/control/F;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/ui/control/F;->z(Z)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->J0()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->f0()Lcom/cootek/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/b/a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->f0()Lcom/cootek/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/b/a;->i()V

    :cond_2
    return-void
.end method

.method public b0()V
    .locals 1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->endBatchEdit()Z

    return-void
.end method

.method public c()V
    .locals 4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/cootek/smartinput5/h;->Z:Z

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v1

    sget-object v2, Lcom/cootek/tool/perf/PerfActionType;->ON_WINDOW_SHOWN:Lcom/cootek/tool/perf/PerfActionType;

    invoke-virtual {v1, v2}, Lcom/cootek/tool/perf/d;->B(Lcom/cootek/tool/perf/PerfActionType;)V

    const-string v1, "TouchPalIMEImpl"

    const-string v3, "TouchPalIMEImpl onWindowShown"

    invoke-static {v1, v3}, Lcom/cootek/smartinput/utilities/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/asset/i;->H()Lcom/cootek/smartinput5/func/asset/i;

    move-result-object v1

    iget-object v3, p0, Lcom/cootek/smartinput5/h;->N:Lcom/cootek/smartinput5/func/asset/ExtractTasks$a;

    invoke-virtual {v1, v3}, Lcom/cootek/smartinput5/func/asset/i;->m(Lcom/cootek/smartinput5/func/asset/ExtractTasks$a;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/asset/i;->H()Lcom/cootek/smartinput5/func/asset/i;

    move-result-object v1

    iget-object v3, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v1, v3, v0}, Lcom/cootek/smartinput5/func/asset/i;->q(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/cootek/tool/perf/d;->G(Lcom/cootek/tool/perf/PerfActionType;)Z

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/F;->n()Lcom/cootek/smartinput5/ui/control/F;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/ui/control/F;->z(Z)V

    return-void
.end method

.method public commitText(Ljava/lang/CharSequence;)V
    .locals 4

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->K()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/cootek/smartinput5/h;->h:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cootek/smartinput5/h;->i:I

    iput v0, p0, Lcom/cootek/smartinput5/h;->j:I

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v1

    sget-object v2, Lcom/cootek/tool/perf/PerfActionType;->IME_COMMIT_TEXT:Lcom/cootek/tool/perf/PerfActionType;

    invoke-virtual {v1, v2}, Lcom/cootek/tool/perf/d;->B(Lcom/cootek/tool/perf/PerfActionType;)V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/cootek/tool/perf/d;->G(Lcom/cootek/tool/perf/PerfActionType;)Z

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/cootek/smartinput5/engine/Engine;->setLastCommitTime(J)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->getEditor()Lcom/cootek/smartinput5/engine/Editor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/engine/Editor;->changeSelect(Z)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->getEditor()Lcom/cootek/smartinput5/engine/Editor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/engine/Editor;->setEdit(Z)V

    :cond_0
    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/TouchPalIME;->doOnCreateExtractTextView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/smartinput5/h;->z:Landroid/view/View;

    return-object v0
.end method

.method public d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->w:Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    return-object v0
.end method

.method public e(Z)V
    .locals 2

    const/4 p1, 0x0

    sput-boolean p1, Lcom/cootek/smartinput5/h;->Z:Z

    const-string p1, "TouchPalIMEImpl"

    const-string v0, "TouchPalIMEImpl onFinishInputView"

    invoke-static {p1, v0}, Lcom/cootek/smartinput/utilities/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object p1

    sget-object v0, Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;->SHOW_KEYBOARD:Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;

    invoke-virtual {p1, v0}, Lcom/cootek/tool/perf/d;->K(Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;)V

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object p1

    sget-object v0, Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;->CURVE:Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;

    invoke-virtual {p1, v0}, Lcom/cootek/tool/perf/d;->K(Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;)V

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object p1

    sget-object v0, Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;->CLICK:Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;

    invoke-virtual {p1, v0}, Lcom/cootek/tool/perf/d;->K(Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;)V

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object p1

    sget-object v0, Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;->UI_CAND:Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;

    invoke-virtual {p1, v0}, Lcom/cootek/tool/perf/d;->K(Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;)V

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object p1

    sget-object v0, Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;->HIDE_KEYBOARD:Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;

    invoke-virtual {p1, v0}, Lcom/cootek/tool/perf/d;->F(Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;)V

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object p1

    sget-object v0, Lcom/cootek/tool/perf/PerfActionType;->ON_FINISH_INPUT_VIEW:Lcom/cootek/tool/perf/PerfActionType;

    invoke-virtual {p1, v0}, Lcom/cootek/tool/perf/d;->B(Lcom/cootek/tool/perf/PerfActionType;)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->onFinishInputView()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object p1

    sget-object v1, Lcom/cootek/smartinput5/engine/cursor/CursorAction;->RESET:Lcom/cootek/smartinput5/engine/cursor/CursorAction;

    invoke-virtual {p1, v1}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->consumeMoveAction(Lcom/cootek/smartinput5/engine/cursor/CursorAction;)V

    :cond_0
    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/cootek/tool/perf/d;->G(Lcom/cootek/tool/perf/PerfActionType;)Z

    return-void
.end method

.method public f(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/cootek/smartinput5/h;->Z:Z

    const-string v0, "TouchPalIMEImpl"

    const-string v1, "TouchPalIMEImpl onStartInputView"

    invoke-static {v0, v1}, Lcom/cootek/smartinput/utilities/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v0}, Lcom/cootek/smartinput5/l/j/a;->b(Landroid/content/Context;)Lcom/cootek/smartinput5/l/j/a;

    move-result-object v0

    const-string v1, "APP_STATE/KEYBOARD_WINDOW_SHOWN"

    const-string v2, "START"

    const-string v3, "/STATISTIC/"

    invoke-virtual {v0, v1, v2, v3}, Lcom/cootek/smartinput5/l/j/a;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Engine;->getEditor()Lcom/cootek/smartinput5/engine/Editor;

    move-result-object v1

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/engine/Editor;->convertInputType(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/cootek/tool/perf/d;->E(Landroid/view/inputmethod/EditorInfo;I)V

    :cond_0
    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v0

    sget-object v1, Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;->SHOW_KEYBOARD:Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;

    invoke-virtual {v0, v1}, Lcom/cootek/tool/perf/d;->F(Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;)V

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v0

    sget-object v1, Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;->HIDE_KEYBOARD:Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;

    invoke-virtual {v0, v1}, Lcom/cootek/tool/perf/d;->K(Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;)V

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v0

    sget-object v1, Lcom/cootek/tool/perf/PerfActionType;->ON_START_INPUT_VIEW:Lcom/cootek/tool/perf/PerfActionType;

    invoke-virtual {v0, v1}, Lcom/cootek/tool/perf/d;->B(Lcom/cootek/tool/perf/PerfActionType;)V

    invoke-static {}, Lcom/cootek/smartinput5/monitor/b;->l()Lcom/cootek/smartinput5/monitor/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/monitor/b;->w()V

    invoke-static {}, Lcom/cootek/smartinput5/actionflow/a;->f()Lcom/cootek/smartinput5/actionflow/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    const/4 v2, 0x0

    const-string v3, "KEYBOARD_SHOW_START"

    invoke-virtual {v0, v3, v1, v2}, Lcom/cootek/smartinput5/actionflow/a;->j(Ljava/lang/String;Landroid/content/Context;Z)V

    new-instance v0, Lcom/cootek/smartinput5/h$j;

    invoke-direct {v0, p0, p1, p2}, Lcom/cootek/smartinput5/h$j;-><init>(Lcom/cootek/smartinput5/h;Landroid/view/inputmethod/EditorInfo;Z)V

    invoke-static {}, Lcom/cootek/smartinput5/func/asset/i;->H()Lcom/cootek/smartinput5/func/asset/i;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/func/asset/i;->m(Lcom/cootek/smartinput5/func/asset/ExtractTasks$a;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->M()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->j0()Lcom/cootek/smartinput5/func/E0/k/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/E0/k/a;->b()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->j0()Lcom/cootek/smartinput5/func/E0/k/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/cootek/smartinput5/func/E0/k/a;->c(Lcom/cootek/smartinput5/func/E0/k/a$b;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->j0()Lcom/cootek/smartinput5/func/E0/k/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/E0/k/a;->d()V

    :cond_1
    return-void
.end method

.method public finishComposing()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/cootek/smartinput5/h;->h:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cootek/smartinput5/h;->i:I

    iput v0, p0, Lcom/cootek/smartinput5/h;->j:I

    sput v0, Lcom/cootek/smartinput5/h;->Y:I

    const-string v0, ""

    iput-object v0, p0, Lcom/cootek/smartinput5/h;->k:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->finishComposingText()Z

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public g0()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->z:Landroid/view/View;

    return-object v0
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public h0()Lcom/cootek/smartinput5/ui/u;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->n:Lcom/cootek/smartinput5/ui/u;

    return-object v0
.end method

.method public i(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->getEditor()Lcom/cootek/smartinput5/engine/Editor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Editor;->inEdit()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->getExtractedText()Landroid/view/inputmethod/ExtractedText;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cootek/commercial/b;->a()Lcom/cootek/commercial/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/cootek/commercial/b;->h(Landroid/view/inputmethod/ExtractedText;)V

    :goto_0
    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 2

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->N()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getSurfaceManager()Lcom/cootek/smartinput5/engine/SurfaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getSurfaceManager()Lcom/cootek/smartinput5/engine/SurfaceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/SurfaceManager;->checkInputMethodWindowBg()V

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/ui/control/F;->n()Lcom/cootek/smartinput5/ui/control/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/control/F;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodService;->setExtractViewShown(Z)V

    :cond_1
    return-void
.end method

.method public l(IIIIII)V
    .locals 9

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object v0

    sget-object v1, Lcom/cootek/smartinput5/engine/cursor/CursorAction;->CONSUME:Lcom/cootek/smartinput5/engine/cursor/CursorAction;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->consumeMoveAction(Lcom/cootek/smartinput5/engine/cursor/CursorAction;)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/extractedtext/ExtractedStateProcessor;->getInstance()Lcom/cootek/smartinput5/engine/extractedtext/ExtractedStateProcessor;

    move-result-object v0

    sget-object v1, Lcom/cootek/smartinput5/engine/extractedtext/ExtractedAction;->DISTURB:Lcom/cootek/smartinput5/engine/extractedtext/ExtractedAction;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/extractedtext/ExtractedStateProcessor;->handleAction(Lcom/cootek/smartinput5/engine/extractedtext/ExtractedAction;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/h;->S:Z

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->L()Lcom/cootek/smartinput5/func/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/l;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/h;->S:Z

    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/h;->R:Ljava/util/Stack;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/cootek/smartinput5/h;->R:Ljava/util/Stack;

    :cond_2
    new-instance v0, Lcom/cootek/smartinput5/h$p;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/cootek/smartinput5/h$p;-><init>(Lcom/cootek/smartinput5/h;IIIIII)V

    iget-object p1, p0, Lcom/cootek/smartinput5/h;->R:Ljava/util/Stack;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/cootek/smartinput5/h;->P:Landroid/os/Handler;

    new-instance p2, Lcom/cootek/smartinput5/h$c;

    invoke-direct {p2, p0}, Lcom/cootek/smartinput5/h$c;-><init>(Lcom/cootek/smartinput5/h;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    invoke-static {}, Lcom/cootek/smartinput5/ui/control/F;->n()Lcom/cootek/smartinput5/ui/control/F;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/control/F;->y()V

    return-void
.end method

.method public m()Landroid/view/View;
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->isHardKeyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->V:Landroid/view/View;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Z
    .locals 2

    invoke-virtual {p0}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object v0

    sget-object v1, Lcom/cootek/smartinput5/engine/cursor/CursorAction;->CONSUME:Lcom/cootek/smartinput5/engine/cursor/CursorAction;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->consumeMoveAction(Lcom/cootek/smartinput5/engine/cursor/CursorAction;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->L()Lcom/cootek/smartinput5/func/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/l;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/h;->A0()V

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/ui/control/F;->n()Lcom/cootek/smartinput5/ui/control/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/control/F;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/cootek/smartinput5/h;->o0()Z

    move-result v0

    return v0
.end method

.method public o(Landroid/view/inputmethod/EditorInfo;)V
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/F;->n()Lcom/cootek/smartinput5/ui/control/F;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/control/F;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/inputmethodservice/InputMethodService;->setExtractViewShown(Z)V

    :cond_0
    return-void
.end method

.method public o0()Z
    .locals 7

    iget-wide v0, p0, Lcom/cootek/smartinput5/h;->q:D

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/high16 v4, 0x401c000000000000L    # 7.0

    cmpl-double v6, v0, v4

    if-ltz v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v4

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    const/16 v1, 0x12a

    invoke-virtual {v4, v1}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(I)I

    move-result v1

    if-eq v1, v2, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/I;->e()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/I;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/cootek/smartinput5/h;->U:Z

    if-nez v1, :cond_4

    if-nez v2, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/TouchPalIME;->doEvaluateFullscreenMode()Z

    move-result v0

    return v0

    :cond_4
    :goto_2
    return v3
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->o:Landroid/content/res/Configuration;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/cust/a;->f()Lcom/cootek/smartinput5/cust/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/cust/a;->f()Lcom/cootek/smartinput5/cust/a;

    move-result-object v0

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/cust/a;->m(Ljava/lang/String;)Z

    :cond_1
    invoke-static {}, Lcom/cootek/smartinput5/ui/control/F;->n()Lcom/cootek/smartinput5/ui/control/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/control/F;->d()V

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/cootek/smartinput5/h;->o:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v0, p1}, Lcom/cootek/smartinput/utilities/k;->h(Landroid/content/Context;Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v0}, Lcom/cootek/smartinput5/func/resource/d;->m(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->w0()V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->J0()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/i0;->b1()V

    :cond_2
    invoke-static {}, Lcom/cootek/smartlang/c;->f()Lcom/cootek/smartlang/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartlang/c;->n()V

    :cond_3
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/h;->o:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/engine/Engine;->onConfigurationChanged(II)V

    :cond_4
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/h;->T:Z

    goto :goto_0

    :cond_5
    iput-boolean v2, p0, Lcom/cootek/smartinput5/h;->T:Z

    iput-boolean v2, p0, Lcom/cootek/smartinput5/h;->U:Z

    :goto_0
    :try_start_0
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v1, p0, Lcom/cootek/smartinput5/h;->o:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v0, v1, :cond_6

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->U()Z

    invoke-static {v2}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldError;->printStackTrace()V

    :cond_6
    :goto_1
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/h;->o:Landroid/content/res/Configuration;

    :cond_7
    :goto_2
    return-void
.end method

.method public onCreate()V
    .locals 10

    const-string v0, "TouchPalIMEImpl"

    const-string v1, "TouchPalIMEImpl onCreate"

    invoke-static {v0, v1}, Lcom/cootek/smartinput/utilities/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "TouchPalIMEImpl Seek"

    invoke-static {v0, v1}, Lcom/cootek/smartinput/utilities/r;->n(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/cootek/smartinput5/daemon/DaemonManager;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v1}, Lcom/cootek/smartinput5/daemon/DaemonManager;->g(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v1

    sget-object v2, Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;->INIT:Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;

    invoke-virtual {v1, v2}, Lcom/cootek/tool/perf/d;->F(Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;)V

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v1

    sget-object v2, Lcom/cootek/tool/perf/PerfActionType;->ON_CREATE:Lcom/cootek/tool/perf/PerfActionType;

    invoke-virtual {v1, v2}, Lcom/cootek/tool/perf/d;->B(Lcom/cootek/tool/perf/PerfActionType;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v1}, Lcom/cootek/smartinput5/l/j/a;->b(Landroid/content/Context;)Lcom/cootek/smartinput5/l/j/a;

    move-result-object v1

    const-string v2, "TOUCHPALIME"

    const-string v3, "CREATE"

    const-string v4, "/STATISTIC/"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/cootek/smartinput5/l/j/a;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v1, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    iget-object v2, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-direct {v1, v2}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;-><init>(Lcom/cootek/smartinput5/TouchPalIME;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/h;->w:Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->O()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->R()V

    iget-object v1, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    const-string v2, "crash_flag.ckr"

    invoke-static {v1, v2}, Lcom/cootek/smartinput5/func/I;->c(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/cootek/smartinput5/func/z;->g1(Z)V

    :try_start_0
    new-instance v2, Lcom/cootek/smartinput/utilities/a;

    iget-object v3, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-direct {v2, v3}, Lcom/cootek/smartinput/utilities/a;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sput-boolean v5, Lcom/cootek/smartinput5/h;->X:Z

    iget-object v2, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v3, v3

    iget v5, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v6, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v6

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v6, v2

    int-to-double v8, v5

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    mul-double v6, v6, v6

    mul-double v3, v3, v3

    add-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/cootek/smartinput5/h;->q:D

    new-instance v2, Lcom/cootek/smartinput5/h$e;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/h$e;-><init>(Lcom/cootek/smartinput5/h;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    iget-object v2, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, Lcom/cootek/smartinput5/h;->p:Ljava/util/Locale;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/cootek/smartinput5/h;->s:Ljava/util/ArrayList;

    invoke-static {}, Lcom/cootek/smartinput5/func/asset/i;->H()Lcom/cootek/smartinput5/func/asset/i;

    move-result-object v2

    new-instance v3, Lcom/cootek/smartinput5/h$f;

    invoke-direct {v3, p0}, Lcom/cootek/smartinput5/h$f;-><init>(Lcom/cootek/smartinput5/h;)V

    invoke-virtual {v2, v3}, Lcom/cootek/smartinput5/func/asset/i;->m(Lcom/cootek/smartinput5/func/asset/ExtractTasks$a;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/asset/i;->H()Lcom/cootek/smartinput5/func/asset/i;

    move-result-object v2

    iget-object v3, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v2, v3, v1}, Lcom/cootek/smartinput5/func/asset/i;->q(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v1

    sget-object v2, Lcom/cootek/tool/perf/PerfActionType;->ON_CREATE:Lcom/cootek/tool/perf/PerfActionType;

    invoke-virtual {v1, v2}, Lcom/cootek/tool/perf/d;->G(Lcom/cootek/tool/perf/PerfActionType;)Z

    sget v1, Lcom/cootek/smartinput/utilities/r;->o:I

    const-string v2, "Create TouchPal."

    invoke-static {v1, v0, v2}, Lcom/cootek/smartinput/utilities/r;->l(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->x:Lcom/cootek/smartinput5/l/a;

    iget-object v1, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/l/a;->c(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->j0()Lcom/cootek/smartinput5/func/E0/k/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cootek/smartinput5/func/E0/k/a;->c(Lcom/cootek/smartinput5/func/E0/k/a$b;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->j0()Lcom/cootek/smartinput5/func/E0/k/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/E0/k/a;->d()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->x0()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "TouchPalIMEImpl"

    const-string v1, "TouchPalIMEImpl onDestroy"

    invoke-static {v0, v1}, Lcom/cootek/smartinput/utilities/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    const-string v2, "crash_flag.ckr"

    invoke-static {v1, v2}, Lcom/cootek/smartinput5/func/I;->d(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    const-string v2, "crash_flag_on_shown.ckr"

    invoke-static {v1, v2}, Lcom/cootek/smartinput5/func/I;->d(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/cootek/smartinput5/func/z;->g1(Z)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->J0()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/func/z;->E0()Lcom/vivo/c;

    move-result-object v2

    iget-object v2, v2, Lcom/vivo/c;->b:Lcom/vivo/d;

    invoke-virtual {v2}, Lcom/vivo/d;->j()V

    :cond_0
    iget-object v2, p0, Lcom/cootek/smartinput5/h;->x:Lcom/cootek/smartinput5/l/a;

    invoke-virtual {v2}, Lcom/cootek/smartinput5/l/a;->b()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->K0()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->U()Z

    iget-object v2, p0, Lcom/cootek/smartinput5/h;->y:Lcom/cootek/smartinput5/func/f;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/cootek/smartinput5/func/f;->a()V

    :cond_1
    iput-boolean v1, p0, Lcom/cootek/smartinput5/h;->t:Z

    iget-object v1, p0, Lcom/cootek/smartinput5/h;->B:Lcom/cootek/smartinput5/func/E0/k/a;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/E0/k/a;->e()V

    :cond_2
    iget-object v1, p0, Lcom/cootek/smartinput5/h;->w:Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->onDestroy()V

    :cond_3
    invoke-static {}, Lcom/cootek/smartinput5/ui/control/F;->n()Lcom/cootek/smartinput5/ui/control/F;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/ui/control/F;->g()V

    sget v1, Lcom/cootek/smartinput/utilities/r;->o:I

    const-string v2, "TouchPal destroyed."

    invoke-static {v1, v0, v2}, Lcom/cootek/smartinput/utilities/r;->l(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInlineUpdated(Ljava/lang/CharSequence;Lcom/cootek/smartinput5/engine/ExplicitInfo;IIZ)V
    .locals 1

    iput p3, p0, Lcom/cootek/smartinput5/h;->l:I

    iput p4, p0, Lcom/cootek/smartinput5/h;->m:I

    if-eqz p5, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p5

    if-nez p5, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result p5

    if-nez p5, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p5

    const/4 v0, 0x0

    if-nez p3, :cond_4

    if-nez p4, :cond_4

    invoke-virtual {p5}, Lcom/cootek/smartinput5/engine/Engine;->getExplicitManager()Lcom/cootek/smartinput5/engine/ExplicitManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/cootek/smartinput5/engine/ExplicitManager;->generateInline(Ljava/lang/CharSequence;Lcom/cootek/smartinput5/engine/ExplicitInfo;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->K()V

    const/4 p3, -0x1

    iput p3, p0, Lcom/cootek/smartinput5/h;->h:I

    iput v0, p0, Lcom/cootek/smartinput5/h;->i:I

    iput v0, p0, Lcom/cootek/smartinput5/h;->j:I

    :cond_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p3

    sput p3, Lcom/cootek/smartinput5/h;->Y:I

    invoke-virtual {p0}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object p3

    const/4 p4, 0x1

    invoke-virtual {p3, p2, p4}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    invoke-virtual {p5}, Lcom/cootek/smartinput5/engine/Engine;->getEditor()Lcom/cootek/smartinput5/engine/Editor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cootek/smartinput5/engine/Editor;->getEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/cootek/smartinput5/h;->q0(Landroid/view/inputmethod/EditorInfo;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object p2

    invoke-static {}, Lcom/cootek/smartinput5/h;->e0()I

    move-result p3

    sget p4, Lcom/cootek/smartinput5/h;->Y:I

    sub-int/2addr p3, p4

    invoke-static {}, Lcom/cootek/smartinput5/h;->e0()I

    move-result p4

    invoke-virtual {p2, p3, p4}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->setComposingRegion(II)Z

    :cond_3
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cootek/smartinput5/engine/Engine;->getEditor()Lcom/cootek/smartinput5/engine/Editor;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/cootek/smartinput5/engine/Editor;->changeSelect(Z)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cootek/smartinput5/engine/Engine;->getEditor()Lcom/cootek/smartinput5/engine/Editor;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/cootek/smartinput5/engine/Editor;->setEdit(Z)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p2

    const-string p3, "H"

    invoke-virtual {p2, p3}, Lcom/cootek/smartinput5/engine/Engine;->updateInputOp(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cootek/smartinput5/h;->P:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p0, Lcom/cootek/smartinput5/h;->P:Landroid/os/Handler;

    const-wide/16 p3, 0x1e

    invoke-virtual {p2, v0, p3, p4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cootek/smartinput5/h;->k:Ljava/lang/String;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v0, p1, p2}, Lcom/cootek/smartinput5/TouchPalIME;->callOnKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->handleBackKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v0, p1, p2}, Lcom/cootek/smartinput5/TouchPalIME;->callOnKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLowMemory()V
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->j0()Lcom/cootek/smartinput5/func/S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/S;->d()V

    :cond_0
    return-void
.end method

.method public onTextUpdated(Ljava/lang/CharSequence;Lcom/cootek/smartinput5/engine/ExplicitInfo;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/cootek/smartinput5/h;->onInlineUpdated(Ljava/lang/CharSequence;Lcom/cootek/smartinput5/engine/ExplicitInfo;IIZ)V

    return-void
.end method

.method public p(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 2

    const-string v0, "TouchPalIMEImpl"

    const-string v1, "TouchPalIMEImpl onStartInput"

    invoke-static {v0, v1}, Lcom/cootek/smartinput/utilities/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->x:Lcom/cootek/smartinput5/l/a;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/l/a;->g(Landroid/view/inputmethod/EditorInfo;)V

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v0

    sget-object v1, Lcom/cootek/tool/perf/PerfActionType;->ON_START_INPUT:Lcom/cootek/tool/perf/PerfActionType;

    invoke-virtual {v0, v1}, Lcom/cootek/tool/perf/d;->B(Lcom/cootek/tool/perf/PerfActionType;)V

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/tool/perf/d;->D(Landroid/view/inputmethod/EditorInfo;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/asset/i;->H()Lcom/cootek/smartinput5/func/asset/i;

    move-result-object v0

    new-instance v1, Lcom/cootek/smartinput5/h$h;

    invoke-direct {v1, p0, p1, p2}, Lcom/cootek/smartinput5/h$h;-><init>(Lcom/cootek/smartinput5/h;Landroid/view/inputmethod/EditorInfo;Z)V

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/asset/i;->m(Lcom/cootek/smartinput5/func/asset/ExtractTasks$a;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->M()V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->f0()Lcom/cootek/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/b/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->f0()Lcom/cootek/b/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cootek/b/a;->g(Landroid/view/inputmethod/EditorInfo;Z)V

    :cond_0
    return-void
.end method

.method public p0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cootek/smartinput5/h;->r:Z

    return v0
.end method

.method public q()V
    .locals 3

    const-string v0, "TouchPalIMEImpl"

    const-string v1, "TouchPalIMEImpl onFinishInput"

    invoke-static {v0, v1}, Lcom/cootek/smartinput/utilities/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->x:Lcom/cootek/smartinput5/l/a;

    iget-object v1, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/l/a;->d(Landroid/view/inputmethod/EditorInfo;)V

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v0

    sget-object v1, Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;->CLICK:Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;

    invoke-virtual {v0, v1}, Lcom/cootek/tool/perf/d;->K(Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;)V

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v0

    sget-object v1, Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;->UI_CAND:Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;

    invoke-virtual {v0, v1}, Lcom/cootek/tool/perf/d;->K(Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;)V

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v0

    sget-object v1, Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;->SHOW_KEYBOARD:Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;

    invoke-virtual {v0, v1}, Lcom/cootek/tool/perf/d;->K(Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;)V

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v0

    sget-object v1, Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;->CURVE:Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;

    invoke-virtual {v0, v1}, Lcom/cootek/tool/perf/d;->K(Lcom/cootek/tool/perf/PerfDataConfig$PerfDataCase;)V

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v0

    sget-object v1, Lcom/cootek/tool/perf/PerfActionType;->ON_FINISH_INPUT:Lcom/cootek/tool/perf/PerfActionType;

    invoke-virtual {v0, v1}, Lcom/cootek/tool/perf/d;->B(Lcom/cootek/tool/perf/PerfActionType;)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->onFinishInput()V

    :cond_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object v0

    sget-object v2, Lcom/cootek/smartinput5/engine/cursor/CursorAction;->RESET:Lcom/cootek/smartinput5/engine/cursor/CursorAction;

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->consumeMoveAction(Lcom/cootek/smartinput5/engine/cursor/CursorAction;)V

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cootek/tool/perf/d;->G(Lcom/cootek/tool/perf/PerfActionType;)Z

    return-void
.end method

.method public r()Landroid/view/View;
    .locals 7

    const-string v0, "TouchPalIMEImpl"

    const-string v1, "TouchPalIMEImpl onCreateInputView"

    invoke-static {v0, v1}, Lcom/cootek/smartinput/utilities/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v0

    sget-object v1, Lcom/cootek/tool/perf/PerfActionType;->ON_CREATE_INPUT_VIEW:Lcom/cootek/tool/perf/PerfActionType;

    invoke-virtual {v0, v1}, Lcom/cootek/tool/perf/d;->B(Lcom/cootek/tool/perf/PerfActionType;)V

    new-instance v0, Lcom/cootek/smartinput5/h$i;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/h$i;-><init>(Lcom/cootek/smartinput5/h;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/asset/i;->H()Lcom/cootek/smartinput5/func/asset/i;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/cootek/smartinput5/func/asset/i;->m(Lcom/cootek/smartinput5/func/asset/ExtractTasks$a;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->M()V

    invoke-static {}, Lcom/cootek/smartinput5/func/asset/i;->H()Lcom/cootek/smartinput5/func/asset/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/asset/i;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cootek/smartinput5/h;->i0()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    const/16 v3, 0x64

    iget-object v4, p0, Lcom/cootek/smartinput5/h;->P:Landroid/os/Handler;

    int-to-long v5, v3

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWindowLayoutManager()Lcom/cootek/smartinput5/ui/p0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/p0;->Q()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/cootek/tool/perf/d;->G(Lcom/cootek/tool/perf/PerfActionType;)Z

    return-object v0
.end method

.method public s(C)V
    .locals 1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->sendKeyChar(C)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->getEditor()Lcom/cootek/smartinput5/engine/Editor;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/engine/Editor;->changeSelect(Z)V

    :cond_0
    return-void
.end method

.method public s0(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "com.cootek.smartinputv5.virtual_custom_symbol_pressed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "TagIndicateSurfaceNeedChange"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/cootek/smartinput5/engine/Engine;->setNeedChangeSymbol(Z)V

    :cond_1
    return-void
.end method

.method public t(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->C:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWindowLayoutManager()Lcom/cootek/smartinput5/ui/p0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/ui/p0;->d0(Landroid/inputmethodservice/InputMethodService$Insets;)V

    :cond_1
    return-void
.end method

.method public t0()V
    .locals 0

    return-void
.end method

.method public y0(Lcom/cootek/smartinput5/h$o;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public z0()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/h;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
