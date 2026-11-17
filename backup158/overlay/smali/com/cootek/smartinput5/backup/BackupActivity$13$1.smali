.class Lcom/cootek/smartinput5/backup/BackupActivity$13$1;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cootek/smartinput5/backup/BackupActivity$13;

.field final synthetic val$files:Ljava/util/List;

.field final synthetic val$labels:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity$13;Ljava/util/List;[Ljava/lang/String;)V
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

    .line 104
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$13;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13$1;->val$files:Ljava/util/List;

    iput-object p3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13$1;->val$labels:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$13;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1300(Lcom/cootek/smartinput5/backup/BackupActivity;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$13;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$800(Lcom/cootek/smartinput5/backup/BackupActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$13;

    iget-object v1, v1, Lcom/cootek/smartinput5/backup/BackupActivity$13;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$13;

    iget v1, v1, Lcom/cootek/smartinput5/backup/BackupActivity$13;->val$kind:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const-string v1, "\u0412\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c \u043f\u043e\u043b\u043d\u0443\u044e \u043a\u043e\u043f\u0438\u044e"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$13;

    iget v1, v1, Lcom/cootek/smartinput5/backup/BackupActivity$13;->val$kind:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    const-string v1, "\u0412\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c western.usr"

    goto :goto_0

    :cond_2
    const-string v1, "\u0414\u043e\u0431\u0430\u0432\u0438\u0442\u044c \u0441\u043b\u043e\u0432\u0430 \u0438\u0437 TXT"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0417\u0430\u043a\u0440\u044b\u0442\u044c"

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13$1;->val$files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "\u0412 Backup \u043f\u043e\u043a\u0430 \u043d\u0435\u0442 \u043f\u043e\u0434\u0445\u043e\u0434\u044f\u0449\u0438\u0445 \u0444\u0430\u0439\u043b\u043e\u0432. \u0417\u043d\u0430\u0447\u043e\u043a \u043f\u0430\u043f\u043a\u0438 \u043e\u0442\u043a\u0440\u044b\u0432\u0430\u0435\u0442 \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u044b\u0439 \u0432\u044b\u0431\u043e\u0440 \u0444\u0430\u0439\u043b\u0430."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 107
    :cond_3
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13$1;->val$labels:[Ljava/lang/String;

    new-instance v2, Lcom/cootek/smartinput5/backup/BackupActivity$13$1$1;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$13$1$1;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity$13$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 109
    return-void
.end method
