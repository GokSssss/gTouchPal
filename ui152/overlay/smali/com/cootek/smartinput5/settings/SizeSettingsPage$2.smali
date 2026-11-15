.class Lcom/cootek/smartinput5/settings/SizeSettingsPage$2;
.super Ljava/lang/Object;
.source "SizeSettingsPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/settings/SizeSettingsPage;->pageHeader(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;Lcom/cootek/smartinput5/settings/SizeSettingsPage$SettingsTheme;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 445
    iput-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 445
    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SizeSettingsPage$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
