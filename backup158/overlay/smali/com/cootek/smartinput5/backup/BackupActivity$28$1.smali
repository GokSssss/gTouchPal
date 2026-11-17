.class Lcom/cootek/smartinput5/backup/BackupActivity$28$1;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity$28;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cootek/smartinput5/backup/BackupActivity$28;

.field final synthetic val$result:Lcom/cootek/smartinput5/storage/StorageImport135$Result;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity$28;Lcom/cootek/smartinput5/storage/StorageImport135$Result;)V
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

    .line 434
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$28$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$28;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$28$1;->val$result:Lcom/cootek/smartinput5/storage/StorageImport135$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 436
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$28$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$28;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$28;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041f\u0435\u0440\u0435\u043d\u043e\u0441 \u0437\u0430\u0432\u0435\u0440\u0448\u0451\u043d. \u0414\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u043e \u0444\u0430\u0439\u043b\u043e\u0432: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$28$1;->val$result:Lcom/cootek/smartinput5/storage/StorageImport135$Result;

    iget v2, v2, Lcom/cootek/smartinput5/storage/StorageImport135$Result;->copied:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". \u0423\u0436\u0435 \u0431\u044b\u043b\u0438 \u0432 TouchPalG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$28$1;->val$result:Lcom/cootek/smartinput5/storage/StorageImport135$Result;

    iget v2, v2, Lcom/cootek/smartinput5/storage/StorageImport135$Result;->kept:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". \u041f\u0440\u043e\u043f\u0443\u0449\u0435\u043d\u043e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$28$1;->val$result:Lcom/cootek/smartinput5/storage/StorageImport135$Result;

    iget v2, v2, Lcom/cootek/smartinput5/storage/StorageImport135$Result;->skipped:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".\n\u0421\u0442\u0430\u0440\u044b\u0435 \u043e\u0440\u0438\u0433\u0438\u043d\u0430\u043b\u044b \u0441\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u044b. \u0417\u0430\u043a\u0440\u043e\u0439 \u0438 \u0441\u043d\u043e\u0432\u0430 \u043e\u0442\u043a\u0440\u043e\u0439 \u043a\u043b\u0430\u0432\u0438\u0430\u0442\u0443\u0440\u0443."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1300(Lcom/cootek/smartinput5/backup/BackupActivity;ZLjava/lang/String;)V

    .line 439
    return-void
.end method
