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

    .line 106
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method color(Landroid/widget/TextView;)V
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Activation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/KeyboardActivation152;->active(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Activation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SettingsIcons149;->dark(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0x101011

    goto :goto_0

    :cond_0
    const v0, -0xdfdfe0

    goto :goto_0

    :cond_1
    const v0, -0x1aacad

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method refresh()V
    .locals 3

    .line 109
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

    .line 110
    const-string v0, "\u0412\u044b\u0431\u0440\u0430\u0442\u044c TouchPal \u0434\u043b\u044f \u0432\u0432\u043e\u0434\u0430"

    goto :goto_0

    :cond_1
    const-string v0, "\u0420\u0430\u0437\u0440\u0435\u0448\u0438\u0442\u044c TouchPal \u0432 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430\u0445 Android"

    .line 109
    :goto_0
    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Activation;->setSummary(Ljava/lang/CharSequence;)V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/cootek/smartinput5/settings/KeyboardActivation152;->access$000()Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 112
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 113
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_2

    invoke-virtual {p0, v2}, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Activation;->color(Landroid/widget/TextView;)V

    .line 114
    :cond_2
    goto :goto_1

    .line 115
    :cond_3
    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Activation;->notifyChanged()V

    .line 116
    return-void
.end method
