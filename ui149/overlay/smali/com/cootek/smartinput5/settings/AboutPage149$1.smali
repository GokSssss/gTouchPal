.class Lcom/cootek/smartinput5/settings/AboutPage149$1;
.super Ljava/lang/Object;
.source "AboutPage149.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/settings/AboutPage149;->link(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cootek/smartinput5/settings/AboutPage149;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/settings/AboutPage149;Ljava/lang/String;)V
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

    .line 66
    iput-object p1, p0, Lcom/cootek/smartinput5/settings/AboutPage149$1;->this$0:Lcom/cootek/smartinput5/settings/AboutPage149;

    iput-object p2, p0, Lcom/cootek/smartinput5/settings/AboutPage149$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 67
    :try_start_0
    iget-object p1, p0, Lcom/cootek/smartinput5/settings/AboutPage149$1;->this$0:Lcom/cootek/smartinput5/settings/AboutPage149;

    invoke-static {p1}, Lcom/cootek/smartinput5/settings/AboutPage149;->access$000(Lcom/cootek/smartinput5/settings/AboutPage149;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/cootek/smartinput5/settings/AboutPage149$1;->val$url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p1, p0, Lcom/cootek/smartinput5/settings/AboutPage149$1;->this$0:Lcom/cootek/smartinput5/settings/AboutPage149;

    invoke-static {p1}, Lcom/cootek/smartinput5/settings/AboutPage149;->access$000(Lcom/cootek/smartinput5/settings/AboutPage149;)Landroid/app/Activity;

    move-result-object p1

    const-string v0, "\u0414\u043b\u044f \u043e\u0442\u043a\u0440\u044b\u0442\u0438\u044f \u0441\u0441\u044b\u043b\u043a\u0438 \u043d\u0443\u0436\u0435\u043d \u0431\u0440\u0430\u0443\u0437\u0435\u0440"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 69
    :goto_0
    return-void
.end method
