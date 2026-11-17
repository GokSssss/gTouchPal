.class Lcom/cootek/smartinput5/backup/BackupActivity$17;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$digest:[B

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$kind:I


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity;ILjava/io/File;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 148
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$17;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iput p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$17;->val$kind:I

    iput-object p3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$17;->val$file:Ljava/io/File;

    iput-object p4, p0, Lcom/cootek/smartinput5/backup/BackupActivity$17;->val$digest:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 148
    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$17;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iget p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$17;->val$kind:I

    invoke-static {p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$200(Lcom/cootek/smartinput5/backup/BackupActivity;I)V

    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$17;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iget-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$17;->val$file:Ljava/io/File;

    iget v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$17;->val$kind:I

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$17;->val$digest:[B

    invoke-static {p1, p2, v0, v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1900(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/io/File;I[B)V

    return-void
.end method
