.class Lcom/cootek/smartinput5/backup/BackupActivity$27$1$1;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity$27$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/cootek/smartinput5/backup/BackupActivity$27$1;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity$27$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 414
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$27$1$1;->this$2:Lcom/cootek/smartinput5/backup/BackupActivity$27$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$27$1$1;->this$2:Lcom/cootek/smartinput5/backup/BackupActivity$27$1;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$27$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$27;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$27;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupController;->restart(Landroid/content/Context;)V

    return-void
.end method
