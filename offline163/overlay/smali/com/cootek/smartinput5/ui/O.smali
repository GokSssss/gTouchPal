.class public Lcom/cootek/smartinput5/ui/O;
.super Lcom/cootek/smartinput5/ui/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput5/ui/O$e;
    }
.end annotation


# instance fields
.field private l:Landroid/content/Context;

.field private m:Ljava/lang/String;

.field private n:Landroid/app/Dialog;

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/c$a;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cootek/smartinput5/ui/O;->o:Z

    invoke-virtual {p0}, Landroid/support/v7/app/c$a;->b()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/O;->l:Landroid/content/Context;

    return-void
.end method

.method static synthetic B0(Lcom/cootek/smartinput5/ui/O;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cootek/smartinput5/ui/O;->o:Z

    return p0
.end method

.method static synthetic C0(Lcom/cootek/smartinput5/ui/O;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cootek/smartinput5/ui/O;->o:Z

    return p1
.end method

.method static synthetic D0(Lcom/cootek/smartinput5/ui/O;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/O;->K0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic E0(Lcom/cootek/smartinput5/ui/O;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/ui/O;->l:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic F0(Lcom/cootek/smartinput5/ui/O;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/ui/O;->n:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic G0(Lcom/cootek/smartinput5/ui/O;Lcom/cootek/smartinput5/ui/O$e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/O;->J0(Lcom/cootek/smartinput5/ui/O$e;)V

    return-void
.end method

.method static synthetic H0(Lcom/cootek/smartinput5/ui/O;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/O;->I0()V

    return-void
.end method

.method private I0()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/O;->o:Z

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/O;->n:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/TouchPalIME;->requestHideSelf(I)V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/O;->l:Landroid/content/Context;

    invoke-static {}, Lcom/cootek/smartinput5/func/x0;->d()Lcom/cootek/smartinput5/func/x0;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/cootek/smartinput5/func/x0;->b(I)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v2, "SHOW_ALL_LANGUAGE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/O;->l:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v0, "add_languages"

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/O;->K0(Ljava/lang/String;)V

    return-void
.end method

.method private J0(Lcom/cootek/smartinput5/ui/O$e;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/O;->o:Z

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/O;->n:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/O$e;->f()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/O;->m:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cootek/smartinput5/engine/Engine;->switchToLanguage(Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartlang/c;->f()Lcom/cootek/smartlang/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartlang/c;->p()V

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/O;->l:Landroid/content/Context;

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lcom/cootek/smartinput5/func/N;->y(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    const-string p1, "switch_language"

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/O;->K0(Ljava/lang/String;)V

    return-void
.end method

.method private K0(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/O;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object v0

    const-string v1, "SELECT_LANGUAGE_DIALOG/CLICK"

    const-string v2, "/UI/"

    invoke-virtual {v0, v1, p1, v2}, Lcom/cootek/smartinput5/l/g;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private M0(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/cootek/smartinput5/ui/O$e;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Lcom/cootek/smartinput5/ui/q0/e;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/O;->l:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/cootek/smartinput5/ui/q0/e;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, p0}, Lcom/cootek/smartinput5/ui/q0/e;->d(Lcom/cootek/smartinput5/ui/O;)V

    new-instance p1, Lcom/cootek/smartinput5/ui/O$d;

    invoke-direct {p1, p0, v0}, Lcom/cootek/smartinput5/ui/O$d;-><init>(Lcom/cootek/smartinput5/ui/O;Lcom/cootek/smartinput5/ui/q0/e;)V

    invoke-virtual {p0, v0, p2, p1}, Lcom/cootek/smartinput5/ui/c$a;->u0(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/cootek/smartinput5/ui/c$a;

    return-void
.end method

.method private N0()V
    .locals 14

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/z;->p0()Lcom/cootek/smartinput5/func/permission/a;

    move-result-object v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/func/permission/a;->q(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/z;->p0()Lcom/cootek/smartinput5/func/permission/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/permission/a;->h()V

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/z;->d0()Lcom/cootek/smartinput5/func/N;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/N;->P()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_3

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cootek/smartinput5/func/language/a;

    iget-object v6, v6, Lcom/cootek/smartinput5/func/language/a;->a:Ljava/lang/String;

    invoke-static {v6}, Lcom/cootek/smartinput5/func/N;->A0(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cootek/smartinput5/func/language/a;

    iget-object v6, v6, Lcom/cootek/smartinput5/func/language/a;->a:Ljava/lang/String;

    iget-object v7, p0, Lcom/cootek/smartinput5/ui/O;->l:Landroid/content/Context;

    const v8, 0x7f0f0323

    invoke-static {v7, v8}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cootek/smartinput5/func/language/a;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/cootek/smartinput5/func/language/a;->e()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v5}, Lcom/cootek/smartinput5/engine/Engine;->getEnabledLanguageFullName(I)Ljava/lang/String;

    move-result-object v7

    :goto_1
    iget-object v6, v6, Lcom/cootek/smartinput5/func/language/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_3
    if-ge v6, v2, :cond_c

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/cootek/smartinput5/func/language/a;

    if-nez v10, :cond_4

    goto :goto_7

    :cond_4
    iget-object v10, v10, Lcom/cootek/smartinput5/func/language/a;->a:Ljava/lang/String;

    invoke-static {v10}, Lcom/cootek/smartinput5/func/N;->A0(Ljava/lang/String;)Z

    move-result v11

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v11, :cond_6

    if-eqz v8, :cond_5

    goto :goto_7

    :cond_5
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cootek/smartinput5/func/z;->d0()Lcom/cootek/smartinput5/func/N;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/cootek/smartinput5/func/N;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v8, 0x1

    :cond_6
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    iget-object v13, p0, Lcom/cootek/smartinput5/ui/O;->m:Ljava/lang/String;

    invoke-static {v13}, Lcom/cootek/smartinput5/func/N;->A0(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    if-eqz v11, :cond_8

    const/4 v13, 0x1

    goto :goto_4

    :cond_8
    iget-object v13, p0, Lcom/cootek/smartinput5/ui/O;->m:Ljava/lang/String;

    invoke-static {v13, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    :goto_4
    if-eqz v13, :cond_9

    if-nez v11, :cond_9

    goto :goto_5

    :cond_9
    const/4 v12, 0x0

    :goto_5
    if-eqz v12, :cond_a

    if-eqz v13, :cond_a

    invoke-static {v0}, Lcom/cootek/smartinput5/ui/O$e;->a(Ljava/lang/String;)Lcom/cootek/smartinput5/ui/O$e;

    move-result-object v11

    goto :goto_6

    :cond_a
    invoke-static {v0}, Lcom/cootek/smartinput5/ui/O$e;->b(Ljava/lang/String;)Lcom/cootek/smartinput5/ui/O$e;

    move-result-object v11

    :goto_6
    if-eqz v13, :cond_b

    move v7, v9

    :cond_b
    invoke-static {v11, v10}, Lcom/cootek/smartinput5/ui/O$e;->c(Lcom/cootek/smartinput5/ui/O$e;Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_c
    const v0, 0x7f0f06e8

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/ui/c$a;->T(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/ui/O$e;->d(Ljava/lang/String;)Lcom/cootek/smartinput5/ui/O$e;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v5, v7}, Lcom/cootek/smartinput5/ui/O;->M0(Ljava/util/ArrayList;I)V

    return-void
.end method


# virtual methods
.method public A0(Z)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/O;->o:Z

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getCurrentLanguageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/O;->m:Ljava/lang/String;

    const v0, 0x7f0f04cb

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/ui/c$a;->T(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/ui/c$a;->w0(Ljava/lang/CharSequence;)Lcom/cootek/smartinput5/ui/c$a;

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/O;->N0()V

    :try_start_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/O;->n:Landroid/app/Dialog;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/c$a;->a()Landroid/support/v7/app/c;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/O;->n:Landroid/app/Dialog;

    new-instance v1, Lcom/cootek/smartinput5/ui/O$a;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/ui/O$a;-><init>(Lcom/cootek/smartinput5/ui/O;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/O;->n:Landroid/app/Dialog;

    invoke-static {v0, p1}, Lcom/cootek/smartinput5/ui/r0/a;->c(Landroid/app/Dialog;Z)V

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/O;->l:Landroid/content/Context;

    invoke-static {p1}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object p1

    const-string v0, "SELECT_LANGUAGE_DIALOG/SHOW"

    const-string v1, "OCCURRED"

    const-string v2, "/UI/"

    invoke-virtual {p1, v0, v1, v2}, Lcom/cootek/smartinput5/l/g;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public L0()Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/O;->n:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public O0()Landroid/view/View;
    .locals 14

    new-instance v0, Lcom/cootek/smartinput5/func/paopaopanel/KeyboardSubTypeProvider;

    invoke-direct {v0}, Lcom/cootek/smartinput5/func/paopaopanel/KeyboardSubTypeProvider;-><init>()V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/z;->m0()Lcom/cootek/smartinput5/engine/Okinawa;

    move-result-object v1

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/O;->m:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/cootek/smartinput5/engine/Okinawa;->getLanguageCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/O;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/func/paopaopanel/KeyboardSubTypeProvider;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {}, Lcom/cootek/smartinput5/func/paopaopanel/KeyboardSubTypeProvider;->b()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ge v2, v5, :cond_0

    return-object v6

    :cond_0
    iget-object v7, p0, Lcom/cootek/smartinput5/ui/O;->l:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    const v8, 0x7f0c012c

    invoke-virtual {v7, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0a0202

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    int-to-float v2, v2

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/O;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/func/paopaopanel/KeyboardSubTypeProvider;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_1

    const v10, 0x7f0c00a5

    goto :goto_1

    :cond_1
    const v10, 0x7f0c00a4

    :goto_1
    invoke-virtual {v7, v10, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v12, 0x3f800000    # 1.0f

    iput v12, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const v12, 0x7f0a0368

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    if-eq v2, v3, :cond_4

    if-eq v2, v5, :cond_3

    const/4 v13, 0x3

    if-eq v2, v13, :cond_2

    goto :goto_0

    :cond_2
    const v13, 0x7f0f072f

    invoke-virtual {p0, v13}, Lcom/cootek/smartinput5/ui/c$a;->T(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    const v13, 0x7f0f0676

    invoke-virtual {p0, v13}, Lcom/cootek/smartinput5/ui/c$a;->T(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    const v13, 0x7f0f06d0

    invoke-virtual {p0, v13}, Lcom/cootek/smartinput5/ui/c$a;->T(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-ne v2, v4, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/app/c$a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x7f06022d

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Lcom/cootek/smartinput5/mod/ThemeMod;->adaptColor(I)I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {v12, v6, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    new-instance v2, Lcom/cootek/smartinput5/ui/O$b;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/ui/O$b;-><init>(Lcom/cootek/smartinput5/ui/O;)V

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/app/c$a;->b()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f06022c

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-static {v11}, Lcom/cootek/smartinput5/mod/ThemeMod;->adaptColor(I)I

    move-result v11

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setClickable(Z)V

    new-instance v11, Lcom/cootek/smartinput5/ui/O$c;

    invoke-direct {v11, p0, v10, v2, v1}, Lcom/cootek/smartinput5/ui/O$c;-><init>(Lcom/cootek/smartinput5/ui/O;Landroid/view/View;ILjava/lang/String;)V

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_6
    return-object v8
.end method
