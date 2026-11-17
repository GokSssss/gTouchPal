.class Lcom/cootek/smartinput5/backup/BackupActivity$11$1;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cootek/smartinput5/backup/BackupActivity$11;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity$11;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 93
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$11$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$11;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$11$1;->val$text:Ljava/lang/String;

    iput-object p3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$11$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$11$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$11;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$11;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$700(Lcom/cootek/smartinput5/backup/BackupActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$11$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$11;

    iget v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$11;->val$serial:I

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$11$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$11;

    iget-object v1, v1, Lcom/cootek/smartinput5/backup/BackupActivity$11;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$800(Lcom/cootek/smartinput5/backup/BackupActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$11$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$11;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$11;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$000(Lcom/cootek/smartinput5/backup/BackupActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$11$1;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$11$1;->val$message:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$11$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$11;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$11;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$900(Lcom/cootek/smartinput5/backup/BackupActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$11$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$11;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$11;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1000(Lcom/cootek/smartinput5/backup/BackupActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$11$1;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$11$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$11;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$11;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1000(Lcom/cootek/smartinput5/backup/BackupActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
