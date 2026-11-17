.class Lcom/cootek/smartinput5/backup/BackupActivity$35;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity;->confirmRestore(Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

.field final synthetic val$archive:Lcom/cootek/smartinput5/backup/BackupArchive$Archive;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V
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

    .line 544
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$35;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$35;->val$archive:Lcom/cootek/smartinput5/backup/BackupArchive$Archive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 546
    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$35;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iget-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$35;->val$archive:Lcom/cootek/smartinput5/backup/BackupArchive$Archive;

    invoke-static {p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$4400(Lcom/cootek/smartinput5/backup/BackupActivity;Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V

    .line 547
    return-void
.end method
