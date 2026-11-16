.class Lcom/cootek/smartinput5/backup/BackupActivity$10;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity;->readText(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

.field final synthetic val$language:Ljava/lang/String;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/net/Uri;Ljava/lang/String;)V
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

    .line 179
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$10;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$10;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$10;->val$language:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$10;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$10;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v0}, Lcom/cootek/smartinput5/backup/TextDictionary155;->parse(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$10;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$800(Lcom/cootek/smartinput5/backup/BackupActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/cootek/smartinput5/backup/BackupActivity$10$1;

    invoke-direct {v2, p0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity$10$1;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity$10;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    goto :goto_1

    .line 180
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v1
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 191
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$10;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const-string v1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u0440\u043e\u0447\u0438\u0442\u0430\u0442\u044c TXT. \u041d\u0443\u0436\u0435\u043d \u0441\u043f\u0438\u0441\u043e\u043a \u0441\u043b\u043e\u0432 \u0432 UTF-8, \u043f\u043e \u043e\u0434\u043d\u043e\u043c\u0443 \u0441\u043b\u043e\u0432\u0443 \u0432 \u0441\u0442\u0440\u043e\u043a\u0435."

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$10;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const-string v1, "\u041d\u0435 \u0445\u0432\u0430\u0442\u0430\u0435\u0442 \u043f\u0430\u043c\u044f\u0442\u0438 \u0434\u043b\u044f \u044d\u0442\u043e\u0439 \u043a\u043e\u043f\u0438\u0438. \u0417\u0430\u043a\u0440\u043e\u0439 \u0434\u0440\u0443\u0433\u0438\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0438."

    :goto_0
    invoke-static {v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1100(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
