.class Lcom/cootek/smartinput5/ui/settings/LanguageListActivity$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cootek/smartinput5/ui/settings/CustomCheckBoxPreference$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/ui/settings/LanguageListActivity;->b0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cootek/smartinput5/ui/settings/LanguageListActivity;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/ui/settings/LanguageListActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/settings/LanguageListActivity$c;->b:Lcom/cootek/smartinput5/ui/settings/LanguageListActivity;

    iput-object p2, p0, Lcom/cootek/smartinput5/ui/settings/LanguageListActivity$c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cootek/smartinput5/ui/settings/CustomCheckBoxPreference;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    sget-object v0, Lcom/cootek/smartinput5/ui/settings/CurveDictActivity;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/LanguageListActivity$c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/LanguageListActivity$c;->b:Lcom/cootek/smartinput5/ui/settings/LanguageListActivity;

    const-class v1, Lcom/cootek/smartinput5/ui/settings/CurveDictActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/LanguageListActivity$c;->b:Lcom/cootek/smartinput5/ui/settings/LanguageListActivity;

    invoke-static {v0, p1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
