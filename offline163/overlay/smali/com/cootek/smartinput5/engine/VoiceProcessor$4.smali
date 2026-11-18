.class Lcom/cootek/smartinput5/engine/VoiceProcessor$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/engine/VoiceProcessor;->showNetworkUnavailableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cootek/smartinput5/engine/VoiceProcessor;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/engine/VoiceProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/engine/VoiceProcessor$4;->this$0:Lcom/cootek/smartinput5/engine/VoiceProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.WIFI_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object p2, p0, Lcom/cootek/smartinput5/engine/VoiceProcessor$4;->this$0:Lcom/cootek/smartinput5/engine/VoiceProcessor;

    invoke-static {p2}, Lcom/cootek/smartinput5/engine/VoiceProcessor;->access$000(Lcom/cootek/smartinput5/engine/VoiceProcessor;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
