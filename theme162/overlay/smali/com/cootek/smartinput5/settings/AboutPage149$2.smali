.class Lcom/cootek/smartinput5/settings/AboutPage149$2;
.super Ljava/lang/Object;
.source "AboutPage149.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/settings/AboutPage149;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cootek/smartinput5/settings/AboutPage149;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/settings/AboutPage149;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/cootek/smartinput5/settings/AboutPage149$2;->this$0:Lcom/cootek/smartinput5/settings/AboutPage149;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 89
    iget-object p1, p0, Lcom/cootek/smartinput5/settings/AboutPage149$2;->this$0:Lcom/cootek/smartinput5/settings/AboutPage149;

    invoke-static {p1}, Lcom/cootek/smartinput5/settings/AboutPage149;->access$000(Lcom/cootek/smartinput5/settings/AboutPage149;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
