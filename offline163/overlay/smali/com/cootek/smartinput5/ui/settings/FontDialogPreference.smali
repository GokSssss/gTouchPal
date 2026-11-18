.class public Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;
.super Lcom/cootek/smartinput5/ui/settings/CustomizableListPreference;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$b;,
        Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;
    }
.end annotation


# static fields
.field private static final CUSTOM_FONT_VALUE:I = 0x7

.field private static final REQUEST_CODE_PICK_FONT:I = 0x7b

.field private static final SYSTEM_DEFAULT_VLAUE:I = 0x1

.field private static final TOUCHPAL_DEFAULT1_VLAUE:I = 0x2

.field private static final TOUCHPAL_DEFAULT2_VLAUE:I = 0x3

.field private static final TOUCHPAL_DEFAULT3_VLAUE:I = 0x4

.field private static final TOUCHPAL_DEFAULT4_VLAUE:I = 0x5

.field private static final TOUCHPAL_DEFAULT5_VLAUE:I = 0x6

.field private static final TOUCHPAL_DEFAULT_VLAUE:I


# instance fields
.field private mCurrentIndex:I

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/ui/settings/CustomizableListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;->mCurrentIndex:I

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;->updateSummary()V

    return-void
.end method

.method static synthetic access$200(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;)I
    .locals 0

    iget p0, p0, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;->mCurrentIndex:I

    return p0
.end method

.method static synthetic access$202(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;I)I
    .locals 0

    iput p1, p0, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;->getFontItems()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;->openFilePicker()V

    return-void
.end method

.method static synthetic access$500(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;->deleteCustomFont()V

    return-void
.end method

.method static synthetic access$600(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;Landroid/view/View;Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;->getFontView(Landroid/view/View;Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private deleteCustomFont()V
    .locals 15

    :try_start_0
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "custom_font.ttf"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private getFontItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;->getLocalItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private getFontView(Landroid/view/View;Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;)Landroid/view/View;
    .locals 2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;->mInflater:Landroid/view/LayoutInflater;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;->mInflater:Landroid/view/LayoutInflater;

    :cond_0
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c009a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :cond_1
    const v0, 0x7f0a00b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    const v0, 0x7f0a0398

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    invoke-static {p2}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;->a(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;->c(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/CheckedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-object p1
.end method

.method private getIndex()I
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0xf7

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x7

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private getLocalItems()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;-><init>(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$a;)V

    const v3, 0x7f0f0452

    invoke-virtual {p0, v3}, Lcom/cootek/smartinput5/ui/settings/MaterialListPreference;->getResString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;->b(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/cootek/smartinput5/func/r0;->c()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;->d(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;

    invoke-direct {v1, p0, v2}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;-><init>(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$a;)V

    const v2, 0x7f0f0451

    invoke-virtual {p0, v2}, Lcom/cootek/smartinput5/ui/settings/MaterialListPreference;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;->b(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;Ljava/lang/String;)Ljava/lang/String;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v1, v2}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;->d(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;-><init>(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$a;)V

    const v3, 0x7f0f0b5d

    invoke-virtual {p0, v3}, Lcom/cootek/smartinput5/ui/settings/MaterialListPreference;->getResString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;->b(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/cootek/smartinput5/func/r0;->d()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;->d(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;-><init>(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$a;)V

    const v3, 0x7f0f0b5f

    invoke-virtual {p0, v3}, Lcom/cootek/smartinput5/ui/settings/MaterialListPreference;->getResString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;->b(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/cootek/smartinput5/func/r0;->e()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;->d(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;-><init>(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$a;)V

    const v3, 0x7f0f0b61

    invoke-virtual {p0, v3}, Lcom/cootek/smartinput5/ui/settings/MaterialListPreference;->getResString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;->b(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/cootek/smartinput5/func/r0;->f()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;->d(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;-><init>(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$a;)V

    const v3, 0x7f0f0b64

    invoke-virtual {p0, v3}, Lcom/cootek/smartinput5/ui/settings/MaterialListPreference;->getResString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;->b(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/cootek/smartinput5/func/r0;->g()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;->d(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;-><init>(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$a;)V

    const v3, 0x7f0f0b66

    invoke-virtual {p0, v3}, Lcom/cootek/smartinput5/ui/settings/MaterialListPreference;->getResString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;->b(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/cootek/smartinput5/func/r0;->h()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;->d(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;-><init>(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$a;)V

    const v3, 0x7f0f0b67

    invoke-virtual {p0, v3}, Lcom/cootek/smartinput5/ui/settings/MaterialListPreference;->getResString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;->b(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/smartinput5/func/z;->W()Lcom/cootek/smartinput5/func/B0/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/smartinput5/func/B0/a;->u()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;->d(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$c;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private openFilePicker()V
    .locals 15

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0x7b

    invoke-static {v1, v0, v2}, Lcom/cootek/smartinput5/settings/Offline163;->result(Landroid/app/Activity;Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Error open the file manager"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updateSummary()V
    .locals 15

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0xf7

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(I)I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0f0452

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const v0, 0x7f0f0451

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const v0, 0x7f0f0b5d

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const v0, 0x7f0f0b5f

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    const v0, 0x7f0f0b61

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    const v0, 0x7f0f0b64

    goto :goto_0

    :cond_5
    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    const v0, 0x7f0f0b66

    goto :goto_0

    :cond_6
    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    const v0, 0x7f0f0b67

    goto :goto_0

    :cond_7
    const v0, 0x7f0f0451

    :goto_0
    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/ui/settings/MaterialListPreference;->getResString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/cootek/smartinput5/ui/settings/MaterialListPreference;->onDialogClosed(Z)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;->updateSummary()V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/support/v7/app/c$a;)V
    .locals 4

    new-instance v0, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$b;-><init>(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$a;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;->getFontItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$b;->a(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$b;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;->getIndex()I

    move-result v2

    iput v2, p0, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;->mCurrentIndex:I

    new-instance v3, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$a;

    invoke-direct {v3, p0}, Lcom/cootek/smartinput5/ui/settings/FontDialogPreference$a;-><init>(Lcom/cootek/smartinput5/ui/settings/FontDialogPreference;)V

    invoke-virtual {p1, v0, v2, v3}, Landroid/support/v7/app/c$a;->H(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    invoke-virtual {p1, v1, v1}, Landroid/support/v7/app/c$a;->C(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    const v0, 0x7f0f031d

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/ui/settings/MaterialListPreference;->getResString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/c$a;->s(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    return-void
.end method
