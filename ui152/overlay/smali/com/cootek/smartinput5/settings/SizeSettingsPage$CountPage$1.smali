.class Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage$1;
.super Ljava/lang/Object;
.source "SizeSettingsPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;Landroid/app/Activity;I)V
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

    .line 545
    iput-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage$1;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;

    iput-object p2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage$1;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage$1;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 545
    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage$1;->val$activity:Landroid/app/Activity;

    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage$1;->val$count:I

    invoke-static {p1, v0}, Lcom/cootek/smartinput5/settings/CandidatePanel141;->choose(Landroid/content/Context;I)Z

    move-result p1

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage$1;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage;->reload()V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$CountPage$1;->val$activity:Landroid/app/Activity;

    const-string v0, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u043e\u0434\u0442\u0432\u0435\u0440\u0434\u0438\u0442\u044c \u0441\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u0438\u0435 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
