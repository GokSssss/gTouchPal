.class Lcom/cootek/smartinput5/backup/BackupActivity$19;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity;->create(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

.field final synthetic val$kind:I

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 261
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$19;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iput p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$19;->val$kind:I

    iput p3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$19;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$19;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$800(Lcom/cootek/smartinput5/backup/BackupActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$19;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1300(Lcom/cootek/smartinput5/backup/BackupActivity;ZLjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$19;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iget v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$19;->val$kind:I

    iget v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$19;->val$mode:I

    invoke-static {v0, v1, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$2000(Lcom/cootek/smartinput5/backup/BackupActivity;II)V

    return-void
.end method
