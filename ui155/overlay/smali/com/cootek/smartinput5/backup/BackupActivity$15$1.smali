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

.field final synthetic val$bytes:[B


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity$15;[B)V
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

    .line 243
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$15$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$15;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$15$1;->val$bytes:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$15$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$15;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$15;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1200(Lcom/cootek/smartinput5/backup/BackupActivity;ZLjava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$15$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$15;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$15;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$600(Lcom/cootek/smartinput5/backup/BackupActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 247
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$15$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$15;

    iget-object v1, v1, Lcom/cootek/smartinput5/backup/BackupActivity$15;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 248
    const-string v1, "\u0412\u043e\u0441\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u0442\u044c western.usr"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 249
    const-string v1, "\u0422\u0435\u043a\u0443\u0449\u0438\u0439 \u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u0435\u043b\u044c\u0441\u043a\u0438\u0439 \u0441\u043b\u043e\u0432\u0430\u0440\u044c \u0431\u0443\u0434\u0435\u0442 \u0437\u0430\u043c\u0435\u043d\u0451\u043d \u0432\u044b\u0431\u0440\u0430\u043d\u043d\u044b\u043c \u0444\u0430\u0439\u043b\u043e\u043c. \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u0438 \u0434\u0440\u0443\u0433\u0438\u0435 \u0441\u043b\u043e\u0432\u0430\u0440\u0438 \u0441\u043e\u0445\u0440\u0430\u043d\u044f\u0442\u0441\u044f. TouchPal \u043f\u0435\u0440\u0435\u0437\u0430\u043f\u0443\u0441\u0442\u0438\u0442\u0441\u044f."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 250
    const-string v1, "\u041e\u0442\u043c\u0435\u043d\u0430"

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/cootek/smartinput5/backup/BackupActivity$15$1$1;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/backup/BackupActivity$15$1$1;-><init>(Lcom/cootek/smartinput5/backup/BackupActivity$15$1;)V

    .line 251
    const-string v2, "\u0417\u0430\u043c\u0435\u043d\u0438\u0442\u044c \u0441\u043b\u043e\u0432\u0430\u0440\u044c"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 254
    return-void
.end method
