.class Lcom/cootek/smartinput5/backup/BackupActivity$21;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity;->readLanguage(Landroid/net/Uri;)V
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

    .line 319
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$21;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$21;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$21;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 319
    nop

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$21;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$21;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/backup/LanguageFiles158;->prepare(Landroid/content/Context;Landroid/net/Uri;)Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;

    move-result-object v0

    .line 321
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$21;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1200(Lcom/cootek/smartinput5/backup/BackupActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/cootek/smartinput5/backup/BackupActivity$21$1;

    invoke-direct {v2, p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity$21$1;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity$21;Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 325
    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$21;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const-string v1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u0440\u043e\u0447\u0438\u0442\u0430\u0442\u044c \u0444\u0430\u0439\u043b \u044f\u0437\u044b\u043a\u0430. \u0412\u044b\u0431\u0435\u0440\u0438 \u0446\u0435\u043b\u044b\u0439 \u043f\u0430\u043a\u0435\u0442 TPL \u0438\u043b\u0438 TPL.apk \u0441 \u0434\u0430\u043d\u043d\u044b\u043c\u0438 \u044f\u0437\u044b\u043a\u0430 \u0438 \u0441\u043b\u043e\u0432\u0430\u0440\u044f."

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1500(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$21;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const-string v1, "\u041d\u0435 \u0445\u0432\u0430\u0442\u0430\u0435\u0442 \u043f\u0430\u043c\u044f\u0442\u0438 \u0434\u043b\u044f \u044d\u0442\u043e\u0439 \u043a\u043e\u043f\u0438\u0438. \u0417\u0430\u043a\u0440\u043e\u0439 \u0434\u0440\u0443\u0433\u0438\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0438."

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1500(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :goto_1
    throw v0
.end method
