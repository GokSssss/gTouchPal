.class final Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;
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
    name = "Page"
.end annotation


# instance fields
.field private choices:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;

.field private current:Landroid/widget/TextView;

.field private defaultValue:I

.field private drag:Lcom/cootek/smartinput5/settings/SizeDrag134;

.field private fontSlider:Landroid/widget/SeekBar;

.field private final heightValues:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private layout:Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;

.field private final mode:I

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

.field private quickRaw:[I

.field private quickValues:[I

.field private separators:Landroid/widget/CheckBox;

.field private final session:Lcom/cootek/smartinput5/settings/SizeModel$Session;

.field private status:Landroid/widget/TextView;

.field private steps:Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;

.field private final store:Lcom/cootek/smartinput5/settings/SizeRuntimeStore;

.field private syncing:Z

.field private theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

.field private transientRaw:I

.field private transientValue:I


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 3

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->heightValues:Ljava/util/TreeMap;

    .line 187
    const/4 v0, -0x1

    iput v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->transientValue:I

    .line 199
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->owner:Ljava/lang/ref/WeakReference;

    .line 200
    iput p2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    .line 201
    new-instance v1, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;

    invoke-direct {v1, p1, p2}, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->store:Lcom/cootek/smartinput5/settings/SizeRuntimeStore;

    .line 202
    invoke-static {p2}, Lcom/cootek/smartinput5/settings/SizeModel;->isHeight(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 203
    new-instance p1, Lcom/cootek/smartinput5/settings/SizeModel$Session;

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->store:Lcom/cootek/smartinput5/settings/SizeRuntimeStore;

    iget-object v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->store:Lcom/cootek/smartinput5/settings/SizeRuntimeStore;

    invoke-virtual {v2}, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->height()Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;

    move-result-object v2

    iget-object v2, v2, Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;->values:[I

    invoke-direct {p1, p2, v1, v2, v0}, Lcom/cootek/smartinput5/settings/SizeModel$Session;-><init>(ILcom/cootek/smartinput5/settings/SizeModel$Store;[II)V

    goto :goto_0

    .line 204
    :cond_0
    new-instance p1, Lcom/cootek/smartinput5/settings/SizeModel$Session;

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->store:Lcom/cootek/smartinput5/settings/SizeRuntimeStore;

    invoke-direct {p1, p2, v0}, Lcom/cootek/smartinput5/settings/SizeModel$Session;-><init>(ILcom/cootek/smartinput5/settings/SizeModel$Store;)V

    :goto_0
    iput-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->session:Lcom/cootek/smartinput5/settings/SizeModel$Session;

    .line 205
    return-void
.end method

.method static synthetic access$000(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;)Z
    .locals 0

    .line 178
    iget-boolean p0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->syncing:Z

    return p0
.end method

.method static synthetic access$002(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;Z)Z
    .locals 0

    .line 178
    iput-boolean p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->syncing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;)Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->steps:Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;I)I
    .locals 0

    .line 178
    iput p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->transientRaw:I

    return p1
.end method

.method static synthetic access$1100(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;)V
    .locals 0

    .line 178
    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->render()V

    return-void
.end method

.method static synthetic access$200(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;II)V
    .locals 0

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->choose(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;)Lcom/cootek/smartinput5/settings/SizePreview;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->preview:Lcom/cootek/smartinput5/settings/SizePreview;

    return-object p0
.end method

.method static synthetic access$400(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;)I
    .locals 0

    .line 178
    iget p0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->transientValue:I

    return p0
.end method

.method static synthetic access$402(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;I)I
    .locals 0

    .line 178
    iput p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->transientValue:I

    return p1
.end method

.method static synthetic access$500(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;)I
    .locals 0

    .line 178
    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->currentValue()I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;)I
    .locals 0

    .line 178
    iget p0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    return p0
.end method

.method static synthetic access$700(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;)Lcom/cootek/smartinput5/settings/SizeRuntimeStore;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->store:Lcom/cootek/smartinput5/settings/SizeRuntimeStore;

    return-object p0
.end method

.method static synthetic access$800(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;I)I
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->heightRaw(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;I)I
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->legacyValue(I)I

    move-result p0

    return p0
.end method

.method private activity()Landroid/app/Activity;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->owner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method private choose(II)V
    .locals 2

    .line 310
    const/4 v0, -0x1

    iput v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->transientValue:I

    .line 311
    nop

    .line 313
    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->defaultValue:I

    if-ne p1, v1, :cond_3

    .line 314
    iget p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    invoke-static {p1}, Lcom/cootek/smartinput5/settings/SizeModel;->isHeight(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->session:Lcom/cootek/smartinput5/settings/SizeModel$Session;

    iget p2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->defaultValue:I

    invoke-direct {p0, p2}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->heightRaw(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/cootek/smartinput5/settings/SizeModel$Session;->choose(I)Z

    move-result p1

    goto :goto_0

    .line 315
    :cond_0
    iget p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    invoke-static {p1}, Lcom/cootek/smartinput5/settings/FreshDefaults137;->pixels(I)I

    move-result p1

    if-lez p1, :cond_1

    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->activity()Landroid/app/Activity;

    move-result-object p1

    iget p2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->defaultValue:I

    invoke-static {p1, p2, v1}, Lcom/cootek/smartinput5/sizes/SizePixels130;->set(Landroid/content/Context;II)Z

    move-result p1

    goto :goto_0

    .line 316
    :cond_1
    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->session:Lcom/cootek/smartinput5/settings/SizeModel$Session;

    iget p2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    invoke-static {p2}, Lcom/cootek/smartinput5/settings/SizeModel;->defaultRaw(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/cootek/smartinput5/settings/SizeModel$Session;->choose(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->activity()Landroid/app/Activity;

    move-result-object p2

    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    invoke-static {p2, v1}, Lcom/cootek/smartinput5/sizes/SizePixels130;->clear(Landroid/content/Context;I)Z

    move-result p2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    .line 319
    :catch_0
    move-exception p2

    goto :goto_1

    .line 317
    :cond_3
    :try_start_2
    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    invoke-static {v1}, Lcom/cootek/smartinput5/settings/SizeModel;->isHeight(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->session:Lcom/cootek/smartinput5/settings/SizeModel$Session;

    invoke-virtual {p1, p2}, Lcom/cootek/smartinput5/settings/SizeModel$Session;->choose(I)Z

    move-result p1

    goto :goto_0

    .line 318
    :cond_4
    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->activity()Landroid/app/Activity;

    move-result-object p2

    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    invoke-static {p2, v1, p1}, Lcom/cootek/smartinput5/sizes/SizePixels130;->set(Landroid/content/Context;II)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 319
    :goto_0
    goto :goto_2

    :catch_1
    move-exception p1

    const/4 p1, 0x0

    :goto_1
    iget-object p2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->session:Lcom/cootek/smartinput5/settings/SizeModel$Session;

    invoke-virtual {p2}, Lcom/cootek/smartinput5/settings/SizeModel$Session;->reload()V

    .line 320
    :goto_2
    :try_start_3
    iget p2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    invoke-static {p2}, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->refresh(I)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    .line 321
    :goto_3
    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->render()V

    .line 322
    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->activity()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u043e\u0434\u0442\u0432\u0435\u0440\u0434\u0438\u0442\u044c \u0441\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u0438\u0435 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 323
    :cond_5
    return-void
.end method

.method private currentValue()I
    .locals 3

    .line 400
    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->activity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/sizes/SizePixels130;->read(Landroid/content/Context;I)I

    move-result v0

    .line 401
    if-lez v0, :cond_0

    return v0

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->session:Lcom/cootek/smartinput5/settings/SizeModel$Session;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/settings/SizeModel$Session;->raw()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->legacyValue(I)I

    move-result v0

    .line 403
    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 404
    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->activity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cootek/smartinput5/sizes/SizePixels130;->panelWithoutAbsolute(Landroid/content/Context;I)I

    move-result v0

    .line 403
    :goto_1
    return v0
.end method

.method private dp(F)I
    .locals 1

    .line 207
    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->activity()Landroid/app/Activity;

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

.method private heightRaw(I)I
    .locals 4

    .line 331
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->heightValues:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->heightValues:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 333
    if-nez v0, :cond_1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->session:Lcom/cootek/smartinput5/settings/SizeModel$Session;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/settings/SizeModel$Session;->raw()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1

    .line 334
    :cond_1
    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 335
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v2, p1, v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, p1

    if-gt v2, v3, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    :goto_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private label(Ljava/lang/String;FI)Landroid/widget/TextView;
    .locals 2

    .line 209
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->activity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 210
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    return-object v0
.end method

.method private legacyValue(I)I
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->preview:Lcom/cootek/smartinput5/settings/SizePreview;

    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    invoke-static {v1}, Lcom/cootek/smartinput5/settings/SizeModel;->isHeight(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    :goto_0
    iget v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    invoke-static {v2, p1}, Lcom/cootek/smartinput5/settings/SizeModel;->themeDefault(II)Z

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/cootek/smartinput5/settings/SizePreview;->resolvedCaption(IIZ)Ljava/lang/String;

    move-result-object p1

    .line 326
    const-string v0, "([0-9]+) px"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 327
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 328
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private nice(II)I
    .locals 3

    .line 338
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int v0, v0, p2

    .line 339
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->steps:Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;

    iget v1, v1, Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;->first:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, p2

    mul-int v1, v1, p2

    .line 340
    iget-object v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->steps:Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;

    iget v2, v2, Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;->last:I

    div-int/2addr v2, p2

    mul-int v2, v2, p2

    .line 341
    if-gt v1, v2, :cond_0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->steps:Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;

    invoke-virtual {p2, p1}, Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;->nearest(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method private prepareDomain()V
    .locals 14

    .line 344
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->preview:Lcom/cootek/smartinput5/settings/SizePreview;

    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    invoke-static {v1}, Lcom/cootek/smartinput5/settings/SizeModel;->isHeight(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    :goto_0
    iget-object v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->session:Lcom/cootek/smartinput5/settings/SizeModel$Session;

    invoke-virtual {v2}, Lcom/cootek/smartinput5/settings/SizeModel$Session;->raw()I

    move-result v2

    iget v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    iget-object v4, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->session:Lcom/cootek/smartinput5/settings/SizeModel$Session;

    invoke-virtual {v4}, Lcom/cootek/smartinput5/settings/SizeModel$Session;->raw()I

    move-result v4

    invoke-static {v3, v4}, Lcom/cootek/smartinput5/settings/SizeModel;->themeDefault(II)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/cootek/smartinput5/settings/SizePreview;->setValue(IIZ)V

    .line 345
    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SizeModel;->defaultRaw(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->legacyValue(I)I

    move-result v0

    iput v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->defaultValue:I

    .line 346
    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/FreshDefaults137;->pixels(I)I

    move-result v0

    .line 347
    if-lez v0, :cond_1

    iput v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->defaultValue:I

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->session:Lcom/cootek/smartinput5/settings/SizeModel$Session;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/settings/SizeModel$Session;->values()[I

    move-result-object v0

    .line 349
    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->defaultValue:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 350
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    aget v6, v0, v5

    invoke-direct {p0, v6}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->legacyValue(I)I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 351
    :cond_2
    iget v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    invoke-static {v3}, Lcom/cootek/smartinput5/settings/SizeModel;->isHeight(I)Z

    move-result v3

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x5

    if-eqz v3, :cond_8

    .line 352
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->store:Lcom/cootek/smartinput5/settings/SizeRuntimeStore;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->height()Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;

    move-result-object v1

    .line 353
    array-length v3, v0

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v3, :cond_5

    aget v10, v0, v9

    .line 354
    invoke-direct {p0, v10}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->legacyValue(I)I

    move-result v11

    .line 355
    iget-object v12, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->heightValues:Ljava/util/TreeMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 356
    if-lez v11, :cond_4

    if-eqz v12, :cond_3

    invoke-virtual {v1, v10}, Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;->totalForRaw(I)I

    move-result v13

    sub-int/2addr v13, v11

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v1, v12}, Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;->totalForRaw(I)I

    move-result v12

    sub-int/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-ge v13, v12, :cond_4

    .line 357
    :cond_3
    iget-object v12, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->heightValues:Ljava/util/TreeMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v12, v11, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 359
    :cond_5
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->heightValues:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x5

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->heightValues:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 360
    :goto_3
    iget-object v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->heightValues:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->defaultValue:I

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_4

    :cond_7
    iget-object v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->heightValues:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 361
    :goto_4
    iget v9, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->defaultValue:I

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->defaultValue:I

    .line 362
    new-instance v9, Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v10, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->defaultValue:I

    invoke-direct {v9, v1, v3, v8, v10}, Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;-><init>(IIII)V

    iput-object v9, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->steps:Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;

    .line 363
    goto/16 :goto_c

    .line 364
    :cond_8
    iget v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    if-eq v3, v6, :cond_b

    iget v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    if-eq v3, v2, :cond_b

    iget v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    if-ne v3, v7, :cond_9

    goto :goto_5

    :cond_9
    iget v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    if-ne v3, v8, :cond_a

    const/4 v3, 0x1

    goto :goto_6

    :cond_a
    const/4 v3, 0x2

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v3, 0x5

    .line 365
    :goto_6
    iget v9, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    if-ne v9, v8, :cond_c

    const/4 v9, 0x1

    goto :goto_8

    :cond_c
    iget v9, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    if-eqz v9, :cond_e

    iget v9, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    if-ne v9, v5, :cond_d

    goto :goto_7

    :cond_d
    const/high16 v9, 0x41400000    # 12.0f

    invoke-direct {p0, v9}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->dp(F)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_8

    :cond_e
    :goto_7
    const/16 v9, 0x8

    .line 366
    :goto_8
    iget v10, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    if-ne v10, v8, :cond_f

    mul-int/lit8 v1, v1, 0x3

    const/high16 v10, 0x42000000    # 32.0f

    invoke-direct {p0, v10}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->dp(F)I

    move-result v10

    :goto_9
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_b

    :cond_f
    iget v10, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    if-eq v10, v6, :cond_11

    iget v10, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    if-eq v10, v2, :cond_11

    iget v10, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    if-ne v10, v7, :cond_10

    goto :goto_a

    :cond_10
    mul-int/lit8 v1, v1, 0x2

    goto :goto_b

    :cond_11
    :goto_a
    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->activity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/2addr v10, v6

    mul-int/lit8 v11, v1, 0x2

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_9

    .line 367
    :goto_b
    new-instance v10, Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;

    iget v11, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->defaultValue:I

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget v11, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->defaultValue:I

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v11, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->defaultValue:I

    invoke-direct {v10, v9, v1, v3, v11}, Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;-><init>(IIII)V

    iput-object v10, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->steps:Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;

    .line 369
    :goto_c
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 370
    iget v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    invoke-static {v3}, Lcom/cootek/smartinput5/settings/SizeModel;->isHeight(I)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x7

    array-length v9, v0

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_d

    :cond_12
    array-length v3, v0

    .line 371
    :goto_d
    const/4 v9, 0x0

    :goto_e
    if-ge v9, v3, :cond_19

    .line 372
    iget v10, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    invoke-static {v10}, Lcom/cootek/smartinput5/settings/SizeModel;->isHeight(I)Z

    move-result v10

    if-eqz v10, :cond_13

    if-le v3, v2, :cond_13

    array-length v10, v0

    sub-int/2addr v10, v2

    mul-int v10, v10, v9

    int-to-float v10, v10

    add-int/lit8 v11, v3, -0x1

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    goto :goto_f

    :cond_13
    move v10, v9

    .line 373
    :goto_f
    iget-object v11, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->steps:Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;

    aget v12, v0, v10

    invoke-direct {p0, v12}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->legacyValue(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;->nearest(I)I

    move-result v11

    .line 374
    iget v12, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    invoke-static {v12}, Lcom/cootek/smartinput5/settings/SizeModel;->isHeight(I)Z

    move-result v12

    if-eqz v12, :cond_14

    const/16 v12, 0x32

    invoke-direct {p0, v11, v12}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->nice(II)I

    move-result v11

    goto :goto_10

    .line 375
    :cond_14
    iget v12, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    if-eq v12, v6, :cond_15

    iget v12, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    if-eq v12, v2, :cond_15

    iget v12, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    if-ne v12, v7, :cond_16

    :cond_15
    const/16 v12, 0xa

    invoke-direct {p0, v11, v12}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->nice(II)I

    move-result v11

    .line 376
    :cond_16
    :goto_10
    if-lez v11, :cond_18

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v13, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    invoke-static {v13}, Lcom/cootek/smartinput5/settings/SizeModel;->isHeight(I)Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-direct {p0, v11}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->heightRaw(I)I

    move-result v10

    goto :goto_11

    :cond_17
    aget v10, v0, v10

    :goto_11
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v12, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :cond_18
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 378
    :cond_19
    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->defaultValue:I

    if-lez v0, :cond_1a

    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->defaultValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    invoke-static {v3}, Lcom/cootek/smartinput5/settings/SizeModel;->defaultRaw(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_1a
    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    if-ne v0, v5, :cond_1c

    .line 380
    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V

    .line 381
    const/4 v0, -0x4

    :goto_12
    if-gt v0, v5, :cond_1b

    .line 382
    iget-object v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->steps:Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;

    iget v6, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->defaultValue:I

    mul-int/lit8 v7, v0, 0x8

    add-int/2addr v6, v7

    invoke-virtual {v3, v6}, Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;->nearest(I)I

    move-result v3

    .line 383
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 385
    :cond_1b
    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->defaultValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    invoke-static {v3}, Lcom/cootek/smartinput5/settings/SizeModel;->defaultRaw(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :cond_1c
    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    if-eqz v0, :cond_1d

    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    if-ne v0, v8, :cond_20

    .line 388
    :cond_1d
    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V

    .line 389
    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    const/16 v3, 0x9

    if-nez v0, :cond_1e

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    goto :goto_13

    .line 390
    :cond_1e
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    .line 391
    :goto_13
    array-length v3, v0

    const/4 v5, 0x0

    :goto_14
    if-ge v5, v3, :cond_1f

    aget v6, v0, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 392
    :cond_1f
    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->defaultValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    invoke-static {v3}, Lcom/cootek/smartinput5/settings/SizeModel;->defaultRaw(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    :cond_20
    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->quickValues:[I

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->quickRaw:[I

    .line 395
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 396
    iget-object v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->quickValues:[I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v4

    iget-object v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->quickRaw:[I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v3, v4

    add-int/2addr v4, v2

    .line 397
    goto :goto_15

    .line 398
    :cond_21
    return-void

    :array_0
    .array-data 4
        0x2c
        0x32
        0x38
        0x3e
        0x44
        0x4a
        0x50
        0x56
        0x5c
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x8
        0xc
        0x14
        0x1c
    .end array-data
.end method

.method private render()V
    .locals 11

    .line 408
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->drag:Lcom/cootek/smartinput5/settings/SizeDrag134;

    if-nez v0, :cond_0

    return-void

    .line 409
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->syncing:Z

    .line 410
    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->transientValue:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->transientRaw:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->session:Lcom/cootek/smartinput5/settings/SizeModel$Session;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/settings/SizeModel$Session;->raw()I

    move-result v1

    :goto_0
    iget v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->transientValue:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->transientValue:I

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->currentValue()I

    move-result v2

    .line 411
    :goto_1
    iget v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->transientValue:I

    const/4 v4, 0x0

    if-gez v3, :cond_3

    iget v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->defaultValue:I

    if-ne v2, v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 412
    :goto_2
    iget v5, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->transientValue:I

    const/4 v6, 0x6

    if-ltz v5, :cond_5

    iget-object v5, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->preview:Lcom/cootek/smartinput5/settings/SizePreview;

    iget v7, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    invoke-static {v7}, Lcom/cootek/smartinput5/settings/SizeModel;->isHeight(I)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    iget v6, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    :goto_3
    invoke-virtual {v5, v6, v2, v1}, Lcom/cootek/smartinput5/settings/SizePreview;->setPreviewPixels(III)V

    goto :goto_5

    .line 413
    :cond_5
    iget-object v5, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->preview:Lcom/cootek/smartinput5/settings/SizePreview;

    iget v7, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    invoke-static {v7}, Lcom/cootek/smartinput5/settings/SizeModel;->isHeight(I)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    iget v6, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    :goto_4
    iget v7, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    invoke-static {v7, v1}, Lcom/cootek/smartinput5/settings/SizeModel;->themeDefault(II)Z

    move-result v7

    invoke-virtual {v5, v6, v1, v7}, Lcom/cootek/smartinput5/settings/SizePreview;->setValue(IIZ)V

    .line 414
    :goto_5
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->preview:Lcom/cootek/smartinput5/settings/SizePreview;

    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->activity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/cootek/smartinput5/sizes/CandidateDividers;->isEnabled(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/cootek/smartinput5/settings/SizePreview;->setDividers(Z)V

    .line 415
    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    const/4 v5, 0x5

    if-nez v1, :cond_7

    const-string v1, "\u0411\u0430\u0437\u043e\u0432\u044b\u0439 \u0448\u0440\u0438\u0444\u0442: "

    goto :goto_6

    :cond_7
    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    const/4 v6, 0x4

    if-ne v1, v6, :cond_8

    const-string v1, "\u0428\u0440\u0438\u0444\u0442: "

    goto :goto_6

    :cond_8
    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    if-ne v1, v5, :cond_9

    const-string v1, "\u041e\u0442\u0441\u0442\u0443\u043f: "

    goto :goto_6

    :cond_9
    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    const/4 v6, 0x3

    if-ne v1, v6, :cond_a

    const-string v1, "\u0412\u044b\u0441\u043e\u0442\u0430 \u043f\u0430\u043d\u0435\u043b\u0438: "

    goto :goto_6

    :cond_a
    const-string v1, "\u0412\u044b\u0441\u043e\u0442\u0430: "

    .line 416
    :goto_6
    iget-object v6, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->current:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    if-eqz v3, :cond_b

    const-string v3, "\u041f\u043e \u0443\u043c\u043e\u043b\u0447\u0430\u043d\u0438\u044e \u00b7 "

    goto :goto_7

    :cond_b
    move-object v3, v8

    :goto_7
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->unit()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->fontSlider:Landroid/widget/SeekBar;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->fontSlider:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->steps:Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;

    invoke-virtual {v3, v2}, Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;->index(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 418
    :cond_c
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->steps:Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;

    iget v1, v1, Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;->step:I

    .line 419
    iget-object v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->status:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->transientValue:I

    if-ltz v7, :cond_d

    const-string v5, "\u041e\u0442\u043f\u0443\u0441\u0442\u0438\u0442\u0435, \u0447\u0442\u043e\u0431\u044b \u0441\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c"

    goto :goto_8

    :cond_d
    iget v7, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    if-ne v7, v5, :cond_e

    const-string v5, "\u041f\u043e\u0442\u044f\u043d\u0438\u0442\u0435 \u0437\u0430 \u043a\u0440\u0430\u0439 \u043c\u0435\u0436\u0434\u0443 \u0441\u043b\u043e\u0432\u0430\u043c\u0438"

    goto :goto_8

    :cond_e
    const-string v5, "\u041f\u043e\u0442\u044f\u043d\u0438\u0442\u0435 \u0437\u0430 \u0432\u0435\u0440\u0445\u043d\u0438\u0439 \u043a\u0440\u0430\u0439 \u0440\u0430\u043c\u043a\u0438"

    :goto_8
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u00b7 \u0448\u0430\u0433 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->unit()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->usesSlider()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->status:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u041f\u043e\u043b\u0437\u0443\u043d\u043e\u043a \u00b7 \u0448\u0430\u0433 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->unit()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    :cond_f
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->preview:Lcom/cootek/smartinput5/settings/SizePreview;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/settings/SizePreview;->hasNativeGeometry()Z

    move-result v1

    if-nez v1, :cond_10

    .line 422
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->preview:Lcom/cootek/smartinput5/settings/SizePreview;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/settings/SizePreview;->geometryNote()Ljava/lang/String;

    move-result-object v1

    .line 423
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->status:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    :cond_10
    const/4 v1, 0x0

    :goto_9
    iget-object v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->choices:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;

    invoke-virtual {v3}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1a

    .line 426
    iget-object v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->choices:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;

    invoke-virtual {v3, v1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;

    .line 427
    iget-object v5, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->quickValues:[I

    aget v5, v5, v1

    iget v6, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->defaultValue:I

    if-ne v5, v6, :cond_11

    const/4 v6, 0x1

    goto :goto_a

    :cond_11
    const/4 v6, 0x0

    .line 428
    :goto_a
    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->activity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v7, v9, :cond_12

    const/4 v7, 0x1

    goto :goto_b

    :cond_12
    const/4 v7, 0x0

    .line 429
    :goto_b
    if-eqz v7, :cond_13

    const/high16 v10, 0x41400000    # 12.0f

    goto :goto_c

    :cond_13
    const/high16 v10, 0x41600000    # 14.0f

    :goto_c
    invoke-virtual {v3, v10}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->setTextSize(F)V

    .line 430
    if-eqz v7, :cond_14

    const/4 v9, 0x1

    :cond_14
    invoke-virtual {v3, v9}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->setMaxLines(I)V

    .line 431
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->unit()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v6, :cond_16

    if-eqz v7, :cond_15

    const-string v7, " \u21ba"

    goto :goto_d

    :cond_15
    const-string v7, "\n\u041f\u043e \u0443\u043c\u043e\u043b\u0447\u0430\u043d\u0438\u044e"

    goto :goto_d

    :cond_16
    move-object v7, v8

    :goto_d
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->setText(Ljava/lang/CharSequence;)V

    .line 432
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->unit()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v6, :cond_17

    const-string v6, ". \u041f\u043e \u0443\u043c\u043e\u043b\u0447\u0430\u043d\u0438\u044e, \u0441\u0431\u0440\u043e\u0441"

    goto :goto_e

    :cond_17
    move-object v6, v8

    :goto_e
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 433
    if-ne v5, v2, :cond_18

    const/4 v5, 0x1

    goto :goto_f

    :cond_18
    const/4 v5, 0x0

    :goto_f
    invoke-virtual {v3, v5}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->setSelected(Z)V

    .line 434
    iget v5, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    invoke-static {v5}, Lcom/cootek/smartinput5/settings/SizeModel;->isHeight(I)Z

    move-result v5

    if-eqz v5, :cond_19

    iget-object v5, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->store:Lcom/cootek/smartinput5/settings/SizeRuntimeStore;

    invoke-virtual {v5}, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->height()Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;

    move-result-object v5

    iget-boolean v5, v5, Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;->available:Z

    invoke-virtual {v3, v5}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->setEnabled(Z)V

    .line 425
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    .line 436
    :cond_1a
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->separators:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->separators:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->activity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/cootek/smartinput5/sizes/CandidateDividers;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 437
    :cond_1b
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->choices:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->requestLayout()V

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->drag:Lcom/cootek/smartinput5/settings/SizeDrag134;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/settings/SizeDrag134;->invalidate()V

    iput-boolean v4, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->syncing:Z

    .line 438
    return-void
.end method

.method private unit()Ljava/lang/String;
    .locals 1

    .line 406
    const-string v0, " px"

    return-object v0
.end method

.method private usesSlider()Z
    .locals 2

    .line 307
    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public cancelDrag()V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->drag:Lcom/cootek/smartinput5/settings/SizeDrag134;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->drag:Lcom/cootek/smartinput5/settings/SizeDrag134;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/settings/SizeDrag134;->cancelGesture()V

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->transientValue:I

    return-void
.end method

.method public create()V
    .locals 15

    .line 214
    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->activity()Landroid/app/Activity;

    move-result-object v7

    .line 215
    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SizeModel;->title(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 216
    new-instance v0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

    invoke-direct {v0, v7}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

    .line 217
    new-instance v0, Lcom/cootek/smartinput5/settings/SizePreview;

    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    invoke-static {v7, v1}, Lcom/cootek/smartinput5/settings/LandscapeHeight152;->context(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cootek/smartinput5/settings/SizePreview;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->preview:Lcom/cootek/smartinput5/settings/SizePreview;

    .line 218
    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->prepareDomain()V

    .line 219
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 220
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 221
    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {p0, v2}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->dp(F)I

    move-result v3

    invoke-direct {p0, v2}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->dp(F)I

    move-result v2

    const/high16 v4, 0x41000000    # 8.0f

    invoke-direct {p0, v4}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 222
    iget-object v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

    invoke-virtual {v2, v7}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->newBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 224
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 225
    new-instance v3, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;

    iget-object v5, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

    invoke-direct {v3, v7, v5}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;-><init>(Landroid/content/Context;Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;)V

    .line 226
    const-string v5, "\u2039"

    invoke-virtual {v3, v5}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-virtual {v3, v5}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->setTextSize(F)V

    const-string v5, "\u041d\u0430\u0437\u0430\u0434"

    invoke-virtual {v3, v5}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 227
    new-instance v5, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$1;

    invoke-direct {v5, p0, v7}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$1;-><init>(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;Landroid/app/Activity;)V

    invoke-virtual {v3, v5}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42400000    # 48.0f

    invoke-direct {p0, v8}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->dp(F)I

    move-result v9

    invoke-direct {p0, v8}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->dp(F)I

    move-result v8

    invoke-direct {v5, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    iget v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    invoke-static {v3}, Lcom/cootek/smartinput5/settings/SizeModel;->title(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

    iget v5, v5, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->text:I

    const/high16 v8, 0x41900000    # 18.0f

    invoke-direct {p0, v3, v8, v5}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->label(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v3

    .line 230
    invoke-direct {p0, v4}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->dp(F)I

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-direct {p0, v5}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->dp(F)I

    move-result v8

    invoke-direct {p0, v5}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->dp(F)I

    move-result v9

    invoke-virtual {v3, v4, v8, v6, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 231
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, -0x2

    invoke-direct {v4, v6, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    iget-object v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

    iget v2, v2, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->text:I

    const-string v3, ""

    const/high16 v8, 0x41700000    # 15.0f

    invoke-direct {p0, v3, v8, v2}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->label(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->current:Landroid/widget/TextView;

    .line 234
    iget-object v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->current:Landroid/widget/TextView;

    const/high16 v8, 0x40400000    # 3.0f

    invoke-direct {p0, v8}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->dp(F)I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    invoke-direct {p0, v11}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->dp(F)I

    move-result v12

    invoke-virtual {v2, v6, v10, v6, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->current:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 235
    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->usesSlider()Z

    move-result v2

    const-string v10, " px"

    if-eqz v2, :cond_0

    .line 236
    new-instance v2, Landroid/widget/SeekBar;

    invoke-direct {v2, v7}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->fontSlider:Landroid/widget/SeekBar;

    .line 237
    iget-object v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->fontSlider:Landroid/widget/SeekBar;

    iget-object v12, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->steps:Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;

    invoke-virtual {v12}, Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;->count()I

    move-result v12

    sub-int/2addr v12, v1

    invoke-virtual {v2, v12}, Landroid/widget/SeekBar;->setMax(I)V

    .line 238
    iget-object v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->fontSlider:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setKeyProgressIncrement(I)V

    .line 239
    iget-object v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->fontSlider:Landroid/widget/SeekBar;

    new-instance v12, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;

    iget-object v13, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

    invoke-direct {v12, v7, v13, v6}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;-><init>(Landroid/content/Context;Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;I)V

    invoke-virtual {v2, v12}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 240
    iget-object v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->fontSlider:Landroid/widget/SeekBar;

    new-instance v12, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;

    iget-object v13, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

    invoke-direct {v12, v7, v13, v1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;-><init>(Landroid/content/Context;Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;I)V

    invoke-virtual {v2, v12}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->fontSlider:Landroid/widget/SeekBar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    invoke-static {v12}, Lcom/cootek/smartinput5/settings/SizeModel;->title(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, ". \u0428\u0430\u0433 "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v12, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->steps:Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;

    iget v12, v12, Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;->step:I

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->fontSlider:Landroid/widget/SeekBar;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x42300000    # 44.0f

    invoke-direct {p0, v12}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->dp(F)I

    move-result v12

    invoke-direct {v2, v4, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->fontSlider:Landroid/widget/SeekBar;

    new-instance v2, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$2;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$2;-><init>(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 251
    :cond_0
    new-instance v1, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;

    invoke-direct {v1, v7}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->choices:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;

    .line 252
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->quickValues:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 253
    iget-object v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->quickValues:[I

    aget v2, v2, v1

    .line 254
    iget-object v12, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->quickRaw:[I

    aget v12, v12, v1

    .line 255
    new-instance v13, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;

    iget-object v14, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

    invoke-direct {v13, v7, v14}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;-><init>(Landroid/content/Context;Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;)V

    .line 256
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->setTag(Ljava/lang/Object;)V

    .line 257
    new-instance v14, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$3;

    invoke-direct {v14, p0, v2, v12}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$3;-><init>(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;II)V

    invoke-virtual {v13, v14}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->choices:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;

    invoke-virtual {v2, v13}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;->addView(Landroid/view/View;)V

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->choices:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PresetGrid;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 262
    :cond_2
    new-instance v1, Landroid/widget/CheckBox;

    invoke-direct {v1, v7}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->separators:Landroid/widget/CheckBox;

    .line 263
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->separators:Landroid/widget/CheckBox;

    const-string v2, "\u0412\u0435\u0440\u0442\u0438\u043a\u0430\u043b\u044c\u043d\u044b\u0435 \u0440\u0430\u0437\u0434\u0435\u043b\u0438\u0442\u0435\u043b\u0438"

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->separators:Landroid/widget/CheckBox;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setTextSize(F)V

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->separators:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

    iget v2, v2, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->text:I

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 265
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->separators:Landroid/widget/CheckBox;

    new-instance v2, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;

    iget-object v12, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

    const/4 v13, 0x3

    invoke-direct {v2, v7, v12, v13}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ControlDrawable;-><init>(Landroid/content/Context;Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;I)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 266
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->separators:Landroid/widget/CheckBox;

    invoke-direct {p0, v11}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->dp(F)I

    move-result v2

    invoke-direct {p0, v5}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->dp(F)I

    move-result v11

    invoke-direct {p0, v5}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->dp(F)I

    move-result v5

    invoke-virtual {v1, v2, v11, v6, v5}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 267
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->separators:Landroid/widget/CheckBox;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->separators:Landroid/widget/CheckBox;

    new-instance v2, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$4;

    invoke-direct {v2, p0, v7}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$4;-><init>(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 281
    :cond_3
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

    iget v1, v1, Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;->muted:I

    const/high16 v2, 0x41300000    # 11.0f

    invoke-direct {p0, v3, v2, v1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->label(Ljava/lang/String;FI)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->status:Landroid/widget/TextView;

    .line 282
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->status:Landroid/widget/TextView;

    invoke-direct {p0, v8}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->dp(F)I

    move-result v2

    invoke-virtual {v1, v6, v2, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->status:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 283
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v7}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 284
    invoke-virtual {v2, v6}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    invoke-virtual {v2, v6}, Landroid/widget/ScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 285
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    new-instance v0, Lcom/cootek/smartinput5/settings/SizeDrag134;

    new-instance v1, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$5;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$5;-><init>(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;)V

    invoke-direct {v0, v7, v1}, Lcom/cootek/smartinput5/settings/SizeDrag134;-><init>(Landroid/content/Context;Lcom/cootek/smartinput5/settings/SizeDrag134$Listener;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->drag:Lcom/cootek/smartinput5/settings/SizeDrag134;

    .line 300
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->drag:Lcom/cootek/smartinput5/settings/SizeDrag134;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    invoke-static {v3}, Lcom/cootek/smartinput5/settings/SizeModel;->title(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". \u0418\u0437\u043c\u0435\u043d\u0435\u043d\u0438\u0435 \u0437\u0430 \u043a\u0440\u0430\u0439, \u0448\u0430\u0433 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->steps:Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;

    iget v3, v3, Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;->step:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/settings/SizeDrag134;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 301
    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->usesSlider()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->drag:Lcom/cootek/smartinput5/settings/SizeDrag134;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/settings/SizeDrag134;->setVisibility(I)V

    .line 302
    :cond_4
    new-instance v8, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;

    iget-object v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->preview:Lcom/cootek/smartinput5/settings/SizePreview;

    iget-object v4, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->drag:Lcom/cootek/smartinput5/settings/SizeDrag134;

    iget v5, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->mode:I

    iget-object v6, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->theme:Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;

    move-object v0, v8

    move-object v1, v7

    invoke-direct/range {v0 .. v6}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;-><init>(Landroid/content/Context;Landroid/widget/ScrollView;Lcom/cootek/smartinput5/settings/SizePreview;Lcom/cootek/smartinput5/settings/SizeDrag134;ILcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;)V

    iput-object v8, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->layout:Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;

    .line 303
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->layout:Lcom/cootek/smartinput5/settings/SizeSettingsPage$NativeLayout;

    invoke-virtual {v7, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 304
    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->render()V

    .line 305
    return-void
.end method

.method public reload()V
    .locals 1

    .line 306
    const/4 v0, -0x1

    iput v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->transientValue:I

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->session:Lcom/cootek/smartinput5/settings/SizeModel$Session;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/settings/SizeModel$Session;->reload()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->render()V

    return-void
.end method
