.class Lcom/cootek/smartinput5/backup/BackupActivity$11$1;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cootek/smartinput5/backup/BackupActivity$11;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity$11;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 202
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$11$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$11$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$11;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$11;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$600(Lcom/cootek/smartinput5/backup/BackupActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1600()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 204
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$11$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$11;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$11;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    new-instance v1, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$11$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$11;

    iget-object v2, v2, Lcom/cootek/smartinput5/backup/BackupActivity$11;->val$words:Ljava/util/List;

    iget-object v3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$11$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$11;

    iget-object v3, v3, Lcom/cootek/smartinput5/backup/BackupActivity$11;->val$language:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1700(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/TextDictionary155$Session;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$11$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$11;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$11;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1800(Lcom/cootek/smartinput5/backup/BackupActivity;)V

    .line 206
    :goto_1
    return-void
.end method
