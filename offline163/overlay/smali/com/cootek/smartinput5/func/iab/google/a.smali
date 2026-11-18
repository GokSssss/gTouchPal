.class public Lcom/cootek/smartinput5/func/iab/google/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput5/func/iab/google/a$b;
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/String; = "IabService"

.field public static final i:Ljava/lang/String; = "keyPurchasingType"

.field private static final j:Ljava/lang/String; = "com.android.vending.billing.InAppBillingService.BIND"

.field private static final k:Ljava/lang/String; = "com.android.vending"

.field private static final l:Ljava/lang/String; = "com.cootek.smartinputv5.skin.dummy.func.purchase.PurchasePluginActivity"

.field private static final m:Ljava/lang/String; = "com.cootek.smartinputv5.skin.dummy.func.purchase.PurchasePluginActivity.EXTRA_SKU"

.field private static final n:Ljava/lang/String; = "com.cootek.smartinputv5.skin.dummy.func.purchase.PurchasePluginActivity.EXTRA_TYPE"

.field private static final o:Ljava/lang/String; = "com.cootek.smartinputv5.skin.dummy.func.purchase.PurchasePluginActivity.EXTRA_DEVELOPER_PAYLOAD"

.field private static p:Lcom/cootek/smartinput5/func/iab/google/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/android/vending/billing/IInAppBillingService;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cootek/smartinput5/func/iab/google/b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/cootek/smartinput5/func/iab/google/a;->d:I

    iput v0, p0, Lcom/cootek/smartinput5/func/iab/google/a;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cootek/smartinput5/func/iab/google/a;->f:Ljava/util/ArrayList;

    new-instance v0, Lcom/cootek/smartinput5/func/iab/google/a$a;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/func/iab/google/a$a;-><init>(Lcom/cootek/smartinput5/func/iab/google/a;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/func/iab/google/a;->g:Landroid/content/ServiceConnection;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/cootek/smartinput5/func/iab/google/a;->a:Landroid/content/Context;

    return-void
.end method

.method private A(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0, p2}, Lcom/cootek/smartinput5/func/iab/google/a;->h(Landroid/os/Bundle;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "BUY_INTENT"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/app/PendingIntent;

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/16 v2, 0x3e8

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lcom/cootek/smartinput5/func/iab/google/a;->k()Lcom/cootek/smartinput5/func/iab/google/a;

    move-result-object p1

    const/16 p2, -0x3ee

    invoke-virtual {p1, p2, p3}, Lcom/cootek/smartinput5/func/iab/google/a;->t(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/func/iab/google/a;->k()Lcom/cootek/smartinput5/func/iab/google/a;

    move-result-object p1

    const/16 p2, -0x3ed

    invoke-virtual {p1, p2, p3}, Lcom/cootek/smartinput5/func/iab/google/a;->t(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, p3}, Lcom/cootek/smartinput5/func/iab/google/a;->t(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private B()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/func/iab/google/a;->b:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/func/iab/google/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/cootek/smartinput5/func/iab/google/a;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cootek/smartinput5/func/iab/google/a;->b:Lcom/android/vending/billing/IInAppBillingService;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/cootek/smartinput5/func/iab/google/a;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/func/iab/google/a;->b:Lcom/android/vending/billing/IInAppBillingService;

    return-object p1
.end method

.method static synthetic b(Lcom/cootek/smartinput5/func/iab/google/a;I)I
    .locals 0

    iput p1, p0, Lcom/cootek/smartinput5/func/iab/google/a;->d:I

    return p1
.end method

.method static synthetic c(Lcom/cootek/smartinput5/func/iab/google/a;I)I
    .locals 0

    iput p1, p0, Lcom/cootek/smartinput5/func/iab/google/a;->e:I

    return p1
.end method

.method static synthetic d(Lcom/cootek/smartinput5/func/iab/google/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/iab/google/a;->s()V

    return-void
.end method

.method static synthetic e(Lcom/cootek/smartinput5/func/iab/google/a;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/iab/google/a;->x(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/cootek/smartinput5/func/iab/google/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/iab/google/a;->v(I)V

    return-void
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.cootek.smartinputv5.skin.dummy.func.purchase.PurchasePluginActivity"

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p1, "android.intent.action.MAIN"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.cootek.smartinputv5.skin.dummy.func.purchase.PurchasePluginActivity.EXTRA_SKU"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "com.cootek.smartinputv5.skin.dummy.func.purchase.PurchasePluginActivity.EXTRA_TYPE"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "com.cootek.smartinputv5.skin.dummy.func.purchase.PurchasePluginActivity.EXTRA_DEVELOPER_PAYLOAD"

    invoke-virtual {p1, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->Q()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private h(Landroid/os/Bundle;)I
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, -0x3ea

    :goto_0
    return p1
.end method

.method public static k()Lcom/cootek/smartinput5/func/iab/google/a;
    .locals 1

    sget-object v0, Lcom/cootek/smartinput5/func/iab/google/a;->p:Lcom/cootek/smartinput5/func/iab/google/a;

    return-object v0
.end method

.method public static o(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/cootek/smartinput5/func/iab/google/a;->p:Lcom/cootek/smartinput5/func/iab/google/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cootek/smartinput5/func/iab/google/a;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/func/iab/google/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cootek/smartinput5/func/iab/google/a;->p:Lcom/cootek/smartinput5/func/iab/google/a;

    :cond_0
    return-void
.end method

.method public static r()Z
    .locals 1

    sget-object v0, Lcom/cootek/smartinput5/func/iab/google/a;->p:Lcom/cootek/smartinput5/func/iab/google/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private s()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/func/iab/google/a;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cootek/smartinput5/func/iab/google/a;->f:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cootek/smartinput5/func/iab/google/b;

    invoke-interface {v1}, Lcom/cootek/smartinput5/func/iab/google/b;->onServiceDisconnected()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private u(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/func/iab/google/a;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cootek/smartinput5/func/iab/google/a;->f:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cootek/smartinput5/func/iab/google/b;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/cootek/smartinput5/func/iab/google/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private v(I)V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/func/iab/google/a;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cootek/smartinput5/func/iab/google/a;->f:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cootek/smartinput5/func/iab/google/b;

    invoke-interface {v1, p1}, Lcom/cootek/smartinput5/func/iab/google/b;->b(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private x(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/iab/google/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/func/iab/google/a;->b:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/cootek/smartinput5/func/iab/google/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/android/vending/billing/IInAppBillingService;->v(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, -0x3eb

    :goto_0
    return p1
.end method


# virtual methods
.method public C(Lcom/cootek/smartinput5/func/iab/google/b;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/iab/google/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/func/iab/google/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/iab/google/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/func/iab/google/a;->b:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/cootek/smartinput5/func/iab/google/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/android/vending/billing/IInAppBillingService;->A(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, -0x3eb

    :goto_0
    return p1
.end method

.method public j()V
    .locals 1

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/iab/google/a;->B()V

    const/4 v0, 0x0

    sput-object v0, Lcom/cootek/smartinput5/func/iab/google/a;->p:Lcom/cootek/smartinput5/func/iab/google/a;

    return-void
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/iab/google/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/cootek/smartinput5/func/iab/google/a;->b:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/cootek/smartinput5/func/iab/google/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/android/vending/billing/IInAppBillingService;->k(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public m(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/iab/google/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/func/iab/google/a;->b:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/cootek/smartinput5/func/iab/google/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public n(IILandroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_4

    const/4 p1, 0x6

    const/4 v1, -0x1

    const-string v2, "INAPP_PURCHASE_DATA"

    const/4 v3, 0x0

    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, -0x3e8

    const-string p2, "RESPONSE_CODE"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    move-object v3, p2

    goto :goto_1

    :cond_0
    const/16 p1, -0x3ec

    goto :goto_0

    :cond_1
    if-nez p2, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    move-object p3, v3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    move-object p3, v3

    :goto_1
    iget-object p2, p0, Lcom/cootek/smartinput5/func/iab/google/a;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v3, p3, p2}, Lcom/cootek/smartinput5/func/iab/google/a;->u(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public p(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "inapp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/cootek/smartinput5/func/iab/google/a;->d:I

    goto :goto_0

    :cond_0
    const-string v0, "subs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/cootek/smartinput5/func/iab/google/a;->e:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    :goto_0
    return p1
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/iab/google/a;->b:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/cootek/smartinput5/func/iab/google/a;->u(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized w(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/iab/google/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/cootek/smartinput5/func/iab/google/a;->b:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/android/vending/billing/IInAppBillingService;->f(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    iput-object p3, p0, Lcom/cootek/smartinput5/func/iab/google/a;->c:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/cootek/smartinput5/func/iab/google/a;->A(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 p1, -0x3ea

    invoke-virtual {p0, p1, p3}, Lcom/cootek/smartinput5/func/iab/google/a;->t(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0, p5, p2, p3, p4}, Lcom/cootek/smartinput5/func/iab/google/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/iab/google/a;->z()Z

    const/16 p1, -0x3eb

    invoke-virtual {p0, p1, p3}, Lcom/cootek/smartinput5/func/iab/google/a;->t(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public y(Lcom/cootek/smartinput5/func/iab/google/b;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/func/iab/google/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/func/iab/google/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public z()Z
    .locals 6

    iget-object v0, p0, Lcom/cootek/smartinput5/func/iab/google/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cootek/smartinput5/func/w0;->I(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/func/iab/google/a;->v(I)V

    return v2

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/func/iab/google/a;->b:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x1

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.android.vending"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v4, p0, Lcom/cootek/smartinput5/func/iab/google/a;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/cootek/smartinput5/func/iab/google/a;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v0, v5, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/func/iab/google/a;->v(I)V

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    invoke-direct {p0, v2}, Lcom/cootek/smartinput5/func/iab/google/a;->v(I)V

    :goto_1
    return v3
.end method
