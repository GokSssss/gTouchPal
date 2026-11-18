.class Lcom/cootek/smartinput5/ui/settings/LanguageListActivityInte$l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cootek/smartinput5/ui/settings/CustomCheckBoxPreference$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/ui/settings/LanguageListActivityInte;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cootek/smartinput5/ui/settings/LanguageListActivityInte;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/ui/settings/LanguageListActivityInte;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/settings/LanguageListActivityInte$l;->a:Lcom/cootek/smartinput5/ui/settings/LanguageListActivityInte;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cootek/smartinput5/ui/settings/CustomCheckBoxPreference;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/LanguageListActivityInte$l;->a:Lcom/cootek/smartinput5/ui/settings/LanguageListActivityInte;

    invoke-static {v0}, Lcom/cootek/smartinput5/ui/settings/LanguageListActivityInte;->M(Lcom/cootek/smartinput5/ui/settings/LanguageListActivityInte;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/cootek/smartinput5/ui/settings/LanguageMixInputActivityInte;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/LanguageListActivityInte$l;->a:Lcom/cootek/smartinput5/ui/settings/LanguageListActivityInte;

    invoke-static {v0}, Lcom/cootek/smartinput5/ui/settings/LanguageListActivityInte;->M(Lcom/cootek/smartinput5/ui/settings/LanguageListActivityInte;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
