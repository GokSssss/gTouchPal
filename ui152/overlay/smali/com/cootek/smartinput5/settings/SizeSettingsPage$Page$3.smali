.class Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$3;
.super Ljava/lang/Object;
.source "SizeSettingsPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$nativeRaw:I

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;II)V
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

    .line 257
    iput-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$3;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    iput p2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$3;->val$value:I

    iput p3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$3;->val$nativeRaw:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 257
    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$3;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;

    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$3;->val$value:I

    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page$3;->val$nativeRaw:I

    invoke-static {p1, v0, v1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;->access$200(Lcom/cootek/smartinput5/settings/SizeSettingsPage$Page;II)V

    return-void
.end method
