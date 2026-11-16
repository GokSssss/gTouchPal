.class Lcom/cootek/smartinput5/backup/BackupActivity$18;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity;->readBackup(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/content/Context;Landroid/net/Uri;)V
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

    .line 315
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$18;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$18;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$18;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$18;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$18;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    if-eqz v0, :cond_0

    .line 321
    :try_start_1
    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupArchive;->read(Ljava/io/InputStream;)Lcom/cootek/smartinput5/backup/BackupArchive$Archive;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 323
    invoke-static {v1}, Lcom/cootek/smartinput5/backup/BackupController;->validate(Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V

    .line 324
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$18;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$800(Lcom/cootek/smartinput5/backup/BackupActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/cootek/smartinput5/backup/BackupActivity$18$1;

    invoke-direct {v2, p0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity$18$1;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity$18;Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 322
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1

    .line 319
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Backup is unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$18;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const-string v1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u0440\u043e\u0447\u0438\u0442\u0430\u0442\u044c \u043a\u043e\u043f\u0438\u044e. \u041f\u0440\u043e\u0432\u0435\u0440\u044c \u0432\u044b\u0431\u0440\u0430\u043d\u043d\u044b\u0439 ZIP-\u0444\u0430\u0439\u043b."

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1100(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 330
    :catch_1
    move-exception v0

    .line 331
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$18;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const-string v1, "\u041d\u0435 \u0445\u0432\u0430\u0442\u0430\u0435\u0442 \u043f\u0430\u043c\u044f\u0442\u0438 \u0434\u043b\u044f \u044d\u0442\u043e\u0439 \u043a\u043e\u043f\u0438\u0438. \u0417\u0430\u043a\u0440\u043e\u0439 \u0434\u0440\u0443\u0433\u0438\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0438."

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1100(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V

    .line 334
    :goto_0
    nop

    .line 335
    :goto_1
    return-void
.end method
