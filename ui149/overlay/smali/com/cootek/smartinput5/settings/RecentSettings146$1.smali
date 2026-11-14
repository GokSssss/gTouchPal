.class Lcom/cootek/smartinput5/settings/RecentSettings146$1;
.super Ljava/lang/Object;
.source "RecentSettings146.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/settings/RecentSettings146;->install(Landroid/preference/PreferenceActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 0

    .line 29
    invoke-static {p1}, Lcom/cootek/smartinput5/settings/CandidatePanel141;->openCount(Landroid/preference/Preference;)Z

    move-result p1

    return p1
.end method
