.class public final Lcom/cootek/smartinput5/settings/ThemePicker156;
.super Ljava/lang/Object;
.source "ThemePicker156.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput5/settings/ThemePicker156$Choice;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/DialogInterface;Ljava/util/ArrayList;)V
    .locals 0

    .line 18
    invoke-static {p0, p1}, Lcom/cootek/smartinput5/settings/ThemePicker156;->restoreChecked(Landroid/content/DialogInterface;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-static {p0, p1}, Lcom/cootek/smartinput5/settings/ThemePicker156;->message(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static choices(Landroid/app/Activity;Lcom/cootek/smartinput5/func/i0;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/cootek/smartinput5/func/i0;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/cootek/smartinput5/settings/ThemePicker156$Choice;",
            ">;"
        }
    .end annotation

    .line 25
    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/i0;->B0()Ljava/util/ArrayList;

    move-result-object v0

    .line 26
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 27
    :goto_0
    invoke-static {p0, v0}, Lcom/cootek/smartinput5/skin/BundledGateTheme;->append(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 28
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cootek/smartinput5/func/h;

    .line 30
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/cootek/smartinput5/func/h;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/cootek/smartinput5/func/h;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 31
    :cond_2
    instance-of v2, v1, Lcom/cootek/smartinput5/func/h0;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lcom/cootek/smartinput5/func/h0;

    goto :goto_2

    :cond_3
    iget-object v2, v1, Lcom/cootek/smartinput5/func/h;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/cootek/smartinput5/func/i0;->i0(Ljava/lang/String;)Lcom/cootek/smartinput5/func/h0;

    move-result-object v2

    .line 32
    :goto_2
    if-eqz v2, :cond_4

    iget-boolean v3, v2, Lcom/cootek/smartinput5/func/h0;->i:Z

    if-eqz v3, :cond_4

    goto :goto_1

    .line 33
    :cond_4
    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    iget-object v2, v2, Lcom/cootek/smartinput5/func/h0;->g:Ljava/lang/String;

    .line 34
    :goto_3
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    iget-object v2, v1, Lcom/cootek/smartinput5/func/h;->b:Ljava/lang/String;

    .line 35
    :cond_7
    iget-object v3, v1, Lcom/cootek/smartinput5/func/h;->b:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v1, Lcom/cootek/smartinput5/func/h;->b:Ljava/lang/String;

    new-instance v4, Lcom/cootek/smartinput5/settings/ThemePicker156$Choice;

    iget-object v1, v1, Lcom/cootek/smartinput5/func/h;->b:Ljava/lang/String;

    invoke-direct {v4, v1, v2}, Lcom/cootek/smartinput5/settings/ThemePicker156$Choice;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_8
    goto :goto_1

    .line 37
    :cond_9
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method private static message(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static open(Landroid/app/Activity;)V
    .locals 7

    .line 40
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    .line 42
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->J0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/cootek/smartinput5/func/z;->G0(Landroid/content/Context;)V

    .line 43
    :cond_1
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->J0()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "Skins unavailable"

    if-eqz v0, :cond_6

    .line 44
    :try_start_1
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 45
    invoke-static {p0, v0}, Lcom/cootek/smartinput5/settings/ThemePicker156;->choices(Landroid/app/Activity;Lcom/cootek/smartinput5/func/i0;)Ljava/util/ArrayList;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 47
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v2

    const/16 v3, 0x54

    invoke-virtual {v2, v3}, Lcom/cootek/smartinput5/engine/Settings;->getStringSetting(I)Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 49
    const/4 v4, -0x1

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cootek/smartinput5/settings/ThemePicker156$Choice;

    iget-object v6, v6, Lcom/cootek/smartinput5/settings/ThemePicker156$Choice;->title:Ljava/lang/String;

    aput-object v6, v3, v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cootek/smartinput5/settings/ThemePicker156$Choice;

    iget-object v6, v6, Lcom/cootek/smartinput5/settings/ThemePicker156$Choice;->id:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v5

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 50
    :cond_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "\u0422\u0435\u043c\u0430 \u043a\u043b\u0430\u0432\u0438\u0430\u0442\u0443\u0440\u044b"

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v5, Lcom/cootek/smartinput5/settings/ThemePicker156$1;

    invoke-direct {v5, p0, v1, v0}, Lcom/cootek/smartinput5/settings/ThemePicker156$1;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/cootek/smartinput5/func/i0;)V

    .line 51
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u041e\u0442\u043c\u0435\u043d\u0430"

    .line 64
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 46
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No installed skins"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    :catch_0
    move-exception v0

    const-string v0, "\u0414\u0432\u0438\u0436\u043e\u043a \u0442\u0435\u043c\u044b \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u0435\u043d. \u041e\u0442\u043a\u0440\u043e\u0439 \u043a\u043b\u0430\u0432\u0438\u0430\u0442\u0443\u0440\u0443 \u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0438."

    invoke-static {p0, v0}, Lcom/cootek/smartinput5/settings/ThemePicker156;->message(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_2

    .line 65
    :catch_1
    move-exception v0

    const-string v0, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043e\u0442\u043a\u0440\u044b\u0442\u044c \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044b\u0435 \u0442\u0435\u043c\u044b. \u041e\u0442\u043a\u0440\u043e\u0439 \u043a\u043b\u0430\u0432\u0438\u0430\u0442\u0443\u0440\u0443 \u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0438."

    invoke-static {p0, v0}, Lcom/cootek/smartinput5/settings/ThemePicker156;->message(Landroid/app/Activity;Ljava/lang/String;)V

    .line 66
    :goto_1
    nop

    .line 67
    :goto_2
    return-void

    .line 40
    :cond_7
    :goto_3
    return-void
.end method

.method private static restoreChecked(Landroid/content/DialogInterface;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "Ljava/util/ArrayList<",
            "Lcom/cootek/smartinput5/settings/ThemePicker156$Choice;",
            ">;)V"
        }
    .end annotation

    .line 69
    instance-of v0, p0, Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getStringSetting(I)Ljava/lang/String;

    move-result-object v0

    check-cast p0, Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ListView;->clearChoices()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cootek/smartinput5/settings/ThemePicker156$Choice;

    iget-object v2, v2, Lcom/cootek/smartinput5/settings/ThemePicker156$Choice;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :catch_0
    move-exception p0

    :cond_2
    :goto_1
    nop

    .line 72
    return-void
.end method
