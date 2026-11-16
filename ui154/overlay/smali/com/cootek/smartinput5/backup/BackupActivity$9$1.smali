.class Lcom/cootek/smartinput5/backup/BackupActivity$9$1;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cootek/smartinput5/backup/BackupActivity$9;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity$9;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 324
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$9$1;->this$1:Lcom/cootek/smartinput5/backup/BackupActivity$9;

    iget-object v0, v0, Lcom/cootek/smartinput5/backup/BackupActivity$9;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const/4 v1, 0x0

    const-string v2, "western.usr \u0441\u043e\u0445\u0440\u0430\u043d\u0451\u043d \u0432 \u0432\u044b\u0431\u0440\u0430\u043d\u043d\u044b\u0439 \u0444\u0430\u0439\u043b."

    invoke-static {v0, v1, v2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1400(Lcom/cootek/smartinput5/backup/BackupActivity;ZLjava/lang/String;)V

    return-void
.end method
