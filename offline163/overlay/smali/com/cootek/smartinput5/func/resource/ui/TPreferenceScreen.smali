.class public Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;
.super Landroid/preference/PreferenceGroup;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/PreferenceManager$OnActivityDestroyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen$SavedState;
    }
.end annotation


# instance fields
.field private mAdapterClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mBackroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mDialog:Landroid/app/Dialog;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mListView:Landroid/widget/ListView;

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mRootAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x101008b

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mAdapterClazz:Ljava/lang/Class;

    const/4 v1, 0x0

    iput v1, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mPaddingLeft:I

    iput v1, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mPaddingRight:I

    iput v1, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mPaddingTop:I

    iput v1, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mPaddingBottom:I

    iput-object v0, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mAdapterClazz:Ljava/lang/Class;

    const/4 v0, 0x0

    iput v0, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mPaddingLeft:I

    iput v0, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mPaddingRight:I

    iput v0, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mPaddingTop:I

    iput v0, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mPaddingBottom:I

    iput-object p3, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method private clickPreference(Landroid/preference/Preference;)V
    .locals 3

    invoke-virtual {p1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-class v0, Landroid/preference/Preference;

    const/4 v1, 0x0

    const-string v2, "onClick"

    invoke-static {v0, p1, v2, v1}, Lcom/cootek/smartinput5/func/resource/b;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/preference/Preference;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->notifyChanged()V

    invoke-virtual {p1}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    :try_start_0
    invoke-static {p1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method private doShowDialog(Landroid/content/Context;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Landroid/app/Dialog;

    invoke-static {p1}, Lcom/cootek/smartinput5/mod/ThemeMod;->getDialogStyle(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/Window;->requestFeature(I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/cootek/smartinput5/ui/settings/j;->a(Landroid/preference/PreferenceManager;Landroid/preference/PreferenceManager$OnActivityDestroyListener;)V

    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {v0, p3}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Landroid/os/BadParcelableException;->printStackTrace()V

    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private getAdapterClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mAdapterClazz:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "android.preference.PreferenceGroupAdapter"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mAdapterClazz:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mAdapterClazz:Ljava/lang/Class;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-static {p1, p0, p2}, Lcom/cootek/smartinput5/func/resource/PreferenceUpdater;->updatePref(Landroid/content/Context;Landroid/preference/Preference;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private showDialog(Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v3, 0x7f0c00f8

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    const v3, 0x7f0a03a0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mListView:Landroid/widget/ListView;

    const v3, 0x7f0c014a

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen$a;

    invoke-direct {v3, p0}, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen$a;-><init>(Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;)V

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v1, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mBackroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mListView:Landroid/widget/ListView;

    invoke-static {v1}, Lcom/cootek/smartinput/utilities/v;->a(Landroid/widget/ListView;)V

    :cond_3
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->onAttachedToActivity()V

    invoke-direct {p0, v0, v2, p1}, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->doShowDialog(Landroid/content/Context;Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public getRootAdapter()Landroid/widget/ListAdapter;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->getAdapterClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/preference/PreferenceGroup;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/widget/ListAdapter;

    iput-object v0, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected notifyChanged()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceGroup;->notifyChanged()V

    return-void
.end method

.method protected notifyHierarchyChanged()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceGroup;->notifyHierarchyChanged()V

    return-void
.end method

.method public onActivityDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceGroup;->onClick()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/cootek/smartinput5/ui/settings/j;->b(Landroid/preference/PreferenceManager;Landroid/preference/PreferenceManager$OnActivityDestroyListener;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mDialog:Landroid/app/Dialog;

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    instance-of p2, p1, Landroid/widget/ListView;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p2

    sub-int/2addr p3, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-interface {p2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Landroid/preference/Preference;

    if-nez p3, :cond_1

    return-void

    :cond_1
    instance-of p3, p2, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;

    if-eqz p3, :cond_2

    move-object p3, p2

    check-cast p3, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;

    invoke-virtual {p3, p1}, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->updateListParams(Landroid/widget/ListView;)V

    :cond_2
    check-cast p2, Landroid/preference/Preference;

    invoke-direct {p0, p2}, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->clickPreference(Landroid/preference/Preference;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen$SavedState;

    invoke-virtual {p1}, Landroid/preference/Preference$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean p1, p1, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen$SavedState;->h:Z

    return-void

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen$SavedState;

    invoke-direct {v2, v0}, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen$SavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen$SavedState;->h:Z

    invoke-virtual {v1}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v2, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen$SavedState;->i:Landroid/os/Bundle;

    return-object v2

    :cond_1
    :goto_0
    return-object v0
.end method

.method public updateListParams(Landroid/widget/ListView;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mBackroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mPaddingLeft:I

    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mPaddingRight:I

    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mPaddingTop:I

    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Lcom/cootek/smartinput5/func/resource/ui/TPreferenceScreen;->mPaddingBottom:I

    :cond_0
    return-void
.end method
