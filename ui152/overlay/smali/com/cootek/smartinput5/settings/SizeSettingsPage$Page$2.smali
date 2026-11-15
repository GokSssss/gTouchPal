.class Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$2;
.super Ljava/lang/Object;
.source "SizeSettingsPage.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    .line 243
    iput-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$2;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 247
    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$2;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    invoke-static {p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->access$000(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$2;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    iget-object p3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$2;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    invoke-static {p3}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->access$100(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;)Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/cootek/smartinput5/sizes/SizePixels130$Steps;->at(I)I

    move-result p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->access$200(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;II)V

    .line 248
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 244
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 245
    return-void
.end method
