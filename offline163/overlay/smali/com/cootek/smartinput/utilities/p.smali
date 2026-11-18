.class public Lcom/cootek/smartinput/utilities/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput/utilities/p$a;
    }
.end annotation


# static fields
.field static a:Lcom/cootek/smartinput/utilities/p$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/cootek/smartinput/utilities/p;->a:Lcom/cootek/smartinput/utilities/p$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cootek/smartinput/utilities/p$a;->b()V

    invoke-static {}, Lcom/cootek/smartinput/utilities/p;->d()V

    :cond_0
    return-void
.end method

.method public static b()V
    .locals 1

    sget-object v0, Lcom/cootek/smartinput/utilities/p;->a:Lcom/cootek/smartinput/utilities/p$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cootek/smartinput/utilities/p$a;->a()V

    invoke-static {}, Lcom/cootek/smartinput/utilities/p;->d()V

    :cond_0
    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.cootek.smartinputv5.INTERNAL_ACTION.SHORTCUT_CREATE_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.cootek.smartinputv5.INTERNAL_ACTION.SHORTCUT_CREATE_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/cootek/smartinput/utilities/ShortcutCreateResultReceiver;

    invoke-direct {v1}, Lcom/cootek/smartinput/utilities/ShortcutCreateResultReceiver;-><init>()V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static d()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/cootek/smartinput/utilities/p;->a:Lcom/cootek/smartinput/utilities/p$a;

    return-void
.end method

.method public static e(Lcom/cootek/smartinput/utilities/p$a;)V
    .locals 1

    sget-object v0, Lcom/cootek/smartinput/utilities/p;->a:Lcom/cootek/smartinput/utilities/p$a;

    if-ne v0, p0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput/utilities/p;->d()V

    :cond_0
    return-void
.end method

.method public static f(Landroid/content/Context;Landroid/content/Intent;Lcom/cootek/smartinput/utilities/p$a;)V
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-class v1, Lcom/cootek/smartinput/utilities/ShortcutPermissionDialogActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const/4 p1, 0x0

    const-string v1, "SHOW_DIALOG"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    sput-object p2, Lcom/cootek/smartinput/utilities/p;->a:Lcom/cootek/smartinput/utilities/p$a;

    invoke-static {p0}, Lcom/cootek/smartinput/utilities/p;->c(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static g(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;Lcom/cootek/smartinput/utilities/p$a;)V
    .locals 2
    .annotation build Landroid/support/annotation/K;
        api = 0x1a
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-class v1, Lcom/cootek/smartinput/utilities/ShortcutPermissionDialogActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "SHORTCUT_INFO"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x0

    const-string v1, "SHOW_DIALOG"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    sput-object p2, Lcom/cootek/smartinput/utilities/p;->a:Lcom/cootek/smartinput/utilities/p$a;

    invoke-static {p0}, Lcom/cootek/smartinput/utilities/p;->c(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
