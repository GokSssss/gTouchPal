.class Lcom/cootek/smartinput5/backup/BackupActivity$22$1$1;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity$22$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/cootek/smartinput5/backup/BackupActivity$22$1;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity$22$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 347
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$22$1$1;->this$2:Lcom/cootek/smartinput5/backup/BackupActivity$22$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 347
    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$22$1$1;->this$2:Lcom/cootek/smartinput5/backup/BackupActivity$22$1;

    iget-object p1, p1, Lcom/cootek/smartinput5/backup/BackupActivity$22$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$22;

    iget p1, p1, Lcom/cootek/smartinput5/backup/BackupActivity$22;->val$kind:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$22$1$1;->this$2:Lcom/cootek/smartinput5/backup/BackupActivity$22$1;

    iget-object p1, p1, Lcom/cootek/smartinput5/backup/BackupActivity$22$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$22;

    iget-object p1, p1, Lcom/cootek/smartinput5/backup/BackupActivity$22;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iget-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$22$1$1;->this$2:Lcom/cootek/smartinput5/backup/BackupActivity$22$1;

    iget-object p2, p2, Lcom/cootek/smartinput5/backup/BackupActivity$22$1;->val$payload:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$22$1$1;->this$2:Lcom/cootek/smartinput5/backup/BackupActivity$22$1;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$22$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$22;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$22;->val$language:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$3000(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$22$1$1;->this$2:Lcom/cootek/smartinput5/backup/BackupActivity$22$1;

    iget-object p1, p1, Lcom/cootek/smartinput5/backup/BackupActivity$22$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$22;

    iget-object p1, p1, Lcom/cootek/smartinput5/backup/BackupActivity$22;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iget-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$22$1$1;->this$2:Lcom/cootek/smartinput5/backup/BackupActivity$22$1;

    iget-object p2, p2, Lcom/cootek/smartinput5/backup/BackupActivity$22$1;->val$payload:Ljava/lang/Object;

    check-cast p2, [B

    invoke-static {p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$3100(Lcom/cootek/smartinput5/backup/BackupActivity;[B)V

    :goto_0
    return-void
.end method
