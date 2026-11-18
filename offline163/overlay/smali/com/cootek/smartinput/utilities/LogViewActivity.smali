.class public Lcom/cootek/smartinput/utilities/LogViewActivity;
.super Landroid/app/Activity;


# static fields
.field private static final s:I = 0x0

.field private static final t:I = 0x1

.field private static final u:I = 0x2

.field private static final v:I = 0x3

.field private static final w:I = 0x4

.field static x:Ljava/lang/StringBuilder;


# instance fields
.field private h:Landroid/content/Context;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ScrollView;

.field private n:Landroid/view/ViewGroup;

.field private o:Landroid/widget/CheckBox;

.field private p:Landroid/os/Handler;

.field private q:Lcom/cootek/smartinput/utilities/TJavascriptHandler;

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/cootek/smartinput/utilities/LogViewActivity;->x:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cootek/smartinput/utilities/LogViewActivity;->p:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/cootek/smartinput/utilities/LogViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput/utilities/LogViewActivity;->l()V

    return-void
.end method

.method static synthetic b(Lcom/cootek/smartinput/utilities/LogViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput/utilities/LogViewActivity;->f()V

    return-void
.end method

.method static synthetic c(Lcom/cootek/smartinput/utilities/LogViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput/utilities/LogViewActivity;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    sget-object v0, Lcom/cootek/smartinput/utilities/LogViewActivity;->x:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/cootek/smartinput/utilities/LogViewActivity;->l:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/cootek/smartinput5/devconsole/a;->b()V

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/tool/perf/d;->y()V

    return-void
.end method

.method private e()Ljava/io/File;
    .locals 6

    invoke-static {}, Lcom/cootek/smartinput5/devconsole/a;->f()V

    new-instance v0, Ljava/io/File;

    const-string v1, ".temp"

    invoke-static {v1}, Lcom/cootek/smartinput5/func/x;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "dev_log.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cootek/smartinput/utilities/LogViewActivity;->h:Landroid/content/Context;

    const v3, 0x7f0f074b

    invoke-static {v2, v3}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cootek/smartinput5/devconsole/DevSettings;->b()Lcom/cootek/smartinput5/devconsole/DevSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/smartinput5/devconsole/DevSettings;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cootek/smartinput5/monitor/b;->l()Lcom/cootek/smartinput5/monitor/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/smartinput5/monitor/b;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cootek/smartinput5/monitor/b;->l()Lcom/cootek/smartinput5/monitor/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/smartinput5/monitor/b;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/cootek/tool/perf/d;->e(ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cootek/smartinput5/devconsole/a;->g()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/cootek/smartinput/utilities/c;->v(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cootek/smartinput/utilities/c;->A(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private f()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "V5"

    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{TP-Log}{perf}-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "lu.gan@cootek.cn"

    aput-object v3, v1, v0

    const-string v0, "android.intent.extra.EMAIL"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "application/octet-stream"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/cootek/smartinput/utilities/LogViewActivity;->e()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "Export content using"

    invoke-static {v2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "msg"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "url"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "msg"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "url"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "title"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "imageUrl"

    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "imagePath"

    invoke-virtual {v0, p1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput/utilities/LogViewActivity;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/cootek/smartinput/utilities/LogViewActivity$a;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput/utilities/LogViewActivity$a;-><init>(Lcom/cootek/smartinput/utilities/LogViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cootek/smartinput/utilities/LogViewActivity;->j:Landroid/widget/TextView;

    new-instance v1, Lcom/cootek/smartinput/utilities/LogViewActivity$b;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput/utilities/LogViewActivity$b;-><init>(Lcom/cootek/smartinput/utilities/LogViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cootek/smartinput/utilities/LogViewActivity;->k:Landroid/widget/TextView;

    new-instance v1, Lcom/cootek/smartinput/utilities/LogViewActivity$c;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput/utilities/LogViewActivity$c;-><init>(Lcom/cootek/smartinput/utilities/LogViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private j()V
    .locals 3

    const v0, 0x7f0a0285

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/cootek/smartinput/utilities/LogViewActivity;->n:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/cootek/smartinput/utilities/LogViewActivity;->n:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    const-string v2, "CandidateBar"

    invoke-direct {p0, v1, v2}, Lcom/cootek/smartinput/utilities/LogViewActivity;->k(ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/cootek/smartinput/utilities/LogViewActivity;->n:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    const-string v2, "Explicit"

    invoke-direct {p0, v1, v2}, Lcom/cootek/smartinput/utilities/LogViewActivity;->k(ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private k(ILjava/lang/String;)Landroid/view/View;
    .locals 1

    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method private l()V
    .locals 5

    invoke-static {}, Lcom/cootek/smartinput5/devconsole/a;->n()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/cootek/smartinput/utilities/LogViewActivity;->x:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v1, Lcom/cootek/smartinput/utilities/LogViewActivity;->x:Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/tool/perf/d;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/cootek/smartinput/utilities/LogViewActivity;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cootek/smartinput5/devconsole/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x2710

    if-le v3, v4, :cond_0

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cootek/smartinput/utilities/LogViewActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private m()V
    .locals 5

    iget-object v0, p0, Lcom/cootek/smartinput/utilities/LogViewActivity;->n:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x124

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(I)I

    move-result v0

    iput v0, p0, Lcom/cootek/smartinput/utilities/LogViewActivity;->r:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/cootek/smartinput/utilities/LogViewActivity;->n:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/cootek/smartinput/utilities/LogViewActivity;->n:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-static {}, Lcom/cootek/smartinput/utilities/y;->c()Lcom/cootek/smartinput/utilities/y;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/cootek/smartinput/utilities/y;->d(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/cootek/smartinput/utilities/LogViewActivity;->o:Landroid/widget/CheckBox;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private n()V
    .locals 4

    iget-object v0, p0, Lcom/cootek/smartinput/utilities/LogViewActivity;->n:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/cootek/smartinput/utilities/LogViewActivity;->n:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/cootek/smartinput/utilities/LogViewActivity;->n:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-static {}, Lcom/cootek/smartinput/utilities/y;->c()Lcom/cootek/smartinput/utilities/y;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/cootek/smartinput/utilities/y;->f(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Settings;->writeBack()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/cootek/smartinput/utilities/LogViewActivity;->h:Landroid/content/Context;

    new-instance p1, Lcom/cootek/smartinput/utilities/TJavascriptHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/cootek/smartinput/utilities/TJavascriptHandler;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object p1, p0, Lcom/cootek/smartinput/utilities/LogViewActivity;->q:Lcom/cootek/smartinput/utilities/TJavascriptHandler;

    const p1, 0x7f0c00c8

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f0a023f

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cootek/smartinput/utilities/LogViewActivity;->i:Landroid/widget/TextView;

    const p1, 0x7f0a023e

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cootek/smartinput/utilities/LogViewActivity;->j:Landroid/widget/TextView;

    const p1, 0x7f0a023c

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cootek/smartinput/utilities/LogViewActivity;->k:Landroid/widget/TextView;

    const p1, 0x7f0a023d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cootek/smartinput/utilities/LogViewActivity;->l:Landroid/widget/TextView;

    const p1, 0x7f0a0240

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lcom/cootek/smartinput/utilities/LogViewActivity;->m:Landroid/widget/ScrollView;

    const p1, 0x7f0a00a8

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/cootek/smartinput/utilities/LogViewActivity;->o:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/cootek/smartinput/utilities/LogViewActivity;->i()V

    invoke-direct {p0}, Lcom/cootek/smartinput/utilities/LogViewActivity;->l()V

    const p1, 0x7f0a023b

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/cootek/smartinput/utilities/LogViewActivity;->j()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "Bottom"

    invoke-interface {p1, v0, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v2, 0x2

    const-string v3, "Top"

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    return v1
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cootek/smartinput/utilities/LogViewActivity;->q:Lcom/cootek/smartinput/utilities/TJavascriptHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "share all test:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "all"

    const-string v3, "http://www.chubao.cn"

    invoke-direct {p0, v2, v1, v3}, Lcom/cootek/smartinput/utilities/LogViewActivity;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->shareMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/cootek/smartinput/utilities/LogViewActivity;->m:Landroid/widget/ScrollView;

    const/16 v1, 0x21

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/cootek/smartinput/utilities/LogViewActivity;->m:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    :goto_0
    return v0
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-direct {p0}, Lcom/cootek/smartinput/utilities/LogViewActivity;->n()V

    iget v0, p0, Lcom/cootek/smartinput/utilities/LogViewActivity;->r:I

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    const/16 v2, 0x124

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/cootek/smartinput/utilities/LogViewActivity;->d()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/cootek/smartinput/utilities/LogViewActivity;->l()V

    invoke-direct {p0}, Lcom/cootek/smartinput/utilities/LogViewActivity;->m()V

    return-void
.end method
