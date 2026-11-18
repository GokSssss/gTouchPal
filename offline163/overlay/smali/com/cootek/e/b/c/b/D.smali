.class public Lcom/cootek/e/b/c/b/D;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/e/b/c/b/D$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cootek/e/b/c/b/D$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/e/b/c/b/D;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 1

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/cootek/e/b/b/i;->o()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cootek/e/b/c/b/D;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/cootek/e/b/c/b/y;->i()Lcom/cootek/e/b/c/b/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/e/b/c/b/y;->k()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/cootek/e/b/b/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/cootek/e/b/c/b/y;->i()Lcom/cootek/e/b/c/b/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/e/b/c/b/y;->l()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/cootek/e/b/b/i;->l()I

    move-result v0

    invoke-static {}, Lcom/cootek/e/b/c/b/y;->i()Lcom/cootek/e/b/c/b/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/e/b/c/b/y;->m()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    and-int/lit16 v0, v0, 0xfff

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit16 p1, p1, 0xfff

    if-ne v0, p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method private c(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/G;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/cootek/touchpal/commercial/utils/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/cootek/touchpal/commercial/utils/d;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static f()Lcom/cootek/e/b/c/b/D;
    .locals 1

    invoke-static {}, Lcom/cootek/e/b/c/b/D$b;->a()Lcom/cootek/e/b/c/b/D;

    move-result-object v0

    return-object v0
.end method

.method private h(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 10

    invoke-static {}, Lcom/cootek/e/b/c/b/y;->i()Lcom/cootek/e/b/c/b/y;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/cootek/e/b/c/b/y;->d(Ljava/lang/String;)Lcom/cootek/touchpal/commercial/network/response/GosConfigResponse$a;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p2, Lcom/cootek/touchpal/commercial/network/response/GosConfigResponse$a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object v2

    invoke-interface {v2}, Lcom/cootek/e/b/b/i;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "\\$\\{google ads id\\}"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string v2, " "

    iget-object v3, p2, Lcom/cootek/touchpal/commercial/network/response/GosConfigResponse$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\$\\{query\\}"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/cootek/e/b/b/i;->m(Ljava/lang/String;)Z

    if-eqz p3, :cond_3

    invoke-static {}, Lcom/cootek/touchpal/commercial/usage/m;->j()Lcom/cootek/touchpal/commercial/usage/m;

    move-result-object v4

    const-string v6, "1"

    iget-object v8, p2, Lcom/cootek/touchpal/commercial/network/response/GosConfigResponse$a;->a:Ljava/lang/String;

    iget-object v9, p2, Lcom/cootek/touchpal/commercial/network/response/GosConfigResponse$a;->e:Ljava/lang/String;

    move-object v5, p1

    move-object v7, v1

    invoke-virtual/range {v4 .. v9}, Lcom/cootek/touchpal/commercial/usage/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/touchpal/commercial/usage/m;->j()Lcom/cootek/touchpal/commercial/usage/m;

    move-result-object v4

    const-string v6, "0"

    iget-object v8, p2, Lcom/cootek/touchpal/commercial/network/response/GosConfigResponse$a;->a:Ljava/lang/String;

    iget-object v9, p2, Lcom/cootek/touchpal/commercial/network/response/GosConfigResponse$a;->e:Ljava/lang/String;

    move-object v5, p1

    move-object v7, v1

    invoke-virtual/range {v4 .. v9}, Lcom/cootek/touchpal/commercial/usage/m;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/cootek/touchpal/commercial/usage/m;->j()Lcom/cootek/touchpal/commercial/usage/m;

    move-result-object v4

    const-string v6, "1"

    iget-object v8, p2, Lcom/cootek/touchpal/commercial/network/response/GosConfigResponse$a;->a:Ljava/lang/String;

    iget-object v9, p2, Lcom/cootek/touchpal/commercial/network/response/GosConfigResponse$a;->e:Ljava/lang/String;

    move-object v5, p1

    move-object v7, v1

    invoke-virtual/range {v4 .. v9}, Lcom/cootek/touchpal/commercial/usage/m;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/cootek/touchpal/commercial/usage/j;->b(Ljava/lang/Throwable;)V

    return v0
.end method

.method private k(Ljava/lang/String;)Z
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/e/b/b/g;->k()Lcom/cootek/e/b/b/h;

    move-result-object v2

    const-string v3, "gos_cancel_time"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/cootek/e/b/b/h;->h(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {}, Lcom/cootek/e/b/c/b/y;->i()Lcom/cootek/e/b/c/b/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/e/b/c/b/y;->o()J

    move-result-wide v2

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    invoke-static {}, Lcom/cootek/touchpal/commercial/usage/m;->j()Lcom/cootek/touchpal/commercial/usage/m;

    move-result-object v6

    const-string v8, "3"

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/cootek/touchpal/commercial/usage/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_0
    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/e/b/b/g;->k()Lcom/cootek/e/b/b/h;

    move-result-object v0

    const-string v1, "gos_cancel_freq"

    invoke-interface {v0, v1, v4}, Lcom/cootek/e/b/b/h;->g(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Lcom/cootek/e/b/c/b/y;->i()Lcom/cootek/e/b/c/b/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/e/b/c/b/y;->n()J

    move-result-wide v2

    cmp-long v5, v0, v2

    if-ltz v5, :cond_1

    invoke-static {}, Lcom/cootek/touchpal/commercial/usage/m;->j()Lcom/cootek/touchpal/commercial/usage/m;

    move-result-object v6

    const-string v8, "3"

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/cootek/touchpal/commercial/usage/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private m(Ljava/lang/String;Z)V
    .locals 3

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/e/b/b/g;->g()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/cootek/touchpal/commercial/suggestion/widget/OnePixelActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "from_click_switch"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "content"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {}, Lcom/cootek/touchpal/commercial/usage/m;->j()Lcom/cootek/touchpal/commercial/usage/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cootek/touchpal/commercial/usage/m;->e(Ljava/lang/String;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/e/b/b/g;->k()Lcom/cootek/e/b/b/h;

    move-result-object v0

    const-string v1, "gos_force_open_time"

    invoke-interface {v0, v1, p1, p2}, Lcom/cootek/e/b/b/h;->d(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 1

    invoke-virtual {p0}, Lcom/cootek/e/b/c/b/D;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cootek/e/b/c/b/D;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/cootek/e/b/c/b/D;->m(Ljava/lang/String;Z)V

    return-void
.end method

.method public g(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/cootek/e/b/c/b/D;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/e/b/b/g;->k()Lcom/cootek/e/b/b/h;

    move-result-object v0

    const-string v2, "gos_engine_eid"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Lcom/cootek/e/b/b/h;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lcom/cootek/e/b/c/b/D;->h(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public i()Z
    .locals 3

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/e/b/b/g;->k()Lcom/cootek/e/b/b/h;

    move-result-object v0

    const-string v1, "gos_no_engine"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cootek/e/b/b/h;->f(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 2

    invoke-static {}, Lcom/cootek/e/b/c/b/y;->i()Lcom/cootek/e/b/c/b/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/e/b/c/b/y;->p()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/cootek/e/b/c/b/y;->i()Lcom/cootek/e/b/c/b/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/e/b/c/b/y;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cootek/touchpal/commercial/utils/i;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public l()Z
    .locals 11

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/e/b/b/g;->v()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/cootek/e/b/c/b/D;->j()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/cootek/e/b/c/b/D;->a()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object v2

    invoke-interface {v2}, Lcom/cootek/e/b/b/i;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cootek/touchpal/commercial/utils/n;->a()Lcom/cootek/touchpal/commercial/utils/n;

    move-result-object v2

    const-string v3, "last_partial_text"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/cootek/touchpal/commercial/utils/n;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/cootek/e/b/c/b/D;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/cootek/e/b/c/b/D;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/cootek/touchpal/commercial/usage/m;->j()Lcom/cootek/touchpal/commercial/usage/m;

    move-result-object v5

    const-string v7, "2"

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    invoke-virtual/range {v5 .. v10}, Lcom/cootek/touchpal/commercial/usage/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/e/b/b/g;->k()Lcom/cootek/e/b/b/h;

    move-result-object v0

    const-string v2, "gos_engine_eid"

    invoke-interface {v0, v2, v4}, Lcom/cootek/e/b/b/h;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_5

    invoke-direct {p0, v6, v0, v3}, Lcom/cootek/e/b/c/b/D;->h(Ljava/lang/String;Ljava/lang/String;Z)Z

    return v1

    :cond_5
    invoke-direct {p0, v6}, Lcom/cootek/e/b/c/b/D;->k(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/cootek/e/b/c/b/y;->i()Lcom/cootek/e/b/c/b/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/e/b/c/b/y;->q()Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/e/b/b/g;->k()Lcom/cootek/e/b/b/h;

    move-result-object v0

    const-wide/16 v7, 0x0

    const-string v2, "gos_force_open_time"

    invoke-interface {v0, v2, v7, v8}, Lcom/cootek/e/b/b/h;->h(Ljava/lang/String;J)J

    move-result-wide v7

    sub-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-static {}, Lcom/cootek/e/b/c/b/y;->i()Lcom/cootek/e/b/c/b/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/e/b/c/b/y;->f()J

    move-result-wide v7

    cmp-long v0, v4, v7

    if-gez v0, :cond_7

    return v1

    :cond_7
    invoke-direct {p0, v6, v1}, Lcom/cootek/e/b/c/b/D;->m(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/cootek/touchpal/commercial/usage/m;->j()Lcom/cootek/touchpal/commercial/usage/m;

    move-result-object v5

    const-string v7, "0"

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    invoke-virtual/range {v5 .. v10}, Lcom/cootek/touchpal/commercial/usage/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public n(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/cootek/e/b/c/b/D;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/cootek/e/b/c/b/D;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/cootek/e/b/b/g;->j()Lcom/cootek/e/b/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/e/b/b/g;->f()Lcom/cootek/e/b/b/i;

    move-result-object p1

    invoke-interface {p1}, Lcom/cootek/e/b/b/i;->t()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
