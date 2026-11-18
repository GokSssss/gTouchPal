.class Lcom/cootek/smartinput5/backup/BackupActivity$26$1;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity$26;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cootek/smartinput5/backup/BackupActivity$26;

.field final synthetic val$ready:Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity$26;Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;)V
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

    .line 409
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$26$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$26;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$26$1;->val$ready:Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 409
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$26$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$26;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$26;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1400(Lcom/cootek/smartinput5/backup/BackupActivity;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$26$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$26;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$26;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$900(Lcom/cootek/smartinput5/backup/BackupActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$26$1;->val$ready:Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->discard()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$26$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$26;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$26;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$26$1;->val$ready:Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$3002(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;)Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0424\u0430\u0439\u043b: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$26$1;->val$ready:Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;

    iget-object v1, v1, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->target:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\u041f\u0430\u043f\u043a\u0430: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$26$1;->val$ready:Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;

    iget-object v1, v1, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->target:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$26$1;->val$ready:Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;

    iget-object v1, v1, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->previous:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    if-nez v1, :cond_1

    const-string v1, "\u0414\u043e\u0431\u0430\u0432\u0438\u0442\u044c \u0444\u0430\u0439\u043b \u044f\u0437\u044b\u043a\u0430?"

    goto :goto_0

    :cond_1
    const-string v1, "\u0424\u0430\u0439\u043b \u0441 \u0442\u0430\u043a\u0438\u043c \u0438\u043c\u0435\u043d\u0435\u043c \u0443\u0436\u0435 \u0435\u0441\u0442\u044c. \u0417\u0430\u043c\u0435\u043d\u0438\u0442\u044c \u0435\u0433\u043e? \u041f\u0440\u0435\u0436\u043d\u0438\u0439 \u0444\u0430\u0439\u043b \u0441\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u0441\u044f \u0432 Backup/Language."

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$26$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$26;

    iget-object v2, v2, Lcom/cootek/smartinput5/backup/BackupActivity$26;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u0421\u043b\u043e\u0432\u0430\u0440\u044c \u044f\u0437\u044b\u043a\u0430"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/cootek/smartinput5/backup/BackupActivity$26$1$3;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$26$1$3;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity$26$1;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/cootek/smartinput5/backup/BackupActivity$26$1$2;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$26$1$2;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity$26$1;)V

    const-string v2, "\u041e\u0442\u043c\u0435\u043d\u0430"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$26$1;->val$ready:Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;

    iget-object v1, v1, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->previous:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    if-nez v1, :cond_2

    const-string v1, "\u0414\u043e\u0431\u0430\u0432\u0438\u0442\u044c"

    goto :goto_1

    :cond_2
    const-string v1, "\u0417\u0430\u043c\u0435\u043d\u0438\u0442\u044c"

    :goto_1
    new-instance v2, Lcom/cootek/smartinput5/backup/BackupActivity$26$1$1;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$26$1$1;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity$26$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 412
    return-void
.end method
