.class Lcom/cootek/smartinput5/backup/BackupActivity$16$1;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cootek/smartinput5/backup/BackupActivity$16;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity$16;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 580
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$16$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 582
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$16$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$16;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$16;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$500(Lcom/cootek/smartinput5/backup/BackupActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$16$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$16;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$16;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1600(Lcom/cootek/smartinput5/backup/BackupActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "TouchPal \u043f\u0435\u0440\u0435\u0437\u0430\u043f\u0443\u0441\u043a\u0430\u0435\u0442\u0441\u044f\u2026"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$16$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$16;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$16;->val$context:Landroid/content/Context;

    const-string v1, "TouchPal \u043f\u0435\u0440\u0435\u0437\u0430\u043f\u0443\u0441\u043a\u0430\u0435\u0442\u0441\u044f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 585
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$16$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$16;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$16;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->finish()V

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$16$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$16;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$16;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1000(Lcom/cootek/smartinput5/backup/BackupActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cootek/smartinput5/backup/BackupActivity$16$1$1;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$16$1$1;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity$16$1;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 599
    return-void
.end method
