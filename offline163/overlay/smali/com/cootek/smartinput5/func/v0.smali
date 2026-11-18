.class public Lcom/cootek/smartinput5/func/v0;
.super Ljava/lang/Object;


# static fields
.field private static A:Ljava/lang/Integer; = null

.field private static B:Ljava/lang/String; = null

.field private static final g:Ljava/lang/String; = "UserDictManager"

.field private static final h:[Ljava/lang/String;

.field private static final i:[I

.field private static final j:Ljava/lang/String; = "IMAGE_OPERATION_CHECK_IMAGE"

.field private static final k:Ljava/lang/String; = "IMAGE_OPERATION_BACKUP"

.field public static final l:I = 0x0

.field public static final m:I = 0x1

.field public static final n:I = 0x2

.field public static final o:I = 0x3

.field public static final p:I = 0x0

.field public static final q:I = 0x1

.field public static final r:I = 0x2

.field public static final s:Ljava/lang/String; = "DiagnoseReport"

.field public static final t:Ljava/lang/String; = "CheckImageReport"

.field public static final u:Ljava/lang/String; = ".usr"

.field private static final v:Ljava/lang/String; = " "

.field private static final w:Ljava/lang/String; = ":"

.field private static x:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final y:J = 0x9a7ec800L

.field public static final z:J = 0x100000L


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Z

.field private d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "western.usr"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "chinese_simplified.usr"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "chinese_traditional.usr"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "japanese.usr"

    aput-object v3, v1, v2

    sput-object v1, Lcom/cootek/smartinput5/func/v0;->h:[Ljava/lang/String;

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cootek/smartinput5/func/v0;->i:[I

    const/4 v0, 0x0

    sput-object v0, Lcom/cootek/smartinput5/func/v0;->A:Ljava/lang/Integer;

    sput-object v0, Lcom/cootek/smartinput5/func/v0;->B:Ljava/lang/String;

    invoke-static {}, Lcom/cootek/smartinput5/func/v0;->s()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cootek/smartinput5/func/v0;->e:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cootek/smartinput5/func/v0;->f:J

    iput-object p1, p0, Lcom/cootek/smartinput5/func/v0;->a:Landroid/content/Context;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cootek/smartinput5/func/v0;->b:Z

    iput-boolean p1, p0, Lcom/cootek/smartinput5/func/v0;->c:Z

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/cootek/smartinput5/func/v0;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static A()V
    .locals 4

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->Q()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/cootek/smartinput5/func/v0;->B:Ljava/lang/String;

    const-string v3, "DICT_REPORT_CAUSE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class v2, Lcom/cootek/smartinput5/func/UserDictReportActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {v0}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object v0

    const-string v1, "DICT_RECOVERY/USER_DICT_REPORT"

    const-string v2, "SHOW"

    const-string v3, "/STATISTIC/"

    invoke-virtual {v0, v1, v2, v3}, Lcom/cootek/smartinput5/l/g;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x141

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    :cond_0
    return-void
.end method

.method public static B(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/cootek/smartinput5/func/v0;->B:Ljava/lang/String;

    return-void
.end method

.method public static C(Ljava/lang/Integer;)V
    .locals 0

    sput-object p0, Lcom/cootek/smartinput5/func/v0;->A:Ljava/lang/Integer;

    return-void
.end method

.method public static D()Z
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x141

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string p1, "DICT_ERROR_ON_DAILY_CHECK"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "/STATISTIC/"

    const-string v1, "DICT_RECOVERY/"

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    const/16 v2, 0x14c

    invoke-virtual {p1, v2}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZZ)V

    iget-object p1, p0, Lcom/cootek/smartinput5/func/v0;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FIRST_OCCURRED"

    invoke-virtual {p1, v2, v3, v0}, Lcom/cootek/smartinput5/l/g;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/func/v0;->d()V

    :cond_1
    iget-object p1, p0, Lcom/cootek/smartinput5/func/v0;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "OCCURRED"

    invoke-virtual {p1, p2, v1, v0}, Lcom/cootek/smartinput5/l/g;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d()V
    .locals 12

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/cootek/smartinput5/func/v0;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "errorcode_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->Q()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/cootek/smartinput5/func/I;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filesize_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v4

    const/16 v5, 0x1c4

    invoke-virtual {v4, v5}, Lcom/cootek/smartinput5/engine/Settings;->getLongSetting(I)J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    const-wide v10, 0x9a7ec800L

    cmp-long v4, v6, v10

    if-lez v4, :cond_0

    iget-wide v6, p0, Lcom/cootek/smartinput5/func/v0;->f:J

    sub-long/2addr v8, v6

    cmp-long v4, v8, v10

    if-lez v4, :cond_0

    invoke-direct {p0, v2}, Lcom/cootek/smartinput5/func/v0;->l(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v3, v4, v6}, Lcom/cootek/smartinput5/engine/Settings;->setLongSetting(IJZ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cootek/smartinput5/func/v0;->f:J

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/cootek/smartinput5/func/v0;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object v1

    const-string v2, "DICT_RECOVERY/USER_DICT_CHECK"

    const-string v3, "/STATISTIC/"

    invoke-virtual {v1, v2, v0, v3}, Lcom/cootek/smartinput5/l/g;->n(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/v0;->m()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/v0;->i()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/cootek/smartinput/utilities/c;->d(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method private h(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/v0;->i()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/v0;->m()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0, v1}, Lcom/cootek/smartinput/utilities/c;->d(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :goto_0
    return-void
.end method

.method private i()Ljava/io/File;
    .locals 1

    const-string v0, ".autobak"

    invoke-static {v0}, Lcom/cootek/smartinput5/func/x;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private l(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p1, v2

    new-array p1, p1, [B

    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_5

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-object v0, v1

    goto :goto_1

    :catch_1
    move-object v0, v1

    goto :goto_3

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_0
    throw p1

    :catch_3
    nop

    :goto_1
    if-eqz v0, :cond_1

    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_4

    :catch_4
    nop

    :goto_3
    if-eqz v0, :cond_1

    goto :goto_2

    :catch_5
    :cond_1
    :goto_4
    const-string p1, ""

    :catch_6
    :goto_5
    return-object p1
.end method

.method private m()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/v0;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cootek/smartinput5/func/I;->g(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static n(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/cootek/smartinput5/func/v0;->x:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cootek/smartinput5/func/v0;->x:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private r(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/io/File;

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/v0;->m()Ljava/io/File;

    move-result-object v1

    invoke-direct {p2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/cootek/smartinput/utilities/c;->d(Ljava/io/File;Ljava/io/File;)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    const/16 p2, 0x147

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    :cond_0
    return-void
.end method

.method public static s()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cootek/smartinput5/func/v0;->x:Ljava/util/Map;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/cootek/smartinput5/func/v0;->i:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/cootek/smartinput5/func/v0;->x:Ljava/util/Map;

    sget-object v3, Lcom/cootek/smartinput5/func/v0;->h:[Ljava/lang/String;

    aget-object v3, v3, v0

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private u(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private v(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private w(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/v0;->u(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/v0;->v(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private x(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/cootek/smartinput5/func/v0;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cootek/smartinput5/func/v0;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    :try_start_0
    aget-object v4, v3, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    iget-object v5, p0, Lcom/cootek/smartinput5/func/v0;->e:Ljava/util/Map;

    aget-object v3, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private y()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/func/v0;->c:Z

    iget-object v0, p0, Lcom/cootek/smartinput5/func/v0;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/cootek/smartinput5/func/v0;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/v0;->f()Z

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/v0;->k()Ljava/util/ArrayList;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cootek/smartinput5/func/v0;->c:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    const-string p1, "IMAGE_OPERATION_BACKUP"

    const-string v1, "DICT_ERROR_ON_DAILY_CHECK"

    invoke-direct {p0, p1, v1}, Lcom/cootek/smartinput5/func/v0;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    const/16 v1, 0x140

    invoke-virtual {p1, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cootek/smartinput5/func/v0;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/cootek/smartinput5/func/v0;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/func/v0;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/cootek/smartinput5/func/v0;->y()V

    return-void
.end method

.method public b()V
    .locals 4

    sget-object v0, Lcom/cootek/smartinput5/func/v0;->A:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/func/v0;->w(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/cootek/smartinput5/func/v0;->A:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_6

    :cond_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/v0;->f()Z

    iget-boolean v0, p0, Lcom/cootek/smartinput5/func/v0;->c:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/cootek/smartinput5/func/v0;->A:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/func/v0;->u(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "IMAGE_OPERATION_CHECK_IMAGE"

    const-string v2, "DICT_ERROR_ON_DICT_INIT_FAILED"

    invoke-direct {p0, v0, v2}, Lcom/cootek/smartinput5/func/v0;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/cootek/smartinput5/func/v0;->A:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/cootek/smartinput5/func/v0;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/cootek/smartinput5/func/v0;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/cootek/smartinput5/func/I;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/cootek/smartinput5/func/v0;->A:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/func/v0;->w(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v2, 0x140

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/cootek/smartinput5/func/v0;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/cootek/smartinput5/func/v0;->z(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/cootek/smartinput5/func/v0;->A:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/func/v0;->u(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/cootek/smartinput5/func/v0;->a:Landroid/content/Context;

    const-string v2, "language.ckr"

    invoke-static {v0, v2}, Lcom/cootek/smartinput5/func/I;->d(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    iput-boolean v1, p0, Lcom/cootek/smartinput5/func/v0;->b:Z

    goto :goto_2

    :cond_6
    iget-boolean v0, p0, Lcom/cootek/smartinput5/func/v0;->b:Z

    if-eqz v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v1, v0

    div-int/lit16 v1, v1, 0x3e8

    div-int/lit8 v1, v1, 0x3c

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v2, 0xe4

    invoke-virtual {v0, v2, v1}, Lcom/cootek/smartinput5/engine/Settings;->setIntSetting(II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/func/v0;->b:Z

    :cond_7
    :goto_2
    const/4 v0, 0x0

    sput-object v0, Lcom/cootek/smartinput5/func/v0;->A:Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/v0;->y()V

    return-void
.end method

.method public f()Z
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/func/v0;->a:Landroid/content/Context;

    const-string v1, "check_image.ckr"

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/func/I;->c(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v2}, Lcom/cootek/smartinput5/func/v0;->g(Ljava/lang/String;II)Z

    move-result v0

    iget-object v2, p0, Lcom/cootek/smartinput5/func/v0;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/cootek/smartinput5/func/I;->d(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    const/16 v2, 0x15b

    invoke-virtual {v1, v2, v0}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Settings;->writeBack()V

    return v0
.end method

.method public g(Ljava/lang/String;II)Z
    .locals 1

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/v0;->y()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->m0()Lcom/cootek/smartinput5/engine/Okinawa;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/cootek/smartinput5/engine/Okinawa;->fireCheckImageOperation(Ljava/lang/String;II)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->m0()Lcom/cootek/smartinput5/engine/Okinawa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Okinawa;->doProcessEvent()V

    iget-boolean p1, p0, Lcom/cootek/smartinput5/func/v0;->c:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public j()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/cootek/smartinput5/func/v0;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public k()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/cootek/smartinput5/func/v0;->h:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v6

    const/16 v7, 0x140

    invoke-virtual {v6, v7}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    iget-object v6, p0, Lcom/cootek/smartinput5/func/v0;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x1

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public o()I
    .locals 4

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->m0()Lcom/cootek/smartinput5/engine/Okinawa;

    move-result-object v0

    const-string v1, "english"

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Okinawa;->getUserWordCount(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v0, v1

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/func/z;->m0()Lcom/cootek/smartinput5/engine/Okinawa;

    move-result-object v2

    const-string v3, "chinese_pinyin"

    invoke-virtual {v2, v3}, Lcom/cootek/smartinput5/engine/Okinawa;->getUserWordCount(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/func/z;->m0()Lcom/cootek/smartinput5/engine/Okinawa;

    move-result-object v2

    const-string v3, "chinese_cangjie"

    invoke-virtual {v2, v3}, Lcom/cootek/smartinput5/engine/Okinawa;->getUserWordCount(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    if-lez v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public p(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/func/v0;->c:Z

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/v0;->x(Ljava/lang/String;)V

    return-void
.end method

.method public q()V
    .locals 5

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/v0;->i()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/cootek/smartinput5/func/v0;->h:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-direct {p0, v4, v0}, Lcom/cootek/smartinput5/func/v0;->r(Ljava/lang/String;Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cootek/smartinput5/func/v0;->c:Z

    return v0
.end method

.method public z(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/v0;->h(Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x140

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-static {p1}, Lcom/cootek/smartinput5/func/v0;->n(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/cootek/smartinput5/func/v0;->g(Ljava/lang/String;II)Z

    iget-boolean v0, p0, Lcom/cootek/smartinput5/func/v0;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/v0;->m()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/func/v0;->y()V

    return-void
.end method
