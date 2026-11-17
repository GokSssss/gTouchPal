.class Lcom/cootek/smartinput5/backup/BackupActivity$13;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity;->refreshCopies(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

.field final synthetic val$migrate:Z

.field final synthetic val$serial:I


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity;ZI)V
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

    .line 95
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iput-boolean p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->val$migrate:Z

    iput p3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->val$serial:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 96
    nop

    .line 97
    iget-boolean v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->val$migrate:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/cootek/smartinput5/backup/SavedCopies157;->migratePublic()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "\u041f\u0440\u0435\u0436\u043d\u0438\u0435 \u043a\u043e\u043f\u0438\u0438 \u0441\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u044b \u0432 \u0441\u0442\u0430\u0440\u043e\u0439 \u043f\u0430\u043f\u043a\u0435: \u043f\u0435\u0440\u0435\u043d\u043e\u0441 \u043d\u0435 \u0437\u0430\u0432\u0435\u0440\u0448\u0451\u043d."

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, v1

    .line 98
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/cootek/smartinput5/backup/SavedCopies157;->latestZip()Ljava/io/File;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    if-nez v0, :cond_1

    const-string v0, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u0440\u043e\u0447\u0438\u0442\u0430\u0442\u044c \u0441\u043f\u0438\u0441\u043e\u043a \u043a\u043e\u043f\u0438\u0439."

    :cond_1
    move-object v3, v1

    .line 99
    :goto_2
    if-nez v3, :cond_2

    const-string v3, "\u041f\u043e\u043b\u043d\u044b\u0445 \u043a\u043e\u043f\u0438\u0439 \u043f\u043e\u043a\u0430 \u043d\u0435\u0442."

    goto :goto_3

    :cond_2
    invoke-static {v3}, Lcom/cootek/smartinput5/backup/SavedCopies157;->label(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 100
    :goto_3
    if-eqz v0, :cond_3

    move-object v1, v0

    goto :goto_4

    :cond_3
    if-lez v2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041a\u043e\u043f\u0438\u0438 \u043f\u0435\u0440\u0435\u043d\u0435\u0441\u0435\u043d\u044b \u0432 \u043f\u0430\u043f\u043a\u0443 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1200(Lcom/cootek/smartinput5/backup/BackupActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/cootek/smartinput5/backup/BackupActivity$13$1;

    invoke-direct {v2, p0, v3, v1}, Lcom/cootek/smartinput5/backup/BackupActivity$13$1;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity$13;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    return-void
.end method
