.class Lcom/cootek/smartinput5/backup/BackupActivity$12$1;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cootek/smartinput5/backup/BackupActivity$12;

.field final synthetic val$files:Ljava/util/List;

.field final synthetic val$labels:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity$12;Ljava/util/List;[Ljava/lang/String;)V
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

    .line 101
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$12$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$12;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$12$1;->val$files:Ljava/util/List;

    iput-object p3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$12$1;->val$labels:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$12$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$12;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$12;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1200(Lcom/cootek/smartinput5/backup/BackupActivity;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$12$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$12;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$12;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$700(Lcom/cootek/smartinput5/backup/BackupActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$12$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$12;

    iget-object v1, v1, Lcom/cootek/smartinput5/backup/BackupActivity$12;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u041a\u043e\u043f\u0438\u0438 \u2014 Backup"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0417\u0430\u043a\u0440\u044b\u0442\u044c"

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$12$1;->val$files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\u0412 \u043f\u0430\u043f\u043a\u0435 \u043f\u043e\u043a\u0430 \u043d\u0435\u0442 \u043a\u043e\u043f\u0438\u0439."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$12$1;->val$labels:[Ljava/lang/String;

    new-instance v2, Lcom/cootek/smartinput5/backup/BackupActivity$12$1$1;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$12$1$1;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity$12$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 105
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 106
    return-void
.end method
