.class Lcom/cootek/smartinput5/backup/BackupActivity$18;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity;->offerOutsideCopy(Ljava/io/File;I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/io/File;)V
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

    .line 148
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$18;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$18;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 148
    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$18;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$18;->val$file:Ljava/io/File;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$2000(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1200(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;Z)V

    return-void
.end method
