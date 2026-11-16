.class Lcom/cootek/smartinput5/backup/BackupActivity$13;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity;->exportTo(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$prepared:Ljava/io/File;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/io/File;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 488
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->val$prepared:Ljava/io/File;

    iput-object p3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 492
    :try_start_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->val$prepared:Ljava/io/File;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupExport;->verify(Ljava/io/File;)V

    .line 493
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->val$uri:Landroid/net/Uri;

    const-string v2, "wt"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 494
    if-eqz v0, :cond_0

    .line 495
    :try_start_1
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->val$prepared:Ljava/io/File;

    invoke-static {v1, v0}, Lcom/cootek/smartinput5/backup/BackupExport;->copy(Ljava/io/File;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 496
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 497
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->val$prepared:Ljava/io/File;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupExport;->discard(Ljava/io/File;)V

    .line 498
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1000(Lcom/cootek/smartinput5/backup/BackupActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cootek/smartinput5/backup/BackupActivity$13$1;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$13$1;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity$13;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 496
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw v1

    .line 494
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Destination is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 510
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 506
    :catch_0
    move-exception v0

    .line 507
    :try_start_3
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->val$prepared:Ljava/io/File;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupExport;->discard(Ljava/io/File;)V

    .line 508
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const-string v1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0441\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c \u043a\u043e\u043f\u0438\u044e. \u041f\u0440\u043e\u0432\u0435\u0440\u044c \u0432\u044b\u0431\u0440\u0430\u043d\u043d\u043e\u0435 \u043c\u0435\u0441\u0442\u043e \u0438 \u043f\u043e\u043f\u0440\u043e\u0431\u0443\u0439 \u0435\u0449\u0451 \u0440\u0430\u0437."

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1100(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 503
    :catch_1
    move-exception v0

    .line 504
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->val$prepared:Ljava/io/File;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupExport;->discard(Ljava/io/File;)V

    .line 505
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const-string v1, "\u041d\u0435 \u0445\u0432\u0430\u0442\u0430\u0435\u0442 \u043f\u0430\u043c\u044f\u0442\u0438 \u0434\u043b\u044f \u044d\u0442\u043e\u0439 \u043a\u043e\u043f\u0438\u0438. \u0417\u0430\u043a\u0440\u043e\u0439 \u0434\u0440\u0443\u0433\u0438\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0438."

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1100(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 510
    :goto_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->val$prepared:Ljava/io/File;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupExport;->discard(Ljava/io/File;)V

    .line 511
    nop

    .line 512
    return-void

    .line 510
    :goto_1
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->val$prepared:Ljava/io/File;

    invoke-static {v1}, Lcom/cootek/smartinput5/backup/BackupExport;->discard(Ljava/io/File;)V

    .line 511
    throw v0
.end method
