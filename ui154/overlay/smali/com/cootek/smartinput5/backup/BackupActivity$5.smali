.class Lcom/cootek/smartinput5/backup/BackupActivity$5;
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

    .line 119
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$5;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 121
    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$5;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$400(Lcom/cootek/smartinput5/backup/BackupActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$5;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$500(Lcom/cootek/smartinput5/backup/BackupActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$5;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const-string v1, "com.cootek.smartinput5.ui.settings.DictionaryEditorActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 124
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$5;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->startActivity(Landroid/content/Intent;)V

    .line 125
    return-void

    .line 121
    :cond_1
    :goto_0
    return-void
.end method
