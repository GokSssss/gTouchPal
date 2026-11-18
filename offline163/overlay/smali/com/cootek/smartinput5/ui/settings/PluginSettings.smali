.class public Lcom/cootek/smartinput5/ui/settings/PluginSettings;
.super Landroid/preference/PreferenceActivity;

# interfaces
.implements Lcom/cootek/smartinput5/func/Y$a;
.implements Lcom/cootek/smartinput5/ui/settings/PluginPreference$f;


# instance fields
.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cootek/smartinput5/func/h;",
            ">;"
        }
    .end annotation
.end field

.field i:Landroid/widget/PopupWindow;

.field j:Landroid/widget/TextView;

.field k:Lcom/cootek/smartinput5/ui/settings/PluginPreference;

.field l:Landroid/preference/PreferenceCategory;

.field m:I

.field n:Ljava/lang/String;

.field o:[I

.field p:I

.field private q:I

.field private r:I

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->h:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->o:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->p:I

    return-void
.end method

.method private A()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->l:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->removeAll()V

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->l:Landroid/preference/PreferenceCategory;

    :cond_0
    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->i:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->i:Landroid/widget/PopupWindow;

    :cond_1
    return-void
.end method

.method private B(I)V
    .locals 5

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->i:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->k:Lcom/cootek/smartinput5/ui/settings/PluginPreference;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-gez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->l:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_3

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->n()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getBottom()I

    move-result v2

    if-lt v0, v2, :cond_2

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->o()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    :goto_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->l:Landroid/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->m:I

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->o()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->t(I)I

    move-result v2

    sub-int v0, v2, v0

    if-gez v0, :cond_4

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->B(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v0, v3, :cond_5

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->B(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    iput p1, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->m:I

    :cond_6
    :goto_1
    return-void
.end method

.method private C(II)V
    .locals 3

    iget p1, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->m:I

    if-ltz p1, :cond_5

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->l:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-le p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->o()I

    move-result p1

    sub-int p1, p2, p1

    iget v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->m:I

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->l:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->l:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_1
    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->l:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/cootek/smartinput5/ui/settings/PluginPreference;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/settings/PluginPreference;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr v1, v0

    shr-int/lit8 v0, v1, 0x1

    if-le p1, v0, :cond_2

    add-int/lit8 p1, p1, -0xa

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, 0xa

    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->o()I

    move-result v1

    add-int/2addr p1, v1

    invoke-direct {p0, v0, p1}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->s(II)I

    move-result p1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->l:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->n()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->o()I

    move-result v1

    sub-int v1, p2, v1

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->n()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    if-gt v1, v2, :cond_3

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->o()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_4

    :cond_3
    move p1, v0

    :cond_4
    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->B(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method private D()V
    .locals 6

    const-string v0, "plugin_list"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->l:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    new-instance v0, Lcom/cootek/smartinput5/ui/settings/CustomizableCheckBoxPreference;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cootek/smartinput5/ui/settings/CustomizableCheckBoxPreference;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cootek/smartinput5/func/h;

    check-cast v3, Lcom/cootek/smartinput5/func/X;

    iget v4, v3, Lcom/cootek/smartinput5/func/X;->l:I

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v3, Lcom/cootek/smartinput5/func/X;->h:Ljava/lang/String;

    const-string v5, "hw_mask"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cootek/smartinput5/func/z;->d0()Lcom/cootek/smartinput5/func/N;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "chinese_pinyin"

    invoke-virtual {v4, v5}, Lcom/cootek/smartinput5/func/N;->O0(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/cootek/smartinput5/ui/settings/PluginPreference;

    invoke-direct {v4, p0}, Lcom/cootek/smartinput5/ui/settings/PluginPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Lcom/cootek/smartinput5/ui/settings/CustomizablePreference;->setModelPreference(Landroid/preference/Preference;)V

    iget-object v5, v3, Lcom/cootek/smartinput5/func/X;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v5, v3, Lcom/cootek/smartinput5/func/X;->k:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v5, v3, Lcom/cootek/smartinput5/func/X;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/cootek/smartinput5/ui/settings/PluginPreference;->setOnClickListener(Lcom/cootek/smartinput5/ui/settings/PluginPreference$f;)V

    iget-boolean v5, v3, Lcom/cootek/smartinput5/func/X;->n:Z

    invoke-virtual {v4, v5}, Lcom/cootek/smartinput5/ui/settings/PluginPreference;->setChecked(Z)V

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setOrder(I)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/cootek/smartinput5/func/h;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Lcom/cootek/smartinput5/ui/settings/PluginPreference;->setEnableUninstall(Z)V

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->l:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    move v2, v5

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/cootek/smartinput5/ui/settings/PluginSettings;)I
    .locals 0

    iget p0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->q:I

    return p0
.end method

.method static synthetic e(Lcom/cootek/smartinput5/ui/settings/PluginSettings;I)I
    .locals 0

    iput p1, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->q:I

    return p1
.end method

.method static synthetic f(Lcom/cootek/smartinput5/ui/settings/PluginSettings;)I
    .locals 0

    iget p0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->s:I

    return p0
.end method

.method static synthetic g(Lcom/cootek/smartinput5/ui/settings/PluginSettings;I)I
    .locals 0

    iput p1, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->s:I

    return p1
.end method

.method static synthetic h(Lcom/cootek/smartinput5/ui/settings/PluginSettings;)I
    .locals 0

    iget p0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->r:I

    return p0
.end method

.method static synthetic i(Lcom/cootek/smartinput5/ui/settings/PluginSettings;I)I
    .locals 0

    iput p1, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->r:I

    return p1
.end method

.method static synthetic j(Lcom/cootek/smartinput5/ui/settings/PluginSettings;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->C(II)V

    return-void
.end method

.method static synthetic k(Lcom/cootek/smartinput5/ui/settings/PluginSettings;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->t(I)I

    move-result p0

    return p0
.end method

.method static synthetic l(Lcom/cootek/smartinput5/ui/settings/PluginSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->B(I)V

    return-void
.end method

.method private n()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->l:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->l:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/cootek/smartinput5/ui/settings/PluginPreference;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/settings/PluginPreference;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private o()I
    .locals 2

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->o:[I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->o:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private p(Ljava/lang/String;)Lcom/cootek/smartinput5/func/X;
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cootek/smartinput5/func/h;

    check-cast v1, Lcom/cootek/smartinput5/func/X;

    iget-object v2, v1, Lcom/cootek/smartinput5/func/X;->h:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private q()I
    .locals 2

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->l:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->p:I

    return v0
.end method

.method private r(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->p(Ljava/lang/String;)Lcom/cootek/smartinput5/func/X;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/cootek/smartinput5/func/X;->j:Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private s(II)I
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->l:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->o()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result p1

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->q()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method private t(I)I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->l:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/cootek/smartinput5/ui/settings/PluginPreference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/settings/PluginPreference;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/settings/PluginPreference;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->o()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :goto_0
    sub-int/2addr p1, v0

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->o()I

    move-result p1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private u()V
    .locals 5

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->i:Landroid/widget/PopupWindow;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c00f6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, -0x55555556

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->i:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->i:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070331

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0a0398

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->j:Landroid/widget/TextView;

    new-instance v1, Lcom/cootek/smartinput5/ui/settings/PluginSettings$a;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings$a;-><init>(Lcom/cootek/smartinput5/ui/settings/PluginSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0a026e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    new-instance v3, Lcom/cootek/smartinput5/ui/settings/PluginSettings$b;

    invoke-direct {v3, p0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings$b;-><init>(Lcom/cootek/smartinput5/ui/settings/PluginSettings;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v1, 0x7f0a008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    new-instance v1, Lcom/cootek/smartinput5/ui/settings/PluginSettings$c;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings$c;-><init>(Lcom/cootek/smartinput5/ui/settings/PluginSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/cootek/smartinput5/ui/settings/PluginSettings$d;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings$d;-><init>(Lcom/cootek/smartinput5/ui/settings/PluginSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private x()V
    .locals 2

    const-string v0, "OptionPaoPao"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private y()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->l:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->l:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/cootek/smartinput5/ui/settings/PluginPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/cootek/smartinput5/ui/settings/PluginPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "hw_mask"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v3

    const/16 v4, 0x30

    invoke-virtual {v2}, Lcom/cootek/smartinput5/ui/settings/PluginPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    invoke-virtual {v2}, Lcom/cootek/smartinput5/ui/settings/PluginPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/func/z;->o0()Lcom/cootek/smartinput5/func/paopao/b;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/cootek/smartinput5/func/paopao/a;->h(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/cootek/smartinput5/func/paopao/b;->B(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "typing_speed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v3

    const/16 v4, 0x58

    invoke-virtual {v2}, Lcom/cootek/smartinput5/ui/settings/PluginPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v3, v4, v2}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    const/16 v2, 0x53

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/cootek/smartinput5/engine/Settings;->setStringSetting(ILjava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->q0()Lcom/cootek/smartinput5/func/Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/Y;->p()V

    return-void
.end method

.method private z()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->i:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->u()V

    :cond_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->m()V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->q0()Lcom/cootek/smartinput5/func/Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/Y;->e()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->h:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->D()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->y()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->z()V

    return-void
.end method

.method public b(Lcom/cootek/smartinput5/ui/settings/PluginPreference;)V
    .locals 2

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->p(Ljava/lang/String;)Lcom/cootek/smartinput5/func/X;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/h;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DELETE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {p0, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Lcom/cootek/smartinput5/ui/settings/PluginPreference;)V
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->k:Lcom/cootek/smartinput5/ui/settings/PluginPreference;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->m()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->m()V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/ui/settings/PluginPreference;->setSelected(Z)V

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->k:Lcom/cootek/smartinput5/ui/settings/PluginPreference;

    invoke-virtual {p1}, Landroid/preference/Preference;->getOrder()I

    move-result v0

    iput v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->m:I

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->t(I)I

    move-result v0

    iput v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->r:I

    :try_start_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->i:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/settings/PluginPreference;->getContentView()Landroid/view/View;

    move-result-object p1

    iget v1, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->r:I

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v2, v1}, Lcom/cootek/smartinput5/ui/control/z;->c(Landroid/widget/PopupWindow;Landroid/view/View;III)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->k:Lcom/cootek/smartinput5/ui/settings/PluginPreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/settings/PluginPreference;->setSelected(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->k:Lcom/cootek/smartinput5/ui/settings/PluginPreference;

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->m:I

    :try_start_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/cootek/smartinput5/func/z;->G0(Landroid/content/Context;)V

    const p1, 0x7f120006

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->x()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->A()V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->A()V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->m()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->q0()Lcom/cootek/smartinput5/func/Y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cootek/smartinput5/func/Y;->q(Lcom/cootek/smartinput5/func/Y$a;)V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->m()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->y()V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->q0()Lcom/cootek/smartinput5/func/Y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cootek/smartinput5/func/Y;->o(Lcom/cootek/smartinput5/func/Y$a;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->z()V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    return-void
.end method

.method public v()Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public w()V
    .locals 4

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->k:Lcom/cootek/smartinput5/ui/settings/PluginPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/preference/Preference;->getOrder()I

    move-result v0

    iget v1, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->m:I

    if-ltz v1, :cond_4

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->l:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-gt v1, v2, :cond_4

    if-eq v1, v0, :cond_4

    add-int/lit8 v2, v0, 0x1

    if-eq v1, v2, :cond_4

    if-le v0, v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, v1, :cond_1

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->l:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOrder(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->k:Lcom/cootek/smartinput5/ui/settings/PluginPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    goto :goto_2

    :cond_2
    if-ge v0, v1, :cond_4

    :goto_1
    if-ge v2, v1, :cond_3

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->l:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOrder(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->k:Lcom/cootek/smartinput5/ui/settings/PluginPreference;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/settings/PluginSettings;->m()V

    return-void
.end method
