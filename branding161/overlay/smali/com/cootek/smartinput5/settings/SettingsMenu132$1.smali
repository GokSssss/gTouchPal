.class Lcom/cootek/smartinput5/settings/SettingsMenu132$1;
.super Ljava/lang/Object;
.source "SettingsMenu132.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartinput5/settings/SettingsMenu132;->install(Landroid/preference/PreferenceActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/preference/PreferenceActivity;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/cootek/smartinput5/settings/SettingsMenu132$1;->val$activity:Landroid/preference/PreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 0

    .line 25
    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SettingsMenu132$1;->val$activity:Landroid/preference/PreferenceActivity;

    invoke-static {p1}, Lcom/cootek/smartinput5/settings/ThemePicker156;->open(Landroid/app/Activity;)V

    const/4 p1, 0x1

    return p1
.end method
