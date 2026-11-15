.class Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets$1;
.super Ljava/lang/Object;
.source "SizeSettingsPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;-><init>(Landroid/content/Context;Lcom/cootek/smartinput5/settings/SizePreview;ZLcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets$Selection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;

.field final synthetic val$selection:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets$Selection;

.field final synthetic val$slot:I


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets$Selection;I)V
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

    .line 508
    iput-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets$1;->this$0:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets;

    iput-object p2, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets$1;->val$selection:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets$Selection;

    iput p3, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets$1;->val$slot:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 508
    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets$1;->val$selection:Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets$Selection;

    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets$1;->val$slot:I

    invoke-interface {p1, v0}, Lcom/cootek/smartinput5/settings/SizeSettingsPage$PanelTargets$Selection;->select(I)V

    return-void
.end method
