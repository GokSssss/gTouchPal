.class Lcom/cootek/smartinput5/backup/BackupActivity$27;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity;->installLanguage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$source:Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/content/Context;Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;)V
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

    .line 417
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$27;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$27;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$27;->val$source:Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$27;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$27;->val$source:Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/backup/LanguageFiles158;->commit(Landroid/content/Context;Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$27;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1300(Lcom/cootek/smartinput5/backup/BackupActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/cootek/smartinput5/backup/BackupActivity$27$1;

    invoke-direct {v2, p0, v0}, Lcom/cootek/smartinput5/backup/BackupActivity$27$1;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity$27;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$27;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const-string v1, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0434\u043e\u0431\u0430\u0432\u0438\u0442\u044c \u0444\u0430\u0439\u043b \u044f\u0437\u044b\u043a\u0430. \u041f\u0440\u0435\u0436\u043d\u0438\u0439 \u0444\u0430\u0439\u043b \u0441\u043e\u0445\u0440\u0430\u043d\u0451\u043d; \u043f\u0440\u043e\u0432\u0435\u0440\u044c \u0441\u0432\u043e\u0431\u043e\u0434\u043d\u043e\u0435 \u043c\u0435\u0441\u0442\u043e \u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0438."

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1600(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$27;->val$source:Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->discard()V

    return-void

    :goto_1
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$27;->val$source:Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->discard()V

    throw v0
.end method
