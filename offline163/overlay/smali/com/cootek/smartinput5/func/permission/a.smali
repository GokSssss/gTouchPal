.class public Lcom/cootek/smartinput5/func/permission/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput5/func/permission/a$c;,
        Lcom/cootek/smartinput5/func/permission/a$b;
    }
.end annotation


# static fields
.field public static final i:I = 0x1

.field public static final j:Ljava/lang/String; = "permissionList"

.field public static final k:Ljava/lang/String; = "directly"

.field private static l:Lcom/cootek/smartinput5/func/permission/a;


# instance fields
.field private a:Lcom/cootek/smartinput5/func/permission/a$b;

.field private b:Lcom/cootek/smartinput5/func/permission/a$b;

.field public final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/cootek/smartinput5/func/permission/a$c;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/StringBuilder;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cootek/smartinput5/func/permission/a;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cootek/smartinput5/func/permission/a;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cootek/smartinput5/func/permission/a;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/cootek/smartinput5/func/permission/a;->f:Landroid/content/Context;

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/cootek/smartinput5/func/permission/a;->f:Landroid/content/Context;

    new-instance v0, Lcom/cootek/smartinput5/engine/Config;

    invoke-direct {v0, p1}, Lcom/cootek/smartinput5/engine/Config;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/cootek/smartinput5/engine/Settings;->initialize(Landroid/content/Context;Lcom/cootek/smartinput5/engine/Config;)V

    :cond_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/func/permission/a;->u()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/permission/a;->s()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/permission/a;->v()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/permission/a;->t()V

    return-void
.end method

.method private A(Ljava/util/ArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/func/permission/a;->f:Landroid/content/Context;

    const-class v2, Lcom/cootek/smartinput5/func/permission/RequestPermissionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "permissionList"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p1, "directly"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/cootek/smartinput5/func/permission/a;->f:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private B(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput5/func/permission/a;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->q(Landroid/content/Context;)Lcom/cootek/smartinput5/configuration/ConfigurationManager;

    move-result-object v0

    sget-object v1, Lcom/cootek/smartinput5/configuration/ConfigurationType;->ENABLE_NOTIFICATIONS:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->j(Lcom/cootek/smartinput5/configuration/ConfigurationType;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/func/permission/a;->f:Landroid/content/Context;

    const-class v2, Lcom/cootek/smartinput5/func/permission/RequestPermissionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "permissionList"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/func/permission/a;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/cootek/smartinput5/func/permission/a;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/func/permission/a;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/cootek/smartinput5/func/W;->a(Landroid/content/Context;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f080257

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/cootek/smartinput5/func/permission/a;->c:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cootek/smartinput5/func/permission/a$c;

    invoke-virtual {v2}, Lcom/cootek/smartinput5/func/permission/a$c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/cootek/smartinput5/func/permission/a;->c:Ljava/util/HashMap;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cootek/smartinput5/func/permission/a$c;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/permission/a$c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/permission/a;->f:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/cootek/smartinput5/func/permission/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/func/permission/a;->f:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/cootek/smartinput5/func/permission/a;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/permission/a;->p(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/cootek/smartinput5/func/permission/a;->q(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p2

    const/16 v0, 0x1c0

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v2, p3, v3}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(IILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v2

    const/16 v3, 0x1c0

    const/4 v4, 0x0

    const/16 v5, 0x30

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p3

    invoke-virtual/range {v2 .. v8}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;Z)V

    return v1

    :cond_0
    invoke-static {p1, p3}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v1
.end method

.method public static l(Landroid/content/Context;)Lcom/cootek/smartinput5/func/permission/a;
    .locals 2

    sget-object v0, Lcom/cootek/smartinput5/func/permission/a;->l:Lcom/cootek/smartinput5/func/permission/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/cootek/smartinput5/func/permission/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/cootek/smartinput5/func/permission/a;->l:Lcom/cootek/smartinput5/func/permission/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/cootek/smartinput5/func/permission/a;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/func/permission/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/cootek/smartinput5/func/permission/a;->l:Lcom/cootek/smartinput5/func/permission/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/cootek/smartinput5/func/permission/a;->l:Lcom/cootek/smartinput5/func/permission/a;

    return-object p0
.end method

.method private p(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/permission/a;->f:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private s()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/func/permission/a;->d:Ljava/util/ArrayList;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cootek/smartinput5/func/permission/a;->d:Ljava/util/ArrayList;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cootek/smartinput5/func/permission/a;->d:Ljava/util/ArrayList;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cootek/smartinput5/func/permission/a;->e:Ljava/util/ArrayList;

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cootek/smartinput5/func/permission/a;->e:Ljava/util/ArrayList;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cootek/smartinput5/func/permission/a;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cootek/smartinput5/func/permission/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private t()V
    .locals 1

    new-instance v0, Lcom/cootek/smartinput5/func/permission/a$a;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/func/permission/a$a;-><init>(Lcom/cootek/smartinput5/func/permission/a;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/func/permission/a;->b:Lcom/cootek/smartinput5/func/permission/a$b;

    return-void
.end method

.method private u()V
    .locals 8

    iget-object v0, p0, Lcom/cootek/smartinput5/func/permission/a;->c:Ljava/util/HashMap;

    new-instance v7, Lcom/cootek/smartinput5/func/permission/a$c;

    const v3, 0x7f0f0791

    const v4, 0x7f0f0793

    const v5, 0x7f0f078a

    const v6, 0x7f0f078b

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/cootek/smartinput5/func/permission/a$c;-><init>(Lcom/cootek/smartinput5/func/permission/a;IIII)V

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/cootek/smartinput5/func/permission/a;->c:Ljava/util/HashMap;

    new-instance v7, Lcom/cootek/smartinput5/func/permission/a$c;

    const v3, 0x7f0f0794

    const v4, 0x7f0f0796

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/cootek/smartinput5/func/permission/a$c;-><init>(Lcom/cootek/smartinput5/func/permission/a;IIII)V

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/cootek/smartinput5/func/permission/a;->c:Ljava/util/HashMap;

    new-instance v7, Lcom/cootek/smartinput5/func/permission/a$c;

    const v3, 0x7f0f079b

    const v4, 0x7f0f079d

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/cootek/smartinput5/func/permission/a$c;-><init>(Lcom/cootek/smartinput5/func/permission/a;IIII)V

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/cootek/smartinput5/func/permission/a;->c:Ljava/util/HashMap;

    new-instance v7, Lcom/cootek/smartinput5/func/permission/a$c;

    const v3, 0x7f0f0784

    const/4 v4, -0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/cootek/smartinput5/func/permission/a$c;-><init>(Lcom/cootek/smartinput5/func/permission/a;IIII)V

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/cootek/smartinput5/func/permission/a;->c:Ljava/util/HashMap;

    new-instance v7, Lcom/cootek/smartinput5/func/permission/a$c;

    const v3, 0x7f0f079b

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/cootek/smartinput5/func/permission/a$c;-><init>(Lcom/cootek/smartinput5/func/permission/a;IIII)V

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private v()V
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    const/16 v2, 0x1c0

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/func/permission/a;->k()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v5

    const/16 v6, 0x1c0

    const/4 v7, 0x1

    const/16 v8, 0x30

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/func/permission/a;->k()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, v0, Lcom/cootek/smartinput5/func/permission/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    const/16 v4, 0x31

    iget-object v5, v0, Lcom/cootek/smartinput5/func/permission/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(IILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v4

    const/16 v5, 0x1c0

    const/4 v6, 0x1

    const/16 v7, 0x31

    iget-object v1, v0, Lcom/cootek/smartinput5/func/permission/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;Z)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v11

    const/16 v12, 0x1c0

    const/4 v13, 0x1

    const/16 v14, 0x30

    iget-object v1, v0, Lcom/cootek/smartinput5/func/permission/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v11 .. v17}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;Z)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static w(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    :goto_0
    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/func/permission/a;->e(Ljava/util/ArrayList;)V

    return-void
.end method

.method public e(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/cootek/smartinput5/func/permission/a;->g:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/cootek/smartinput5/func/permission/a;->q(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/cootek/smartinput5/func/permission/a;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/cootek/smartinput5/func/permission/a;->A(Ljava/util/ArrayList;Z)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/cootek/smartinput5/func/permission/a;->a:Lcom/cootek/smartinput5/func/permission/a$b;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/cootek/smartinput5/func/permission/a$b;->onPermissionGranted()V

    iget-object p1, p0, Lcom/cootek/smartinput5/func/permission/a;->a:Lcom/cootek/smartinput5/func/permission/a$b;

    invoke-interface {p1}, Lcom/cootek/smartinput5/func/permission/a$b;->permissionRequestFinish()V

    :cond_3
    :goto_1
    return-void
.end method

.method public f(Ljava/lang/String;Z)Z
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, p2}, Lcom/cootek/smartinput5/func/permission/a;->g(Ljava/util/ArrayList;Z)Z

    move-result p1

    return p1
.end method

.method public g(Ljava/util/ArrayList;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput5/func/permission/a;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/cootek/smartinput5/func/L;->c(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/cootek/smartinput5/func/permission/a;->g:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/cootek/smartinput5/func/permission/a;->q(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/cootek/smartinput5/func/permission/a;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    const/4 p1, 0x0

    if-eqz p2, :cond_3

    invoke-direct {p0, v0, p1}, Lcom/cootek/smartinput5/func/permission/a;->A(Ljava/util/ArrayList;Z)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/func/permission/a;->B(Ljava/util/ArrayList;)V

    :goto_1
    return p1

    :cond_4
    iget-object p1, p0, Lcom/cootek/smartinput5/func/permission/a;->a:Lcom/cootek/smartinput5/func/permission/a$b;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/cootek/smartinput5/func/permission/a$b;->onPermissionGranted()V

    iget-object p1, p0, Lcom/cootek/smartinput5/func/permission/a;->a:Lcom/cootek/smartinput5/func/permission/a$b;

    invoke-interface {p1}, Lcom/cootek/smartinput5/func/permission/a$b;->permissionRequestFinish()V

    :cond_5
    return v1
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/func/permission/a;->b:Lcom/cootek/smartinput5/func/permission/a$b;

    iput-object v0, p0, Lcom/cootek/smartinput5/func/permission/a;->a:Lcom/cootek/smartinput5/func/permission/a$b;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/cootek/smartinput5/func/permission/a;->f(Ljava/lang/String;Z)Z

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/permission/a;->b:Lcom/cootek/smartinput5/func/permission/a$b;

    iput-object v0, p0, Lcom/cootek/smartinput5/func/permission/a;->a:Lcom/cootek/smartinput5/func/permission/a$b;

    return-void
.end method

.method public j(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, p1, v1, v3}, Lcom/cootek/smartinput5/func/permission/a;->c(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/cootek/smartinput5/func/permission/a;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cootek/smartinput5/func/permission/a$c;

    invoke-virtual {v2}, Lcom/cootek/smartinput5/func/permission/a$c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    iget-object p2, p0, Lcom/cootek/smartinput5/func/permission/a;->a:Lcom/cootek/smartinput5/func/permission/a$b;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/cootek/smartinput5/func/permission/a$b;->onPermissionDenied()V

    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p2

    const/16 v0, 0x1c0

    invoke-virtual {p2, v0}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {v1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public k()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/permission/a;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public m()Lcom/cootek/smartinput5/func/permission/a$b;
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->d0()Lcom/cootek/smartinput5/func/N;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Lcom/cootek/smartinput5/func/permission/a$b;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/permission/a;->a:Lcom/cootek/smartinput5/func/permission/a$b;

    return-object v0
.end method

.method public o()Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/permission/a;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method public q(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/permission/a;->f:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/cootek/smartinput5/func/permission/a;->w(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public r(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/func/permission/a;->q(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/func/permission/a;->h:Z

    return-void
.end method

.method public y(Lcom/cootek/smartinput5/func/permission/a$b;)V
    .locals 1

    iget-boolean v0, p0, Lcom/cootek/smartinput5/func/permission/a;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/cootek/smartinput5/func/permission/a;->a:Lcom/cootek/smartinput5/func/permission/a$b;

    return-void
.end method

.method public z(Lcom/cootek/smartinput5/func/permission/a$b;Z)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/func/permission/a;->a:Lcom/cootek/smartinput5/func/permission/a$b;

    iput-boolean p2, p0, Lcom/cootek/smartinput5/func/permission/a;->h:Z

    return-void
.end method
