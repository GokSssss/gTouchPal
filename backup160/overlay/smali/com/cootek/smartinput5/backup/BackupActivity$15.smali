.class Lcom/cootek/smartinput5/backup/BackupActivity$15;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity;->downloadSaved(Ljava/io/File;I[B)V
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


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/content/Context;Ljava/io/File;I[B)V
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

    .line 137
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$15;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$15;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$15;->val$file:Ljava/io/File;

    iput p4, p0, Lcom/cootek/smartinput5/backup/BackupActivity$15;->val$kind:I

    iput-object p5, p0, Lcom/cootek/smartinput5/backup/BackupActivity$15;->val$expected:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 137
    nop

    .line 138
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$15;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$15;->val$file:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iget v3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$15;->val$kind:I

    invoke-static {v1, v2, v3}, Lcom/cootek/smartinput5/backup/SavedCopies157;->read(Landroid/content/Context;Landroid/net/Uri;I)Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$15;->val$expected:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$15;->val$expected:[B

    iget-object v2, v0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->digest:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Saved copy changed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$15;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/cootek/smartinput5/backup/SavedCopies157;->download(Landroid/content/Context;Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;)Ljava/lang/String;

    move-result-object v1

    .line 139
    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$15;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1300(Lcom/cootek/smartinput5/backup/BackupActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/cootek/smartinput5/backup/BackupActivity$15$1;

    invoke-direct {v3, p0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity$15$1;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity$15;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    if-eqz v0, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$15;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const-string v2, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0441\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c \u0432 \u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0438. \u041a\u043e\u043f\u0438\u044f \u0432 Backup \u0441\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u0430."

    invoke-static {v1, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1600(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v0}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->discard()V

    :cond_2
    return-void

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->discard()V

    :cond_3
    throw v1
.end method
