.class Lcom/cootek/smartinput5/backup/BackupActivity$33;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity;->stageWestern([BZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$incoming:[B

.field final synthetic val$previous:[B

.field final synthetic val$retainedInput:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

.field final synthetic val$textRecovery:Z


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;Landroid/content/Context;[B[BZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
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

    .line 499
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$33;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$33;->val$retainedInput:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    iput-object p3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$33;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/cootek/smartinput5/backup/BackupActivity$33;->val$incoming:[B

    iput-object p5, p0, Lcom/cootek/smartinput5/backup/BackupActivity$33;->val$previous:[B

    iput-boolean p6, p0, Lcom/cootek/smartinput5/backup/BackupActivity$33;->val$textRecovery:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$33;->val$retainedInput:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$33;->val$retainedInput:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/SavedCopies157;->remember(Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;)Ljava/io/File;

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$33;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$33;->val$incoming:[B

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$33;->val$previous:[B

    invoke-static {v0, v1, v2}, Lcom/cootek/smartinput5/backup/WesternImport137;->stage(Landroid/content/Context;[B[B)V

    .line 504
    iget-boolean v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$33;->val$textRecovery:Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$33;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/TextRecovery155;->clear(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 505
    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$33;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1300(Lcom/cootek/smartinput5/backup/BackupActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cootek/smartinput5/backup/BackupActivity$33$1;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$33$1;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity$33;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 515
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 514
    :catch_1
    move-exception v0

    :try_start_3
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$33;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const-string v1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u0438\u0442\u044c \u0432\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u0435 \u0441\u043b\u043e\u0432\u0430\u0440\u044f. \u0422\u0435\u043a\u0443\u0449\u0438\u0439 \u0441\u043b\u043e\u0432\u0430\u0440\u044c \u0441\u043e\u0445\u0440\u0430\u043d\u0451\u043d."

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1600(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V

    :goto_1
    goto :goto_2

    .line 513
    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$33;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const-string v1, "\u041d\u0435 \u0445\u0432\u0430\u0442\u0430\u0435\u0442 \u043f\u0430\u043c\u044f\u0442\u0438 \u0434\u043b\u044f \u044d\u0442\u043e\u0439 \u043a\u043e\u043f\u0438\u0438. \u0417\u0430\u043a\u0440\u043e\u0439 \u0434\u0440\u0443\u0433\u0438\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0438."

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1600(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 515
    :goto_2
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$33;->val$retainedInput:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$33;->val$retainedInput:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->discard()V

    .line 516
    :cond_2
    return-void

    .line 515
    :goto_3
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$33;->val$retainedInput:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$33;->val$retainedInput:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->discard()V

    :cond_3
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
