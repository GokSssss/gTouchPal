.class Lcom/cootek/smartinput5/backup/BackupActivity$14$1;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cootek/smartinput5/backup/BackupActivity$14;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity$14;Ljava/lang/String;)V
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

    .line 127
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$14$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$14;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$14$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$14$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$14;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$14;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0421\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u043e \u0432 \u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0438: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$14$1;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1200(Lcom/cootek/smartinput5/backup/BackupActivity;ZLjava/lang/String;)V

    return-void
.end method
