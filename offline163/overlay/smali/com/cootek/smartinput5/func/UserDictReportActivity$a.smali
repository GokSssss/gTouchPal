.class Lcom/cootek/smartinput5/func/UserDictReportActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/func/UserDictReportActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Lcom/cootek/smartinput5/func/UserDictReportActivity;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/func/UserDictReportActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/func/UserDictReportActivity$a;->i:Lcom/cootek/smartinput5/func/UserDictReportActivity;

    iput-object p2, p0, Lcom/cootek/smartinput5/func/UserDictReportActivity$a;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    iget-object p2, p0, Lcom/cootek/smartinput5/func/UserDictReportActivity$a;->h:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "[%s]"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/cootek/smartinput5/func/UserDictReportActivity$a;->i:Lcom/cootek/smartinput5/func/UserDictReportActivity;

    const/4 v1, 0x0

    const-string v2, "crashlog_android@cootek.cn"

    invoke-static {p2, p1, v1, v2}, Lcom/cootek/smartinput5/TouchPalOption;->N(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/cootek/smartinput5/func/UserDictReportActivity$a;->i:Lcom/cootek/smartinput5/func/UserDictReportActivity;

    const-string v1, "SEND"

    invoke-static {p2, v1}, Lcom/cootek/smartinput5/func/UserDictReportActivity;->a(Lcom/cootek/smartinput5/func/UserDictReportActivity;Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/x;->f()Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/cootek/smartinput5/func/UserDictReportActivity$a$a;

    iget-object v1, p0, Lcom/cootek/smartinput5/func/UserDictReportActivity$a;->i:Lcom/cootek/smartinput5/func/UserDictReportActivity;

    invoke-direct {p2, p0, v1, p1}, Lcom/cootek/smartinput5/func/UserDictReportActivity$a$a;-><init>(Lcom/cootek/smartinput5/func/UserDictReportActivity$a;Landroid/content/Context;Landroid/content/Intent;)V

    new-array p1, v0, [Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/cootek/smartinput5/func/m0;->executeInThreadPool([Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/cootek/smartinput5/func/UserDictReportActivity$a;->i:Lcom/cootek/smartinput5/func/UserDictReportActivity;

    invoke-static {p2, p1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/cootek/smartinput5/func/UserDictReportActivity$a;->i:Lcom/cootek/smartinput5/func/UserDictReportActivity;

    const-string p2, "FAILED"

    invoke-static {p1, p2}, Lcom/cootek/smartinput5/func/UserDictReportActivity;->a(Lcom/cootek/smartinput5/func/UserDictReportActivity;Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object p1

    iget-object p2, p0, Lcom/cootek/smartinput5/func/UserDictReportActivity$a;->i:Lcom/cootek/smartinput5/func/UserDictReportActivity;

    const v0, 0x7f0f055f

    invoke-static {p2, v0}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cootek/smartinput5/ui/control/E;->s(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/func/UserDictReportActivity$a;->i:Lcom/cootek/smartinput5/func/UserDictReportActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    iget-object p1, p0, Lcom/cootek/smartinput5/func/UserDictReportActivity$a;->i:Lcom/cootek/smartinput5/func/UserDictReportActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_1
    iget-object p1, p0, Lcom/cootek/smartinput5/func/UserDictReportActivity$a;->i:Lcom/cootek/smartinput5/func/UserDictReportActivity;

    invoke-static {p1}, Lcom/cootek/smartinput5/func/UserDictReportActivity;->b(Lcom/cootek/smartinput5/func/UserDictReportActivity;)V

    return-void
.end method
