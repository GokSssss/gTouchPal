.class final Lcom/cootek/smartinput5/settings/KeyboardActivation152$Watcher;
.super Landroid/database/ContentObserver;
.source "KeyboardActivation152.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput5/settings/KeyboardActivation152;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Watcher"
.end annotation


# instance fields
.field final handler:Landroid/os/Handler;

.field final item:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/cootek/smartinput5/settings/KeyboardActivation152$Activation;",
            ">;"
        }
    .end annotation
.end field

.field final owner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/preference/PreferenceActivity;",
            ">;"
        }
    .end annotation
.end field

.field posted:Z

.field registered:Z

.field final resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceActivity;Lcom/cootek/smartinput5/settings/KeyboardActivation152$Activation;)V
    .locals 2

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Watcher;->handler:Landroid/os/Handler;

    .line 122
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Watcher;->owner:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Watcher;->item:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Watcher;->resolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private schedule()V
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Watcher;->registered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Watcher;->posted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Watcher;->posted:Z

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Watcher;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Watcher;->schedule()V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Watcher;->schedule()V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 133
    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Watcher;->start()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Watcher;->run()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 134
    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Watcher;->stop()V

    return-void
.end method

.method public run()V
    .locals 2

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Watcher;->posted:Z

    iget-boolean v0, p0, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Watcher;->registered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Watcher;->owner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Watcher;->item:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Activation;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Activation;->refresh()V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Watcher;->stop()V

    return-void
.end method

.method start()V
    .locals 3

    .line 124
    iget-boolean v0, p0, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Watcher;->registered:Z

    if-eqz v0, :cond_0

    return-void

    .line 125
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Watcher;->resolver:Landroid/content/ContentResolver;

    const-string v1, "default_input_method"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Watcher;->resolver:Landroid/content/ContentResolver;

    const-string v1, "enabled_input_methods"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Watcher;->registered:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Watcher;->resolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    nop

    .line 127
    return-void
.end method

.method stop()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Watcher;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Watcher;->posted:Z

    iget-boolean v1, p0, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Watcher;->registered:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Watcher;->resolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    iput-boolean v0, p0, Lcom/cootek/smartinput5/settings/KeyboardActivation152$Watcher;->registered:Z

    :cond_0
    return-void
.end method
