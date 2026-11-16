.class Lcom/cootek/smartinput5/backup/BackupActivity$16$1$1;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity$16$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/cootek/smartinput5/backup/BackupActivity$16$1;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity$16$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 311
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$16$1$1;->this$2:Lcom/cootek/smartinput5/backup/BackupActivity$16$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 312
    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$16$1$1;->this$2:Lcom/cootek/smartinput5/backup/BackupActivity$16$1;

    iget-object p1, p1, Lcom/cootek/smartinput5/backup/BackupActivity$16$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$16;

    iget-object p1, p1, Lcom/cootek/smartinput5/backup/BackupActivity$16;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iget-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$16$1$1;->this$2:Lcom/cootek/smartinput5/backup/BackupActivity$16$1;

    iget-object p2, p2, Lcom/cootek/smartinput5/backup/BackupActivity$16$1;->val$bytes:[B

    invoke-static {p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$2100(Lcom/cootek/smartinput5/backup/BackupActivity;[B)V

    return-void
.end method
