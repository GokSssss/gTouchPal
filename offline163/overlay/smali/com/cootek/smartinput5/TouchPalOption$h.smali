.class public Lcom/cootek/smartinput5/TouchPalOption$h;
.super Lcom/cootek/smartinput5/func/m0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput5/TouchPalOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cootek/smartinput5/func/m0<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:J = 0x500000L

.field private static final e:Ljava/lang/String; = "com.cootek.smartinputv5.commitcontent.ime.inputcontent"


# instance fields
.field a:Landroid/app/ProgressDialog;

.field b:Landroid/content/Intent;

.field c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/m0;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cootek/smartinput5/TouchPalOption$h;->a:Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/cootek/smartinput5/TouchPalOption$h;->b:Landroid/content/Intent;

    iput-object v0, p0, Lcom/cootek/smartinput5/TouchPalOption$h;->c:Landroid/content/Context;

    iput-object p1, p0, Lcom/cootek/smartinput5/TouchPalOption$h;->c:Landroid/content/Context;

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/TouchPalOption$h;->a:Landroid/app/ProgressDialog;

    const v1, 0x7f0f0598

    invoke-static {p1, v1}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/cootek/smartinput5/TouchPalOption$h;->b:Landroid/content/Intent;

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/TouchPalOption$h;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/cootek/smartinput5/TouchPalOption$h;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs b([Ljava/lang/String;)Ljava/lang/Float;
    .locals 0

    iget-object p1, p0, Lcom/cootek/smartinput5/TouchPalOption$h;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/cootek/smartinput5/TouchPalOption;->B(Landroid/content/Context;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public c()V
    .locals 3

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/TouchPalOption$h;->c:Landroid/content/Context;

    const v2, 0x7f0f055f

    invoke-static {v1, v2}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/control/E;->s(Ljava/lang/String;)V

    return-void
.end method

.method protected d(Ljava/lang/Float;)V
    .locals 5

    invoke-direct {p0}, Lcom/cootek/smartinput5/TouchPalOption$h;->a()V

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/cootek/smartinput5/TouchPalOption$h;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/cootek/smartinput5/storage/StorageRoot135;->workDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const-string v1, "touchpal_data.zip"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x500000

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/TouchPalOption$h;->b:Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/cootek/smartinput5/TouchPalOption$h;->b:Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/cootek/smartinput5/TouchPalOption$h;->b:Landroid/content/Intent;

    const-string v2, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    if-nez v3, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    invoke-static {}, Lcom/cootek/smartinput5/func/x0;->d()Lcom/cootek/smartinput5/func/x0;

    move-result-object v1

    iget-object v3, p0, Lcom/cootek/smartinput5/TouchPalOption$h;->c:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/cootek/smartinput5/func/x0;->i(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    :cond_0
    iget-object v1, p0, Lcom/cootek/smartinput5/TouchPalOption$h;->b:Landroid/content/Intent;

    const-string v3, "application/zip"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/TouchPalOption$h;->b:Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/cootek/smartinput5/TouchPalOption$h;->b:Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/TouchPalOption$h;->c:Landroid/content/Context;

    const-string v2, "com.cootek.smartinputv5.commitcontent.ime.inputcontent"

    invoke-static {v1, v2, p1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/cootek/smartinput5/TouchPalOption$h;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/cootek/smartinput5/TouchPalOption$h;->b:Landroid/content/Intent;

    invoke-static {p1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    invoke-virtual {p0}, Lcom/cootek/smartinput5/TouchPalOption$h;->c()V

    :goto_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/TouchPalOption$h;->b([Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/TouchPalOption$h;->a()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/TouchPalOption$h;->d(Ljava/lang/Float;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/TouchPalOption$h;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
