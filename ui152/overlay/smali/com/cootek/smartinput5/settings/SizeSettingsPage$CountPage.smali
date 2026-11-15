.class final Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;
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
    name = "CountPage"
.end annotation


# instance fields
.field private choices:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;

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

.field private status:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->owner:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private activity()Landroid/app/Activity;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->owner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method private dp(F)I
    .locals 1

    .line 536
    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->activity()Landroid/app/Activity;

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


# virtual methods
.method public cancelDrag()V
    .locals 0

    .line 557
    return-void
.end method

.method public create()V
    .locals 9

    .line 538
    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->activity()Landroid/app/Activity;

    move-result-object v7

    new-instance v6, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

    invoke-direct {v6, v7}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/cootek/smartinput5/settings/SizePreview;

    invoke-direct {v0, v7}, Lcom/cootek/smartinput5/settings/SizePreview;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->preview:Lcom/cootek/smartinput5/settings/SizePreview;

    .line 539
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->dp(F)I

    move-result v2

    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->dp(F)I

    move-result v1

    const/high16 v3, 0x41000000    # 8.0f

    invoke-direct {p0, v3}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v6, v7}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->newBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 540
    const-string v1, "\u041a\u043e\u043b\u0438\u0447\u0435\u0441\u0442\u0432\u043e \u043f\u0440\u0435\u0434\u043b\u0430\u0433\u0430\u0435\u043c\u044b\u0445 \u0441\u043b\u043e\u0432"

    invoke-static {v7, v0, v1, v6}, Lcom/cootek/smartinput5/settings/SizeSettingsPage;->access$1200(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;)V

    .line 541
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->current:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->current:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->current:Landroid/widget/TextView;

    iget v2, v6, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->text:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->current:Landroid/widget/TextView;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-direct {p0, v2}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->dp(F)I

    move-result v2

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-direct {p0, v3}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->dp(F)I

    move-result v5

    invoke-virtual {v1, v4, v2, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->current:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 542
    new-instance v1, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;

    const/4 v2, 0x6

    invoke-direct {v1, v7, v2}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->choices:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;

    .line 543
    const/4 v1, 0x3

    :goto_0
    const/16 v2, 0x8

    if-gt v1, v2, :cond_0

    .line 544
    new-instance v2, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;

    invoke-direct {v2, v7, v6}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;-><init>(Landroid/content/Context;Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "candidate-count-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->setTag(Ljava/lang/Object;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " \u043f\u0440\u0435\u0434\u043b\u0430\u0433\u0430\u0435\u043c\u044b\u0445 \u0441\u043b\u043e\u0432"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 545
    new-instance v5, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage$1;

    invoke-direct {v5, p0, v7, v1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage$1;-><init>(Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;Landroid/app/Activity;I)V

    invoke-virtual {v2, v5}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->choices:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;

    invoke-virtual {v5, v2}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->addView(Landroid/view/View;)V

    .line 543
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 546
    :cond_0
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->choices:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v8, -0x2

    invoke-direct {v2, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 547
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->status:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->status:Landroid/widget/TextView;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->status:Landroid/widget/TextView;

    iget v2, v6, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->muted:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->status:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->dp(F)I

    move-result v2

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->status:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 548
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v7}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 549
    new-instance v8, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;

    iget-object v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->preview:Lcom/cootek/smartinput5/settings/SizePreview;

    invoke-static {v7}, Lcom/cootek/smartinput5/settings/SizeSettingsPage;->access$1500(Landroid/content/Context;)Lcom/cootek/smartinput5/settings/SizeDrag134;

    move-result-object v4

    const/4 v5, 0x4

    move-object v0, v8

    move-object v1, v7

    invoke-direct/range {v0 .. v6}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;-><init>(Landroid/content/Context;Landroid/widget/ScrollView;Lcom/cootek/smartinput5/settings/SizePreview;Lcom/cootek/smartinput5/settings/SizeDrag134;ILcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->reload()V

    .line 550
    return-void
.end method

.method public reload()V
    .locals 6

    .line 552
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->choices:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->activity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/CandidatePanel141;->count(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->current:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041f\u0440\u0435\u0434\u043b\u0430\u0433\u0430\u0435\u043c\u044b\u0445 \u0441\u043b\u043e\u0432: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->choices:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;

    invoke-virtual {v3}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->choices:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;

    invoke-virtual {v3, v2}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    add-int/lit8 v5, v2, 0x3

    if-ne v0, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 554
    :cond_2
    const/16 v2, 0x8

    const/4 v3, 0x3

    if-lt v0, v3, :cond_3

    if-gt v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    iget-object v4, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->preview:Lcom/cootek/smartinput5/settings/SizePreview;

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/cootek/smartinput5/settings/SizePreview;->setCandidateCountPreview(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->preview:Lcom/cootek/smartinput5/settings/SizePreview;

    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->activity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/cootek/smartinput5/sizes/CandidateDividers;->isEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/settings/SizePreview;->setDividers(Z)V

    .line 555
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->status:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    const-string v1, "\u041d\u0430 \u043c\u0430\u043a\u0435\u0442\u0435 \u2014 \u043f\u0440\u0438\u043c\u0435\u0440\u044b, \u043f\u043e\u0434\u043e\u0431\u0440\u0430\u043d\u043d\u044b\u0435 \u043f\u043e\u0434 \u0448\u0438\u0440\u0438\u043d\u0443 \u043f\u0430\u043d\u0435\u043b\u0438."

    goto :goto_2

    :cond_4
    const-string v1, "\u0421\u043e\u0445\u0440\u0430\u043d\u0451\u043d\u043d\u043e\u0435 \u0437\u043d\u0430\u0447\u0435\u043d\u0438\u0435 \u0432\u043d\u0435 \u0434\u0438\u0430\u043f\u0430\u0437\u043e\u043d\u04303\u20138. \u041c\u0430\u043a\u0435\u0442 \u043f\u043e\u043a\u0430\u0437\u044b\u0432\u0430\u0435\u0442 \u0431\u043b\u0438\u0436\u0430\u0439\u0448\u0435\u0435 \u0434\u043e\u0441\u0442\u0443\u043f\u043d\u043e\u0435 \u043a\u043e\u043b\u0438\u0447\u0435\u0441\u0442\u0432\u043e; \u0432\u044b\u0431\u0435\u0440\u0438\u0442\u0435 \u043d\u043e\u0432\u043e\u0435 \u0437\u043d\u0430\u0447\u0435\u043d\u0438\u0435."

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->choices:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->requestLayout()V

    .line 556
    return-void
.end method
