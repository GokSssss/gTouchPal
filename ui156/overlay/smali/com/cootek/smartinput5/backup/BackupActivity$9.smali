.class Lcom/cootek/smartinput5/backup/BackupActivity$9;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity;->create(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$entries:Ljava/util/Map;

.field final synthetic val$kind:I

.field final synthetic val$metadata:Ljava/util/Map;

.field final synthetic val$share:Z

.field final synthetic val$usr:[B


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity;ILandroid/content/Context;Ljava/util/Map;Ljava/util/Map;[BZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
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
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 180
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iput p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9;->val$kind:I

    iput-object p3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9;->val$entries:Ljava/util/Map;

    iput-object p5, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9;->val$metadata:Ljava/util/Map;

    iput-object p6, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9;->val$usr:[B

    iput-boolean p7, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9;->val$share:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 180
    nop

    .line 182
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TouchPal_backup_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd_HHmmss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    iget v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9;->val$kind:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9;->val$entries:Ljava/util/Map;

    iget-object v4, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9;->val$metadata:Ljava/util/Map;

    invoke-static {v2, v3, v4, v1}, Lcom/cootek/smartinput5/backup/CopyFiles155;->zip(Ljava/io/File;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9;->val$kind:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9;->val$usr:[B

    invoke-static {v1, v2}, Lcom/cootek/smartinput5/backup/CopyFiles155;->western(Ljava/io/File;[B)Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9;->val$usr:[B

    invoke-static {v1, v2}, Lcom/cootek/smartinput5/backup/CopyFiles155;->text(Ljava/io/File;[B)Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 184
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$600(Lcom/cootek/smartinput5/backup/BackupActivity;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    .line 194
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->discard()V

    .line 184
    :cond_2
    return-void

    .line 185
    :cond_3
    :try_start_2
    iget-boolean v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9;->val$share:Z

    if-eqz v2, :cond_4

    .line 186
    invoke-static {}, Lcom/cootek/smartinput5/backup/BackupLocations155;->safeFolder()Ljava/io/File;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cootek/smartinput5/backup/CopyFiles155;->saveStandard(Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iget-object v2, v1, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->mime:Ljava/lang/String;

    .line 187
    iget-object v3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v3}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$900(Lcom/cootek/smartinput5/backup/BackupActivity;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/cootek/smartinput5/backup/BackupActivity$9$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/cootek/smartinput5/backup/BackupActivity$9$1;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity$9;Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    move-object v0, v1

    goto :goto_1

    .line 189
    :cond_4
    nop

    .line 190
    :try_start_3
    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$900(Lcom/cootek/smartinput5/backup/BackupActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/cootek/smartinput5/backup/BackupActivity$9$2;

    invoke-direct {v3, p0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity$9$2;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity$9;Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 194
    :goto_1
    if-eqz v0, :cond_6

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_6

    .line 193
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_2

    .line 192
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_4

    .line 194
    :catchall_1
    move-exception v1

    goto :goto_6

    .line 193
    :catch_2
    move-exception v1

    :goto_2
    :try_start_4
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iget v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9;->val$kind:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    const-string v2, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0432\u044b\u0433\u0440\u0443\u0437\u0438\u0442\u044c \u0441\u043b\u043e\u0432\u0430 \u0432 TXT. \u041f\u0440\u043e\u0432\u0435\u0440\u044c \u0434\u043e\u0441\u0442\u0443\u043f\u043d\u043e\u0441\u0442\u044c \u0441\u043b\u043e\u0432\u0430\u0440\u044f \u0438 \u0441\u0432\u043e\u0431\u043e\u0434\u043d\u043e\u0435 \u043c\u0435\u0441\u0442\u043e."

    goto :goto_3

    :cond_5
    const-string v2, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0441\u043e\u0437\u0434\u0430\u0442\u044c \u043a\u043e\u043f\u0438\u044e. \u041f\u0440\u043e\u0432\u0435\u0440\u044c \u0434\u043e\u0441\u0442\u0443\u043f \u043a \u0432\u044b\u0431\u0440\u0430\u043d\u043d\u043e\u0439 \u043f\u0430\u043f\u043a\u0435 \u0438 \u0441\u0432\u043e\u0431\u043e\u0434\u043d\u043e\u0435 \u043c\u0435\u0441\u0442\u043e."

    :goto_3
    invoke-static {v1, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1200(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V

    .line 194
    if-eqz v0, :cond_6

    goto :goto_5

    .line 192
    :catch_3
    move-exception v1

    :goto_4
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const-string v2, "\u041d\u0435 \u0445\u0432\u0430\u0442\u0430\u0435\u0442 \u043f\u0430\u043c\u044f\u0442\u0438 \u0434\u043b\u044f \u044d\u0442\u043e\u0439 \u043a\u043e\u043f\u0438\u0438. \u0417\u0430\u043a\u0440\u043e\u0439 \u0434\u0440\u0443\u0433\u0438\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0438."

    invoke-static {v1, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1200(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 194
    if-eqz v0, :cond_6

    :goto_5
    invoke-virtual {v0}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->discard()V

    .line 195
    :cond_6
    return-void

    .line 194
    :goto_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->discard()V

    :cond_7
    throw v1
.end method
