.class final Lcom/cootek/smartinput5/settings/KeyboardActivation152$Activation;
.super Landroid/preference/Preference;
.source "KeyboardActivation152.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput5/settings/KeyboardActivation152;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Activation"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method refresh()V
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Activation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/KeyboardActivation152;->active(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TouchPal \u0432\u043a\u043b\u044e\u0447\u0451\u043d"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Activation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/KeyboardActivation152;->enabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    const-string v0, "\u0412\u044b\u0431\u0440\u0430\u0442\u044c TouchPal \u0434\u043b\u044f \u0432\u0432\u043e\u0434\u0430"

    goto :goto_0

    :cond_1
    const-string v0, "\u0420\u0430\u0437\u0440\u0435\u0448\u0438\u0442\u044c TouchPal \u0432 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430\u0445 Android"

    .line 85
    :goto_0
    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Activation;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Activation;->notifyChanged()V

    .line 88
    return-void
.end method
