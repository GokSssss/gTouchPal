.class Lcom/cootek/smartinput5/backup/BackupActivity$23$1;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity$23;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cootek/smartinput5/backup/BackupActivity$23;

.field final synthetic val$payload:Ljava/lang/Object;

.field final synthetic val$ready:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity$23;Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;Ljava/lang/Object;)V
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

    .line 343
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$23$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$23;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$23$1;->val$ready:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    iput-object p3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$23$1;->val$payload:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 344
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$23$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$23;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$23;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1300(Lcom/cootek/smartinput5/backup/BackupActivity;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$23$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$23;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$23;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$800(Lcom/cootek/smartinput5/backup/BackupActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$23$1;->val$ready:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->discard()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$23$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$23;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$23;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$23$1;->val$ready:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$2802(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;)Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    .line 345
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$23$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$23;

    iget v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$23;->val$kind:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$23$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$23;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$23;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$23$1;->val$payload:Ljava/lang/Object;

    check-cast v1, Lcom/cootek/smartinput5/backup/BackupArchive$Archive;

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$2900(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V

    return-void

    .line 348
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$23$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$23;

    iget v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$23;->val$kind:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$23$1;->val$payload:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$23$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$23;

    iget-object v3, v3, Lcom/cootek/smartinput5/backup/BackupActivity$23;->val$language:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;-><init>(Ljava/util/List;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041d\u043e\u0432\u044b\u0445 \u0441\u043b\u043e\u0432: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->words:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". \u0423\u0436\u0435 \u0435\u0441\u0442\u044c: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->already:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".\n\u0421\u0443\u0449\u0435\u0441\u0442\u0432\u0443\u044e\u0449\u0438\u0435 \u0441\u043b\u043e\u0432\u0430 \u0441\u043e\u0445\u0440\u0430\u043d\u044f\u0442\u0441\u044f. TXT \u043e\u0441\u0442\u0430\u043d\u0435\u0442\u0441\u044f \u0432 Backup."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 349
    :cond_2
    const-string v0, "\u0422\u0435\u043a\u0443\u0449\u0438\u0439 \u0441\u043b\u043e\u0432\u0430\u0440\u044c \u0431\u0443\u0434\u0435\u0442 \u0437\u0430\u043c\u0435\u043d\u0451\u043d \u0432\u044b\u0431\u0440\u0430\u043d\u043d\u044b\u043c \u0444\u0430\u0439\u043b\u043e\u043c. \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u0441\u043e\u0445\u0440\u0430\u043d\u044f\u0442\u0441\u044f. \u0424\u0430\u0439\u043b \u043e\u0441\u0442\u0430\u043d\u0435\u0442\u0441\u044f \u0432 Backup. TouchPal \u043f\u0435\u0440\u0435\u0437\u0430\u043f\u0443\u0441\u0442\u0438\u0442\u0441\u044f."

    .line 350
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$23$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$23;

    iget-object v3, v3, Lcom/cootek/smartinput5/backup/BackupActivity$23;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$23$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$23;

    iget v3, v3, Lcom/cootek/smartinput5/backup/BackupActivity$23;->val$kind:I

    if-ne v3, v1, :cond_3

    const-string v3, "\u0414\u043e\u0431\u0430\u0432\u0438\u0442\u044c \u0441\u043b\u043e\u0432\u0430 \u0438\u0437 TXT"

    goto :goto_1

    :cond_3
    const-string v3, "\u0412\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c western.usr"

    :goto_1
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/cootek/smartinput5/backup/BackupActivity$23$1$3;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$23$1$3;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity$23$1;)V

    .line 351
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "\u041e\u0442\u043c\u0435\u043d\u0430"

    new-instance v3, Lcom/cootek/smartinput5/backup/BackupActivity$23$1$2;

    invoke-direct {v3, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$23$1$2;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity$23$1;)V

    .line 352
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 353
    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$23$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$23;

    iget v2, v2, Lcom/cootek/smartinput5/backup/BackupActivity$23;->val$kind:I

    if-ne v2, v1, :cond_4

    const-string v1, "\u0414\u043e\u0431\u0430\u0432\u0438\u0442\u044c"

    goto :goto_2

    :cond_4
    const-string v1, "\u0417\u0430\u043c\u0435\u043d\u0438\u0442\u044c \u0441\u043b\u043e\u0432\u0430\u0440\u044c"

    :goto_2
    new-instance v2, Lcom/cootek/smartinput5/backup/BackupActivity$23$1$1;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$23$1$1;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity$23$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    goto :goto_3

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$23$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$23;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$23;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$3200(Lcom/cootek/smartinput5/backup/BackupActivity;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$23$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$23;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$23;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const-string v1, "\u0421\u043b\u043e\u0432\u0430\u0440\u044c \u0438\u043b\u0438 \u044f\u0437\u044b\u043a \u0438\u0437\u043c\u0435\u043d\u0438\u043b\u0441\u044f. \u041e\u0442\u043a\u0440\u043e\u0439 TouchPal \u0438 \u0432\u044b\u0431\u0435\u0440\u0438 \u0444\u0430\u0439\u043b \u0435\u0449\u0451 \u0440\u0430\u0437."

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$3300(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V

    .line 355
    :goto_3
    return-void
.end method
