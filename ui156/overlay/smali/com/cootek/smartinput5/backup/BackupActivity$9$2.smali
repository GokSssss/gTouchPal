.class Lcom/cootek/smartinput5/backup/BackupActivity$9$2;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cootek/smartinput5/backup/BackupActivity$9;

.field final synthetic val$ready:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity$9;Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;)V
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

    .line 190
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9$2;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$9;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9$2;->val$ready:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 190
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9$2;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$9;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$9;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$700(Lcom/cootek/smartinput5/backup/BackupActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9$2;->val$ready:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->discard()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9$2;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$9;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$9;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9$2;->val$ready:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1002(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;)Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9$2;->val$ready:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    iget-object v1, v1, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->mime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9$2;->val$ready:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    iget-object v1, v1, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->name:Ljava/lang/String;

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupLocations155;->preparePicker(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9$2;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$9;

    iget-object v1, v1, Lcom/cootek/smartinput5/backup/BackupActivity$9;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9$2;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$9;

    iget v2, v2, Lcom/cootek/smartinput5/backup/BackupActivity$9;->val$kind:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/16 v2, 0x2905

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9$2;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$9;

    iget v2, v2, Lcom/cootek/smartinput5/backup/BackupActivity$9;->val$kind:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/16 v2, 0x34bd

    goto :goto_0

    :cond_2
    const/16 v2, 0x3c8d

    :goto_0
    invoke-static {v1, v0, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1100(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/content/Intent;I)V

    return-void
.end method
