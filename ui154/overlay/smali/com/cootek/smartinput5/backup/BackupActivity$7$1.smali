.class Lcom/cootek/smartinput5/backup/BackupActivity$7$1;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cootek/smartinput5/backup/BackupActivity$7;

.field final synthetic val$prepared:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity$7;Ljava/io/File;)V
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

    .line 258
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$7$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$7;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$7$1;->val$prepared:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$7$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$7;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$7;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$500(Lcom/cootek/smartinput5/backup/BackupActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$7$1;->val$prepared:Ljava/io/File;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupExport;->discard(Ljava/io/File;)V

    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$7$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$7;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$7;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$7$1;->val$prepared:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$802(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/io/File;)Ljava/io/File;

    .line 262
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$7$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$7;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$7;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$900(Lcom/cootek/smartinput5/backup/BackupActivity;)V

    .line 263
    return-void
.end method
