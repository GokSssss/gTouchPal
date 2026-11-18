.class Lcom/cootek/smartinput5/backup/BackupActivity$10;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity;->createButtons(Landroid/widget/LinearLayout;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

.field final synthetic val$kind:I


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity;I)V
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

    .line 90
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$10;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iput p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$10;->val$kind:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 90
    iget p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$10;->val$kind:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$10;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$700(Lcom/cootek/smartinput5/backup/BackupActivity;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$10;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iget v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$10;->val$kind:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x2906

    goto :goto_0

    :cond_1
    const/16 v0, 0x3585

    :goto_0
    invoke-static {p1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$800(Lcom/cootek/smartinput5/backup/BackupActivity;I)V

    :goto_1
    return-void
.end method
