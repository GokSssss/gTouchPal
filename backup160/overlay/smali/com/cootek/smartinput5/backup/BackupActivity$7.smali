.class Lcom/cootek/smartinput5/backup/BackupActivity$7;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cootek/smartinput5/backup/BackupActivity;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$7;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 80
    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$7;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$200(Lcom/cootek/smartinput5/backup/BackupActivity;I)V

    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$7;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$400(Lcom/cootek/smartinput5/backup/BackupActivity;)V

    return-void
.end method
