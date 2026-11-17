.class Lcom/cootek/smartinput5/backup/BackupActivity$13;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/backup/BackupActivity;->openSavedCopy(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$kind:I


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/io/File;I)V
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

    .line 111
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->val$file:Ljava/io/File;

    iput p3, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->val$kind:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 112
    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iget-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->val$file:Ljava/io/File;

    iget v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->val$kind:I

    invoke-static {v0}, Lcom/cootek/smartinput5/backup/SavedCopies157;->mime(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1500(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/io/File;Ljava/lang/String;)V

    return-void

    .line 113
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iget-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->val$file:Ljava/io/File;

    iget v0, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->val$kind:I

    invoke-static {p1, p2, v0}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1600(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/io/File;I)V

    return-void

    .line 114
    :cond_1
    iget p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->val$kind:I

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iget-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->val$file:Ljava/io/File;

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1700(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/net/Uri;)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->val$kind:I

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iget-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->val$file:Ljava/io/File;

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1800(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/net/Uri;)V

    goto :goto_0

    .line 115
    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {p1}, Lcom/cootek/smartinput5/backup/TextRecovery155;->pending(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {p1}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$400(Lcom/cootek/smartinput5/backup/BackupActivity;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    invoke-static {}, Lcom/cootek/smartinput5/backup/TextDictionary155;->language()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$1902(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    iget-object p2, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->val$file:Ljava/io/File;

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$2000(Lcom/cootek/smartinput5/backup/BackupActivity;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p1, p0, Lcom/cootek/smartinput5/backup/BackupActivity$13;->this$0:Lcom/cootek/smartinput5/backup/BackupActivity;

    const-string p2, "\u0421\u043b\u043e\u0432\u0430\u0440\u044c \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u0435\u043d. \u041e\u0442\u043a\u0440\u043e\u0439 \u043a\u043b\u0430\u0432\u0438\u0430\u0442\u0443\u0440\u0443 \u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0438 \u0434\u043e\u0431\u0430\u0432\u043b\u0435\u043d\u0438\u0435 \u0441\u043b\u043e\u0432."

    invoke-static {p1, p2}, Lcom/cootek/smartinput5/backup/BackupActivity;->access$2100(Lcom/cootek/smartinput5/backup/BackupActivity;Ljava/lang/String;)V

    .line 118
    :goto_0
    return-void
.end method
