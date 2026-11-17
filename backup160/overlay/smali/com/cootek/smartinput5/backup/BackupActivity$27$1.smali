.class Lcom/cootek/smartinput5/backup/BackupActivity$27$1;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity$27;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cootek/smartinput5/backup/BackupActivity$27;

.field final synthetic val$installed:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity$27;Ljava/io/File;)V
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

    .line 406
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$27$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$27;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$27$1;->val$installed:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$27$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$27;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$27;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0424\u0430\u0439\u043b \u044f\u0437\u044b\u043a\u0430 \u0441\u043e\u0445\u0440\u0430\u043d\u0451\u043d\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$27$1;->val$installed:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n\u041f\u0430\u043f\u043a\u0430:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$27$1;->val$installed:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n\u0414\u043b\u044f \u043f\u0440\u0438\u043c\u0435\u043d\u0435\u043d\u0438\u044f \u043f\u0435\u0440\u0435\u0437\u0430\u043f\u0443\u0441\u0442\u0438 \u043a\u043b\u0430\u0432\u0438\u0430\u0442\u0443\u0440\u0443."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1400(Lcom/cootek/smartinput5/backup/BackupActivity;ZLjava/lang/String;)V

    return-void
.end method
