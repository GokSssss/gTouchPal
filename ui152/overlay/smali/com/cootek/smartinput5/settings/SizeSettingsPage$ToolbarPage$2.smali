.class Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage$2;
.super Ljava/lang/Object;
.source "SizeSettingsPage.java"

# interfaces
.implements Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets$Selection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 486
    iput-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage$2;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(I)V
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage$2;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;

    invoke-static {v0, p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->access$1402(Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;I)I

    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage$2;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$ToolbarPage;->reload()V

    return-void
.end method
