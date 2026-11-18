.class public Lcom/cootek/smartinput5/urlnavigator/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cootek/smartinput5/urlnavigator/c$a;


# static fields
.field private static final f:Ljava/lang/String; = "index"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/GridView;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Lcom/cootek/smartinput5/urlnavigator/c;

.field private e:Lcom/cootek/smartinput5/urlnavigator/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic b(Lcom/cootek/smartinput5/urlnavigator/d;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/urlnavigator/d;->j(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic c(Lcom/cootek/smartinput5/urlnavigator/d;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/urlnavigator/d;->k(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/cootek/smartinput5/urlnavigator/d;)Lcom/cootek/smartinput5/urlnavigator/c;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/urlnavigator/d;->d:Lcom/cootek/smartinput5/urlnavigator/c;

    return-object p0
.end method

.method private e(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/urlnavigator/d;->a:Landroid/content/Context;

    const-class v2, Lcom/cootek/smartinput5/urlnavigator/FavoritesItemEditDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "description"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/cootek/smartinput5/urlnavigator/d;->a:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    new-instance p2, Lcom/cootek/smartinput5/urlnavigator/d$c;

    invoke-direct {p2, p0, p1}, Lcom/cootek/smartinput5/urlnavigator/d$c;-><init>(Lcom/cootek/smartinput5/urlnavigator/d;I)V

    invoke-static {p2}, Lcom/cootek/smartinput5/urlnavigator/FavoritesItemEditDialog;->d(Lcom/cootek/smartinput5/urlnavigator/FavoritesItemEditDialog$c;)V

    return-void
.end method

.method private f()V
    .locals 9

    iget-object v0, p0, Lcom/cootek/smartinput5/urlnavigator/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/cootek/smartinput5/urlnavigator/d;->d:Lcom/cootek/smartinput5/urlnavigator/c;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/urlnavigator/c;->c()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cootek/smartinput5/urlnavigator/b;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/cootek/smartinput5/urlnavigator/b;->f()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "index"

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    iget-object v7, v3, Lcom/cootek/smartinput5/urlnavigator/b;->a:Ljava/lang/String;

    goto :goto_2

    :cond_1
    move-object v7, v6

    :goto_2
    const-string v8, "url"

    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_2

    iget-object v6, v3, Lcom/cootek/smartinput5/urlnavigator/b;->b:Ljava/lang/String;

    :cond_2
    const-string v7, "description"

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/cootek/smartinput5/urlnavigator/d;->d:Lcom/cootek/smartinput5/urlnavigator/c;

    invoke-virtual {v3, v5}, Lcom/cootek/smartinput5/urlnavigator/b;->d(Lcom/cootek/smartinput5/urlnavigator/c;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/cootek/smartinput5/urlnavigator/d;->d:Lcom/cootek/smartinput5/urlnavigator/c;

    invoke-virtual {v3, v5}, Lcom/cootek/smartinput5/urlnavigator/b;->c(Lcom/cootek/smartinput5/urlnavigator/c;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v3

    const v5, 0x7f080538

    invoke-virtual {v3, v5}, Lcom/cootek/smartinput5/func/i0;->U(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v3

    const v5, 0x7f08052e

    invoke-virtual {v3, v5}, Lcom/cootek/smartinput5/func/i0;->U(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_3
    const-string v5, "favicon"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/cootek/smartinput5/urlnavigator/d;->c:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/cootek/smartinput5/urlnavigator/d;->b:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/cootek/smartinput5/urlnavigator/d;->e:Lcom/cootek/smartinput5/urlnavigator/a;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/urlnavigator/a;->f()V

    return-void
.end method

.method private j(Landroid/view/View;I)V
    .locals 4

    iget-object p1, p0, Lcom/cootek/smartinput5/urlnavigator/d;->b:Landroid/widget/GridView;

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "description"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance p2, Lcom/cootek/smartinput5/urlnavigator/RecommendedURLHandler;

    invoke-direct {p2}, Lcom/cootek/smartinput5/urlnavigator/RecommendedURLHandler;-><init>()V

    invoke-virtual {p2, v0, p1}, Lcom/cootek/smartinput5/urlnavigator/RecommendedURLHandler;->onClick(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->getEditor()Lcom/cootek/smartinput5/engine/Editor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Editor;->getSelectedText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Editor;->getEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Editor;->getEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    :cond_1
    and-int/lit8 v2, v1, 0xf

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    and-int/lit16 v1, v1, 0xff0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    const v1, 0x31000e    # 4.499959E-39f

    invoke-virtual {p1, v1}, Lcom/cootek/smartinput5/engine/Editor;->onKeyClick(I)V

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Editor;->getEditText()Ljava/lang/CharSequence;

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string v0, "http://"

    :cond_3
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-direct {p0, p2, p1, v0}, Lcom/cootek/smartinput5/urlnavigator/d;->e(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private k(Landroid/view/View;I)Z
    .locals 7

    iget-object v0, p0, Lcom/cootek/smartinput5/urlnavigator/d;->b:Landroid/widget/GridView;

    invoke-virtual {v0, p2}, Landroid/widget/GridView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "description"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x2

    new-array v1, p1, [I

    fill-array-data v1, :array_0

    new-array v3, p1, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_1

    iget-object v5, p0, Lcom/cootek/smartinput5/urlnavigator/d;->a:Landroid/content/Context;

    aget v6, v1, v4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/cootek/smartinput5/ui/c$a;

    iget-object v4, p0, Lcom/cootek/smartinput5/urlnavigator/d;->a:Landroid/content/Context;

    invoke-direct {p1, v4}, Lcom/cootek/smartinput5/ui/c$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/ui/c$a;->w0(Ljava/lang/CharSequence;)Lcom/cootek/smartinput5/ui/c$a;

    move-result-object p1

    new-instance v0, Lcom/cootek/smartinput5/urlnavigator/d$b;

    invoke-direct {v0, p0, v1, p2}, Lcom/cootek/smartinput5/urlnavigator/d$b;-><init>(Lcom/cootek/smartinput5/urlnavigator/d;[II)V

    invoke-virtual {p1, v3, v0}, Landroid/support/v7/app/c$a;->l([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/c$a;->a()Landroid/support/v7/app/c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/high16 v0, 0x20000

    invoke-virtual {p2, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cootek/smartinput5/engine/Engine;->getDialogManager()Lcom/cootek/smartinput5/engine/DialogManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/cootek/smartinput5/engine/DialogManager;->showDialog(Landroid/app/Dialog;)V

    return v2

    :cond_2
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/urlnavigator/d;->j(Landroid/view/View;I)V

    return v2

    :array_0
    .array-data 4
        0x7f0f0a07
        0x7f0f0a0a
    .end array-data
.end method

.method private n(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/cootek/smartinput5/ui/c$a;

    iget-object v1, p0, Lcom/cootek/smartinput5/urlnavigator/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cootek/smartinput5/ui/c$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/cootek/smartinput5/ui/c$a;->w0(Ljava/lang/CharSequence;)Lcom/cootek/smartinput5/ui/c$a;

    move-result-object p2

    iget-object v0, p0, Lcom/cootek/smartinput5/urlnavigator/d;->a:Landroid/content/Context;

    const v1, 0x7f0f0a0b

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/cootek/smartinput5/ui/c$a;->m0(Ljava/lang/CharSequence;)Lcom/cootek/smartinput5/ui/c$a;

    move-result-object p2

    iget-object v0, p0, Lcom/cootek/smartinput5/urlnavigator/d;->a:Landroid/content/Context;

    const v1, 0x104000a

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/cootek/smartinput5/urlnavigator/d$d;

    invoke-direct {v1, p0, p1}, Lcom/cootek/smartinput5/urlnavigator/d$d;-><init>(Lcom/cootek/smartinput5/urlnavigator/d;I)V

    invoke-virtual {p2, v0, v1}, Lcom/cootek/smartinput5/ui/c$a;->t0(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/cootek/smartinput5/ui/c$a;

    move-result-object p1

    iget-object p2, p0, Lcom/cootek/smartinput5/urlnavigator/d;->a:Landroid/content/Context;

    const/high16 v0, 0x1040000

    invoke-static {p2, v0}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/cootek/smartinput5/ui/c$a;->o0(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/cootek/smartinput5/ui/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/c$a;->a()Landroid/support/v7/app/c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/high16 v0, 0x20000

    invoke-virtual {p2, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cootek/smartinput5/engine/Engine;->getDialogManager()Lcom/cootek/smartinput5/engine/DialogManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/cootek/smartinput5/engine/DialogManager;->showDialog(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/urlnavigator/d;->f()V

    return-void
.end method

.method public g()V
    .locals 4

    iget-object v0, p0, Lcom/cootek/smartinput5/urlnavigator/d;->b:Landroid/widget/GridView;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x5d

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v3, v1}, Landroid/widget/GridView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    return-void
.end method

.method public h(Landroid/content/Context;Landroid/view/View;)V
    .locals 7

    iput-object p1, p0, Lcom/cootek/smartinput5/urlnavigator/d;->a:Landroid/content/Context;

    check-cast p2, Landroid/widget/GridView;

    iput-object p2, p0, Lcom/cootek/smartinput5/urlnavigator/d;->b:Landroid/widget/GridView;

    new-instance p2, Lcom/cootek/smartinput5/urlnavigator/c;

    invoke-direct {p2, p1}, Lcom/cootek/smartinput5/urlnavigator/c;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/cootek/smartinput5/urlnavigator/d;->d:Lcom/cootek/smartinput5/urlnavigator/c;

    invoke-virtual {p2, p0}, Lcom/cootek/smartinput5/urlnavigator/c;->a(Lcom/cootek/smartinput5/urlnavigator/c$a;)V

    new-instance p2, Lcom/cootek/smartinput5/urlnavigator/a;

    iget-object v0, p0, Lcom/cootek/smartinput5/urlnavigator/d;->d:Lcom/cootek/smartinput5/urlnavigator/c;

    invoke-direct {p2, v0}, Lcom/cootek/smartinput5/urlnavigator/a;-><init>(Lcom/cootek/smartinput5/urlnavigator/c;)V

    iput-object p2, p0, Lcom/cootek/smartinput5/urlnavigator/d;->e:Lcom/cootek/smartinput5/urlnavigator/a;

    iget-object p2, p0, Lcom/cootek/smartinput5/urlnavigator/d;->b:Landroid/widget/GridView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object p2, p0, Lcom/cootek/smartinput5/urlnavigator/d;->b:Landroid/widget/GridView;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/cootek/smartinput5/urlnavigator/d;->b:Landroid/widget/GridView;

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/GridView;->setCacheColorHint(I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/cootek/smartinput5/urlnavigator/d;->c:Ljava/util/List;

    const/4 p2, 0x3

    new-array v5, p2, [Ljava/lang/String;

    const-string v1, "index"

    aput-object v1, v5, v0

    const/4 v0, 0x1

    const-string v1, "favicon"

    aput-object v1, v5, v0

    const/4 v0, 0x2

    const-string v1, "description"

    aput-object v1, v5, v0

    new-array v6, p2, [I

    fill-array-data v6, :array_0

    new-instance p2, Landroid/widget/SimpleAdapter;

    iget-object v3, p0, Lcom/cootek/smartinput5/urlnavigator/d;->c:Ljava/util/List;

    const v4, 0x7f0c015a

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    new-instance p1, Lcom/cootek/smartinput5/urlnavigator/d$a;

    invoke-direct {p1, p0}, Lcom/cootek/smartinput5/urlnavigator/d$a;-><init>(Lcom/cootek/smartinput5/urlnavigator/d;)V

    invoke-virtual {p2, p1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/urlnavigator/d;->b:Landroid/widget/GridView;

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/urlnavigator/d;->f()V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a02e6
        0x7f0a01b2
        0x7f0a038b
    .end array-data
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/urlnavigator/d;->b:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->destroyDrawingCache()V

    iget-object v0, p0, Lcom/cootek/smartinput5/urlnavigator/d;->d:Lcom/cootek/smartinput5/urlnavigator/c;

    invoke-virtual {v0, p0}, Lcom/cootek/smartinput5/urlnavigator/c;->k(Lcom/cootek/smartinput5/urlnavigator/c$a;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/urlnavigator/d;->e:Lcom/cootek/smartinput5/urlnavigator/a;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/urlnavigator/a;->i()V

    return-void
.end method

.method public l(ILjava/lang/Object;)Z
    .locals 4

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lcom/cootek/smartinput5/urlnavigator/d;->b:Landroid/widget/GridView;

    invoke-virtual {v0, p2}, Landroid/widget/GridView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "description"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    const v3, 0x7f0f0a07

    if-ne p1, v3, :cond_0

    invoke-direct {p0, p2, v1, v0}, Lcom/cootek/smartinput5/urlnavigator/d;->e(ILjava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    const v3, 0x7f0f0a0a

    if-ne p1, v3, :cond_1

    invoke-direct {p0, p2, v0}, Lcom/cootek/smartinput5/urlnavigator/d;->n(ILjava/lang/String;)V

    return v2

    :cond_1
    const p2, 0x7f0f0a09

    if-ne p1, p2, :cond_2

    new-instance p1, Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public m()V
    .locals 4

    iget-object v0, p0, Lcom/cootek/smartinput5/urlnavigator/d;->b:Landroid/widget/GridView;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x5c

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v3, v1}, Landroid/widget/GridView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    return-void
.end method
