.class Lcom/cootek/smartinput5/func/component/e$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/func/component/e;->x0(ZZLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/cootek/smartinput5/func/component/e;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/func/component/e;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/func/component/e$c;->h:Lcom/cootek/smartinput5/func/component/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    :try_start_0
    const-string p1, "android.settings.WIRELESS_SETTINGS"

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xa

    if-le p2, v0, :cond_0

    const-string p1, "android.settings.SETTINGS"

    :cond_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/cootek/smartinput5/func/component/e$c;->h:Lcom/cootek/smartinput5/func/component/e;

    invoke-static {p1}, Lcom/cootek/smartinput5/func/component/e;->v(Lcom/cootek/smartinput5/func/component/e;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
