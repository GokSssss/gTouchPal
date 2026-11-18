.class Lcom/cootek/smartinput/utilities/TJavascriptHandler$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput/utilities/TJavascriptHandler;->restart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/cootek/smartinput/utilities/TJavascriptHandler;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput/utilities/TJavascriptHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler$b;->h:Lcom/cootek/smartinput/utilities/TJavascriptHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler$b;->h:Lcom/cootek/smartinput/utilities/TJavascriptHandler;

    invoke-static {v0}, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->access$300(Lcom/cootek/smartinput/utilities/TJavascriptHandler;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler$b;->h:Lcom/cootek/smartinput/utilities/TJavascriptHandler;

    invoke-static {v1}, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->access$300(Lcom/cootek/smartinput/utilities/TJavascriptHandler;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    iget-object v1, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler$b;->h:Lcom/cootek/smartinput/utilities/TJavascriptHandler;

    invoke-static {v1}, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->access$300(Lcom/cootek/smartinput/utilities/TJavascriptHandler;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
