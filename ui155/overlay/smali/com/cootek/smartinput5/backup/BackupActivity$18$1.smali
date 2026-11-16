.class Lcom/cootek/smartinput5/backup/BackupActivity$18$1;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cootek/smartinput5/backup/BackupActivity$18;

.field final synthetic val$archive:Lcom/cootek/smartinput5/backup/BackupArchive$Archive;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity$18;Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 324
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$18$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$18;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$18$1;->val$archive:Lcom/cootek/smartinput5/backup/BackupArchive$Archive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$18$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$18;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$18;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const/4 v1, 0x0

    const-string v2, "\u041a\u043e\u043f\u0438\u044f \u043f\u0440\u043e\u0432\u0435\u0440\u0435\u043d\u0430."

    invoke-static {v0, v1, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1200(Lcom/cootek/smartinput5/backup/BackupActivity;ZLjava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$18$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$18;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$18;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$600(Lcom/cootek/smartinput5/backup/BackupActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$18$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$18;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$18;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$18$1;->val$archive:Lcom/cootek/smartinput5/backup/BackupArchive$Archive;

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$2100(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V

    .line 328
    :cond_0
    return-void
.end method
