.class Lcom/cootek/smartinput5/backup/BackupActivity$8$1;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cootek/smartinput5/backup/BackupActivity$8;

.field final synthetic val$mime:Ljava/lang/String;

.field final synthetic val$saved:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity$8;Ljava/io/File;Ljava/lang/String;)V
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

    .line 127
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$8$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$8;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$8$1;->val$saved:Ljava/io/File;

    iput-object p3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$8$1;->val$mime:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$8$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$8;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$8;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$600(Lcom/cootek/smartinput5/backup/BackupActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$8$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$8;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$8;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$8$1;->val$saved:Ljava/io/File;

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$8$1;->val$mime:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$700(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/io/File;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
