.class public Lcom/cootek/smartinput5/func/iab/i;
.super Lcom/cootek/smartinput5/func/iab/k;

# interfaces
.implements Lcom/cootek/smartinput5/func/w$a;
.implements Lcom/cootek/smartinput5/func/TAccountManager$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput5/func/iab/i$n;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String; = "plugin_pkg_name"

.field public static final B:Ljava/lang/String; = "goods_name"

.field public static final C:Ljava/lang/String; = "goods_price"

.field public static final D:Ljava/lang/String; = "price_currency"

.field public static final E:Ljava/lang/String; = "customer_id"

.field public static final F:Ljava/lang/String; = "trade_name"

.field public static final G:Ljava/lang/String; = "amount"

.field public static final H:Ljava/lang/String; = "user_coupon_id"

.field public static final I:Ljava/lang/String; = "country"

.field public static final J:Ljava/lang/String; = "receiving_address"

.field public static final K:Ljava/lang/String; = "street_address"

.field public static final L:Ljava/lang/String; = "state"

.field public static final M:Ljava/lang/String; = "city"

.field public static final N:Ljava/lang/String; = "apartment"

.field public static final O:Ljava/lang/String; = "receiver_name"

.field public static final P:Ljava/lang/String; = "receiver_phone"

.field public static final Q:Ljava/lang/String; = "zip_code"

.field public static final R:Ljava/lang/String; = "nonce"

.field public static final S:Ljava/lang/String; = "max_amount"

.field public static final T:Ljava/lang/String; = "goods_image_url"

.field public static final U:Ljava/lang/String; = "shipping"

.field public static final V:Ljava/lang/String; = "total_price"

.field public static final W:Ljava/lang/String; = "email"

.field private static final X:[Ljava/lang/String;

.field public static final Y:Ljava/lang/String; = "order_id"

.field public static final Z:Ljava/lang/String; = "goods_id"

.field public static final a0:Ljava/lang/String; = "type"

.field public static final b0:Ljava/lang/String; = "plugin_name"

.field public static final c0:Ljava/lang/String; = "start_purchase"

.field public static final d0:Ljava/lang/String; = "purchase_success"

.field public static final e0:Ljava/lang/String; = "purchase_cancel"

.field public static final f0:Ljava/lang/String; = "refund_success"

.field public static final g0:Ljava/lang/String; = "not_purchased"

.field static final h0:Ljava/lang/String; = "keyPurchaseDataJson"

.field static final i0:Ljava/lang/String; = "keyPurchaseDataSignatrue"

.field static final j0:Ljava/lang/String; = "keyPurchaseType"

.field public static final k0:Ljava/lang/String; = "com.android.vending"

.field private static final l0:I = 0x0

.field private static final m0:I = 0x1

.field static final n:Ljava/lang/String; = "IabHelper"

.field private static final n0:I = 0x2

.field public static final o:I = 0x3e8

.field private static o0:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cootek/smartinput5/func/iab/j$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:Ljava/lang/String; = "Google"

.field private static p0:Lcom/cootek/smartinput5/func/iab/i; = null

.field public static final q:Ljava/lang/String; = "web"

.field private static q0:I = 0x0

.field public static final r:Ljava/lang/String; = "plugin"

.field private static final r0:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAmuYfxfosJQz6wXa2J9pYtEeFWyv5WhdAyqR9RCibqo6VlPduG/OeimXZXFHsqhQq4Y4k0tZBj2hO/Mli3PULaLt4JXIQrINhMkqb3KWICJX9GuRyFkjMAciaLVApYHy+j89+SOV06IQwW4TSuNXS60mi8tEzrTR0ERqJLhRMWEXGoExWsEX7jykPlWZfeL69fWOZrXToc0JSMmowWI3s8uyzefmgL3k5Bs5+I0O67c10PBVTTQVWkv6Hwy4Bi1rdwGIUJ5Qvg4P1XAM0kFWvHU5ygBadL2Y1BHkvu8h4VjUl6DH0F5/kxiY2H8YtDIczyjvCL5P00Kq52txtkbiuIwIDAQAB"

.field public static final s:Ljava/lang/String; = "channel_product_id"

.field public static final t:Ljava/lang/String; = "channel_product_type"

.field public static final u:Ljava/lang/String; = "trans_id"

.field public static final v:Ljava/lang/String; = "status"

.field public static final w:Ljava/lang/String; = "channel_name"

.field public static final x:Ljava/lang/String; = "channel_account"

.field public static final y:Ljava/lang/String; = "goods_id"

.field public static final z:Ljava/lang/String; = "update_order_in_foreground"


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/app/Activity;

.field private e:I

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Lorg/json/JSONObject;

.field private j:Z

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:Lcom/cootek/smartinput5/func/iab/google/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "channel_product_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v3, "channel_product_type"

    aput-object v3, v0, v1

    sput-object v0, Lcom/cootek/smartinput5/func/iab/i;->X:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cootek/smartinput5/func/iab/i;->o0:Ljava/util/ArrayList;

    sput v2, Lcom/cootek/smartinput5/func/iab/i;->q0:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/iab/k;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/cootek/smartinput5/func/iab/i;->e:I

    iput-boolean v0, p0, Lcom/cootek/smartinput5/func/iab/i;->f:Z

    iput-boolean v0, p0, Lcom/cootek/smartinput5/func/iab/i;->j:Z

    iput-boolean v0, p0, Lcom/cootek/smartinput5/func/iab/i;->l:Z

    new-instance v1, Lcom/cootek/smartinput5/func/iab/i$d;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/func/iab/i$d;-><init>(Lcom/cootek/smartinput5/func/iab/i;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/func/iab/i;->m:Lcom/cootek/smartinput5/func/iab/google/b;

    iput v0, p0, Lcom/cootek/smartinput5/func/iab/i;->e:I

    invoke-static {}, Lcom/cootek/smartinput5/func/w;->a()Lcom/cootek/smartinput5/func/w;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cootek/smartinput5/func/w;->d(Lcom/cootek/smartinput5/func/w$a;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/TAccountManager;->d()Lcom/cootek/smartinput5/func/TAccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cootek/smartinput5/func/TAccountManager;->u(Lcom/cootek/smartinput5/func/TAccountManager$e;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cootek/smartinput5/func/iab/i;->k:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/iab/i;->m0(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic A(Lcom/cootek/smartinput5/func/iab/i;Lorg/json/JSONArray;Lcom/cootek/smartinput5/func/iab/j$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/func/iab/i;->G0(Lorg/json/JSONArray;Lcom/cootek/smartinput5/func/iab/j$b;)V

    return-void
.end method

.method static synthetic B(Lcom/cootek/smartinput5/func/iab/i;I)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/iab/i;->c0(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic C(Lcom/cootek/smartinput5/func/iab/i;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/iab/i;->J(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private C0(ILjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/cootek/smartinput5/func/iab/i;->o0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cootek/smartinput5/func/iab/j$a;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/cootek/smartinput5/func/iab/j$a;->onPurchaseFinished(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/cootek/smartinput5/func/iab/i;->h:I

    return-void
.end method

.method static synthetic D(Lcom/cootek/smartinput5/func/iab/i;Lcom/cootek/smartinput5/net/cmd/J;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/iab/i;->i0(Lcom/cootek/smartinput5/net/cmd/J;)V

    return-void
.end method

.method private D0()V
    .locals 2

    sget-object v0, Lcom/cootek/smartinput5/func/iab/i;->o0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cootek/smartinput5/func/iab/j$a;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/cootek/smartinput5/func/iab/j$a;->onSetupFinished()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic E(Lcom/cootek/smartinput5/func/iab/i;Ljava/util/ArrayList;Lcom/cootek/smartinput5/net/p$c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/func/iab/i;->i1(Ljava/util/ArrayList;Lcom/cootek/smartinput5/net/p$c;)V

    return-void
.end method

.method private E0(ZILjava/lang/String;Lcom/cootek/smartinput5/func/iab/j$f;)V
    .locals 0

    if-eqz p4, :cond_0

    invoke-interface {p4, p1, p2, p3}, Lcom/cootek/smartinput5/func/iab/j$f;->a(ZILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic F(Lcom/cootek/smartinput5/func/iab/i;Ljava/lang/String;ILcom/cootek/smartinput5/net/cmd/L;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cootek/smartinput5/func/iab/i;->z0(Ljava/lang/String;ILcom/cootek/smartinput5/net/cmd/L;Lorg/json/JSONObject;)V

    return-void
.end method

.method private F0()V
    .locals 2

    sget-object v0, Lcom/cootek/smartinput5/func/iab/i;->o0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cootek/smartinput5/func/iab/j$a;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/cootek/smartinput5/func/iab/j$a;->onUpdateFinished()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic G(Lcom/cootek/smartinput5/func/iab/i;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cootek/smartinput5/func/iab/i;->l:Z

    return p0
.end method

.method private G0(Lorg/json/JSONArray;Lcom/cootek/smartinput5/func/iab/j$b;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/cootek/smartinput5/func/iab/j$b;->a(Lorg/json/JSONArray;)V

    :cond_0
    return-void
.end method

.method static synthetic H(Lcom/cootek/smartinput5/func/iab/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cootek/smartinput5/func/iab/i;->l:Z

    return p1
.end method

.method private H0(ILorg/json/JSONObject;)V
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "channel_product_id"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "channel_product_type"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "plugin_pkg_name"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "update_order_in_foreground"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/cootek/smartinput5/func/iab/i;->j:Z

    const-string v1, "Google"

    invoke-direct {p0, p1, v1, p2}, Lcom/cootek/smartinput5/func/iab/i;->R(ILjava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object p2, p0, Lcom/cootek/smartinput5/func/iab/i;->c:Landroid/content/Context;

    const/16 v0, -0x2712

    const-string v1, "plugin"

    invoke-static {p2, p1, v1, v0}, Lcom/cootek/smartinput5/func/iab/h;->y(Landroid/content/Context;ILjava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private I(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "goods_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "order_id"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "type"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "plugin_name"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private J(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/cootek/smartinput5/func/iab/l;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/cootek/smartinput5/net/cmd/J$a;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cootek/smartinput5/func/iab/l;

    if-eqz v1, :cond_0

    const-string v2, "order_id"

    invoke-static {v1, v2}, Lcom/cootek/smartinput5/func/iab/i;->a0(Lcom/cootek/smartinput5/func/iab/l;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/cootek/smartinput5/func/iab/i;->p0(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/cootek/smartinput5/net/cmd/J$a;

    invoke-static {v1}, Lcom/cootek/smartinput5/func/iab/i;->g0(Lcom/cootek/smartinput5/func/iab/l;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Google"

    invoke-direct {v3, v2, v4, v5}, Lcom/cootek/smartinput5/net/cmd/J$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/cootek/smartinput5/net/cmd/J$a;->c(Lcom/cootek/smartinput5/func/iab/l;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method private K(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/cootek/smartinput5/func/iab/q;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/cootek/smartinput5/func/iab/q;

    invoke-direct {v0, p1}, Lcom/cootek/smartinput5/func/iab/q;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_5

    const/4 p1, 0x0

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_0
    if-ge p1, v1, :cond_5

    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, "channel_product_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "trans_id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    move-object v4, v6

    :goto_1
    const-string v5, "status"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_1
    move-object v5, v6

    :goto_2
    const-string v7, "channel_name"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_2
    move-object v7, v6

    :goto_3
    const-string v8, "channel_account"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_3
    new-instance v2, Lcom/cootek/smartinput5/func/iab/q$a;

    invoke-direct {v2}, Lcom/cootek/smartinput5/func/iab/q$a;-><init>()V

    iput-object v4, v2, Lcom/cootek/smartinput5/func/iab/q$a;->a:Ljava/lang/String;

    iput-object v5, v2, Lcom/cootek/smartinput5/func/iab/q$a;->b:Ljava/lang/String;

    iput-object v7, v2, Lcom/cootek/smartinput5/func/iab/q$a;->c:Ljava/lang/String;

    iput-object v6, v2, Lcom/cootek/smartinput5/func/iab/q$a;->d:Ljava/lang/String;

    iput-object v3, v2, Lcom/cootek/smartinput5/func/iab/q$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/func/iab/q;->a(Lcom/cootek/smartinput5/func/iab/q$a;)V

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private L(Lcom/cootek/smartinput5/net/cmd/J$b;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private M(Lcom/cootek/smartinput5/net/cmd/l;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget v1, p1, Lcom/cootek/smartinput5/net/cmd/L;->b:I

    const/16 v2, 0xc8

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, p1, Lcom/cootek/smartinput5/net/cmd/L;->d:I

    if-eqz v2, :cond_2

    const/16 v4, 0xfa3

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    iget-object p1, p1, Lcom/cootek/smartinput5/net/cmd/l;->w:Ljava/lang/String;

    const-string v4, "start_purchase"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private P0(Ljava/lang/String;Ljava/lang/String;Lcom/cootek/smartinput5/func/iab/k;)I
    .locals 9

    if-eqz p3, :cond_4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/cootek/smartinput5/func/iab/google/a;->r()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cootek/smartinput5/func/iab/i;->c:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/func/iab/i;->m0(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/func/iab/google/a;->k()Lcom/cootek/smartinput5/func/iab/google/a;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/cootek/smartinput5/func/iab/google/a;->l(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_3

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    const-string v2, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz v2, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_1
    if-ge v4, v5, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/cootek/smartinput5/func/iab/i;->d0(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAmuYfxfosJQz6wXa2J9pYtEeFWyv5WhdAyqR9RCibqo6VlPduG/OeimXZXFHsqhQq4Y4k0tZBj2hO/Mli3PULaLt4JXIQrINhMkqb3KWICJX9GuRyFkjMAciaLVApYHy+j89+SOV06IQwW4TSuNXS60mi8tEzrTR0ERqJLhRMWEXGoExWsEX7jykPlWZfeL69fWOZrXToc0JSMmowWI3s8uyzefmgL3k5Bs5+I0O67c10PBVTTQVWkv6Hwy4Bi1rdwGIUJ5Qvg4P1XAM0kFWvHU5ygBadL2Y1BHkvu8h4VjUl6DH0F5/kxiY2H8YtDIczyjvCL5P00Kq52txtkbiuIwIDAQAB"

    invoke-direct {p0, v8, v6, v7}, Lcom/cootek/smartinput5/func/iab/i;->q0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v6, :cond_1

    :try_start_1
    new-instance v8, Lcom/cootek/smartinput5/func/iab/l;

    invoke-direct {v8, v6, v7}, Lcom/cootek/smartinput5/func/iab/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-object v8, v0

    :goto_2
    invoke-virtual {p3, v8}, Lcom/cootek/smartinput5/func/iab/k;->k(Lcom/cootek/smartinput5/func/iab/l;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_5

    invoke-direct {p0, p1, p2, p3}, Lcom/cootek/smartinput5/func/iab/i;->P0(Ljava/lang/String;Ljava/lang/String;Lcom/cootek/smartinput5/func/iab/k;)I

    goto :goto_3

    :cond_3
    const/16 v1, -0x271a

    goto :goto_3

    :cond_4
    const/16 v1, -0x271b

    :cond_5
    :goto_3
    return v1
.end method

.method private R(ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    new-instance v0, Lcom/cootek/smartinput5/net/cmd/l;

    invoke-direct {v0}, Lcom/cootek/smartinput5/net/cmd/l;-><init>()V

    iput-object p2, v0, Lcom/cootek/smartinput5/net/cmd/l;->z:Ljava/lang/String;

    iput p1, v0, Lcom/cootek/smartinput5/net/cmd/l;->y:I

    new-instance v1, Lcom/cootek/smartinput5/net/p;

    invoke-direct {v1, v0}, Lcom/cootek/smartinput5/net/p;-><init>(Lcom/cootek/smartinput5/net/cmd/L;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/func/iab/i;->c:Landroid/content/Context;

    const v2, 0x7f0f07c6

    invoke-static {v0, v2}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/cootek/smartinput5/func/iab/i$h;

    invoke-direct {v2, p0, v1}, Lcom/cootek/smartinput5/func/iab/i$h;-><init>(Lcom/cootek/smartinput5/func/iab/i;Lcom/cootek/smartinput5/net/p;)V

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/cootek/smartinput5/func/iab/i;->Y0(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;Z)V

    new-instance v0, Lcom/cootek/smartinput5/func/iab/i$i;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/cootek/smartinput5/func/iab/i$i;-><init>(Lcom/cootek/smartinput5/func/iab/i;Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/net/p;->g(Lcom/cootek/smartinput5/net/p$c;)V

    return-void
.end method

.method private U(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0, p3, p4, p2, p6}, Lcom/cootek/smartinput5/func/iab/i;->I(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/func/iab/k;->i(Ljava/lang/String;)Lcom/cootek/smartinput5/func/iab/l;

    move-result-object p6

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/cootek/smartinput5/func/iab/i;->c:Landroid/content/Context;

    invoke-static {p1, p3, p2, p4, p6}, Lcom/cootek/smartinput5/func/iab/h;->v(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/cootek/smartinput5/func/iab/l;)V

    goto :goto_1

    :cond_0
    const/4 p6, 0x1

    const/16 v6, -0x2714

    invoke-static {}, Lcom/cootek/smartinput5/func/iab/g;->f()Lcom/cootek/smartinput5/func/iab/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/iab/g;->c()V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/func/iab/google/a;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/cootek/smartinput5/func/iab/google/a;->k()Lcom/cootek/smartinput5/func/iab/google/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/func/iab/i;->d:Landroid/app/Activity;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/cootek/smartinput5/func/iab/google/a;->w(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/16 v6, -0x2722

    :catch_0
    const/4 p6, 0x0

    :goto_0
    if-nez p6, :cond_2

    iget-object p1, p0, Lcom/cootek/smartinput5/func/iab/i;->c:Landroid/content/Context;

    const-string p2, "Google"

    invoke-static {p1, p3, p2, v6}, Lcom/cootek/smartinput5/func/iab/h;->y(Landroid/content/Context;ILjava/lang/String;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p4, p2, p1}, Lcom/cootek/smartinput5/func/iab/i;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private U0(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/func/iab/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/func/iab/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private V(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/cootek/smartinput5/func/iab/i;->f:Z

    const/4 p1, 0x1

    iput p1, p0, Lcom/cootek/smartinput5/func/iab/i;->e:I

    invoke-static {}, Lcom/cootek/smartinput5/func/iab/google/a;->k()Lcom/cootek/smartinput5/func/iab/google/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/iab/google/a;->q()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v2, 0x11a

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/iab/i;->u0(Z)V

    invoke-static {}, Lcom/cootek/smartinput5/func/iab/google/a;->k()Lcom/cootek/smartinput5/func/iab/google/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/iab/google/a;->z()Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/func/iab/i;->u0(Z)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/iab/i;->X0()V

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :cond_3
    :goto_2
    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/iab/i;->X0()V

    :cond_4
    return-void
.end method

.method public static V0(Lcom/cootek/smartinput5/func/iab/j$a;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/cootek/smartinput5/func/iab/i;->o0:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/cootek/smartinput5/func/iab/i;->o0:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private W()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/cootek/smartinput5/func/iab/i;->c:Landroid/content/Context;

    const-class v2, Lcom/cootek/smartinput5/func/iab/PurchaseChannelChooseActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {}, Lcom/cootek/smartinput5/net/w;->e()Lcom/cootek/smartinput5/net/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/net/w;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auth_token"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/iab/i;->Z()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "localSupportedChannels"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-object v0
.end method

.method private X(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    const-string p2, "Google"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/cootek/smartinput5/func/iab/i;->X:[Ljava/lang/String;

    array-length p2, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    move-object v0, v1

    :goto_2
    return-object v0
.end method

.method private X0()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/cootek/smartinput5/func/iab/i;->e:I

    iget-boolean v0, p0, Lcom/cootek/smartinput5/func/iab/i;->f:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/iab/i;->D0()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/func/iab/i;->F0()V

    :goto_0
    return-void
.end method

.method public static Y()Lcom/cootek/smartinput5/func/iab/i;
    .locals 1

    sget-object v0, Lcom/cootek/smartinput5/func/iab/i;->p0:Lcom/cootek/smartinput5/func/iab/i;

    return-object v0
.end method

.method private Y0(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;Z)V
    .locals 3

    invoke-static {}, Lcom/cootek/smartinput5/func/iab/g;->f()Lcom/cootek/smartinput5/func/iab/g;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/func/iab/i;->c:Landroid/content/Context;

    new-instance v2, Lcom/cootek/smartinput5/func/iab/i$c;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/cootek/smartinput5/func/iab/i$c;-><init>(Lcom/cootek/smartinput5/func/iab/i;ZLjava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/func/iab/g;->k(Landroid/content/Context;Lcom/cootek/smartinput5/func/iab/g$d;)V

    return-void
.end method

.method private Z()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "inapp"

    invoke-virtual {p0, v1}, Lcom/cootek/smartinput5/func/iab/i;->n0(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "subs"

    invoke-virtual {p0, v1}, Lcom/cootek/smartinput5/func/iab/i;->n0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "Google"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public static a0(Lcom/cootek/smartinput5/func/iab/l;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/iab/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/iab/l;->a()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private b0(Lcom/cootek/smartinput5/net/cmd/J$b;)Lcom/cootek/smartinput5/func/iab/l;
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/iab/k;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/iab/k;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cootek/smartinput5/func/iab/l;

    if-eqz v1, :cond_0

    const-string v2, "order_id"

    invoke-static {v1, v2}, Lcom/cootek/smartinput5/func/iab/i;->a0(Lcom/cootek/smartinput5/func/iab/l;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/net/cmd/J$b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private b1(Lcom/cootek/smartinput5/func/iab/q;Lcom/cootek/smartinput5/func/iab/j$b;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/iab/q;->c()Lcom/cootek/smartinput5/net/cmd/J;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-instance v1, Lcom/cootek/smartinput5/net/p;

    invoke-direct {v1, p1}, Lcom/cootek/smartinput5/net/p;-><init>(Lcom/cootek/smartinput5/net/cmd/L;)V

    new-instance p1, Lcom/cootek/smartinput5/func/iab/i$l;

    invoke-direct {p1, p0, p2}, Lcom/cootek/smartinput5/func/iab/i$l;-><init>(Lcom/cootek/smartinput5/func/iab/i;Lcom/cootek/smartinput5/func/iab/j$b;)V

    invoke-virtual {v1, p1}, Lcom/cootek/smartinput5/net/p;->g(Lcom/cootek/smartinput5/net/p$c;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/func/iab/i;->G0(Lorg/json/JSONArray;Lcom/cootek/smartinput5/func/iab/j$b;)V

    :cond_1
    return-void
.end method

.method private c0(I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/cootek/smartinput5/func/iab/l;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/iab/k;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/iab/k;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cootek/smartinput5/func/iab/l;

    if-eqz v2, :cond_0

    const-string v3, "goods_id"

    invoke-static {v2, v3}, Lcom/cootek/smartinput5/func/iab/i;->a0(Lcom/cootek/smartinput5/func/iab/l;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private d0(Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static d1(Lcom/cootek/smartinput5/func/iab/j$a;)V
    .locals 1

    sget-object v0, Lcom/cootek/smartinput5/func/iab/i;->o0:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cootek/smartinput5/func/iab/i;->o0:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private e0(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)I
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/cootek/smartinput5/func/iab/google/a;->k()Lcom/cootek/smartinput5/func/iab/google/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cootek/smartinput5/func/iab/google/a;->m(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x0

    goto :goto_0

    :catch_0
    const/16 p2, -0x2715

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return p2
.end method

.method private e1(ILcom/cootek/smartinput5/func/iab/l;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 13

    move-object v8, p0

    move v9, p1

    const/4 v0, 0x0

    if-nez v9, :cond_0

    const/4 v1, 0x1

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    const-string v11, "purchase_success"

    if-eqz v10, :cond_1

    move/from16 v12, p5

    move-object v2, v11

    goto :goto_1

    :cond_1
    const-string v1, "purchase_cancel"

    move-object v2, v1

    const/4 v12, 0x0

    :goto_1
    iget-object v1, v8, Lcom/cootek/smartinput5/func/iab/i;->g:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v3, "Google"

    move-object v0, p0

    move-object v6, p2

    move v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/cootek/smartinput5/func/iab/i;->h1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cootek/smartinput5/func/iab/l;Z)V

    if-nez v12, :cond_3

    if-nez v10, :cond_2

    iget-object v0, v8, Lcom/cootek/smartinput5/func/iab/i;->c:Landroid/content/Context;

    iget v1, v8, Lcom/cootek/smartinput5/func/iab/i;->h:I

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, p1, v3}, Lcom/cootek/smartinput5/func/iab/h;->z(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :cond_2
    iget v0, v8, Lcom/cootek/smartinput5/func/iab/i;->h:I

    invoke-virtual {p0, v0, v11}, Lcom/cootek/smartinput5/func/iab/i;->w0(ILjava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private f0(Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ITEM_ID_LIST"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/cootek/smartinput5/func/iab/i;->e0(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)I

    move-result p1

    return p1
.end method

.method private f1(Lcom/cootek/smartinput5/net/cmd/J$a;Lcom/cootek/smartinput5/net/p$c;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0, p2}, Lcom/cootek/smartinput5/func/iab/i;->i1(Ljava/util/ArrayList;Lcom/cootek/smartinput5/net/p$c;)V

    return-void
.end method

.method public static g0(Lcom/cootek/smartinput5/func/iab/l;)Ljava/lang/String;
    .locals 2

    const-string v0, "purchase_cancel"

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/iab/l;->e()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "refund_success"

    goto :goto_0

    :cond_1
    const-string v0, "purchase_success"

    :cond_2
    :goto_0
    return-object v0
.end method

.method private h1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cootek/smartinput5/func/iab/l;Z)V
    .locals 1

    new-instance p2, Lcom/cootek/smartinput5/net/cmd/J$a;

    invoke-static {p6}, Lcom/cootek/smartinput5/func/iab/i;->g0(Lcom/cootek/smartinput5/func/iab/l;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0, p3}, Lcom/cootek/smartinput5/net/cmd/J$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Lcom/cootek/smartinput5/net/cmd/J$a;->b(Ljava/lang/String;)V

    invoke-virtual {p2, p6}, Lcom/cootek/smartinput5/net/cmd/J$a;->c(Lcom/cootek/smartinput5/func/iab/l;)V

    invoke-virtual {p2, p5}, Lcom/cootek/smartinput5/net/cmd/J$a;->d(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p7}, Lcom/cootek/smartinput5/func/iab/i;->g1(Lcom/cootek/smartinput5/net/cmd/J$a;Z)V

    return-void
.end method

.method private i0(Lcom/cootek/smartinput5/net/cmd/J;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/iab/i;->l1(Lcom/cootek/smartinput5/net/cmd/J;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/cootek/smartinput5/net/cmd/J;->J()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/cootek/smartinput5/func/iab/i$b;

    invoke-direct {v0, p0, p1}, Lcom/cootek/smartinput5/func/iab/i$b;-><init>(Lcom/cootek/smartinput5/func/iab/i;Ljava/util/ArrayList;)V

    const-string p1, "inapp"

    invoke-virtual {p0, p1, v0}, Lcom/cootek/smartinput5/func/iab/i;->Q0(Ljava/lang/String;Lcom/cootek/smartinput5/func/iab/j$d;)V

    :cond_0
    return-void
.end method

.method private i1(Ljava/util/ArrayList;Lcom/cootek/smartinput5/net/p$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/cootek/smartinput5/net/cmd/J$a;",
            ">;",
            "Lcom/cootek/smartinput5/net/p$c;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/cootek/smartinput5/net/cmd/J;

    invoke-direct {v0}, Lcom/cootek/smartinput5/net/cmd/J;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/net/cmd/J;->I(Ljava/util/ArrayList;)V

    new-instance p1, Lcom/cootek/smartinput5/net/p;

    invoke-direct {p1, v0}, Lcom/cootek/smartinput5/net/p;-><init>(Lcom/cootek/smartinput5/net/cmd/L;)V

    invoke-virtual {p1, p2}, Lcom/cootek/smartinput5/net/p;->g(Lcom/cootek/smartinput5/net/p$c;)V

    return-void
.end method

.method private j0(Lcom/cootek/smartinput5/net/cmd/L;)Lorg/json/JSONArray;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    check-cast p1, Lcom/cootek/smartinput5/net/cmd/J;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/net/cmd/J;->J()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cootek/smartinput5/net/cmd/J$b;

    invoke-virtual {v2}, Lcom/cootek/smartinput5/net/cmd/J$b;->a()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/cootek/smartinput5/net/cmd/J$b;->a()I

    move-result v3

    const/16 v4, 0xfa1

    if-ne v3, v4, :cond_0

    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "status"

    invoke-virtual {v2}, Lcom/cootek/smartinput5/net/cmd/J$b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "goods_id"

    invoke-virtual {v2}, Lcom/cootek/smartinput5/net/cmd/J$b;->b()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/iab/i;->i0(Lcom/cootek/smartinput5/net/cmd/J;)V

    :cond_3
    return-object v0
.end method

.method private j1(Lcom/cootek/smartinput5/net/cmd/L;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget v1, p1, Lcom/cootek/smartinput5/net/cmd/L;->b:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    iget p1, p1, Lcom/cootek/smartinput5/net/cmd/L;->d:I

    if-eqz p1, :cond_0

    const/16 v1, 0xfa1

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private k0(Lcom/cootek/smartinput5/net/cmd/J$b;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/iab/i;->L(Lcom/cootek/smartinput5/net/cmd/J$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/iab/i;->b0(Lcom/cootek/smartinput5/net/cmd/J$b;)Lcom/cootek/smartinput5/func/iab/l;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/cootek/smartinput5/func/iab/i;->a0(Lcom/cootek/smartinput5/func/iab/l;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "inapp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/cootek/smartinput5/func/iab/i;->P(Lcom/cootek/smartinput5/func/iab/l;Lcom/cootek/smartinput5/func/iab/j$c;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/cootek/smartinput5/net/cmd/J$b;->a()I

    move-result v0

    const/16 v1, 0xfa2

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/net/cmd/J$b;->d()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/iab/i;->U0(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static l0(Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/cootek/smartinput5/func/iab/i;->q0:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/cootek/smartinput5/func/iab/i;->q0:I

    sget-object v0, Lcom/cootek/smartinput5/func/iab/i;->p0:Lcom/cootek/smartinput5/func/iab/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cootek/smartinput5/func/iab/i;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cootek/smartinput5/func/iab/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cootek/smartinput5/func/iab/i;->p0:Lcom/cootek/smartinput5/func/iab/i;

    :cond_0
    sget-object v0, Lcom/cootek/smartinput5/func/iab/i;->p0:Lcom/cootek/smartinput5/func/iab/i;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iput-object p0, v0, Lcom/cootek/smartinput5/func/iab/i;->c:Landroid/content/Context;

    return-void
.end method

.method private l1(Lcom/cootek/smartinput5/net/cmd/J;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/cootek/smartinput5/net/cmd/L;->b:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget p1, p1, Lcom/cootek/smartinput5/net/cmd/L;->d:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private m0(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/cootek/smartinput5/func/iab/google/a;->o(Landroid/content/Context;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/iab/google/a;->k()Lcom/cootek/smartinput5/func/iab/google/a;

    move-result-object p1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/iab/i;->m:Lcom/cootek/smartinput5/func/iab/google/b;

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/func/iab/google/a;->y(Lcom/cootek/smartinput5/func/iab/google/b;)V

    return-void
.end method

.method public static o0()Z
    .locals 1

    sget-object v0, Lcom/cootek/smartinput5/func/iab/i;->p0:Lcom/cootek/smartinput5/func/iab/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic q(Lcom/cootek/smartinput5/func/iab/i;ZILjava/lang/String;Lcom/cootek/smartinput5/func/iab/j$f;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cootek/smartinput5/func/iab/i;->E0(ZILjava/lang/String;Lcom/cootek/smartinput5/func/iab/j$f;)V

    return-void
.end method

.method private q0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic r(Lcom/cootek/smartinput5/func/iab/i;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/func/iab/i;->c:Landroid/content/Context;

    return-object p0
.end method

.method private r0(ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "Google"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p3}, Lcom/cootek/smartinput5/func/iab/i;->t0(ILorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    const-string v0, "web"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/iab/i;->s0(I)V

    goto :goto_0

    :cond_1
    const-string v0, "plugin"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, p1, p3}, Lcom/cootek/smartinput5/func/iab/i;->H0(ILorg/json/JSONObject;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic s(Lcom/cootek/smartinput5/func/iab/i;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/cootek/smartinput5/func/iab/i;->U(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private s0(I)V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/func/iab/i;->d:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/iab/i;->W()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "goodsId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    iget-object p1, p0, Lcom/cootek/smartinput5/func/iab/i;->d:Landroid/app/Activity;

    const/16 v1, 0x3e8

    invoke-static {p1, v0, v1}, Lcom/cootek/smartinput5/settings/Offline163;->result(Landroid/app/Activity;Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic t(Lcom/cootek/smartinput5/func/iab/i;Lcom/cootek/smartinput5/net/cmd/L;)Lorg/json/JSONArray;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/iab/i;->j0(Lcom/cootek/smartinput5/net/cmd/L;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method private t0(ILorg/json/JSONObject;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/cootek/smartinput5/func/iab/f;->h(ZI)V

    const-string v1, "Google"

    if-eqz p2, :cond_0

    const-string v2, "channel_product_id"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "channel_product_type"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    const-string v2, "update_order_in_foreground"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/cootek/smartinput5/func/iab/i;->j:Z

    invoke-direct {p0, p1, v1, p2}, Lcom/cootek/smartinput5/func/iab/i;->R(ILjava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    if-nez v0, :cond_1

    iget-object p2, p0, Lcom/cootek/smartinput5/func/iab/i;->c:Landroid/content/Context;

    const/16 v0, -0x2712

    invoke-static {p2, p1, v1, v0}, Lcom/cootek/smartinput5/func/iab/h;->y(Landroid/content/Context;ILjava/lang/String;I)V

    :cond_1
    return-void
.end method

.method static synthetic u(Lcom/cootek/smartinput5/func/iab/i;Lcom/cootek/smartinput5/net/cmd/L;Lcom/cootek/smartinput5/net/cmd/J$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/func/iab/i;->v0(Lcom/cootek/smartinput5/net/cmd/L;Lcom/cootek/smartinput5/net/cmd/J$a;)V

    return-void
.end method

.method private u0(Z)V
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x11a

    invoke-virtual {v0, v1, p1}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Settings;->writeBack()V

    :cond_0
    return-void
.end method

.method static synthetic v(Lcom/cootek/smartinput5/func/iab/i;Lcom/cootek/smartinput5/net/cmd/J$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/iab/i;->k0(Lcom/cootek/smartinput5/net/cmd/J$b;)V

    return-void
.end method

.method private v0(Lcom/cootek/smartinput5/net/cmd/L;Lcom/cootek/smartinput5/net/cmd/J$a;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/iab/i;->j1(Lcom/cootek/smartinput5/net/cmd/L;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/cootek/smartinput5/func/iab/i;->h:I

    const-string p2, "purchase_success"

    invoke-virtual {p0, p1, p2}, Lcom/cootek/smartinput5/func/iab/i;->w0(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/func/iab/i;->c:Landroid/content/Context;

    iget v1, p0, Lcom/cootek/smartinput5/func/iab/i;->h:I

    invoke-static {v0, v1, p1, p2}, Lcom/cootek/smartinput5/func/iab/h;->C(Landroid/content/Context;ILcom/cootek/smartinput5/net/cmd/L;Lcom/cootek/smartinput5/net/cmd/J$a;)V

    :goto_0
    return-void
.end method

.method static synthetic w(Lcom/cootek/smartinput5/func/iab/i;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/iab/i;->u0(Z)V

    return-void
.end method

.method static synthetic x(Lcom/cootek/smartinput5/func/iab/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/iab/i;->X0()V

    return-void
.end method

.method private x0()V
    .locals 2

    sget-object v0, Lcom/cootek/smartinput5/func/iab/i;->o0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cootek/smartinput5/func/iab/j$a;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/cootek/smartinput5/func/iab/j$a;->onServiceDisconnected()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic y(Lcom/cootek/smartinput5/func/iab/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/iab/i;->x0()V

    return-void
.end method

.method static synthetic z(Lcom/cootek/smartinput5/func/iab/i;Lcom/cootek/smartinput5/func/iab/q;Lcom/cootek/smartinput5/func/iab/j$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/func/iab/i;->b1(Lcom/cootek/smartinput5/func/iab/q;Lcom/cootek/smartinput5/func/iab/j$b;)V

    return-void
.end method

.method private z0(Ljava/lang/String;ILcom/cootek/smartinput5/net/cmd/L;Lorg/json/JSONObject;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    move-object v7, p3

    check-cast v7, Lcom/cootek/smartinput5/net/cmd/l;

    invoke-direct {p0, v7}, Lcom/cootek/smartinput5/func/iab/i;->M(Lcom/cootek/smartinput5/net/cmd/l;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lcom/cootek/smartinput5/func/iab/i;->l:Z

    iget-object v1, v7, Lcom/cootek/smartinput5/net/cmd/l;->x:Ljava/lang/String;

    iput-object v1, p0, Lcom/cootek/smartinput5/func/iab/i;->g:Ljava/lang/String;

    iput p2, p0, Lcom/cootek/smartinput5/func/iab/i;->h:I

    const-string v1, "Google"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/cootek/smartinput5/func/iab/i;->c:Landroid/content/Context;

    const v2, 0x7f0f07c6

    invoke-static {v1, v2}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cootek/smartinput5/func/iab/i$j;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/func/iab/i$j;-><init>(Lcom/cootek/smartinput5/func/iab/i;)V

    invoke-direct {p0, v1, v2, v0}, Lcom/cootek/smartinput5/func/iab/i;->Y0(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;Z)V

    const-string v1, "channel_product_id"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "channel_product_type"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "plugin"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "plugin_pkg_name"

    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    move-object v8, p4

    new-instance p4, Lcom/cootek/smartinput5/func/iab/i$k;

    move-object v2, p4

    move-object v3, p0

    move-object v5, v1

    move v6, p2

    invoke-direct/range {v2 .. v8}, Lcom/cootek/smartinput5/func/iab/i$k;-><init>(Lcom/cootek/smartinput5/func/iab/i;Ljava/lang/String;Ljava/lang/String;ILcom/cootek/smartinput5/net/cmd/l;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p4}, Lcom/cootek/smartinput5/func/iab/i;->Q0(Ljava/lang/String;Lcom/cootek/smartinput5/func/iab/j$d;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/cootek/smartinput5/func/iab/i;->c:Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/cootek/smartinput5/func/iab/h;->x(Landroid/content/Context;ILcom/cootek/smartinput5/net/cmd/L;)V

    goto :goto_3

    :cond_3
    sget-object p2, Lcom/cootek/smartinput5/func/iab/i;->o0:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cootek/smartinput5/func/iab/j$a;

    if-eqz p3, :cond_4

    iget-object p4, p0, Lcom/cootek/smartinput5/func/iab/i;->g:Ljava/lang/String;

    invoke-interface {p3, p4, p1}, Lcom/cootek/smartinput5/func/iab/j$a;->onOrderCreated(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public A0(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, p5, p2, p3}, Lcom/cootek/smartinput5/func/iab/i;->q0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_0

    :try_start_0
    new-instance p5, Lcom/cootek/smartinput5/func/iab/l;

    invoke-direct {p5, p2, p3}, Lcom/cootek/smartinput5/func/iab/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    :try_start_1
    iget p2, p0, Lcom/cootek/smartinput5/func/iab/i;->h:I

    invoke-static {p2}, Lcom/cootek/smartinput5/func/iab/f;->i(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-object v0, p5

    goto :goto_0

    :catch_1
    nop

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    const/16 p1, -0x271e

    :cond_1
    invoke-static {}, Lcom/cootek/smartinput5/func/iab/i;->o0()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/func/iab/i;->Y()Lcom/cootek/smartinput5/func/iab/i;

    move-result-object p2

    const-string p3, "plugin"

    invoke-virtual {p2, p1, v0, p3, p4}, Lcom/cootek/smartinput5/func/iab/i;->B0(ILcom/cootek/smartinput5/func/iab/l;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method B0(ILcom/cootek/smartinput5/func/iab/l;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/cootek/smartinput5/func/iab/k;->k(Lcom/cootek/smartinput5/func/iab/l;)V

    :cond_0
    iget-boolean v5, p0, Lcom/cootek/smartinput5/func/iab/i;->j:Z

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/func/iab/i;->e1(ILcom/cootek/smartinput5/func/iab/l;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public I0(Landroid/app/Activity;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p2, p3}, Lcom/cootek/smartinput5/func/iab/f;->n(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/cootek/smartinput5/func/iab/i;->d:Landroid/app/Activity;

    invoke-direct {p0, p2, p3, p4}, Lcom/cootek/smartinput5/func/iab/i;->r0(ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public J0(Landroid/app/Activity;ILorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/func/iab/i;->d:Landroid/app/Activity;

    const-string p1, "plugin"

    invoke-direct {p0, p2, p1, p3}, Lcom/cootek/smartinput5/func/iab/i;->r0(ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public K0(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/cootek/smartinput5/func/iab/i;->L0(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public L0(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "web"

    invoke-static {p2, v0}, Lcom/cootek/smartinput5/func/iab/f;->o(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cootek/smartinput5/func/iab/i;->d:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/iab/i;->W()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "trade"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_0

    const-string p2, "plugin_name"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object p2, p0, Lcom/cootek/smartinput5/func/iab/i;->d:Landroid/app/Activity;

    if-eqz p2, :cond_1

    const/16 p3, 0x3e8

    :try_start_0
    invoke-static {p2, p1, p3}, Lcom/cootek/smartinput5/settings/Offline163;->result(Landroid/app/Activity;Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public M0(Landroid/app/Activity;ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/func/iab/i;->d:Landroid/app/Activity;

    invoke-direct {p0, p2, p3, p4}, Lcom/cootek/smartinput5/func/iab/i;->r0(ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v2, "purchase_cancel"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/cootek/smartinput5/func/iab/i;->h1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cootek/smartinput5/func/iab/l;Z)V

    return-void
.end method

.method public N0(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iput-object p1, p0, Lcom/cootek/smartinput5/func/iab/i;->d:Landroid/app/Activity;

    invoke-direct {p0, p4, p5}, Lcom/cootek/smartinput5/func/iab/i;->X(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p3, p0, Lcom/cootek/smartinput5/func/iab/i;->g:Ljava/lang/String;

    iput p2, p0, Lcom/cootek/smartinput5/func/iab/i;->h:I

    const-string p5, "Google"

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p4, 0x1

    invoke-static {p4, p2}, Lcom/cootek/smartinput5/func/iab/f;->h(ZI)V

    const-string p5, "channel_product_id"

    invoke-virtual {p1, p5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p5, "channel_product_type"

    invoke-virtual {p1, p5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p5, "update_order_in_foreground"

    invoke-virtual {p1, p5, p4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cootek/smartinput5/func/iab/i;->j:Z

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p2

    move-object v4, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/cootek/smartinput5/func/iab/i;->U(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cootek/smartinput5/func/iab/i;->c:Landroid/content/Context;

    const/16 p3, -0x2712

    invoke-static {p1, p2, p4, p3}, Lcom/cootek/smartinput5/func/iab/h;->y(Landroid/content/Context;ILjava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public O(Landroid/content/Context;ILcom/cootek/smartinput5/func/iab/j$f;)V
    .locals 1

    iput-object p1, p0, Lcom/cootek/smartinput5/func/iab/i;->c:Landroid/content/Context;

    invoke-static {p2}, Lcom/cootek/smartinput5/func/iab/f;->j(I)V

    new-instance p1, Lcom/cootek/smartinput5/net/cmd/h;

    invoke-direct {p1}, Lcom/cootek/smartinput5/net/cmd/h;-><init>()V

    invoke-virtual {p1, p2}, Lcom/cootek/smartinput5/net/cmd/h;->I(I)V

    new-instance v0, Lcom/cootek/smartinput5/net/p;

    invoke-direct {v0, p1}, Lcom/cootek/smartinput5/net/p;-><init>(Lcom/cootek/smartinput5/net/cmd/L;)V

    new-instance p1, Lcom/cootek/smartinput5/func/iab/i$e;

    invoke-direct {p1, p0, p3, p2}, Lcom/cootek/smartinput5/func/iab/i$e;-><init>(Lcom/cootek/smartinput5/func/iab/i;Lcom/cootek/smartinput5/func/iab/j$f;I)V

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/net/p;->g(Lcom/cootek/smartinput5/net/p$c;)V

    return-void
.end method

.method O0(Ljava/lang/String;Lcom/cootek/smartinput5/func/iab/k;)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/cootek/smartinput5/func/iab/i;->P0(Ljava/lang/String;Ljava/lang/String;Lcom/cootek/smartinput5/func/iab/k;)I

    move-result p1

    return p1
.end method

.method public P(Lcom/cootek/smartinput5/func/iab/l;Lcom/cootek/smartinput5/func/iab/j$c;)V
    .locals 1

    new-instance v0, Lcom/cootek/smartinput5/func/iab/c;

    invoke-direct {v0, p1, p2}, Lcom/cootek/smartinput5/func/iab/c;-><init>(Lcom/cootek/smartinput5/func/iab/l;Lcom/cootek/smartinput5/func/iab/j$c;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/m0;->executeInThreadPool([Ljava/lang/Object;)V

    return-void
.end method

.method Q(Lcom/cootek/smartinput5/func/iab/l;)I
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/cootek/smartinput5/func/iab/google/a;->k()Lcom/cootek/smartinput5/func/iab/google/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/iab/l;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/iab/google/a;->i(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p1, -0x2717

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    :goto_0
    return p1
.end method

.method public Q0(Ljava/lang/String;Lcom/cootek/smartinput5/func/iab/j$d;)V
    .locals 1

    new-instance v0, Lcom/cootek/smartinput5/func/iab/m;

    invoke-direct {v0, p1, p2}, Lcom/cootek/smartinput5/func/iab/m;-><init>(Ljava/lang/String;Lcom/cootek/smartinput5/func/iab/j$d;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/m0;->executeInThreadPool([Ljava/lang/Object;)V

    return-void
.end method

.method R0(Ljava/lang/String;Ljava/util/ArrayList;Lcom/cootek/smartinput5/func/iab/k;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cootek/smartinput5/func/iab/k;",
            ")I"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/cootek/smartinput5/func/iab/i;->f0(Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;)I

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string p2, "DETAILS_LIST"

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/cootek/smartinput5/func/iab/p;

    invoke-direct {v2, v0}, Lcom/cootek/smartinput5/func/iab/p;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_1

    :catch_0
    nop

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_2

    :cond_2
    const/16 p2, -0x2711

    :goto_2
    invoke-virtual {p3, p1}, Lcom/cootek/smartinput5/func/iab/k;->n(Ljava/util/Collection;)V

    return p2

    :cond_3
    return p1
.end method

.method public S()V
    .locals 2

    sget v0, Lcom/cootek/smartinput5/func/iab/i;->q0:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/cootek/smartinput5/func/iab/i;->q0:I

    invoke-static {}, Lcom/cootek/smartinput5/func/iab/g;->f()Lcom/cootek/smartinput5/func/iab/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/iab/g;->g()V

    sget v0, Lcom/cootek/smartinput5/func/iab/i;->q0:I

    if-gtz v0, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/func/iab/google/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/func/iab/google/a;->k()Lcom/cootek/smartinput5/func/iab/google/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/func/iab/i;->m:Lcom/cootek/smartinput5/func/iab/google/b;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/iab/google/a;->C(Lcom/cootek/smartinput5/func/iab/google/b;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/iab/google/a;->k()Lcom/cootek/smartinput5/func/iab/google/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/iab/google/a;->j()V

    :cond_0
    sget-object v0, Lcom/cootek/smartinput5/func/iab/i;->o0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/cootek/smartinput5/func/w;->a()Lcom/cootek/smartinput5/func/w;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cootek/smartinput5/func/w;->e(Lcom/cootek/smartinput5/func/w$a;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/TAccountManager;->d()Lcom/cootek/smartinput5/func/TAccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cootek/smartinput5/func/TAccountManager;->x(Lcom/cootek/smartinput5/func/TAccountManager$e;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/cootek/smartinput5/func/iab/i;->e:I

    const/4 v0, 0x0

    sput-object v0, Lcom/cootek/smartinput5/func/iab/i;->p0:Lcom/cootek/smartinput5/func/iab/i;

    :cond_1
    return-void
.end method

.method public S0(Ljava/lang/String;Ljava/lang/String;Lcom/cootek/smartinput5/func/iab/j$e;)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/cootek/smartinput5/func/iab/k;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    const/4 p1, 0x0

    invoke-interface {p3, p1}, Lcom/cootek/smartinput5/func/iab/j$e;->b(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0, p3}, Lcom/cootek/smartinput5/func/iab/i;->T0(Ljava/lang/String;Ljava/util/ArrayList;Lcom/cootek/smartinput5/func/iab/j$e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public T(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/iab/i;->d:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cootek/smartinput5/func/iab/i;->d:Landroid/app/Activity;

    :cond_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/iab/i;->S()V

    return-void
.end method

.method public T0(Ljava/lang/String;Ljava/util/ArrayList;Lcom/cootek/smartinput5/func/iab/j$e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cootek/smartinput5/func/iab/j$e;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/cootek/smartinput5/func/iab/n;

    invoke-direct {v0, p1, p2, p3}, Lcom/cootek/smartinput5/func/iab/n;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lcom/cootek/smartinput5/func/iab/j$e;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/m0;->executeInThreadPool([Ljava/lang/Object;)V

    return-void
.end method

.method public W0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/iab/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public Z0()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/func/iab/i;->V(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.vending"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/iab/i;->u0(Z)V

    :cond_0
    return-void
.end method

.method public a1(Ljava/lang/String;Lorg/json/JSONArray;Lcom/cootek/smartinput5/func/iab/j$b;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/func/iab/i;->K(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/cootek/smartinput5/func/iab/q;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_0

    const/4 p2, 0x1

    iget-object v1, p1, Lcom/cootek/smartinput5/func/iab/q;->b:Ljava/lang/String;

    new-instance v2, Lcom/cootek/smartinput5/func/iab/i$f;

    invoke-direct {v2, p0, p1, p3}, Lcom/cootek/smartinput5/func/iab/i$f;-><init>(Lcom/cootek/smartinput5/func/iab/i;Lcom/cootek/smartinput5/func/iab/q;Lcom/cootek/smartinput5/func/iab/j$b;)V

    invoke-virtual {p0, v1, v2}, Lcom/cootek/smartinput5/func/iab/i;->Q0(Ljava/lang/String;Lcom/cootek/smartinput5/func/iab/j$d;)V

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    :goto_1
    if-nez p2, :cond_1

    invoke-direct {p0, v0, p3}, Lcom/cootek/smartinput5/func/iab/i;->G0(Lorg/json/JSONArray;Lcom/cootek/smartinput5/func/iab/j$b;)V

    :cond_1
    return-void
.end method

.method public c1(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/cootek/smartinput5/func/iab/i$g;

    invoke-direct {v0, p0, p2}, Lcom/cootek/smartinput5/func/iab/i$g;-><init>(Lcom/cootek/smartinput5/func/iab/i;I)V

    invoke-virtual {p0, p1, v0}, Lcom/cootek/smartinput5/func/iab/i;->Q0(Ljava/lang/String;Lcom/cootek/smartinput5/func/iab/j$d;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.vending"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/iab/i;->u0(Z)V

    :cond_0
    return-void
.end method

.method g1(Lcom/cootek/smartinput5/net/cmd/J$a;Z)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/func/iab/g;->f()Lcom/cootek/smartinput5/func/iab/g;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/func/iab/i;->c:Landroid/content/Context;

    new-instance v2, Lcom/cootek/smartinput5/func/iab/i$m;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/func/iab/i$m;-><init>(Lcom/cootek/smartinput5/func/iab/i;)V

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/func/iab/g;->k(Landroid/content/Context;Lcom/cootek/smartinput5/func/iab/g$d;)V

    :cond_0
    new-instance v0, Lcom/cootek/smartinput5/func/iab/i$a;

    invoke-direct {v0, p0, p2, p1}, Lcom/cootek/smartinput5/func/iab/i$a;-><init>(Lcom/cootek/smartinput5/func/iab/i;ZLcom/cootek/smartinput5/net/cmd/J$a;)V

    invoke-direct {p0, p1, v0}, Lcom/cootek/smartinput5/func/iab/i;->f1(Lcom/cootek/smartinput5/net/cmd/J$a;Lcom/cootek/smartinput5/net/p$c;)V

    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/cootek/smartinput5/func/iab/i;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public h0(IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_3

    const-string p1, "not_purchased"

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    const-string v0, "purchaseResult"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    if-eqz p3, :cond_2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    goto :goto_1

    :catch_0
    move-exception p3

    invoke-virtual {p3}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    if-eqz p2, :cond_2

    const-string p3, "status"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string p3, "goods_id"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    :cond_2
    invoke-virtual {p0, v1, p1}, Lcom/cootek/smartinput5/func/iab/i;->w0(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public k1(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/cootek/smartinput5/func/iab/i;->c:Landroid/content/Context;

    iget p1, p0, Lcom/cootek/smartinput5/func/iab/i;->e:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/iab/k;->o()V

    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/func/iab/i;->V(Z)V

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/cootek/smartinput5/func/iab/i;->e:I

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/iab/i;->F0()V

    :cond_1
    return-void
.end method

.method public n0(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/func/iab/google/a;->r()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/cootek/smartinput5/func/iab/google/a;->k()Lcom/cootek/smartinput5/func/iab/google/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/iab/google/a;->p(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    const/4 v1, 0x1

    :catch_0
    :cond_0
    return v1
.end method

.method public p0(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/iab/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method w0(ILjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/func/iab/g;->f()Lcom/cootek/smartinput5/func/iab/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/iab/g;->c()V

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/func/iab/i;->C0(ILjava/lang/String;)V

    return-void
.end method

.method y0(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 v1, 0x0

    const-string v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAmuYfxfosJQz6wXa2J9pYtEeFWyv5WhdAyqR9RCibqo6VlPduG/OeimXZXFHsqhQq4Y4k0tZBj2hO/Mli3PULaLt4JXIQrINhMkqb3KWICJX9GuRyFkjMAciaLVApYHy+j89+SOV06IQwW4TSuNXS60mi8tEzrTR0ERqJLhRMWEXGoExWsEX7jykPlWZfeL69fWOZrXToc0JSMmowWI3s8uyzefmgL3k5Bs5+I0O67c10PBVTTQVWkv6Hwy4Bi1rdwGIUJ5Qvg4P1XAM0kFWvHU5ygBadL2Y1BHkvu8h4VjUl6DH0F5/kxiY2H8YtDIczyjvCL5P00Kq52txtkbiuIwIDAQAB"

    invoke-direct {p0, v2, p2, p3}, Lcom/cootek/smartinput5/func/iab/i;->q0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Lcom/cootek/smartinput5/func/iab/l;

    invoke-direct {v2, p2, p3}, Lcom/cootek/smartinput5/func/iab/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    :try_start_1
    iget p2, p0, Lcom/cootek/smartinput5/func/iab/i;->h:I

    invoke-static {p2}, Lcom/cootek/smartinput5/func/iab/f;->i(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-object v0, v2

    goto :goto_0

    :catch_1
    nop

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    const/16 p1, -0x271e

    :cond_1
    invoke-static {}, Lcom/cootek/smartinput5/func/iab/i;->o0()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/func/iab/i;->Y()Lcom/cootek/smartinput5/func/iab/i;

    move-result-object p2

    const-string p3, "Google"

    invoke-virtual {p2, p1, v0, p3, p4}, Lcom/cootek/smartinput5/func/iab/i;->B0(ILcom/cootek/smartinput5/func/iab/l;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
