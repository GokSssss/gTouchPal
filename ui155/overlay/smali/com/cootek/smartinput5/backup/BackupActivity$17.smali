.class Lcom/cootek/smartinput5/backup/BackupActivity$17;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity;->importOldData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 294
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$17;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$17;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$17;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cootek/smartinput5/storage/StorageImport135;->run(Landroid/content/Context;)Lcom/cootek/smartinput5/storage/StorageImport135$Result;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$17;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$800(Lcom/cootek/smartinput5/backup/BackupActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/cootek/smartinput5/backup/BackupActivity$17$1;

    invoke-direct {v2, p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity$17$1;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity$17;Lcom/cootek/smartinput5/storage/StorageImport135$Result;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$17;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const-string v1, "\u041f\u0435\u0440\u0435\u043d\u043e\u0441 \u043d\u0435 \u0437\u0430\u0432\u0435\u0440\u0448\u0451\u043d. \u041f\u0440\u043e\u0432\u0435\u0440\u044c \u0434\u043e\u0441\u0442\u0443\u043f \u043a \u0441\u0442\u0430\u0440\u043e\u0439 \u043f\u0430\u043f\u043a\u0435 \u0438 \u0441\u0432\u043e\u0431\u043e\u0434\u043d\u043e\u0435 \u043c\u0435\u0441\u0442\u043e. \u0421\u0442\u0430\u0440\u044b\u0435 \u043e\u0440\u0438\u0433\u0438\u043d\u0430\u043b\u044b \u0441\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u044b; \u043c\u043e\u0436\u043d\u043e \u0441\u043a\u043e\u043f\u0438\u0440\u043e\u0432\u0430\u0442\u044c \u043f\u0430\u043f\u043a\u0443 \u0432\u0440\u0443\u0447\u043d\u0443\u044e \u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0438\u0442\u044c."

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1100(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V

    .line 308
    :goto_0
    return-void
.end method
