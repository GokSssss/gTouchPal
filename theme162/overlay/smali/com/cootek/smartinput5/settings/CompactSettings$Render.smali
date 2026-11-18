.class final Lcom/cootek/smartinput5/settings/CompactSettings$Render;
.super Ljava/lang/Object;
.source "CompactSettings.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput5/settings/CompactSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Render"
.end annotation


# instance fields
.field final decor:Landroid/view/View;

.field final owner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/preference/PreferenceActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/preference/PreferenceActivity;Landroid/view/View;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Render;->owner:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Render;->decor:Landroid/view/View;

    return-void
.end method


# virtual methods
.method close()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Render;->decor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Render;->decor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Render;->decor:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public onPreDraw()Z
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Render;->owner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    return v0

    .line 74
    :cond_1
    invoke-static {v0}, Lcom/cootek/smartinput5/settings/CompactSettings;->access$000(Landroid/preference/PreferenceActivity;)V

    invoke-static {v0, v2}, Lcom/cootek/smartinput5/settings/CompactSettings;->access$100(Landroid/preference/PreferenceActivity;Landroid/widget/ListView;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/CompactSettings$Render;->close()V

    xor-int/2addr v0, v1

    return v0

    .line 72
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/CompactSettings$Render;->close()V

    return v1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 76
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/CompactSettings$Render;->close()V

    return-void
.end method
