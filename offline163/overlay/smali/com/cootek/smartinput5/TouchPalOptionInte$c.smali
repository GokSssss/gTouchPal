.class Lcom/cootek/smartinput5/TouchPalOptionInte$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/TouchPalOptionInte;->P()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/cootek/smartinput5/TouchPalOptionInte;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/TouchPalOptionInte;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/TouchPalOptionInte$c;->h:Lcom/cootek/smartinput5/TouchPalOptionInte;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/TouchPalOptionInte$c;->h:Lcom/cootek/smartinput5/TouchPalOptionInte;

    invoke-virtual {p1}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
