.class Lcom/cootek/smartinput5/backup/BackupActivity$8$1;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cootek/smartinput5/backup/BackupActivity$8;

.field final synthetic val$prepared:Lcom/cootek/smartinput5/backup/WesternExport135$Prepared;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity$8;Lcom/cootek/smartinput5/backup/WesternExport135$Prepared;)V
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

    .line 291
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$8$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$8;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$8$1;->val$prepared:Lcom/cootek/smartinput5/backup/WesternExport135$Prepared;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$8$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$8;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$8;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$500(Lcom/cootek/smartinput5/backup/BackupActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$8$1;->val$prepared:Lcom/cootek/smartinput5/backup/WesternExport135$Prepared;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/WesternExport135;->discard(Lcom/cootek/smartinput5/backup/WesternExport135$Prepared;)V

    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$8$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$8;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$8;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$8$1;->val$prepared:Lcom/cootek/smartinput5/backup/WesternExport135$Prepared;

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1202(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/WesternExport135$Prepared;)Lcom/cootek/smartinput5/backup/WesternExport135$Prepared;

    .line 295
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const-string v1, "application/octet-stream"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    const-string v1, "android.intent.extra.TITLE"

    const-string v2, "western.usr"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$8$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$8;

    iget-object v1, v1, Lcom/cootek/smartinput5/backup/BackupActivity$8;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const/16 v2, 0x34bd

    invoke-static {v1, v0, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1300(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/content/Intent;I)V

    .line 300
    return-void
.end method
