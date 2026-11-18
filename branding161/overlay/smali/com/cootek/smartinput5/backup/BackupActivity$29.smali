.class Lcom/cootek/smartinput5/backup/BackupActivity$29;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity;->startTextImport(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

.field final synthetic val$before:[B

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$language:Ljava/lang/String;

.field final synthetic val$retainedInput:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

.field final synthetic val$words:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;Landroid/content/Context;[BLjava/util/List;Ljava/lang/String;)V
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

    .line 455
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$29;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$29;->val$retainedInput:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    iput-object p3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$29;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/cootek/smartinput5/backup/BackupActivity$29;->val$before:[B

    iput-object p5, p0, Lcom/cootek/smartinput5/backup/BackupActivity$29;->val$words:Ljava/util/List;

    iput-object p6, p0, Lcom/cootek/smartinput5/backup/BackupActivity$29;->val$language:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 456
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$29;->val$retainedInput:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$29;->val$retainedInput:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    invoke-static {v1}, Lcom/cootek/smartinput5/backup/SavedCopies157;->remember(Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;)Ljava/io/File;

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$29;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$29;->val$before:[B

    invoke-static {v1, v2}, Lcom/cootek/smartinput5/backup/TextRecovery155;->prepare(Landroid/content/Context;[B)V

    .line 458
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$29;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1300(Lcom/cootek/smartinput5/backup/BackupActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/cootek/smartinput5/backup/BackupActivity$29$1;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$29$1;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity$29;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$29;->val$retainedInput:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$3900()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$29;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const-string v1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u043e\u0434\u0433\u043e\u0442\u043e\u0432\u0438\u0442\u044c \u0434\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u0438\u0435 \u0441\u043b\u043e\u0432. \u0422\u0435\u043a\u0443\u0449\u0438\u0439 \u0441\u043b\u043e\u0432\u0430\u0440\u044c \u043d\u0435 \u0438\u0437\u043c\u0435\u043d\u0451\u043d."

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1600(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$29;->val$retainedInput:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 463
    :catch_1
    move-exception v1

    :try_start_2
    invoke-static {}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$3900()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$29;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const-string v1, "\u041d\u0435 \u0445\u0432\u0430\u0442\u0430\u0435\u0442 \u043f\u0430\u043c\u044f\u0442\u0438 \u0434\u043b\u044f \u044d\u0442\u043e\u0439 \u043a\u043e\u043f\u0438\u0438. \u0417\u0430\u043a\u0440\u043e\u0439 \u0434\u0440\u0443\u0433\u0438\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0438."

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1600(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 464
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$29;->val$retainedInput:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$29;->val$retainedInput:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->discard()V

    :cond_1
    return-void

    :goto_1
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$29;->val$retainedInput:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$29;->val$retainedInput:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->discard()V

    :cond_2
    throw v0
.end method
