.class Lcom/cootek/smartinput5/settings/SizeRuntimeStore$1;
.super Ljava/lang/Object;
.source "SizeRuntimeStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->scheduleKeyboardHidden(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/cootek/smartinput5/settings/SizeRuntimeStore$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeRuntimeStore$1;->val$view:Landroid/view/View;

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->keyboardHidden(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->access$002(Z)Z

    :goto_0
    return-void
.end method
