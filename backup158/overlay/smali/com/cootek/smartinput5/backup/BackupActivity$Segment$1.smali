.class Lcom/cootek/smartinput5/backup/BackupActivity$Segment$1;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity$Segment;-><init>(Landroid/content/Context;Lcom/cootek/smartinput5/backup/BackupActivity$ActionStrip;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cootek/smartinput5/backup/BackupActivity$Segment;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity$Segment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment$1;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity$Segment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 162
    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment$1;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity$Segment;

    iget p1, p1, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->icon:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "\u0412\u044b\u0431\u0440\u0430\u0442\u044c \u043a\u043e\u043f\u0438\u044e \u0438\u0437 \u0434\u0440\u0443\u0433\u043e\u0439 \u043f\u0430\u043f\u043a\u0438"

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment$1;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity$Segment;

    iget p1, p1, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->icon:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const-string p1, "\u0421\u043e\u0437\u0434\u0430\u0442\u044c \u043a\u043e\u043f\u0438\u044e \u0438 \u043e\u0442\u043a\u0440\u044b\u0442\u044c \u00ab\u041f\u043e\u0434\u0435\u043b\u0438\u0442\u044c\u0441\u044f\u00bb"

    goto :goto_0

    :cond_1
    const-string p1, "\u0421\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c \u043a\u043e\u043f\u0438\u044e \u0432 \u0417\u0430\u0433\u0440\u0443\u0437\u043a\u0438"

    .line 163
    :goto_0
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$Segment$1;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity$Segment;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/backup/BackupActivity$Segment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v0
.end method
