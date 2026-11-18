.class public final Lcom/cootek/smartinput5/settings/ThemePicker156;
.super Ljava/lang/Object;
.source "ThemePicker156.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static open(Landroid/app/Activity;)V
    .locals 2

    .line 8
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lcom/cootek/smartinput5/pluginwidget/t;

    invoke-direct {v0}, Lcom/cootek/smartinput5/pluginwidget/t;-><init>()V

    invoke-virtual {v0, p0}, Lcom/cootek/smartinput5/pluginwidget/t;->c(Landroid/content/Context;)V

    .line 10
    return-void

    .line 8
    :cond_1
    :goto_0
    return-void
.end method
