.class public Lcom/cootek/touchpal/commercial/utils/l;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:J = 0xc8L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0xc8

    invoke-static {p0, v0, v1}, Lcom/cootek/touchpal/commercial/utils/l;->b(Ljava/lang/String;J)V

    return-void
.end method

.method public static b(Ljava/lang/String;J)V
    .locals 1

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/cootek/e/b/b/i;->m(Ljava/lang/String;)Z

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cootek/e/b/b/g;->i()Landroid/os/Handler;

    move-result-object p0

    sget-object v0, Lcom/cootek/touchpal/commercial/utils/a;->h:Lcom/cootek/touchpal/commercial/utils/a;

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic d()V
    .locals 1

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/cootek/e/b/b/i;->r()V

    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/cootek/e/b/c/b/E;->r()Lcom/cootek/e/b/c/b/E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/e/b/c/b/E;->x()Lcom/cootek/e/b/c/c/c;

    move-result-object v0

    if-eqz p0, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/e/b/b/g;->v()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/cootek/e/b/b/i;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object v2

    invoke-interface {v2}, Lcom/cootek/e/b/b/i;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object v3

    invoke-interface {v3}, Lcom/cootek/e/b/b/i;->l()I

    move-result v3

    and-int/lit16 v3, v3, 0xfff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Ljava/util/HashSet;

    iget-object v0, v0, Lcom/cootek/e/b/c/c/c;->b:Ljava/util/Set;

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cootek/touchpal/commercial/network/response/EditTextInfo;

    invoke-virtual {v5}, Lcom/cootek/touchpal/commercial/network/response/EditTextInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/cootek/touchpal/commercial/network/response/EditTextInfo;->getActionType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/cootek/touchpal/commercial/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/cootek/touchpal/commercial/network/response/EditTextInfo;->getInputTypeHex()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/cootek/touchpal/commercial/utils/l;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/cootek/touchpal/commercial/network/response/EditTextInfo;->getSearchAction()I

    move-result v4

    :cond_2
    if-eqz v4, :cond_5

    const/4 v0, 0x1

    if-eq v4, v0, :cond_4

    const/4 v0, 0x2

    if-eq v4, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/cootek/touchpal/commercial/utils/l;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/cootek/e/b/b/i;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/cootek/touchpal/commercial/utils/l;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lcom/cootek/touchpal/commercial/utils/l;->a(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private static f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/high16 p2, 0x10000000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p1}, Lcom/cootek/touchpal/commercial/utils/l;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
