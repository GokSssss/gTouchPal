.class public Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;
.super Lcom/cootek/smartinput5/ui/g0;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/cootek/smartinput5/ui/settings/SkinPreviewMask$a;
.implements Landroid/text/TextWatcher;
.implements Lcom/cootek/smartinput5/func/iab/i$n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$j;,
        Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$i;
    }
.end annotation


# static fields
.field private static final A0:Ljava/lang/String; = "com.cootek.smartinput.intent.action.SHOW_BOOMTEXT_PAGE"

.field private static final B0:I = -0x1

.field private static final C0:J = 0xea60L

.field private static final D0:Ljava/lang/String; = "android:support:fragments"

.field public static final E0:Ljava/lang/String; = "EXTRA_NEED_SHOW_PRIVACY_POLICY"

.field public static final F0:I = 0x0

.field public static final G0:I = 0x1

.field public static final H0:I = 0x2

.field public static final I0:I = 0x3

.field public static final J0:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final K0:I = 0x7

.field public static final L0:I = 0x8

.field public static final M0:I = 0x8

.field public static final N0:I = 0x9

.field public static final O0:I = 0xa

.field public static final P0:I = 0x0

.field private static final Q0:I = 0x0

.field private static R0:Z = false

.field public static final b0:Ljava/lang/String; = "StoreActivity"

.field public static final c0:Ljava/lang/String; = "finishpage"

.field public static final d0:Ljava/lang/String; = "reloadTab"

.field public static final e0:Ljava/lang/String; = "skin"

.field public static final f0:Ljava/lang/String; = "font"

.field public static final g0:Ljava/lang/String; = "cell"

.field public static final h0:Ljava/lang/String; = "trends"

.field public static final i0:Ljava/lang/String; = "more"

.field public static final j0:Ljava/lang/String; = "diy_theme"

.field public static final k0:Ljava/lang/String; = "deals"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final l0:Ljava/lang/String; = "coupon"

.field public static final m0:Ljava/lang/String; = "detail"

.field public static final n0:Ljava/lang/String; = "emoji"

.field public static final o0:Ljava/lang/String; = "sticker"

.field public static final p0:Ljava/lang/String; = "boomtext"

.field public static final q0:Ljava/lang/String; = "StoreActivity.OPEN_DRAWER_FIRST"

.field public static final r0:Ljava/lang/String; = "StoreActivity.EXTRA_START_PAGE"

.field public static final s0:Ljava/lang/String; = "StoreActivity.EXTRA_SOURCE"

.field public static final t0:Ljava/lang/String; = "StoreActivity.EXTRA_PKG_NAME"

.field public static final u0:Ljava/lang/String; = "StoreActivity.EXTRA_TAG"

.field public static final v0:Ljava/lang/String; = "StoreActivity.EXTRA_DETAIL_DETAIL_URL"

.field public static final w0:Ljava/lang/String; = "launch_store_v3"

.field public static final x0:Ljava/lang/String; = "StoreActivity.EXTRA_UPGRADING_SKIN"

.field private static final y0:Ljava/lang/String; = "com.cootek.smartinput.intent.action.SHOW_FONT_PAGE"

.field private static final z0:Ljava/lang/String; = "com.cootek.smartinput.intent.action.SHOW_STICKER_PAGE"


# instance fields
.field private A:Landroid/widget/ListView;

.field public B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:Landroid/view/View;

.field private G:Landroid/view/View;

.field private H:Landroid/widget/EditText;

.field private I:Z

.field private J:Lcom/cootek/smartinput5/func/mainentrance/f;

.field private K:Landroid/support/v4/widget/DrawerLayout;

.field private L:Landroid/os/Handler;

.field private M:Landroid/support/v7/widget/Toolbar;

.field private N:Lcom/cootek/smartinput5/ui/skinappshop/DrawerFragment;

.field private O:Lcom/cootek/smartinput5/engine/IPCManager;

.field private P:Z

.field private Q:I

.field private R:Landroid/support/v7/widget/Toolbar;

.field private S:Ljava/lang/Runnable;

.field private T:Landroid/os/Handler;

.field private U:Z

.field private V:Z

.field private W:Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$i;

.field private X:Landroid/os/HandlerThread;

.field private Y:Landroid/os/Handler;

.field private Z:Ljava/lang/Runnable;

.field private a0:Landroid/view/View$OnClickListener;

.field private q:Lcom/cootek/smartinput5/ui/skinappshop/i;

.field private r:Lcom/cootek/smartinput5/ui/skinappshop/b;

.field private s:Lcom/cootek/smartinput5/ui/skinappshop/l;

.field private t:Lcom/cootek/smartinput5/ui/skinappshop/h;

.field private u:Lcom/cootek/smartinput5/ui/guidepoint/e;

.field private v:Landroid/view/View;

.field private w:Landroid/view/View;

.field private x:Landroid/view/View;

.field private y:Landroid/view/View;

.field private z:Landroid/support/v4/app/FragmentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/g0;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->B:I

    iput v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->C:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->D:I

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->I:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->L:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->P:Z

    iput v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->Q:I

    new-instance v1, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$a;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$a;-><init>(Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->S:Ljava/lang/Runnable;

    new-instance v1, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$b;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$b;-><init>(Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->T:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->U:Z

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->V:Z

    new-instance v0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$d;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$d;-><init>(Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->Z:Ljava/lang/Runnable;

    new-instance v0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$f;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$f;-><init>(Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->a0:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private C0(Z)V
    .locals 3

    invoke-static {p0}, Lcom/cootek/smartinput5/func/w0;->R(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/cootek/smartinput5/func/w0;->Q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->F:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->R:Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f0f084d

    invoke-virtual {p0, v2}, Lcom/cootek/smartinput5/ui/g0;->C(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object v1

    const v2, 0x7f0f075f

    invoke-static {p0, v2}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/cootek/smartinput5/ui/control/E;->w(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->R:Landroid/support/v7/widget/Toolbar;

    const v2, 0x7f0f084b

    invoke-virtual {p0, v2}, Lcom/cootek/smartinput5/ui/g0;->C(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    const v1, 0x7f0a0338

    invoke-virtual {p0, v1}, Landroid/support/v7/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$h;

    invoke-direct {v2, p0, p1}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$h;-><init>(Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->F:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->H:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->S:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->H:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->S:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private D0(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    return p1

    :pswitch_0
    const/4 p1, 0x3

    return p1

    :pswitch_1
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private E0(Landroid/support/v7/widget/Toolbar;Z)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const p2, 0x7f080207

    goto :goto_0

    :cond_0
    const p2, 0x7f080204

    :goto_0
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    :cond_1
    return-void
.end method

.method private static G0()V
    .locals 0

    invoke-static {}, Lcom/cootek/smartinput5/func/share/a;->t()V

    return-void
.end method

.method static synthetic L(Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->u0(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic M(Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->Z()V

    return-void
.end method

.method static synthetic N(Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->V:Z

    return p0
.end method

.method static synthetic O(Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->b0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic P(Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->Y()V

    return-void
.end method

.method static synthetic Q(Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;)Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$i;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->W:Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$i;

    return-object p0
.end method

.method static synthetic R(Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->x0()V

    return-void
.end method

.method static synthetic S(Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;)Landroid/support/v4/widget/DrawerLayout;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->K:Landroid/support/v4/widget/DrawerLayout;

    return-object p0
.end method

.method static synthetic T(Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;)Lcom/cootek/smartinput5/func/mainentrance/f;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->J:Lcom/cootek/smartinput5/func/mainentrance/f;

    return-object p0
.end method

.method private V()V
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->u:Lcom/cootek/smartinput5/ui/guidepoint/e;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->v:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/ui/guidepoint/e;->P(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->u:Lcom/cootek/smartinput5/ui/guidepoint/e;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->w:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/ui/guidepoint/e;->P(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->u:Lcom/cootek/smartinput5/ui/guidepoint/e;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->x:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/ui/guidepoint/e;->P(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->u:Lcom/cootek/smartinput5/ui/guidepoint/e;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->y:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/ui/guidepoint/e;->P(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->z0()V

    return-void
.end method

.method private W(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_action_type"

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lcom/cootek/smartinput5/engine/IPCManager;->GUIDE_POINT_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->O:Lcom/cootek/smartinput5/engine/IPCManager;

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/engine/IPCManager;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private X()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->L:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->X:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->W:Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$i;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->Y:Landroid/os/Handler;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private Y()V
    .locals 3

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->a0()Lcom/cootek/smartinput5/engine/IPCManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->O:Lcom/cootek/smartinput5/engine/IPCManager;

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->q0()V

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->L:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->a0()Lcom/cootek/smartinput5/engine/IPCManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/IPCManager;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private Z()V
    .locals 4

    const v0, 0x7f0c001e

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/ui/g0;->setContentView(I)V

    const v0, 0x7f0a03a0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->M:Landroid/support/v7/widget/Toolbar;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x11

    if-lt v1, v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->M:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/d;->p(Landroid/support/v7/widget/Toolbar;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->M:Landroid/support/v7/widget/Toolbar;

    const v0, 0x7f0f0861

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/ui/g0;->C(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/ui/g0;->E(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->k0()V

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->z:Landroid/support/v4/app/FragmentManager;

    new-instance v0, Lcom/cootek/smartinput5/func/mainentrance/f;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/func/mainentrance/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->J:Lcom/cootek/smartinput5/func/mainentrance/f;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "StoreActivity.EXTRA_UPGRADING_SKIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/mainentrance/f;->N(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->J:Lcom/cootek/smartinput5/func/mainentrance/f;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/skinappshop/k;->N(Lcom/cootek/smartinput5/func/mainentrance/f;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->l0()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->U()Z

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->w0()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->r0()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->i0()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->p0()V

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->G0()V

    invoke-static {p0}, Lcom/cootek/smartinput5/func/share/a;->p(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->U:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->V:Z

    return-void
.end method

.method private b0(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->c0(Ljava/lang/String;)Lcom/cootek/smartinput5/ui/settings/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/settings/a;->f()V

    :cond_0
    return-void
.end method

.method private c0(Ljava/lang/String;)Lcom/cootek/smartinput5/ui/settings/a;
    .locals 4

    const-string v0, "skin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xe

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    const-string v0, "cell"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0xc

    goto :goto_0

    :cond_1
    const-string v0, "trends"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x9

    goto :goto_0

    :cond_2
    const-string v0, "more"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    :cond_3
    const-string v0, "deals"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    const-string v0, "font"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 v1, 0xf

    goto :goto_0

    :cond_6
    const/4 v1, -0x1

    :goto_0
    if-le v1, v2, :cond_7

    invoke-virtual {p0, v1}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->d0(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_7

    instance-of v0, p1, Lcom/cootek/smartinput5/ui/settings/a;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/cootek/smartinput5/ui/settings/a;

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private e0(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_action_type"

    const/16 v3, 0xe

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lcom/cootek/smartinput5/engine/IPCManager;->GUIDE_POINT_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->O:Lcom/cootek/smartinput5/engine/IPCManager;

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/engine/IPCManager;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private f0(Landroid/support/v4/app/FragmentTransaction;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->q:Lcom/cootek/smartinput5/ui/skinappshop/i;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->r:Lcom/cootek/smartinput5/ui/skinappshop/b;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->s:Lcom/cootek/smartinput5/ui/skinappshop/l;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_2
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->t:Lcom/cootek/smartinput5/ui/skinappshop/h;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_3
    return-void
.end method

.method private i0()V
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->z:Landroid/support/v4/app/FragmentManager;

    const v1, 0x7f0a0270

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cootek/smartinput5/ui/skinappshop/DrawerFragment;

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->N:Lcom/cootek/smartinput5/ui/skinappshop/DrawerFragment;

    const v2, 0x7f0a0127

    invoke-virtual {p0, v2}, Landroid/support/v7/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/ui/skinappshop/DrawerFragment;->G(ILandroid/support/v4/widget/DrawerLayout;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->M:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private j0()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "StoreInitialization"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->X:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->X:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->Y:Landroid/os/Handler;

    new-instance v0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$i;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$i;-><init>(Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->W:Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$i;

    new-instance v0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$c;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$c;-><init>(Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->L:Landroid/os/Handler;

    return-void
.end method

.method private k0()V
    .locals 7

    const v0, 0x7f0a0128

    invoke-virtual {p0, v0}, Landroid/support/v7/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->A:Landroid/widget/ListView;

    const v0, 0x7f0a0230

    invoke-virtual {p0, v0}, Landroid/support/v7/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v2, Lcom/cootek/smartinput5/ui/guidepoint/e;

    sget-object v3, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->SKIN_TAB_STORE:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/cootek/smartinput5/ui/guidepoint/e;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->u:Lcom/cootek/smartinput5/ui/guidepoint/e;

    invoke-virtual {v2, p0}, Lcom/cootek/smartinput5/ui/guidepoint/e;->q(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->v:Landroid/view/View;

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->u:Lcom/cootek/smartinput5/ui/guidepoint/e;

    const v4, 0x7f080458

    invoke-virtual {v3, v2, v4}, Lcom/cootek/smartinput5/ui/guidepoint/e;->N(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->u:Lcom/cootek/smartinput5/ui/guidepoint/e;

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->v:Landroid/view/View;

    const v4, 0x7f0f085a

    invoke-static {p0, v4}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/cootek/smartinput5/ui/guidepoint/e;->R(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->v:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/cootek/smartinput5/ui/guidepoint/e;

    sget-object v3, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->DICT_TAB_STORE:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, p0, v3, v4}, Lcom/cootek/smartinput5/ui/guidepoint/e;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v2, p0}, Lcom/cootek/smartinput5/ui/guidepoint/e;->q(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->w:Landroid/view/View;

    const v4, 0x7f080454

    invoke-virtual {v2, v3, v4}, Lcom/cootek/smartinput5/ui/guidepoint/e;->N(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->w:Landroid/view/View;

    const v4, 0x7f0f0859

    invoke-static {p0, v4}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/cootek/smartinput5/ui/guidepoint/e;->R(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->w:Landroid/view/View;

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/cootek/smartinput5/ui/guidepoint/e;

    sget-object v4, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->TRENDS_TAB_STORE:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v3, p0, v4, v5}, Lcom/cootek/smartinput5/ui/guidepoint/e;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v3, p0}, Lcom/cootek/smartinput5/ui/guidepoint/e;->q(Landroid/content/Context;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->x:Landroid/view/View;

    const v5, 0x7f080459

    invoke-virtual {v3, v4, v5}, Lcom/cootek/smartinput5/ui/guidepoint/e;->N(Landroid/view/View;I)V

    iget-object v4, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->x:Landroid/view/View;

    const v5, 0x7f0f085b

    invoke-static {p0, v5}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/cootek/smartinput5/ui/guidepoint/e;->R(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->x:Landroid/view/View;

    invoke-virtual {v0, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lcom/cootek/smartinput5/ui/guidepoint/e;

    sget-object v5, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->MORE_TAB_STORE:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct {v4, p0, v5, v6}, Lcom/cootek/smartinput5/ui/guidepoint/e;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v4, p0}, Lcom/cootek/smartinput5/ui/guidepoint/e;->q(Landroid/content/Context;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->y:Landroid/view/View;

    const v6, 0x7f080434

    invoke-virtual {v4, v5, v6}, Lcom/cootek/smartinput5/ui/guidepoint/e;->N(Landroid/view/View;I)V

    iget-object v5, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->y:Landroid/view/View;

    const v6, 0x7f0f0860

    invoke-static {p0, v6}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/cootek/smartinput5/ui/guidepoint/e;->R(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->y:Landroid/view/View;

    invoke-virtual {v0, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0a0127

    invoke-virtual {p0, v0}, Landroid/support/v7/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->K:Landroid/support/v4/widget/DrawerLayout;

    new-instance v1, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$e;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$e;-><init>(Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->u:Lcom/cootek/smartinput5/ui/guidepoint/e;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->v:Landroid/view/View;

    invoke-virtual {v0, v1, p0}, Lcom/cootek/smartinput5/ui/guidepoint/e;->O(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->w:Landroid/view/View;

    invoke-virtual {v2, v0, p0}, Lcom/cootek/smartinput5/ui/guidepoint/e;->O(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->x:Landroid/view/View;

    invoke-virtual {v3, v0, p0}, Lcom/cootek/smartinput5/ui/guidepoint/e;->O(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->y:Landroid/view/View;

    invoke-virtual {v4, v0, p0}, Lcom/cootek/smartinput5/ui/guidepoint/e;->O(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0230
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    const/16 v1, 0x8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->K:Landroid/support/v4/widget/DrawerLayout;
    const/4 v1, 0x1
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V
    return-void
.end method

.method private l0()V
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/skinappshop/k;->B()V

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cootek/smartinput5/ui/skinappshop/k;->O(Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;)V

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->L:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/skinappshop/k;->P(Landroid/os/Handler;)V

    return-void
.end method

.method private m0(Landroid/widget/ImageView;Landroid/widget/TextView;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroid/widget/TextView;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static n0()Z
    .locals 1

    sget-boolean v0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->R0:Z

    return v0
.end method

.method private o0()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->D:I

    const-string v2, "StoreActivity.EXTRA_START_PAGE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->C:I

    const/4 v1, 0x1

    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    const-string v0, "theme"

    const-string v2, "source_plugin_skin"

    invoke-static {p0, v0, v2, v1}, Lcom/cootek/rnstore/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    const-string v0, "cell"

    const-string v2, "source_presentation_cell_local"

    invoke-static {p0, v0, v2, v1}, Lcom/cootek/rnstore/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.cootek.smartinput5.ui.settings.MainEntranceActivity.action.START"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "source_plugin_store"

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const-string v0, "fun_games"

    invoke-static {p0, v0, v2, v3}, Lcom/cootek/rnstore/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.cootek.smartinput.intent.action.SHOW_FONT_PAGE"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "font"

    const-string v2, "source_plugin_skin_font"

    invoke-static {p0, v0, v2, v1}, Lcom/cootek/rnstore/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.cootek.smartinput.intent.action.SHOW_STICKER_PAGE"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "sticker"

    const-string v2, "source_plugin_sticker"

    invoke-static {p0, v0, v2, v1}, Lcom/cootek/rnstore/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.cootek.smartinput.intent.action.SHOW_BOOMTEXT_PAGE"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "boomtext"

    const-string v2, "source_plugin_boomtext"

    invoke-static {p0, v0, v2, v1}, Lcom/cootek/rnstore/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.cootek.smartinput5.ui.settings.MainEntranceActivity.action.HOTWORD"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "trends"

    const-string v1, "source_plugin_trends"

    invoke-static {p0, v0, v1, v3}, Lcom/cootek/rnstore/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_6
    const-string v0, "home"

    invoke-static {p0, v0, v2, v3}, Lcom/cootek/rnstore/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method private p0()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "StoreActivity.OPEN_DRAWER_FIRST"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->K:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->a0:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->x0()V

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x19f

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Settings;->writeBack()V

    :cond_1
    return-void
.end method

.method private q0()V
    .locals 3

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->T:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->O:Lcom/cootek/smartinput5/engine/IPCManager;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/IPCManager;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private r0()V
.locals 1
    const/16 v0, 0xb
    iput v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->C:I
    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->s0(I)V
    return-void
.end method

.method private s0(I)V
    .locals 6

    const/16 p1, 0xb

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->z:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->f0(Landroid/support/v4/app/FragmentTransaction;)V

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object v1

    iget v2, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->Q:I

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/ui/skinappshop/k;->I(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq p1, v4, :cond_8

    const/16 v5, 0xf

    if-eq p1, v5, :cond_8

    if-eq p1, v3, :cond_4

    const/4 v5, 0x4

    if-eq p1, v5, :cond_2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const/4 v2, 0x2

    iput v2, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->Q:I

    iput v2, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->E:I

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->x:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->v0(Landroid/view/View;)V

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->s:Lcom/cootek/smartinput5/ui/skinappshop/l;

    if-nez v2, :cond_1

    new-instance v1, Lcom/cootek/smartinput5/ui/skinappshop/l;

    invoke-direct {v1}, Lcom/cootek/smartinput5/ui/skinappshop/l;-><init>()V

    iput-object v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->s:Lcom/cootek/smartinput5/ui/skinappshop/l;

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Lcom/cootek/smartinput5/ui/settings/a;->c()V

    goto :goto_2

    :cond_2
    iput v3, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->Q:I

    iput v3, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->E:I

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->y:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->v0(Landroid/view/View;)V

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->t:Lcom/cootek/smartinput5/ui/skinappshop/h;

    if-nez v2, :cond_3

    new-instance v1, Lcom/cootek/smartinput5/ui/skinappshop/h;

    invoke-direct {v1}, Lcom/cootek/smartinput5/ui/skinappshop/h;-><init>()V

    iput-object v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->t:Lcom/cootek/smartinput5/ui/skinappshop/h;

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/cootek/smartinput5/ui/settings/a;->c()V

    goto :goto_2

    :cond_4
    :pswitch_1
    iput v4, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->Q:I

    iput v4, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->E:I

    iget-object v5, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->w:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->v0(Landroid/view/View;)V

    iget-object v5, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->r:Lcom/cootek/smartinput5/ui/skinappshop/b;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/cootek/smartinput5/ui/skinappshop/b;->i()Lcom/cootek/smartinput5/ui/skinappshop/d;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/cootek/smartinput5/ui/settings/a;->c()V

    goto :goto_0

    :cond_5
    new-instance v1, Lcom/cootek/smartinput5/ui/skinappshop/b;

    invoke-direct {v1}, Lcom/cootek/smartinput5/ui/skinappshop/b;-><init>()V

    iput-object v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->r:Lcom/cootek/smartinput5/ui/skinappshop/b;

    :cond_6
    :goto_0
    const/16 v5, 0xd

    if-ne p1, v5, :cond_7

    const/4 v2, 0x1

    :cond_7
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->r:Lcom/cootek/smartinput5/ui/skinappshop/b;

    iput v2, p1, Lcom/cootek/smartinput5/ui/skinappshop/b;->o:I

    const/4 p1, 0x3

    goto :goto_2

    :cond_8
    :pswitch_2
    iput v2, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->Q:I

    iput v2, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->E:I

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->v:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->v0(Landroid/view/View;)V

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->q:Lcom/cootek/smartinput5/ui/skinappshop/i;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/cootek/smartinput5/ui/skinappshop/i;->I()V

    goto :goto_1

    :cond_9
    new-instance v1, Lcom/cootek/smartinput5/ui/skinappshop/i;

    invoke-direct {v1}, Lcom/cootek/smartinput5/ui/skinappshop/i;-><init>()V

    iput-object v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->q:Lcom/cootek/smartinput5/ui/skinappshop/i;

    :goto_1
    iget-object v2, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->q:Lcom/cootek/smartinput5/ui/skinappshop/i;

    invoke-static {p1}, Lcom/cootek/smartinput5/ui/skinappshop/i;->F(I)Lcom/cootek/smartinput5/func/ShopTab;

    move-result-object p1

    iput-object p1, v2, Lcom/cootek/smartinput5/ui/skinappshop/i;->y:Lcom/cootek/smartinput5/func/ShopTab;

    const/4 p1, 0x1

    :goto_2
    iput p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->B:I

    if-eqz v1, :cond_a

    const p1, 0x7f0a0172

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_3

    :cond_a
    const/4 v1, -0x1

    if-le p1, v1, :cond_b

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->d0(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_b
    :goto_3
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object p1

    iget v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->Q:I

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/ui/skinappshop/k;->x(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private t0(Landroid/view/View;ILjava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->u:Lcom/cootek/smartinput5/ui/guidepoint/e;

    invoke-virtual {v0, p1, p4}, Lcom/cootek/smartinput5/ui/guidepoint/e;->M(Landroid/view/View;I)V

    iget p4, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->Q:I

    if-ne p4, p2, :cond_0

    invoke-direct {p0, p3}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->u:Lcom/cootek/smartinput5/ui/guidepoint/e;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/cootek/smartinput5/ui/guidepoint/e;->L(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method private u0(Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->SKIN_TAB_STORE:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->v:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->t0(Landroid/view/View;ILjava/lang/String;I)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->DICT_TAB_STORE:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->w:Landroid/view/View;

    invoke-direct {p0, v0, v2, p1, p2}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->t0(Landroid/view/View;ILjava/lang/String;I)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->TRENDS_TAB_STORE:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->x:Landroid/view/View;

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->t0(Landroid/view/View;ILjava/lang/String;I)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->MORE_TAB_STORE:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->y:Landroid/view/View;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->t0(Landroid/view/View;ILjava/lang/String;I)V

    :cond_4
    :goto_0
    iput-boolean v2, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->P:Z

    return-void
.end method

.method private v0(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->V()V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->u:Lcom/cootek/smartinput5/ui/guidepoint/e;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/cootek/smartinput5/ui/guidepoint/e;->P(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->u:Lcom/cootek/smartinput5/ui/guidepoint/e;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/ui/guidepoint/e;->H(Landroid/view/View;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->Q:I

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->MORE_TAB_STORE:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->TRENDS_TAB_STORE:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->DICT_TAB_STORE:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->SKIN_TAB_STORE:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->W(Ljava/lang/String;)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->u:Lcom/cootek/smartinput5/ui/guidepoint/e;

    const/16 v1, 0x8

    invoke-virtual {v0, p1, v1}, Lcom/cootek/smartinput5/ui/guidepoint/e;->L(Landroid/view/View;I)V

    return-void
.end method

.method private x0()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->N:Lcom/cootek/smartinput5/ui/skinappshop/DrawerFragment;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/skinappshop/DrawerFragment;->I()V

    return-void
.end method

.method private z0()V
    .locals 1

    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->P:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->SKIN_TAB_STORE:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->e0(Ljava/lang/String;)V

    sget-object v0, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->DICT_TAB_STORE:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->e0(Ljava/lang/String;)V

    sget-object v0, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->TRENDS_TAB_STORE:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->e0(Ljava/lang/String;)V

    sget-object v0, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->MORE_TAB_STORE:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->e0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public A0()V
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->H:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->H:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->H:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->H:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public B0()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->C0(Z)V

    return-void
.end method

.method public F0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->M:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0, v0, p1}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->E0(Landroid/support/v7/widget/Toolbar;Z)V

    return-void
.end method

.method public U()Z
.locals 1
    const/4 v0, 0x0
    return v0
.end method

.method public a0()V
    .locals 3

    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->V:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->D:I

    const-string v2, "StoreActivity.EXTRA_START_PAGE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->C:I

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->U()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->C:I

    iget v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->D:I

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->B:I

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->r0()V

    :cond_1
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->F:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->I:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->h0()V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/control/E;->k()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->I:Z

    return-void
.end method

.method public d0(I)Landroid/support/v4/app/Fragment;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0xf

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->r:Lcom/cootek/smartinput5/ui/skinappshop/b;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/skinappshop/b;->j()Lcom/cootek/smartinput5/ui/skinappshop/c;

    move-result-object p1

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->r:Lcom/cootek/smartinput5/ui/skinappshop/b;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/skinappshop/b;->i()Lcom/cootek/smartinput5/ui/skinappshop/d;

    move-result-object p1

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->q:Lcom/cootek/smartinput5/ui/skinappshop/i;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/skinappshop/i;->u()Lcom/cootek/smartinput5/ui/settings/p;

    move-result-object p1

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->q:Lcom/cootek/smartinput5/ui/skinappshop/i;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/skinappshop/i;->w()Lcom/cootek/smartinput5/ui/settings/q;

    move-result-object p1

    goto :goto_1

    :pswitch_4
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->s:Lcom/cootek/smartinput5/ui/skinappshop/l;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->t:Lcom/cootek/smartinput5/ui/skinappshop/h;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->r:Lcom/cootek/smartinput5/ui/skinappshop/b;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->q:Lcom/cootek/smartinput5/ui/skinappshop/i;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/skinappshop/i;->v()Lcom/cootek/smartinput5/ui/settings/o;

    move-result-object p1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->q:Lcom/cootek/smartinput5/ui/skinappshop/i;

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public f()V
    .locals 1

    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->I:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->g0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->g0()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->h0()V

    :goto_0
    return-void
.end method

.method public finish()V
    .locals 4

    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->V:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "EXIT_STORE"

    const-string v3, "/COMMERCIAL/STORE/"

    invoke-virtual {v0, v2, v1, v3}, Lcom/cootek/smartinput5/l/g;->o(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public g()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g0()V
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->H:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->S:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->H:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->H:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->H:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->H:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    :cond_0
    return-void
.end method

.method public h0()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->F:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->I:Z

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->J0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->c0()Lcom/cootek/smartinput5/func/JsHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/cootek/smartinput5/func/JsHandler;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->J:Lcom/cootek/smartinput5/func/mainentrance/f;

    if-eqz v0, :cond_1

    const-string v0, "SkinCustomizeActivity.EXTRA_CUSTOM_SKIN_SET"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "SkinCustomizeActivity.EXTRA_BOOLEAN_CREATE_NEW"

    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->J:Lcom/cootek/smartinput5/func/mainentrance/f;

    invoke-virtual {v2, v0, v1}, Lcom/cootek/smartinput5/func/mainentrance/f;->C(IZ)V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->V:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz p1, :cond_6

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->y:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->x:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    const/16 v0, 0x9

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->w:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_8

    return-void

    :cond_6
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->v:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    :cond_8
    :goto_0
    if-le v0, v2, :cond_9

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->s0(I)V

    :cond_9
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/cootek/smartinput5/ui/g0;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/cootek/smartinput5/func/z;->G0(Landroid/content/Context;)V

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/ui/skinappshop/k;->L(J)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/ui/g0;->F(Z)V

    if-eqz p1, :cond_0

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    const p1, 0x7f0c012b

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/ui/g0;->setContentView(I)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->j0()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    :try_start_0
    invoke-super {p0}, Lcom/cootek/smartinput5/ui/g0;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->X()V

    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->V:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/skinappshop/k;->d(I)V

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/skinappshop/k;->d(I)V

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/skinappshop/k;->d(I)V

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/skinappshop/k;->d(I)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->c0()Lcom/cootek/smartinput5/func/JsHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/JsHandler;->setWebView(Landroid/webkit/WebView;)V

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/skinappshop/k;->f()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Settings;->writeBack()V

    invoke-static {}, Lcom/cootek/smartinput5/actionflow/a;->f()Lcom/cootek/smartinput5/actionflow/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/actionflow/a;->k()V

    invoke-static {}, Lcom/cootek/smartinput5/actionflow/StatesCollector;->g()Lcom/cootek/smartinput5/actionflow/StatesCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/actionflow/StatesCollector;->l()V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->J:Lcom/cootek/smartinput5/func/mainentrance/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/mainentrance/f;->D()V

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->A()V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :goto_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->F:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->g0()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->h0()V

    return v0

    :cond_1
    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->K:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v1, :cond_2

    sget v2, Lcom/cootek/smartinput5/ui/skinappshop/DrawerFragment;->E:I

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->K:Landroid/support/v4/widget/DrawerLayout;

    sget p2, Lcom/cootek/smartinput5/ui/skinappshop/DrawerFragment;->E:I

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/d;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object v0

    iget v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->E:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p0, v1}, Lcom/cootek/smartinput5/ui/skinappshop/k;->u(Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object v0

    iget v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->E:I

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/skinappshop/k;->q(I)Lcom/cootek/smartinput5/net/TWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/z;->c0()Lcom/cootek/smartinput5/func/JsHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/JsHandler;->hasStarted()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string p1, "javascript:onKeycode(0)"

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/net/TWebView;->loadUrl(Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return v2

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->W:Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$i;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->W:Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$i;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/ui/skinappshop/k;->L(J)V

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/skinappshop/k;->E(Z)V

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->V:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->J:Lcom/cootek/smartinput5/func/mainentrance/f;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/mainentrance/f;->y()V

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object v0

    iget v1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->E:I

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/skinappshop/k;->q(I)Lcom/cootek/smartinput5/net/TWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/net/TWebView;->k()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->R0:Z

    return-void
.end method

.method protected onRestart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->V:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->c0()Lcom/cootek/smartinput5/func/JsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/JsHandler;->setNeedRefresh()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->V:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/ui/skinappshop/k;->E(Z)V

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object v0

    iget v3, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->E:I

    invoke-virtual {v0, v3}, Lcom/cootek/smartinput5/ui/skinappshop/k;->q(I)Lcom/cootek/smartinput5/net/TWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/net/TWebView;->k()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    :cond_0
    sput-boolean v1, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->R0:Z

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->g0()Lcom/cootek/smartinput5/func/O;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/cootek/smartinput5/func/O;->I(I)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->c0()Lcom/cootek/smartinput5/func/JsHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cootek/smartinput5/func/JsHandler;->setActivity(Landroid/app/Activity;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->c0()Lcom/cootek/smartinput5/func/JsHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cootek/smartinput5/func/JsHandler;->updateServiceInfo(Landroid/content/Context;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->c0()Lcom/cootek/smartinput5/func/JsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/JsHandler;->updateResult()V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "EXTRA_NEED_SHOW_PRIVACY_POLICY"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v3, 0x26d

    invoke-virtual {v0, v3}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1, v1}, Lcom/cootek/smartinput5/ui/r0/c;->l(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    const-string v0, "SRC_STORE"

    invoke-static {p0, v0}, Lcom/cootek/smartinput5/ui/r0/c;->r(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/support/v7/app/d;->onStop()V

    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->V:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->f()V

    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->I:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->finish()V

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->g0()Lcom/cootek/smartinput5/func/O;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/O;->I(I)V

    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->G:Landroid/view/View;

    const p2, 0x7f08044d

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->G:Landroid/view/View;

    const p2, 0x7f08044e

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-boolean p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->U:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->V:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->U:Z

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->Y:Landroid/os/Handler;

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->Z:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->Y:Landroid/os/Handler;

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->Z:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public w0()V
    .locals 2

    const v0, 0x7f0a0330

    invoke-virtual {p0, v0}, Landroid/support/v7/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->F:Landroid/view/View;

    const v0, 0x7f0a0337

    invoke-virtual {p0, v0}, Landroid/support/v7/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->R:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$g;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity$g;-><init>(Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0333

    invoke-virtual {p0, v0}, Landroid/support/v7/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->G:Landroid/view/View;

    const v0, 0x7f0a0332

    invoke-virtual {p0, v0}, Landroid/support/v7/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->H:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->H:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->H:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0a0336

    invoke-virtual {p0, v0}, Landroid/support/v7/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cootek/smartinput5/ui/settings/SkinPreviewMask;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/cootek/smartinput5/ui/settings/SkinPreviewMask;->setPreviewStateListener(Lcom/cootek/smartinput5/ui/settings/SkinPreviewMask$a;)V

    :cond_0
    return-void
.end method

.method public y0()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->C0(Z)V

    return-void
.end method
