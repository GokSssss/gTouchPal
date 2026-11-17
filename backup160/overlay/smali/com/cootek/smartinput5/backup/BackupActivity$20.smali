.class Lcom/cootek/smartinput5/backup/BackupActivity$20;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity;->writeExternal(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$expected:[B

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$kind:I

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/content/Context;Ljava/io/File;I[BLandroid/net/Uri;)V
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

    .line 179
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$20;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$20;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$20;->val$file:Ljava/io/File;

    iput p4, p0, Lcom/cootek/smartinput5/backup/BackupActivity$20;->val$kind:I

    iput-object p5, p0, Lcom/cootek/smartinput5/backup/BackupActivity$20;->val$expected:[B

    iput-object p6, p0, Lcom/cootek/smartinput5/backup/BackupActivity$20;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 179
    nop

    .line 180
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$20;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$20;->val$file:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iget v3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$20;->val$kind:I

    invoke-static {v1, v2, v3}, Lcom/cootek/smartinput5/backup/SavedCopies157;->read(Landroid/content/Context;Landroid/net/Uri;I)Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$20;->val$expected:[B

    iget-object v2, v0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->digest:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->verify()V

    .line 182
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$20;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$20;->val$uri:Landroid/net/Uri;

    const-string v3, "wt"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_4

    .line 183
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->copy(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 184
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$20;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$20;->val$uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 185
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 186
    const/16 v3, 0x4000

    :try_start_3
    new-array v3, v3, [B

    const-wide/16 v4, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    int-to-long v7, v6

    add-long/2addr v4, v7

    iget-wide v7, v0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->length:J

    cmp-long v9, v4, v7

    if-gtz v9, :cond_0

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7, v6}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Destination length"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 187
    iget-wide v6, v0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->length:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->digest:[B

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 188
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$20;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$20;->val$uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$20;->val$file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$2100(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$20;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1300(Lcom/cootek/smartinput5/backup/BackupActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/cootek/smartinput5/backup/BackupActivity$20$1;

    invoke-direct {v3, p0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity$20$1;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity$20;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    if-eqz v0, :cond_6

    goto :goto_1

    .line 187
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Destination verification"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2

    .line 184
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Readback unavailable"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :catchall_1
    move-exception v2

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v2

    .line 182
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Destination unavailable"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Saved copy changed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 189
    :catchall_2
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_5
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$20;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const-string v2, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u043e\u0434\u0442\u0432\u0435\u0440\u0434\u0438\u0442\u044c \u0441\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u0438\u0435 \u0432 \u0432\u044b\u0431\u0440\u0430\u043d\u043d\u043e\u0435 \u043c\u0435\u0441\u0442\u043e. \u041a\u043e\u043f\u0438\u044f \u0432 Backup \u0441\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u0430."

    invoke-static {v1, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1600(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_6

    :goto_1
    invoke-virtual {v0}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->discard()V

    :cond_6
    return-void

    :goto_2
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->discard()V

    :cond_7
    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method
