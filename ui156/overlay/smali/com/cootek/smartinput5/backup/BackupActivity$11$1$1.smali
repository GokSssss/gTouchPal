.class Lcom/cootek/smartinput5/backup/BackupActivity$11$1$1;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity$11$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/cootek/smartinput5/backup/BackupActivity$11$1;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity$11$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 248
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$11$1$1;->this$2:Lcom/cootek/smartinput5/backup/BackupActivity$11$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 248
    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$11$1$1;->this$2:Lcom/cootek/smartinput5/backup/BackupActivity$11$1;

    iget-object p1, p1, Lcom/cootek/smartinput5/backup/BackupActivity$11$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$11;

    iget-object p1, p1, Lcom/cootek/smartinput5/backup/BackupActivity$11;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iget-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$11$1$1;->this$2:Lcom/cootek/smartinput5/backup/BackupActivity$11$1;

    iget-object p2, p2, Lcom/cootek/smartinput5/backup/BackupActivity$11$1;->val$words:Ljava/util/List;

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$11$1$1;->this$2:Lcom/cootek/smartinput5/backup/BackupActivity$11$1;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$11$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$11;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$11;->val$language:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1500(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
