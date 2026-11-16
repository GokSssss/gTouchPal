.class Lcom/cootek/smartinput5/settings/CompactSettings$1;
.super Ljava/lang/Object;
.source "CompactSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/settings/CompactSettings;->install(Landroid/preference/PreferenceActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$owner:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/cootek/smartinput5/settings/CompactSettings$1;->val$owner:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$1;->val$owner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 27
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 28
    :cond_0
    invoke-static {v0}, Lcom/cootek/smartinput5/settings/ServiceSettings150;->install(Landroid/preference/PreferenceActivity;)V

    .line 29
    invoke-static {v0}, Lcom/cootek/smartinput5/settings/KeyboardActivation152;->install(Landroid/preference/PreferenceActivity;)V

    .line 30
    invoke-static {v0}, Lcom/cootek/smartinput5/settings/LandscapeHeight152;->arrange(Landroid/preference/PreferenceActivity;)V

    .line 31
    invoke-static {v0}, Lcom/cootek/smartinput5/settings/RecentSettings146;->install(Landroid/preference/PreferenceActivity;)V

    .line 32
    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SmartInput153;->install(Landroid/preference/PreferenceActivity;)V

    .line 33
    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SettingsIcons149;->configurePage(Landroid/preference/PreferenceActivity;)V

    .line 34
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 35
    invoke-static {v0}, Lcom/cootek/smartinput5/settings/SettingsIcons149;->dark(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, -0xdfdfe0

    goto :goto_0

    :cond_1
    const v0, -0x50506

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 36
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;

    if-nez v2, :cond_2

    new-instance v2, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;

    invoke-direct {v2, v0}, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;-><init>(Landroid/widget/ListAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 38
    :cond_2
    return-void

    .line 27
    :cond_3
    :goto_1
    return-void
.end method
