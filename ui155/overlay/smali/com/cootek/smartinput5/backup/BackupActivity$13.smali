.class Lcom/cootek/smartinput5/backup/BackupActivity$13;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity;->offerTextRecovery()V
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

    .line 227
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 227
    :try_start_0
    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iget-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {p2}, Lcom/cootek/smartinput5/backup/TextRecovery155;->read(Landroid/content/Context;)[B

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1900(Lcom/cootek/smartinput5/backup/BackupActivity;[BZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const-string p2, "\u041a\u043e\u043f\u0438\u044f \u0434\u043e \u0438\u043c\u043f\u043e\u0440\u0442\u0430 \u043f\u043e\u0432\u0440\u0435\u0436\u0434\u0435\u043d\u0430 \u0438\u043b\u0438 \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0430. \u0422\u0435\u043a\u0443\u0449\u0438\u0439 \u0441\u043b\u043e\u0432\u0430\u0440\u044c \u0441\u043e\u0445\u0440\u0430\u043d\u0451\u043d."

    invoke-static {p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1500(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
