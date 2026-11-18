.class public Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;
.super Lcom/cootek/smartinput5/ui/g0;

# interfaces
.implements Lcom/cootek/smartinput5/ui/settings/b$d;


# static fields
.field public static final Y:Ljava/lang/String; = "SkinCustomizeActivity.EXTRA_CUSTOM_SKIN_SET"

.field public static final Z:Ljava/lang/String; = "SkinCustomizeActivity.EXTRA_IMAGE_FILE_PATH"

.field public static final a0:Ljava/lang/String; = "SkinCustomizeActivity.EXTRA_IMAGE_TEMP_FILE_PATH"

.field public static final b0:Ljava/lang/String; = "SkinCustomizeActivity.EXTRA_STRING_IMAGE_PREIVEW_FILE_PATH"

.field public static final c0:Ljava/lang/String; = "SkinCustomizeActivity.EXTRA_ASPECT_X"

.field public static final d0:Ljava/lang/String; = "SkinCustomizeActivity.EXTRA_ASPECT_Y"

.field public static final e0:Ljava/lang/String; = "SkinCustomizeActivity.EXTRA_IMAGE_MAX_HEIGHT"

.field public static final f0:Ljava/lang/String; = "SkinCustomizeActivity.EXTRA_IMAGE_MAX_WIDTH"

.field public static final g0:Ljava/lang/String; = "SkinCustomizeActivity.EXTRA_BOOLEAN_CREATE_NEW"

.field public static final h0:Ljava/lang/String; = "EXTRA_SRC"

.field private static final i0:Ljava/lang/String; = "Aa"

.field private static final j0:I = 0x0

.field private static final k0:I = 0x1

.field private static final l0:I = 0x2

.field protected static final m0:Ljava/lang/String;

.field private static n0:Z


# instance fields
.field private A:Landroid/widget/SeekBar;

.field private B:Landroid/widget/ImageView;

.field private C:Landroid/widget/EditText;

.field private D:Z

.field private E:I

.field private F:I

.field private G:Landroid/graphics/drawable/Drawable;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:I

.field private K:Ljava/lang/String;

.field private L:I

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Ljava/lang/String;

.field private Q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private R:Lcom/cootek/smartinput5/ui/SoftKeyboardView;

.field private S:Lcom/cootek/smartinput5/ui/FunctionBar;

.field private T:Landroid/view/View;

.field private U:Lcom/cootek/smartinput5/ui/control/r;

.field private V:Landroid/graphics/Bitmap;

.field private W:Z

.field private X:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Landroid/widget/LinearLayout;

.field private x:Lcom/cootek/smartinput5/func/resource/ui/CustomSkinBgButton;

.field private y:Lcom/cootek/smartinput5/func/resource/ui/CustomSkinBgButton;

.field private z:Lcom/cootek/smartinput5/func/resource/ui/CustomSkinBgButton;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/g0;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->v:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->K:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->M:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->N:Z

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->O:Z

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->W:Z

    return-void
.end method

.method public static A0()Z
    .locals 1

    sget-boolean v0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->n0:Z

    return v0
.end method

.method private B0(I)Z
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/func/TAccountManager;->d()Lcom/cootek/smartinput5/func/TAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/TAccountManager;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    if-lt p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private C0()Z
    .locals 1

    iget v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->r:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->s:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private D0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_TYPE:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_KEY:Ljava/lang/String;

    const/16 v3, 0x247

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_CATEGORY_TYPE:Ljava/lang/String;

    const/16 v3, 0x1f

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_CATEGORY_VALUE:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_VALUE:Ljava/lang/String;

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->a0()Lcom/cootek/smartinput5/engine/IPCManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/engine/IPCManager;->notifyOtherProcesses(Landroid/os/Message;)V

    return-void
.end method

.method private E0()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->H:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->G:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->J:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->O:Z

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->M:Z

    return-void
.end method

.method private F0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text_color"

    invoke-direct {p0, v0, p1}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->l0(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->K:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->M:Z

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->J0()V

    return-void
.end method

.method private G0()V
    .locals 3

    new-instance v0, Lcom/cootek/smartinput5/ui/c$a;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/ui/c$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/c$a;->w0(Ljava/lang/CharSequence;)Lcom/cootek/smartinput5/ui/c$a;

    move-result-object v0

    const v1, 0x7f0f03c8

    invoke-virtual {p0, v1}, Lcom/cootek/smartinput5/ui/g0;->C(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/c$a;->m0(Ljava/lang/CharSequence;)Lcom/cootek/smartinput5/ui/c$a;

    move-result-object v0

    const v1, 0x7f0f05a5

    invoke-virtual {p0, v1}, Lcom/cootek/smartinput5/ui/g0;->C(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity$b;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity$b;-><init>(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/ui/c$a;->o0(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/cootek/smartinput5/ui/c$a;

    move-result-object v0

    const v1, 0x7f0f0b55

    invoke-virtual {p0, v1}, Lcom/cootek/smartinput5/ui/g0;->C(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity$j;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity$j;-><init>(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/ui/c$a;->t0(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/cootek/smartinput5/ui/c$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c$a;->O()Landroid/support/v7/app/c;

    const-string v0, "save_dialog"

    const-string v1, "SHOW"

    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->l0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private H0()V
    .locals 4

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const-string v1, "english"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->isLanguageEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->setLanguageEnabled(Ljava/lang/String;Z)V

    :cond_0
    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lcom/cootek/smartinput5/engine/Settings;->setStringSetting(ILjava/lang/String;)V

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Lcom/cootek/smartinput5/engine/Settings;->setStringSetting(ILjava/lang/String;)V

    :cond_1
    const/4 v2, 0x2

    invoke-direct {p0, v2, v1}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->k0(ILjava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    const/16 v2, 0x239

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/cootek/smartinput5/engine/Settings;->setIntSetting(II)V

    const/16 v1, 0x102

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->setIntSetting(II)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->O()Lcom/cootek/smartinput5/ui/control/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/ui/control/r;->i()V

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->n()V

    :cond_2
    return-void
.end method

.method private I0()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->N:Z

    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->D:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->q:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Settings;->disableTemporarySettingMode()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x16e

    iget v2, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->E:I

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->setIntSetting(II)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x54

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->P:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->setStringSetting(ILjava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->P:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/cootek/smartinput5/func/i0;->X0(Ljava/lang/String;ZZZ)Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private declared-synchronized J0()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->M:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->T:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->U:Lcom/cootek/smartinput5/ui/control/r;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->S:Lcom/cootek/smartinput5/ui/FunctionBar;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->R:Lcom/cootek/smartinput5/ui/SoftKeyboardView;

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v0

    iget v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->L:I

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/i0;->R0(I)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/i0;->S0(Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/ui/RendingColorPosition;->refreshAll()V

    invoke-static {}, Lcom/cootek/smartinput5/ui/TextColorPosition;->refreshAll()V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->T:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->T:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->V:Landroid/graphics/Bitmap;

    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lez v0, :cond_6

    if-gtz v1, :cond_3

    goto :goto_1

    :cond_3
    :try_start_3
    new-instance v2, Ljava/lang/ref/WeakReference;

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->V:Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->V:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->G:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-virtual {v3, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->J:I

    if-eqz v3, :cond_5

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iget v5, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->J:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_5
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->S:Lcom/cootek/smartinput5/ui/FunctionBar;

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/ui/FunctionBar;->D(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->S:Lcom/cootek/smartinput5/ui/FunctionBar;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->R:Lcom/cootek/smartinput5/ui/SoftKeyboardView;

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/ui/SoftKeyboardView;->p(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->B:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->V:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    monitor-exit p0

    return-void

    :cond_6
    :goto_1
    monitor-exit p0

    return-void

    :cond_7
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private K0()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->x:Lcom/cootek/smartinput5/func/resource/ui/CustomSkinBgButton;

    new-instance v1, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity$e;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity$e;-><init>(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;)V

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/resource/ui/CustomSkinBgButton;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->y:Lcom/cootek/smartinput5/func/resource/ui/CustomSkinBgButton;

    new-instance v1, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity$f;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity$f;-><init>(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;)V

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/resource/ui/CustomSkinBgButton;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->z:Lcom/cootek/smartinput5/func/resource/ui/CustomSkinBgButton;

    new-instance v1, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity$g;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity$g;-><init>(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;)V

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/resource/ui/CustomSkinBgButton;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->A:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->L:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->A:Landroid/widget/SeekBar;

    new-instance v1, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity$h;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity$h;-><init>(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity$i;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity$i;-><init>(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;)V

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/ui/g0;->H(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic L()Z
    .locals 1

    sget-boolean v0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->n0:Z

    return v0
.end method

.method private L0()V
    .locals 0

    return-void
.end method

.method static synthetic M(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->N0()V

    return-void
.end method

.method private M0()V
    .locals 4

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object v0

    const v1, 0x7f0f03c4

    invoke-static {p0, v1}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/ui/control/E;->w(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->j0()Z

    move-result v0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->N:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x16e

    iget v2, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->E:I

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->setIntSetting(II)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x54

    sget-object v2, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->m0:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->setStringSetting(ILjava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/cootek/smartinput5/func/i0;->X0(Ljava/lang/String;ZZZ)Z

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->F:I

    const-string v2, "SkinCustomizeActivity.EXTRA_CUSTOM_SKIN_SET"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->D:Z

    const-string v2, "SkinCustomizeActivity.EXTRA_BOOLEAN_CREATE_NEW"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity$c;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity$c;-><init>(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic N(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;Lcom/cootek/smartinput5/ui/SoftKeyboardView;)Lcom/cootek/smartinput5/ui/SoftKeyboardView;
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->R:Lcom/cootek/smartinput5/ui/SoftKeyboardView;

    return-object p1
.end method

.method private N0()V
    .locals 4

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->C:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->C:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->C:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x2

    const/16 v3, 0x1c

    if-ge v1, v3, :cond_0

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->C:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :goto_0
    return-void
.end method

.method static synthetic O(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->L0()V

    return-void
.end method

.method private O0(Landroid/net/Uri;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cootek/smartinput5/cropimage/CropImageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "crop"

    const-string v1, "true"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget p1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->r:I

    const-string v1, "aspectX"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget p1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->s:I

    const-string v1, "aspectY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "outputFormat"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "return-data"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x40000000    # 2.0f

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->H:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "output"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x2

    invoke-static {p0, v0, p1}, Lcom/cootek/smartinput5/settings/Offline163;->result(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic P(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->F0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Q(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->n0()V

    return-void
.end method

.method static synthetic R(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->l0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic S(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;)I
    .locals 0

    iget p0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->J:I

    return p0
.end method

.method static synthetic T(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->A:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic U(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->W:Z

    return p1
.end method

.method static synthetic V(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;)I
    .locals 0

    iget p0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->L:I

    return p0
.end method

.method static synthetic W(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;I)I
    .locals 0

    iput p1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->L:I

    return p1
.end method

.method static synthetic X(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->M:Z

    return p1
.end method

.method static synthetic Y(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->s0()V

    return-void
.end method

.method static synthetic Z(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;Lcom/cootek/smartinput5/ui/FunctionBar;)Lcom/cootek/smartinput5/ui/FunctionBar;
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->S:Lcom/cootek/smartinput5/ui/FunctionBar;

    return-object p1
.end method

.method static synthetic a0(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->I0()V

    return-void
.end method

.method static synthetic b0(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->M0()V

    return-void
.end method

.method static synthetic c0(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->T:Landroid/view/View;

    return-object p1
.end method

.method static synthetic d0(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;Lcom/cootek/smartinput5/ui/control/r;)Lcom/cootek/smartinput5/ui/control/r;
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->U:Lcom/cootek/smartinput5/ui/control/r;

    return-object p1
.end method

.method static synthetic e0(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->O:Z

    return p0
.end method

.method static synthetic f0(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->G:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic g0(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->v0()V

    return-void
.end method

.method static synthetic h0(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->w0()V

    return-void
.end method

.method static synthetic i0(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->J0()V

    return-void
.end method

.method private j0()Z
    .locals 11

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->q:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->G:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->H:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/cootek/smartinput/utilities/c;->d(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->J:I

    if-eqz v1, :cond_5

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->m0(Ljava/io/File;)V

    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->I:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->V:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v1, v0, v3}, Lcom/cootek/smartinput/utilities/c;->w(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)Z

    :cond_1
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "custom_skin_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->F:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->K:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-static {v3}, Lcom/cootek/smartinput5/func/CustomSkinColorSet;->getColorSet(Ljava/lang/String;)Lcom/cootek/smartinput5/func/CustomSkinColorSet;

    move-result-object v3

    if-eqz v3, :cond_5

    iget v2, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->F:I

    if-lez v2, :cond_2

    const/16 v4, 0x150

    iget-object v5, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->K:Ljava/lang/String;

    const/16 v6, 0x1f

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v1

    move-object v7, v10

    invoke-virtual/range {v3 .. v9}, Lcom/cootek/smartinput5/engine/Settings;->setStringSetting(ILjava/lang/String;ILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;Z)V

    goto :goto_1

    :cond_2
    const/16 v2, 0x150

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->K:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/cootek/smartinput5/engine/Settings;->setStringSetting(ILjava/lang/String;)V

    :goto_1
    invoke-static {p0}, Lcom/cootek/smartinput5/l/e;->g(Landroid/content/Context;)Lcom/cootek/smartinput5/l/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/l/e;->c()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->o0()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x54

    invoke-virtual {v1, v3, v2}, Lcom/cootek/smartinput5/engine/Settings;->setStringSetting(ILjava/lang/String;)V

    const/16 v4, 0x247

    const/16 v6, 0x1f

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v1

    move-object v5, v2

    move-object v7, v10

    invoke-virtual/range {v3 .. v9}, Lcom/cootek/smartinput5/engine/Settings;->setStringSetting(ILjava/lang/String;ILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;Z)V

    invoke-direct {p0, v2, v10}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->D0(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->F:I

    if-lez v2, :cond_3

    const/16 v4, 0x14e

    iget v5, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->L:I

    const/16 v6, 0x1f

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v1

    move-object v7, v10

    invoke-virtual/range {v3 .. v9}, Lcom/cootek/smartinput5/engine/Settings;->setIntSetting(IIILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;Z)V

    goto :goto_2

    :cond_3
    const/16 v2, 0x14e

    iget v3, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->L:I

    invoke-virtual {v1, v2, v3}, Lcom/cootek/smartinput5/engine/Settings;->setIntSetting(II)V

    :goto_2
    iget v2, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->J:I

    if-eqz v2, :cond_4

    const/16 v3, 0x14f

    invoke-virtual {v1, v3, v2}, Lcom/cootek/smartinput5/engine/Settings;->setIntSetting(II)V

    :cond_4
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    const/16 v2, 0x16e

    iget v3, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->F:I

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/cootek/smartinput5/engine/Settings;->setIntSetting(IIZ)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->o0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4, v4}, Lcom/cootek/smartinput5/func/i0;->X0(Ljava/lang/String;ZZZ)Z

    move-result v0

    return v0

    :cond_5
    return v2
.end method

.method private k0(ILjava/lang/String;)V
    .locals 9

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->m0()Lcom/cootek/smartinput5/engine/Okinawa;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/cootek/smartinput5/engine/Okinawa;->getLanguageCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v4, p1

    invoke-virtual/range {v2 .. v8}, Lcom/cootek/smartinput5/engine/Settings;->setIntSetting(IIILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;Z)V

    return-void
.end method

.method private l0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CUSTOMIZE_KEIN/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object v0

    const-string v1, "/STATISTIC/"

    invoke-virtual {v0, p1, p2, v1}, Lcom/cootek/smartinput5/l/g;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private m0(Ljava/io/File;)V
    .locals 7

    iget v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->t:I

    iget v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->r:I

    div-int/2addr v0, v1

    iget v2, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->u:I

    iget v3, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->s:I

    div-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    mul-int v1, v1, v0

    mul-int v0, v0, v3

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iget v5, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->J:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v2, p1, v0}, Lcom/cootek/smartinput/utilities/c;->w(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)Z

    return-void
.end method

.method private n0()V
    .locals 5

    const-string v0, "background"

    const-string v1, "photo"

    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->l0(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->q0()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object v0

    const v2, 0x7f0f0806

    invoke-virtual {p0, v2}, Lcom/cootek/smartinput5/ui/g0;->C(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/cootek/smartinput5/ui/control/E;->w(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".commitcontent.ime.inputcontent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "output"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :try_start_0
    invoke-static {p0, v2, v1}, Lcom/cootek/smartinput5/settings/Offline163;->result(Landroid/app/Activity;Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private o0()Ljava/lang/String;
    .locals 1

    const-string v0, "com.cootek.smartinputv5.skin.customise"

    return-object v0
.end method

.method private p0()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x1e

    if-ge v0, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->u0(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private q0()Ljava/io/File;
    .locals 3

    const-string v0, ".temp"

    invoke-static {v0}, Lcom/cootek/smartinput5/func/x;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->v:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private r0()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->Q:Ljava/util/ArrayList;

    const/16 v1, 0x54

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->Q:Ljava/util/ArrayList;

    const/16 v1, 0x14e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->Q:Ljava/util/ArrayList;

    const/16 v1, 0x150

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->Q:Ljava/util/ArrayList;

    const/16 v1, 0x14f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->Q:Ljava/util/ArrayList;

    const/16 v1, 0x16e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->Q:Ljava/util/ArrayList;

    const/16 v1, 0x16f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->Q:Ljava/util/ArrayList;

    return-object v0
.end method

.method private s0()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->X:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->X:Ljava/lang/String;

    const-string v1, "DEEP_LINK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "home"

    const-string v1, "source_diy_theme"

    invoke-static {p0, v0, v1}, Lcom/cootek/rnstore/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private t0()V
    .locals 2

    const-string v0, "home"

    const-string v1, "source_diy_theme"

    invoke-static {p0, v0, v1}, Lcom/cootek/rnstore/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private u0(I)Z
    .locals 2

    invoke-static {p1, p0}, Lcom/cootek/smartinput5/func/i0;->L(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/cootek/smartinput5/func/i0;->F(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private v0()V
    .locals 3

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->C:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->C:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    return-void
.end method

.method private w0()V
    .locals 6

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->T:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->T:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v2

    iget v3, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->L:I

    invoke-virtual {v2, v3}, Lcom/cootek/smartinput5/func/i0;->R0(I)V

    if-lez v0, :cond_3

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->V:Landroid/graphics/Bitmap;

    invoke-static {}, Ljava/lang/System;->gc()V

    :try_start_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->V:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->V:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->G:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->J:I

    if-eqz v3, :cond_2

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iget v5, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->J:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->B:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->V:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :catch_0
    :cond_3
    :goto_1
    return-void
.end method

.method private x0()V
    .locals 6

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0043

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/cootek/smartinput5/ui/settings/CustomSkinItem;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const v4, 0x7f0f03cb

    invoke-virtual {v1, v4}, Lcom/cootek/smartinput5/ui/settings/CustomSkinItem;->setTitleText(I)V

    const v4, 0x7f0c0041

    invoke-virtual {v0, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->A:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->A:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/ui/settings/CustomSkinItem;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private y0()V
    .locals 3

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0043

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cootek/smartinput5/ui/settings/CustomSkinItem;

    const v1, 0x7f0f03c9

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/settings/CustomSkinItem;->setTitleText(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/settings/CustomSkinItem;->setContentCount(I)V

    new-instance v1, Lcom/cootek/smartinput5/func/resource/ui/CustomSkinBgButton;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/func/resource/ui/CustomSkinBgButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->x:Lcom/cootek/smartinput5/func/resource/ui/CustomSkinBgButton;

    const v2, 0x7f0f03c7

    invoke-virtual {p0, v2}, Lcom/cootek/smartinput5/ui/g0;->C(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/func/resource/ui/CustomSkinBgButton;->setButtonText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->x:Lcom/cootek/smartinput5/func/resource/ui/CustomSkinBgButton;

    const v2, 0x7f0800e1

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/func/resource/ui/CustomSkinBgButton;->setButtonIcon(I)V

    new-instance v1, Lcom/cootek/smartinput5/func/resource/ui/CustomSkinBgButton;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/func/resource/ui/CustomSkinBgButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->y:Lcom/cootek/smartinput5/func/resource/ui/CustomSkinBgButton;

    const v2, 0x7f0f03c6

    invoke-virtual {p0, v2}, Lcom/cootek/smartinput5/ui/g0;->C(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/func/resource/ui/CustomSkinBgButton;->setButtonText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->y:Lcom/cootek/smartinput5/func/resource/ui/CustomSkinBgButton;

    const v2, 0x7f0800e0

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/func/resource/ui/CustomSkinBgButton;->setButtonIcon(I)V

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->x:Lcom/cootek/smartinput5/func/resource/ui/CustomSkinBgButton;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/settings/CustomSkinItem;->a(Landroid/view/View;)V

    new-instance v1, Lcom/cootek/smartinput5/func/resource/ui/CustomSkinBgButton;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/func/resource/ui/CustomSkinBgButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->z:Lcom/cootek/smartinput5/func/resource/ui/CustomSkinBgButton;

    const v2, 0x7f0f03c5

    invoke-virtual {p0, v2}, Lcom/cootek/smartinput5/ui/g0;->C(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/func/resource/ui/CustomSkinBgButton;->setButtonText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->z:Lcom/cootek/smartinput5/func/resource/ui/CustomSkinBgButton;

    const v2, 0x7f0800df

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/func/resource/ui/CustomSkinBgButton;->setButtonIcon(I)V

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->y:Lcom/cootek/smartinput5/func/resource/ui/CustomSkinBgButton;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/settings/CustomSkinItem;->a(Landroid/view/View;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->z:Lcom/cootek/smartinput5/func/resource/ui/CustomSkinBgButton;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/settings/CustomSkinItem;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070292

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/settings/CustomSkinItem;->setContentMinHeight(I)V

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private z0()V
    .locals 8

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0043

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cootek/smartinput5/ui/settings/CustomSkinItem;

    const v1, 0x7f0f03ca

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/settings/CustomSkinItem;->setTitleText(I)V

    invoke-static {}, Lcom/cootek/smartinput5/func/CustomSkinColorSet;->values()[Lcom/cootek/smartinput5/func/CustomSkinColorSet;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/settings/CustomSkinItem;->setContentCount(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/func/CustomSkinColorSet;->values()[Lcom/cootek/smartinput5/func/CustomSkinColorSet;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v3}, Lcom/cootek/smartinput5/func/CustomSkinColorSet;->getTextColorId()I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iget-object v5, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->K:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    new-instance v6, Lcom/cootek/smartinput5/func/resource/ui/CustomSkinTextButton;

    invoke-direct {v6, p0}, Lcom/cootek/smartinput5/func/resource/ui/CustomSkinTextButton;-><init>(Landroid/content/Context;)V

    const-string v7, "Aa"

    invoke-virtual {v6, v7}, Lcom/cootek/smartinput5/func/resource/ui/CustomSkinTextButton;->setButtonText(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Lcom/cootek/smartinput5/func/resource/ui/CustomSkinTextButton;->setTextColor(I)V

    new-instance v3, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity$d;

    invoke-direct {v3, p0, v4}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity$d;-><init>(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Lcom/cootek/smartinput5/func/resource/ui/CustomSkinTextButton;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v5}, Lcom/cootek/smartinput5/func/resource/ui/CustomSkinTextButton;->setButtonSelected(Z)V

    invoke-virtual {v0, v6}, Lcom/cootek/smartinput5/ui/settings/CustomSkinItem;->a(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->G:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->J:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->O:Z

    iput-boolean p1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->M:Z

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->J0()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->gc()V

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    if-eqz p3, :cond_6

    :cond_1
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->E0()V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_6

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->C0()Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->M:Z

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->O0(Landroid/net/Uri;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->H:Ljava/lang/String;

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->E0()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->q0()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->C0()Z

    move-result p2

    if-eqz p2, :cond_5

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->M:Z

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->O0(Landroid/net/Uri;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->H:Ljava/lang/String;

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->E0()V

    :cond_6
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/cootek/smartinput5/ui/g0;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "SkinCustomizeActivity.EXTRA_BOOLEAN_CREATE_NEW"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->D:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->p0()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->B0(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->t0()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/cootek/smartinput5/func/z;->G0(Landroid/content/Context;)V

    const-string p1, "page"

    const-string v0, "ENTER"

    invoke-direct {p0, p1, v0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->l0(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->M:Z

    sput-boolean v1, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->n0:Z

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object p1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x16e

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(I)I

    move-result v2

    iput v2, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->E:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "SkinCustomizeActivity.EXTRA_CUSTOM_SKIN_SET"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->F:I

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v2

    iget v3, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->F:I

    invoke-virtual {v2, v1, v3}, Lcom/cootek/smartinput5/engine/Settings;->setIntSetting(II)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SkinCustomizeActivity.EXTRA_IMAGE_FILE_PATH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->q:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SkinCustomizeActivity.EXTRA_IMAGE_TEMP_FILE_PATH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->H:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SkinCustomizeActivity.EXTRA_STRING_IMAGE_PREIVEW_FILE_PATH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->I:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_SRC"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->X:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom_skin_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->F:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->D:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->L:I

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->K:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->J:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->F:I

    const/16 v3, 0x14f

    const/16 v5, 0x150

    const/16 v6, 0x14e

    if-lez v2, :cond_2

    const/16 v2, 0x1f

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v2, v1, v7}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(IILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;)I

    move-result v6

    iput v6, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->L:I

    invoke-virtual {v0, v5, v2, v1, v7}, Lcom/cootek/smartinput5/engine/Settings;->getStringSetting(IILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->K:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(I)I

    move-result v0

    iput v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->J:I

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v6}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(I)I

    move-result v1

    iput v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->L:I

    invoke-virtual {v0, v5}, Lcom/cootek/smartinput5/engine/Settings;->getStringSetting(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->K:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(I)I

    move-result v0

    iput v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->J:I

    :goto_0
    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/i0;->B()Lcom/cootek/smartinput5/func/E;

    move-result-object v0

    invoke-interface {v0}, Lcom/cootek/smartinput5/func/E;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->P:Ljava/lang/String;

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->H:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    :cond_3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->q:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->H:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "temp_pic_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->v:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SkinCustomizeActivity.EXTRA_ASPECT_X"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->r:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SkinCustomizeActivity.EXTRA_ASPECT_Y"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->s:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SkinCustomizeActivity.EXTRA_IMAGE_MAX_WIDTH"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->t:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SkinCustomizeActivity.EXTRA_IMAGE_MAX_HEIGHT"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->u:I

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/i0;->n()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->D:Z

    if-eqz p1, :cond_5

    :cond_4
    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->m0(Ljava/io/File;)V

    :cond_5
    const p1, 0x7f0c0044

    invoke-super {p0, p1}, Lcom/cootek/smartinput5/ui/g0;->setContentView(I)V

    const p1, 0x7f0f03cd

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/ui/g0;->D(I)V

    const p1, 0x7f0a00f4

    invoke-virtual {p0, p1}, Landroid/support/v7/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->w:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->y0()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->z0()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->x0()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->K0()V

    const p1, 0x7f0a00f5

    invoke-virtual {p0, p1}, Landroid/support/v7/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->B:Landroid/widget/ImageView;

    const p1, 0x7f0a00f3

    invoke-virtual {p0, p1}, Landroid/support/v7/app/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->C:Landroid/widget/EditText;

    return-void

    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/app/d;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/cootek/smartinput5/ui/g0;->onDestroy()V

    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->W:Z

    if-eqz v0, :cond_0

    const-string v0, "transparency"

    const-string v1, "MANUAL"

    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->l0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lcom/cootek/smartinput5/l/e;->g(Landroid/content/Context;)Lcom/cootek/smartinput5/l/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/l/e;->j()V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->A()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->G0()V

    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/d;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0024

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->M0()V

    const-string p1, "save_page"

    const-string v0, "SAVE"

    invoke-direct {p0, p1, v0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->l0(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 5

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->n0:Z

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->v0()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->r0()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->enableTemporarySettingMode(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->H0()V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v2

    iget v3, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->F:I

    const/16 v4, 0x16e

    invoke-virtual {v2, v4, v3}, Lcom/cootek/smartinput5/engine/Settings;->setIntSetting(II)V

    invoke-static {p0}, Lcom/cootek/smartinput5/l/e;->g(Landroid/content/Context;)Lcom/cootek/smartinput5/l/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/l/e;->c()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v2

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->o0()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x54

    invoke-virtual {v2, v4, v3}, Lcom/cootek/smartinput5/engine/Settings;->setStringSetting(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->o0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v0, v0}, Lcom/cootek/smartinput5/func/i0;->X0(Ljava/lang/String;ZZZ)Z

    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->M:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->N0()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity$a;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity$a;-><init>(Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onStop()V
    .locals 4

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->L0()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Settings;->disableTemporarySettingMode()V

    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->N:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v2, 0x16e

    iget v3, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->E:I

    invoke-virtual {v0, v2, v3}, Lcom/cootek/smartinput5/engine/Settings;->setIntSetting(II)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v2, 0x54

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->P:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/cootek/smartinput5/engine/Settings;->setStringSetting(ILjava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v0

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->P:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/cootek/smartinput5/func/i0;->X0(Ljava/lang/String;ZZZ)Z

    :cond_1
    iput-boolean v1, p0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->M:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/cootek/smartinput5/ui/settings/SkinCustomizeActivity;->n0:Z

    invoke-super {p0}, Landroid/support/v7/app/d;->onStop()V

    return-void
.end method
