.class public Lcom/cootek/smartinput5/ui/control/GetImageActivity;
.super Lcom/cootek/smartinput5/func/resource/ui/b;


# static fields
.field public static final A:I = 0x1

.field private static final B:I = 0x0

.field private static final C:I = 0x1

.field private static final D:I = 0x2

.field public static final q:Ljava/lang/String; = "GetImageActivity.EXTRA_IMAGE_FILE_PATH"

.field public static final r:Ljava/lang/String; = "GetImageActivity.EXTRA_ASPECT_X"

.field public static final s:Ljava/lang/String; = "GetImageActivity.EXTRA_ASPECT_Y"

.field public static final t:Ljava/lang/String; = "GetImageActivity.EXTRA_IMAGE_MAX_HEIGHT"

.field public static final u:Ljava/lang/String; = "GetImageActivity.EXTRA_IMAGE_MAX_WIDTH"

.field public static final v:Ljava/lang/String; = "GetImageActivity.EXTRA_ACTION_AFTER_SUCCEED"

.field public static final w:Ljava/lang/String; = "GetImageActivity.EXTRA_ACTION_ON_FINISHED"

.field private static final x:I = 0x0

.field public static final y:I = 0x1

.field private static final z:I


# instance fields
.field private h:Ljava/lang/String;

.field private i:J

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/resource/ui/b;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->p:Ljava/lang/String;

    return-void
.end method

.method static synthetic h(Lcom/cootek/smartinput5/ui/control/GetImageActivity;)Ljava/io/File;
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->k()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lcom/cootek/smartinput5/ui/control/GetImageActivity;I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/func/resource/ui/b;->getResString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private j()V
    .locals 2

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->k()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private k()Ljava/io/File;
    .locals 3

    const-string v0, ".temp"

    invoke-static {v0}, Lcom/cootek/smartinput5/func/x;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->p:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private m()V
    .locals 7

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->gc()V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/cootek/smartinput5/func/w0;->p(Ljava/io/File;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->l:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le v1, v3, :cond_0

    if-lez v3, :cond_0

    move v1, v3

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v6, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->m:I

    if-le v2, v6, :cond_1

    if-lez v6, :cond_1

    move v2, v6

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    if-eqz v4, :cond_2

    invoke-static {v0, v1, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->h:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v0, v1, v2}, Lcom/cootek/smartinput/utilities/c;->w(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    return-void
.end method

.method private n()Z
    .locals 1

    iget v0, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->j:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->k:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private o()Z
    .locals 1

    iget v0, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->m:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->l:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private p()V
    .locals 5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->i:J

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/i0;->N0()V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->Q()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/l/e;->g(Landroid/content/Context;)Lcom/cootek/smartinput5/l/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/l/e;->c()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v2, 0x54

    const-string v3, "com.cootek.smartinputv5.skin.customise"

    invoke-virtual {v0, v2, v3}, Lcom/cootek/smartinput5/engine/Settings;->setStringSetting(ILjava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v0

    invoke-virtual {v0, v3, v1, v1}, Lcom/cootek/smartinput5/func/i0;->W0(Ljava/lang/String;ZZ)Z

    :cond_1
    return-void
.end method

.method private q()V
    .locals 4

    new-instance v0, Lcom/cootek/smartinput5/ui/c$a;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/ui/c$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f045f

    invoke-virtual {p0, v1}, Lcom/cootek/smartinput5/func/resource/ui/b;->getResString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/c$a;->w0(Ljava/lang/CharSequence;)Lcom/cootek/smartinput5/ui/c$a;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f0f045d

    invoke-virtual {p0, v2}, Lcom/cootek/smartinput5/func/resource/ui/b;->getResString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0f045e

    invoke-virtual {p0, v2}, Lcom/cootek/smartinput5/func/resource/ui/b;->getResString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/cootek/smartinput5/ui/control/GetImageActivity$a;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/ui/control/GetImageActivity$a;-><init>(Lcom/cootek/smartinput5/ui/control/GetImageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/c$a;->l([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    new-instance v1, Lcom/cootek/smartinput5/ui/control/GetImageActivity$b;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/ui/control/GetImageActivity$b;-><init>(Lcom/cootek/smartinput5/ui/control/GetImageActivity;)V

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/c$a;->p0(Landroid/content/DialogInterface$OnCancelListener;)Lcom/cootek/smartinput5/ui/c$a;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/c$a;->O()Landroid/support/v7/app/c;

    return-void
.end method

.method private r(Landroid/net/Uri;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cootek/smartinput5/cropimage/CropImageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "crop"

    const-string v1, "true"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget p1, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->j:I

    const-string v1, "aspectX"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget p1, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->k:I

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

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->h:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "output"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x2

    invoke-static {p0, v0, p1}, Lcom/cootek/smartinput5/settings/Offline163;->result(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->m()V

    iget v0, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/cootek/smartinput5/ui/control/GetImageActivity$c;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/ui/control/GetImageActivity$c;-><init>(Lcom/cootek/smartinput5/ui/control/GetImageActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-static {}, Ljava/lang/System;->gc()V

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->p()V

    :cond_2
    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->finish()V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_5

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->n()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->r(Landroid/net/Uri;)V

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/io/File;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/io/File;

    iget-object p3, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->h:Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/cootek/smartinput/utilities/c;->d(Ljava/io/File;Ljava/io/File;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->p()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->finish()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->finish()V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->k()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->n()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->r(Landroid/net/Uri;)V

    goto :goto_0

    :cond_7
    new-instance p2, Ljava/io/File;

    iget-object p3, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->h:Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/cootek/smartinput/utilities/c;->d(Ljava/io/File;Ljava/io/File;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->p()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->finish()V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/cootek/smartinput5/func/resource/ui/b;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "GetImageActivity.EXTRA_IMAGE_FILE_PATH"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->finish()V

    return-void

    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->h:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->i:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "temp_pic_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->p:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "GetImageActivity.EXTRA_ASPECT_X"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->j:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "GetImageActivity.EXTRA_ASPECT_Y"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->k:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "GetImageActivity.EXTRA_IMAGE_MAX_WIDTH"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->l:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "GetImageActivity.EXTRA_IMAGE_MAX_HEIGHT"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->m:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "GetImageActivity.EXTRA_ACTION_AFTER_SUCCEED"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->n:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "GetImageActivity.EXTRA_ACTION_ON_FINISHED"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->o:I

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->n()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->o()Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->l:I

    iget v0, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->k:I

    mul-int v1, p1, v0

    iget v2, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->j:I

    div-int/2addr v1, v2

    iget v3, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->m:I

    mul-int v2, v2, v3

    div-int/2addr v2, v0

    if-nez p1, :cond_1

    iput v2, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->l:I

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    iput v1, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->m:I

    goto :goto_0

    :cond_2
    if-le v1, v3, :cond_3

    iput v2, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->l:I

    goto :goto_0

    :cond_3
    if-le v2, p1, :cond_4

    iput v1, p0, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->m:I

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->j()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->q()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/control/GetImageActivity;->j()V

    invoke-super {p0}, Lcom/cootek/smartinput5/func/resource/ui/b;->onDestroy()V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method
