.class Lcom/cootek/smartinput5/backup/BackupActivity$16$1$1;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity$16$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/cootek/smartinput5/backup/BackupActivity$16$1;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity$16$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 588
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$16$1$1;->this$2:Lcom/cootek/smartinput5/backup/BackupActivity$16$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 590
    :try_start_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$16$1$1;->this$2:Lcom/cootek/smartinput5/backup/BackupActivity$16$1;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$16$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$16;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$16;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupController;->restart(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    goto :goto_0

    .line 591
    :catch_0
    move-exception v0

    .line 592
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$16$1$1;->this$2:Lcom/cootek/smartinput5/backup/BackupActivity$16$1;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$16$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$16;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$16;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$500(Lcom/cootek/smartinput5/backup/BackupActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$16$1$1;->this$2:Lcom/cootek/smartinput5/backup/BackupActivity$16$1;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$16$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$16;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$16;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1400(Lcom/cootek/smartinput5/backup/BackupActivity;ZLjava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$16$1$1;->this$2:Lcom/cootek/smartinput5/backup/BackupActivity$16$1;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$16$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$16;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$16;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const-string v1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u0435\u0440\u0435\u0437\u0430\u043f\u0443\u0441\u0442\u0438\u0442\u044c TouchPal. \u0417\u0430\u043a\u0440\u043e\u0439 \u0438 \u0441\u043d\u043e\u0432\u0430 \u043e\u0442\u043a\u0440\u043e\u0439 \u043a\u043b\u0430\u0432\u0438\u0430\u0442\u0443\u0440\u0443."

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1900(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V

    .line 597
    :cond_0
    :goto_0
    return-void
.end method
