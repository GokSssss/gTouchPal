.class Lcom/cootek/smartinput5/ui/settings/CellDictListActivity$f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/ui/settings/CellDictListActivity;->k0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/cootek/smartinput5/func/n;

.field final synthetic i:Lcom/cootek/smartinput5/ui/settings/CellDictListActivity;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/ui/settings/CellDictListActivity;Lcom/cootek/smartinput5/func/n;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/settings/CellDictListActivity$f;->i:Lcom/cootek/smartinput5/ui/settings/CellDictListActivity;

    iput-object p2, p0, Lcom/cootek/smartinput5/ui/settings/CellDictListActivity$f;->h:Lcom/cootek/smartinput5/func/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/settings/CellDictListActivity$f;->h:Lcom/cootek/smartinput5/func/n;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DELETE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/settings/CellDictListActivity$f;->i:Lcom/cootek/smartinput5/ui/settings/CellDictListActivity;

    invoke-static {p1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
