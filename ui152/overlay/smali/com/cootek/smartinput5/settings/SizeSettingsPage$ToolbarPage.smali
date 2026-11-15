.class final Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;
.super Ljava/lang/Object;
.source "SizeSettingsPage.java"

# interfaces
.implements Lcom/cootek/smartinput5/settings/SizeSettingsPage$PageHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput5/settings/SizeSettingsPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ToolbarPage"
.end annotation


# instance fields
.field private actions:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;

.field private final candidates:Z

.field private current:Landroid/widget/TextView;

.field private final owner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private preview:Lcom/cootek/smartinput5/settings/SizePreview;

.field private selected:I

.field private targets:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;

.field private theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;


# direct methods
.method constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->owner:Ljava/lang/ref/WeakReference;

    iput-boolean p2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->candidates:Z

    return-void
.end method

.method static synthetic access$1300(Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;)I
    .locals 0

    .line 456
    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->storedSlot()I

    move-result p0

    return p0
.end method

.method static synthetic access$1402(Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;I)I
    .locals 0

    .line 456
    iput p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->selected:I

    return p1
.end method

.method private activity()Landroid/app/Activity;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->owner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method private dp(F)I
    .locals 1

    .line 467
    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->activity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private storedSlot()I
    .locals 1

    .line 468
    iget-boolean v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->candidates:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->selected:I

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->selected:I

    :goto_0
    return v0
.end method


# virtual methods
.method public cancelDrag()V
    .locals 0

    .line 497
    return-void
.end method

.method public create()V
    .locals 9

    .line 470
    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->activity()Landroid/app/Activity;

    move-result-object v7

    new-instance v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

    invoke-direct {v0, v7}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

    new-instance v0, Lcom/cootek/smartinput5/settings/SizePreview;

    invoke-direct {v0, v7}, Lcom/cootek/smartinput5/settings/SizePreview;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->preview:Lcom/cootek/smartinput5/settings/SizePreview;

    .line 471
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->dp(F)I

    move-result v2

    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->dp(F)I

    move-result v1

    const/high16 v3, 0x41000000    # 8.0f

    invoke-direct {p0, v3}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

    invoke-virtual {v1, v7}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->newBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 472
    iget-boolean v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->candidates:Z

    if-eqz v1, :cond_0

    const-string v1, "\u041a\u043d\u043e\u043f\u043a\u0438 \u043f\u0430\u043d\u0435\u043b\u0438 \u043f\u0440\u0435\u0434\u043b\u0430\u0433\u0430\u0435\u043c\u044b\u0445 \u0441\u043b\u043e\u0432"

    goto :goto_0

    :cond_0
    const-string v1, "\u041f\u043e\u0440\u044f\u0434\u043e\u043a \u043a\u043d\u043e\u043f\u043e\u043a \u043d\u0430 \u043f\u0430\u043d\u0435\u043b\u0438"

    :goto_0
    iget-object v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

    invoke-static {v7, v0, v1, v2}, Lcom/cootek/smartinput5/settings/SizeSettingsPage;->access$1200(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;)V

    .line 473
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->current:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->current:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->current:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

    iget v2, v2, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->text:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->current:Landroid/widget/TextView;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-direct {p0, v2}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->dp(F)I

    move-result v4

    invoke-direct {p0, v2}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->dp(F)I

    move-result v2

    invoke-virtual {v1, v5, v4, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->current:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 474
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

    iget v2, v2, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->muted:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0, v3}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->dp(F)I

    move-result v2

    invoke-virtual {v1, v5, v5, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 475
    iget-boolean v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->candidates:Z

    if-eqz v2, :cond_1

    const-string v2, "\u041b\u0435\u0432\u0430\u044f \u0438 \u043f\u0440\u0430\u0432\u0430\u044f \u043a\u043d\u043e\u043f\u043a\u0438 \u043f\u0430\u043d\u0435\u043b\u0438 \u043f\u0440\u0435\u0434\u043b\u0430\u0433\u0430\u0435\u043c\u044b\u0445 \u0441\u043b\u043e\u0432."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 476
    :cond_1
    new-instance v1, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;

    const/4 v2, 0x2

    invoke-direct {v1, v7, v2}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->actions:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;

    .line 477
    const/4 v1, 0x0

    :goto_1
    invoke-static {}, Lcom/cootek/smartinput5/settings/ToolbarConfig140;->choices()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 478
    invoke-static {v1}, Lcom/cootek/smartinput5/settings/ToolbarConfig140;->type(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;

    iget-object v4, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

    invoke-direct {v3, v7, v4, v2}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ActionChoiceButton;-><init>(Landroid/content/Context;Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toolbar-action-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->setTag(Ljava/lang/Object;)V

    .line 479
    new-instance v4, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage$1;

    invoke-direct {v4, p0, v7, v2}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage$1;-><init>(Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    iget-object v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->actions:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;

    invoke-virtual {v2, v3}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->addView(Landroid/view/View;)V

    .line 477
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 484
    :cond_2
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->actions:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v7}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->setHorizontalScrollBarEnabled(Z)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    new-instance v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->preview:Lcom/cootek/smartinput5/settings/SizePreview;

    iget-boolean v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->candidates:Z

    new-instance v4, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage$2;

    invoke-direct {v4, p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage$2;-><init>(Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;)V

    invoke-direct {v0, v7, v1, v3, v4}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;-><init>(Landroid/content/Context;Lcom/cootek/smartinput5/settings/SizePreview;ZLcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets$Selection;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->targets:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;

    .line 487
    new-instance v8, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;

    iget-object v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->preview:Lcom/cootek/smartinput5/settings/SizePreview;

    invoke-static {v7}, Lcom/cootek/smartinput5/settings/SizeSettingsPage;->access$1500(Landroid/content/Context;)Lcom/cootek/smartinput5/settings/SizeDrag134;

    move-result-object v4

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

    move-object v0, v8

    move-object v1, v7

    invoke-direct/range {v0 .. v6}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;-><init>(Landroid/content/Context;Landroid/widget/ScrollView;Lcom/cootek/smartinput5/settings/SizePreview;Lcom/cootek/smartinput5/settings/SizeDrag134;ILcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->targets:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;

    invoke-virtual {v8, v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;->targets(Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->reload()V

    .line 488
    return-void
.end method

.method public reload()V
    .locals 6

    .line 490
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->actions:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;

    if-nez v0, :cond_0

    return-void

    .line 491
    :cond_0
    iget-boolean v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->candidates:Z

    const/4 v1, 0x2

    const-string v2, "\u041f\u0440\u0430\u0432\u0430\u044f \u043a\u043d\u043e\u043f\u043a\u0430"

    const-string v3, "\u041b\u0435\u0432\u0430\u044f \u043a\u043d\u043e\u043f\u043a\u0430"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    new-array v0, v1, [Ljava/lang/String;

    aput-object v3, v0, v5

    aput-object v2, v0, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v5

    const-string v3, "\u0421\u0440\u0435\u0434\u043d\u044f\u044f \u043a\u043d\u043e\u043f\u043a\u0430"

    aput-object v3, v0, v4

    aput-object v2, v0, v1

    .line 492
    :goto_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->activity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->storedSlot()I

    move-result v2

    invoke-static {v1, v2}, Lcom/cootek/smartinput5/settings/ToolbarConfig140;->read(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->current:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->selected:I

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/cootek/smartinput5/settings/ToolbarConfig140;->label(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    nop

    :goto_1
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->actions:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->getChildCount()I

    move-result v0

    if-ge v5, v0, :cond_2

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->actions:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;

    invoke-virtual {v0, v5}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v5}, Lcom/cootek/smartinput5/settings/ToolbarConfig140;->type(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 494
    :cond_2
    iget-boolean v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->candidates:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->preview:Lcom/cootek/smartinput5/settings/SizePreview;

    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->selected:I

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/settings/SizePreview;->setCandidateButtonsPreview(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->preview:Lcom/cootek/smartinput5/settings/SizePreview;

    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->selected:I

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/settings/SizePreview;->setToolbarPreview(I)V

    .line 495
    :goto_2
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->preview:Lcom/cootek/smartinput5/settings/SizePreview;

    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->activity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/cootek/smartinput5/sizes/CandidateDividers;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/settings/SizePreview;->setDividers(Z)V

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->targets:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;

    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->selected:I

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;->refresh(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->actions:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->requestLayout()V

    .line 496
    return-void
.end method
