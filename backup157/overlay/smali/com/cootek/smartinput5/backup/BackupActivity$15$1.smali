.class Lcom/cootek/smartinput5/backup/BackupActivity$15$1;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cootek/smartinput5/backup/BackupActivity$15;

.field final synthetic val$downloaded:Ljava/lang/String;

.field final synthetic val$mime:Ljava/lang/String;

.field final synthetic val$saved:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity$15;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 229
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$15$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$15;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$15$1;->val$saved:Ljava/io/File;

    iput-object p3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$15$1;->val$mime:Ljava/lang/String;

    iput-object p4, p0, Lcom/cootek/smartinput5/backup/BackupActivity$15$1;->val$downloaded:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$15$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$15;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$15;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$700(Lcom/cootek/smartinput5/backup/BackupActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$15$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$15;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$15;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$2300(Lcom/cootek/smartinput5/backup/BackupActivity;Z)V

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$15$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$15;

    iget v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$15;->val$mode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$15$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$15;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$15;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$15$1;->val$saved:Ljava/io/File;

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$15$1;->val$mime:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1500(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$15$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$15;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$15;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$15$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$15;

    iget v2, v2, Lcom/cootek/smartinput5/backup/BackupActivity$15;->val$mode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0421\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u043e \u0432 \u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0438: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$15$1;->val$downloaded:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041a\u043e\u043f\u0438\u044f \u0441\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u0430: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$15$1;->val$saved:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1200(Lcom/cootek/smartinput5/backup/BackupActivity;ZLjava/lang/String;)V

    :goto_1
    return-void
.end method
