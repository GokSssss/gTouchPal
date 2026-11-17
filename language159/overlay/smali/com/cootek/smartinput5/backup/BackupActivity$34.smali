.class Lcom/cootek/smartinput5/backup/BackupActivity$34;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity;->postError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V
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

    .line 526
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$34;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$34;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 528
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$34;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1300(Lcom/cootek/smartinput5/backup/BackupActivity;ZLjava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$34;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$800(Lcom/cootek/smartinput5/backup/BackupActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$34;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$34;->val$message:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$3300(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V

    .line 530
    :cond_0
    return-void
.end method
