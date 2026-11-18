.class Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte;->a0()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/cootek/smartinput5/func/language/a;

.field final synthetic i:Lcom/cootek/smartinput5/func/N;

.field final synthetic j:Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte;Lcom/cootek/smartinput5/func/language/a;Lcom/cootek/smartinput5/func/N;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte$b;->j:Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte;

    iput-object p2, p0, Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte$b;->h:Lcom/cootek/smartinput5/func/language/a;

    iput-object p3, p0, Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte$b;->i:Lcom/cootek/smartinput5/func/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte$b;->h:Lcom/cootek/smartinput5/func/language/a;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte$b;->j:Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte;

    invoke-static {p1}, Lcom/cootek/smartinput5/func/i;->j(Landroid/content/Context;)Lcom/cootek/smartinput5/func/i;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/cootek/smartinput5/func/i;->r(Ljava/lang/String;)Lcom/cootek/smartinput5/func/E;

    move-result-object p1

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte$b;->j:Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte;

    invoke-static {v2}, Lcom/cootek/smartinput5/func/i;->j(Landroid/content/Context;)Lcom/cootek/smartinput5/func/i;

    move-result-object v2

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte$b;->h:Lcom/cootek/smartinput5/func/language/a;

    invoke-virtual {v3}, Lcom/cootek/smartinput5/func/language/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cootek/smartinput5/func/i;->r(Ljava/lang/String;)Lcom/cootek/smartinput5/func/E;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eq v2, p1, :cond_4

    invoke-interface {v2}, Lcom/cootek/smartinput5/func/E;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte$b;->j:Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte;

    invoke-static {p1, v2}, Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte;->M(Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte;Lcom/cootek/smartinput5/func/E;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte$b;->i:Lcom/cootek/smartinput5/func/N;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte$b;->h:Lcom/cootek/smartinput5/func/language/a;

    iget-object v1, v1, Lcom/cootek/smartinput5/func/language/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/cootek/smartinput5/func/N;->n1(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte$b;->j:Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte;

    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->finish()V

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte$b;->h:Lcom/cootek/smartinput5/func/language/a;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/language/a;->f()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte$b;->j:Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte;

    invoke-static {v3, p1}, Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte;->Q(Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-nez v3, :cond_3

    new-instance p1, Lcom/cootek/smartinput5/ui/c$a;

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte$b;->j:Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte;

    invoke-direct {p1, v3}, Lcom/cootek/smartinput5/ui/c$a;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte$b;->h:Lcom/cootek/smartinput5/func/language/a;

    iget-object v4, v3, Lcom/cootek/smartinput5/func/language/a;->b:Ljava/lang/String;

    iget-object v3, v3, Lcom/cootek/smartinput5/func/language/a;->a:Ljava/lang/String;

    const-string v5, "chinese_pinyin"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "/"

    const-string v7, "chinese_stroke"

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte$b;->i:Lcom/cootek/smartinput5/func/N;

    invoke-virtual {v4, v7}, Lcom/cootek/smartinput5/func/N;->V(Ljava/lang/String;)Lcom/cootek/smartinput5/func/language/a;

    move-result-object v4

    iget-object v4, v4, Lcom/cootek/smartinput5/func/language/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte$b;->h:Lcom/cootek/smartinput5/func/language/a;

    iget-object v3, v3, Lcom/cootek/smartinput5/func/language/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte$b;->i:Lcom/cootek/smartinput5/func/N;

    invoke-virtual {v4, v5}, Lcom/cootek/smartinput5/func/N;->V(Ljava/lang/String;)Lcom/cootek/smartinput5/func/language/a;

    move-result-object v4

    iget-object v4, v4, Lcom/cootek/smartinput5/func/language/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte$b;->j:Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte;

    const v5, 0x7f0f049c

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v0

    invoke-static {v3, v5, v6}, Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte;->R(Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/support/v7/app/c$a;->n(Ljava/lang/CharSequence;)Landroid/support/v7/app/c$a;

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte$b;->j:Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte;

    const v4, 0x1040013

    invoke-static {v3, v4}, Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte;->S(Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte$b$a;

    invoke-direct {v4, p0, v2}, Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte$b$a;-><init>(Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte$b;Lcom/cootek/smartinput5/func/E;)V

    invoke-virtual {p1, v3, v4}, Landroid/support/v7/app/c$a;->C(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte$b;->j:Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte;

    const v3, 0x1040009

    invoke-static {v2, v3}, Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte;->T(Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/support/v7/app/c$a;->s(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/c$a;

    invoke-virtual {p1}, Landroid/support/v7/app/c$a;->a()Landroid/support/v7/app/c;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte$b;->j:Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte;

    invoke-static {v1, v2}, Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte;->M(Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte;Lcom/cootek/smartinput5/func/E;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte$b;->j:Lcom/cootek/smartinput5/ui/settings/LanguageEditActivityInte;

    invoke-static {p1, v1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_4
    :goto_1
    return v0
.end method
