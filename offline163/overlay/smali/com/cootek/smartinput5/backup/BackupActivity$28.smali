.class Lcom/cootek/smartinput5/backup/BackupActivity$28;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity;->readIncomingFile(Landroid/net/Uri;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$kind:I

.field final synthetic val$language:Ljava/lang/String;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 424
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$28;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$28;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$28;->val$uri:Landroid/net/Uri;

    iput p4, p0, Lcom/cootek/smartinput5/backup/BackupActivity$28;->val$kind:I

    iput-object p5, p0, Lcom/cootek/smartinput5/backup/BackupActivity$28;->val$language:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 424
    nop

    .line 425
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$28;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$28;->val$uri:Landroid/net/Uri;

    iget v3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$28;->val$kind:I

    invoke-static {v1, v2, v3}, Lcom/cootek/smartinput5/backup/SavedCopies157;->read(Landroid/content/Context;Landroid/net/Uri;I)Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 426
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, v1, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 427
    :try_start_2
    iget v3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$28;->val$kind:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-static {v2}, Lcom/cootek/smartinput5/backup/BackupArchive;->read(Ljava/io/InputStream;)Lcom/cootek/smartinput5/backup/BackupArchive$Archive;

    move-result-object v3

    invoke-static {v3}, Lcom/cootek/smartinput5/backup/BackupController;->validate(Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V

    goto :goto_0

    .line 428
    :cond_0
    iget v3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$28;->val$kind:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-static {v2}, Lcom/cootek/smartinput5/backup/WesternImport137;->read(Ljava/io/InputStream;)[B

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/cootek/smartinput5/backup/TextDictionary155;->parse(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 429
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 430
    nop

    .line 431
    :try_start_4
    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$28;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1300(Lcom/cootek/smartinput5/backup/BackupActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/cootek/smartinput5/backup/BackupActivity$28$1;

    invoke-direct {v4, p0, v1, v3}, Lcom/cootek/smartinput5/backup/BackupActivity$28$1;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity$28;Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 445
    goto :goto_5

    .line 429
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 445
    :catchall_1
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_6

    .line 444
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_3

    .line 445
    :catchall_2
    move-exception v1

    goto :goto_6

    .line 444
    :catch_2
    move-exception v1

    :goto_1
    :try_start_6
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$28;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iget v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$28;->val$kind:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    const-string v2, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u0440\u043e\u0447\u0438\u0442\u0430\u0442\u044c TXT. \u041d\u0443\u0436\u0435\u043d \u0441\u043f\u0438\u0441\u043e\u043a \u0441\u043b\u043e\u0432 \u0432 UTF-8, \u043f\u043e \u043e\u0434\u043d\u043e\u043c\u0443 \u0441\u043b\u043e\u0432\u0443 \u0432 \u0441\u0442\u0440\u043e\u043a\u0435."

    goto :goto_2

    :cond_2
    const-string v2, "\u0424\u0430\u0439\u043b \u043f\u043e\u0432\u0440\u0435\u0436\u0434\u0451\u043d, \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u0435\u043d \u0438\u043b\u0438 \u043d\u0435\u0441\u043e\u0432\u043c\u0435\u0441\u0442\u0438\u043c. \u0414\u0430\u043d\u043d\u044b\u0435 \u043a\u043b\u0430\u0432\u0438\u0430\u0442\u0443\u0440\u044b \u043d\u0435 \u0438\u0437\u043c\u0435\u043d\u0435\u043d\u044b."

    :goto_2
    invoke-static {v1, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1600(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V

    .line 445
    if-eqz v0, :cond_3

    goto :goto_4

    .line 444
    :catch_3
    move-exception v1

    :goto_3
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$28;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const-string v2, "\u041d\u0435 \u0445\u0432\u0430\u0442\u0430\u0435\u0442 \u043f\u0430\u043c\u044f\u0442\u0438 \u0434\u043b\u044f \u044d\u0442\u043e\u0439 \u043a\u043e\u043f\u0438\u0438. \u0417\u0430\u043a\u0440\u043e\u0439 \u0434\u0440\u0443\u0433\u0438\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0438."

    invoke-static {v1, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1600(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 445
    if-eqz v0, :cond_3

    :goto_4
    invoke-virtual {v0}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->discard()V

    :cond_3
    :goto_5
    return-void

    :goto_6
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->discard()V

    :cond_4
    throw v1
.end method
