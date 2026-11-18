.class Lcom/cootek/smartinput5/backup/BackupActivity$20$1;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cootek/smartinput5/backup/BackupActivity$20;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity$20;Ljava/lang/String;)V
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

    .line 189
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$20$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$20;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$20$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$20$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$20;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$20;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$20$1;->val$message:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1400(Lcom/cootek/smartinput5/backup/BackupActivity;ZLjava/lang/String;)V

    return-void
.end method
