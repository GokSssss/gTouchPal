.class Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$4;
.super Ljava/lang/Object;
.source "SizeSettingsPage.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;Landroid/app/Activity;)V
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

    .line 268
    iput-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$4;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    iput-object p2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .line 270
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$4;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->access$000(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 271
    :cond_0
    nop

    .line 272
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$4;->val$activity:Landroid/app/Activity;

    invoke-static {v2, p2}, Lcom/cootek/smartinput5/sizes/CandidateDividers;->setEnabled(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    const/4 p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    const/4 p2, 0x0

    .line 274
    :goto_0
    iget-object v2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$4;->val$activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/cootek/smartinput5/sizes/CandidateDividers;->isEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 275
    iget-object v3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$4;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    invoke-static {v3, v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->access$002(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;Z)Z

    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$4;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    invoke-static {p1, v1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->access$002(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;Z)Z

    .line 276
    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$4;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    invoke-static {p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->access$300(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;)Lcom/cootek/smartinput5/settings/SizePreview;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/cootek/smartinput5/settings/SizePreview;->setDividers(Z)V

    .line 277
    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$4;->val$activity:Landroid/app/Activity;

    const-string p2, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0441\u043e\u0445\u0440\u0430\u043d\u0438\u0442\u044c \u0440\u0430\u0437\u0434\u0435\u043b\u0438\u0442\u0435\u043b\u0438"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 278
    :cond_1
    return-void
.end method
