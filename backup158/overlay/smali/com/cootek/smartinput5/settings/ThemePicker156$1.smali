.class Lcom/cootek/smartinput5/settings/ThemePicker156$1;
.super Ljava/lang/Object;
.source "ThemePicker156.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/settings/ThemePicker156;->open(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$items:Ljava/util/ArrayList;

.field final synthetic val$manager:Lcom/cootek/smartinput5/func/i0;

.field final synthetic val$page:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/cootek/smartinput5/func/i0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/cootek/smartinput5/settings/ThemePicker156$1;->val$page:Landroid/app/Activity;

    iput-object p2, p0, Lcom/cootek/smartinput5/settings/ThemePicker156$1;->val$items:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/cootek/smartinput5/settings/ThemePicker156$1;->val$manager:Lcom/cootek/smartinput5/func/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/ThemePicker156$1;->val$page:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    if-ltz p2, :cond_4

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/ThemePicker156$1;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto/16 :goto_2

    .line 55
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->J0()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/ThemePicker156$1;->val$manager:Lcom/cootek/smartinput5/func/i0;

    if-ne v0, v1, :cond_3

    .line 56
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/ThemePicker156$1;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cootek/smartinput5/settings/ThemePicker156$Choice;

    iget-object p2, p2, Lcom/cootek/smartinput5/settings/ThemePicker156$Choice;->id:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/ThemePicker156$1;->val$manager:Lcom/cootek/smartinput5/func/i0;

    invoke-virtual {v0, p2}, Lcom/cootek/smartinput5/func/i0;->U0(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p2, p0, Lcom/cootek/smartinput5/settings/ThemePicker156$1;->val$items:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/cootek/smartinput5/settings/ThemePicker156;->access$000(Landroid/content/DialogInterface;Ljava/util/ArrayList;)V

    iget-object p2, p0, Lcom/cootek/smartinput5/settings/ThemePicker156$1;->val$page:Landroid/app/Activity;

    const-string v0, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u043f\u0440\u0438\u043c\u0435\u043d\u0438\u0442\u044c \u0442\u0435\u043c\u0443. \u0412\u044b\u0431\u0435\u0440\u0438 \u0434\u0440\u0443\u0433\u0443\u044e \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u0443\u044e \u0442\u0435\u043c\u0443."

    invoke-static {p2, v0}, Lcom/cootek/smartinput5/settings/ThemePicker156;->access$100(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 58
    :cond_1
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x54

    invoke-virtual {v0, v1, p2}, Lcom/cootek/smartinput5/engine/Settings;->setStringSetting(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Settings;->writeBack()V

    .line 59
    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getStringSetting(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/cootek/smartinput5/settings/ThemePicker156$1;->val$items:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/cootek/smartinput5/settings/ThemePicker156;->access$000(Landroid/content/DialogInterface;Ljava/util/ArrayList;)V

    iget-object p2, p0, Lcom/cootek/smartinput5/settings/ThemePicker156$1;->val$page:Landroid/app/Activity;

    const-string v0, "\u0422\u0435\u043c\u0430 \u0432\u044b\u0431\u0440\u0430\u043d\u0430, \u043d\u043e \u0441\u043e\u0445\u0440\u0430\u043d\u0435\u043d\u0438\u0435 \u043d\u0435 \u043f\u043e\u0434\u0442\u0432\u0435\u0440\u0436\u0434\u0435\u043d\u043e. \u041f\u043e\u0432\u0442\u043e\u0440\u0438 \u0432\u044b\u0431\u043e\u0440."

    invoke-static {p2, v0}, Lcom/cootek/smartinput5/settings/ThemePicker156;->access$100(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 60
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 55
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Skins changed"

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :catch_0
    move-exception p1

    iget-object p1, p0, Lcom/cootek/smartinput5/settings/ThemePicker156$1;->val$page:Landroid/app/Activity;

    const-string p2, "\u0414\u0432\u0438\u0436\u043e\u043a \u0442\u0435\u043c\u044b \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u0435\u043d. \u041e\u0442\u043a\u0440\u043e\u0439 \u043a\u043b\u0430\u0432\u0438\u0430\u0442\u0443\u0440\u0443 \u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0438 \u0432\u044b\u0431\u043e\u0440."

    invoke-static {p1, p2}, Lcom/cootek/smartinput5/settings/ThemePicker156;->access$100(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 61
    :catch_1
    move-exception p2

    iget-object p2, p0, Lcom/cootek/smartinput5/settings/ThemePicker156$1;->val$items:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/cootek/smartinput5/settings/ThemePicker156;->access$000(Landroid/content/DialogInterface;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/settings/ThemePicker156$1;->val$page:Landroid/app/Activity;

    const-string p2, "\u041d\u0435 \u0443\u0434\u0430\u043b\u043e\u0441\u044c \u0437\u0430\u0432\u0435\u0440\u0448\u0438\u0442\u044c \u0432\u044b\u0431\u043e\u0440 \u0442\u0435\u043c\u044b. \u041f\u043e\u0432\u0442\u043e\u0440\u0438 \u043e\u0442\u043a\u0440\u044b\u0442\u0438\u0435 \u0441\u043f\u0438\u0441\u043a\u0430."

    invoke-static {p1, p2}, Lcom/cootek/smartinput5/settings/ThemePicker156;->access$100(Landroid/app/Activity;Ljava/lang/String;)V

    .line 62
    :goto_0
    nop

    .line 63
    :goto_1
    return-void

    .line 53
    :cond_4
    :goto_2
    return-void
.end method
