.class public Lcom/cootek/smartinput5/func/share/ShareDialogActivity;
.super Lcom/cootek/smartinput5/func/q0;


# static fields
.field public static final k:Ljava/lang/String; = "share_dialog_title"

.field public static final l:Ljava/lang/String; = "share_dialog_subject"

.field public static final m:Ljava/lang/String; = "share_dialog_content"

.field public static final n:Ljava/lang/String; = "share_dialog_uri"

.field public static final o:Ljava/lang/String; = "share_dialog_url"

.field public static final p:Ljava/lang/String; = "share_img_url"

.field private static final q:I = 0x3

.field private static final r:D = 0.15


# instance fields
.field private i:Lcom/cootek/smartinput5/func/i0;

.field private j:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/q0;-><init>()V

    return-void
.end method

.method protected static B(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private D()I
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    const-string v1, " "

    aput-object v1, v0, p1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object p2

    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method public E(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    new-instance v12, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v12, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "image/*"

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "text/plain"

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.intent.extra.SUBJECT"

    move-object/from16 v13, p3

    invoke-virtual {v12, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    move-object/from16 v13, p3

    :goto_1
    const/high16 v1, 0x10000000

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static/range {p1 .. p1}, Lcom/cootek/smartinput5/func/share/b;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v14

    if-eqz v14, :cond_7

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0f082f

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object/from16 v1, p2

    :goto_2
    iget-object v2, v11, Lcom/cootek/smartinput5/func/share/ShareDialogActivity;->j:Landroid/widget/LinearLayout;

    const v3, 0x7f0a030f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v11, Lcom/cootek/smartinput5/func/share/ShareDialogActivity;->i:Lcom/cootek/smartinput5/func/i0;

    const v3, 0x7f060392

    invoke-virtual {v1, v3}, Lcom/cootek/smartinput5/func/i0;->x(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v11, Lcom/cootek/smartinput5/func/share/ShareDialogActivity;->j:Landroid/widget/LinearLayout;

    const v2, 0x7f0a030d

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, v11, Lcom/cootek/smartinput5/func/share/ShareDialogActivity;->i:Lcom/cootek/smartinput5/func/i0;

    const v3, 0x7f060391

    invoke-virtual {v2, v3}, Lcom/cootek/smartinput5/func/i0;->x(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v11, Lcom/cootek/smartinput5/func/share/ShareDialogActivity;->j:Landroid/widget/LinearLayout;

    const v2, 0x7f0a030c

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/widget/LinearLayout;

    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static/range {p0 .. p0}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->q(Landroid/content/Context;)Lcom/cootek/smartinput5/configuration/ConfigurationManager;

    move-result-object v2

    sget-object v3, Lcom/cootek/smartinput5/configuration/ConfigurationType;->SHARE_WITH_OTHER:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->j(Lcom/cootek/smartinput5/configuration/ConfigurationType;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0f0592

    invoke-static {v0, v2}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cootek/smartinput5/func/share/c;

    iget-object v4, v11, Lcom/cootek/smartinput5/func/share/ShareDialogActivity;->i:Lcom/cootek/smartinput5/func/i0;

    const v5, 0x7f0803ff

    invoke-virtual {v4, v5}, Lcom/cootek/smartinput5/func/i0;->U(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5, v2}, Lcom/cootek/smartinput5/func/share/c;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/cootek/smartinput5/func/share/ShareDialogActivity;->D()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fc3333333333333L    # 0.15

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int v2, v2

    div-int/lit8 v3, v2, 0x4

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :goto_3
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v7, 0x3

    if-ge v1, v2, :cond_5

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/cootek/smartinput5/func/share/c;

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v16 .. v16}, Lcom/cootek/smartinput5/func/share/c;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {v16 .. v16}, Lcom/cootek/smartinput5/func/share/c;->b()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Lcom/cootek/smartinput5/func/share/c;->f()Z

    move-result v18

    move-object/from16 v2, v16

    move v3, v1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v13, v6

    move-object/from16 v6, p7

    const/4 v0, 0x3

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/cootek/smartinput5/func/share/c;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/cootek/smartinput5/func/share/c;->c()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Lcom/cootek/smartinput5/func/share/c;->e()Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/cootek/smartinput5/func/share/c;->d()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/cootek/smartinput5/func/share/ShareDialogActivity$a;

    move v6, v1

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v5, v18

    move v0, v6

    move-object/from16 v6, v17

    move-object v11, v7

    move-object v7, v12

    move-object/from16 v17, v8

    move-object/from16 v8, p4

    move-object/from16 v18, v12

    move-object v12, v9

    move-object/from16 v9, p6

    move-object/from16 p5, v14

    move-object v14, v10

    move-object/from16 v10, v19

    invoke-direct/range {v1 .. v10}, Lcom/cootek/smartinput5/func/share/ShareDialogActivity$a;-><init>(Lcom/cootek/smartinput5/func/share/ShareDialogActivity;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x3

    if-ge v0, v1, :cond_4

    invoke-virtual {v14, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_4
    add-int/lit8 v1, v0, 0x1

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    move-object/from16 v13, p3

    move-object v9, v12

    move-object v10, v14

    move-object/from16 v8, v17

    move-object/from16 v12, v18

    move-object/from16 v14, p5

    goto :goto_3

    :cond_5
    move-object v12, v9

    move-object/from16 p5, v14

    const/4 v1, 0x3

    move-object v14, v10

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {v15, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_6

    invoke-virtual {v15, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_6
    move-object/from16 v1, p0

    goto :goto_8

    :cond_7
    move-object/from16 v18, v12

    :try_start_0
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    move-object/from16 v1, p0

    move-object/from16 v3, v18

    goto :goto_6

    :cond_9
    :goto_5
    const-string v0, "android.intent.extra.TEXT"
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    :try_start_1
    invoke-virtual {v1, v2, v3}, Lcom/cootek/smartinput5/func/share/ShareDialogActivity;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v18

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/func/q0;->finish()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    :goto_7
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_8
    return-void
.end method

.method protected k(Landroid/os/Bundle;)V
    .locals 9

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-static {p0}, Lcom/cootek/smartinput5/func/z;->G0(Landroid/content/Context;)V

    const p1, 0x7f0c0116

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object p1

    iput-object p1, p0, Lcom/cootek/smartinput5/func/share/ShareDialogActivity;->i:Lcom/cootek/smartinput5/func/i0;

    const p1, 0x7f0a030e

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/cootek/smartinput5/func/share/ShareDialogActivity;->j:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/cootek/smartinput5/func/share/ShareDialogActivity;->i:Lcom/cootek/smartinput5/func/i0;

    const v1, 0x7f0800c0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/i0;->U(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "share_dialog_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "share_dialog_subject"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "share_dialog_content"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "share_dialog_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/net/Uri;

    const-string v0, "share_dialog_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "share_img_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v1 .. v8}, Lcom/cootek/smartinput5/func/share/ShareDialogActivity;->E(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected n()V
    .locals 0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->A()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/cootek/smartinput5/func/q0;->onPause()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/q0;->finish()V

    return-void
.end method
