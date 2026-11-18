.class Lcom/cootek/smartinput5/engine/Engine$11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/engine/Engine;->showPinyinCurveTutorial(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/engine/Engine$11;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine$11;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/cootek/smartinput5/func/x0;->d()Lcom/cootek/smartinput5/func/x0;

    move-result-object p2

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine$11;->val$context:Landroid/content/Context;

    const/16 v1, 0x12

    invoke-virtual {p2, v0, v1}, Lcom/cootek/smartinput5/func/x0;->h(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/cootek/smartinput5/engine/Engine$11;->val$context:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/cootek/smartinput5/net/J;->F(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine$11;->val$context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
