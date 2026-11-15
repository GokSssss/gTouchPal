.class Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$5;
.super Ljava/lang/Object;
.source "SizeSettingsPage.java"

# interfaces
.implements Lcom/cootek/smartinput5/settings/SizeDrag134$Listener;


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


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 286
    iput-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$5;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public available()Z
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$5;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->access$300(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;)Lcom/cootek/smartinput5/settings/SizePreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/settings/SizePreview;->hasNativeGeometry()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$5;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->access$600(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;)I

    move-result v0

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SizeModel;->isHeight(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$5;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->access$700(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;)Lcom/cootek/smartinput5/settings/SizeRuntimeStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/settings/SizeRuntimeStore;->height()Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;

    move-result-object v0

    iget-boolean v0, v0, Lcom/cootek/smartinput5/ui/SizePreviewBridge$HeightSpec;->available:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cancel()V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$5;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->access$402(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;I)I

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$5;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->access$1100(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;)V

    return-void
.end method

.method public change(IZ)V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$5;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->access$600(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;)I

    move-result v0

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SizeModel;->isHeight(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$5;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    invoke-static {v0, p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->access$800(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 294
    :goto_0
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$5;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    invoke-static {v1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->access$600(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;)I

    move-result v1

    invoke-static {v1}, Lcom/cootek/smartinput5/settings/SizeModel;->isHeight(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$5;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    invoke-static {p1, v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->access$900(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;I)I

    move-result p1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$5;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    invoke-static {v1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->access$100(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;)Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;->nearest(I)I

    move-result p1

    .line 295
    :goto_1
    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$5;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    const/4 v1, -0x1

    invoke-static {p2, v1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->access$402(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;I)I

    iget-object p2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$5;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    invoke-static {p2, p1, v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->access$200(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;II)V

    goto :goto_2

    .line 296
    :cond_2
    iget-object p2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$5;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    invoke-static {p2, p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->access$402(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;I)I

    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$5;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    invoke-static {p1, v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->access$1002(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;I)I

    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$5;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    invoke-static {p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->access$1100(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;)V

    .line 297
    :goto_2
    return-void
.end method

.method public maximum()I
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$5;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->access$100(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;)Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;

    move-result-object v0

    iget v0, v0, Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;->last:I

    return v0
.end method

.method public minimum()I
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$5;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->access$100(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;)Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;

    move-result-object v0

    iget v0, v0, Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;->first:I

    return v0
.end method

.method public step()I
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$5;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->access$100(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;)Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;

    move-result-object v0

    iget v0, v0, Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;->step:I

    return v0
.end method

.method public value()I
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$5;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->access$400(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$5;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->access$400(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$5;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->access$500(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;)I

    move-result v0

    :goto_0
    return v0
.end method
