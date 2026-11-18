.class public final Lcom/cootek/smartinput5/settings/Offline163;
.super Ljava/lang/Object;
.source "Offline163.java"


# static fields
.field private static final ACTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RETIRED:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final THEMES:Ljava/lang/String; = "com.cootek.smartinput5.ui.skinappshop.StoreActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 13
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x38

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.cootek.smartinput5.func.vip.PurchaseVipActivity"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "com.cootek.smartinput5.func.vip.VipRenewActivity"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "com.cootek.smartinput5.ui.settings.SkinDownloadActivity"

    aput-object v5, v1, v4

    const/4 v5, 0x3

    const-string v6, "com.cootek.smartinput5.net.DownloadReceiver"

    aput-object v6, v1, v5

    const/4 v6, 0x4

    const-string v7, "com.cootek.smartinput5.func.SuperDictDownloadReceiver"

    aput-object v7, v1, v6

    const/4 v7, 0x5

    const-string v8, "com.cootek.smartinput5.func.PresentVipNotificationReceiver"

    aput-object v8, v1, v7

    const/4 v8, 0x6

    const-string v9, "com.cootek.smartinput5.func.LocaleLanguageDownloadReceiver"

    aput-object v9, v1, v8

    const/4 v9, 0x7

    const-string v10, "com.cootek.smartinput5.func.OemSkinDownloadReceiver"

    aput-object v10, v1, v9

    const/16 v10, 0x8

    const-string v11, "com.cootek.smartinput5.func.CloudSyncTipReceiver"

    aput-object v11, v1, v10

    const/16 v11, 0x9

    const-string v12, "com.cootek.smartinput5.ui.settings.RateUsActivity"

    aput-object v12, v1, v11

    const/16 v12, 0xa

    const-string v13, "com.cootek.smartinput5.func.vip.InviteGetVipActivity"

    aput-object v13, v1, v12

    const/16 v13, 0xb

    const-string v14, "com.cootek.smartinput5.ui.settings.TouchPalCloudActivity"

    aput-object v14, v1, v13

    const/16 v14, 0xc

    const-string v15, "com.cootek.smartinput5.ui.settings.JoinBetaActivity"

    aput-object v15, v1, v14

    const/16 v15, 0xd

    const-string v16, "com.cootek.smartinput5.func.component.AutoUpdateReceiver"

    aput-object v16, v1, v15

    const/16 v16, 0xe

    const-string v17, "com.cootek.smartinput5.ui.control.CancelDownloadActivity"

    aput-object v17, v1, v16

    const/16 v17, 0xf

    const-string v18, "com.cootek.smartinput5.ui.control.RetryDownloadActivity"

    aput-object v18, v1, v17

    const/16 v18, 0x10

    const-string v19, "com.cootek.smartinput5.ui.settings.TouchPalUpdateActivity"

    aput-object v19, v1, v18

    const/16 v19, 0x11

    const-string v20, "com.cootek.smartinput5.func.WebPageLoader"

    aput-object v20, v1, v19

    const/16 v20, 0x12

    const-string v21, "com.cootek.smartinput5.plugin.twitter.AuthorizeActivity"

    aput-object v21, v1, v20

    const/16 v21, 0x13

    const-string v22, "com.cootek.smartinput5.plugin.twitter.FollowActivity"

    aput-object v22, v1, v21

    const/16 v22, 0x14

    const-string v23, "com.cootek.smartinput5.plugin.twitter.ShareActivity"

    aput-object v23, v1, v22

    const/16 v23, 0x15

    const-string v24, "com.cootek.smartinput5.plugin.twitter.TwitterDialog"

    aput-object v24, v1, v23

    const-string v24, "com.cootek.smartinput5.func.mainentrance.MainEntranceActivity"

    const/16 v25, 0x16

    aput-object v24, v1, v25

    const-string v24, "com.cootek.smartinput5.presentations.NotificationActionReceiver"

    const/16 v25, 0x17

    aput-object v24, v1, v25

    const-string v24, "com.cootek.smartinput5.presentations.PresentationWebviewActivity"

    const/16 v25, 0x18

    aput-object v24, v1, v25

    const-string v24, "com.cootek.smartinput5.presentations.DownloadInStatusActivity"

    const/16 v25, 0x19

    aput-object v24, v1, v25

    const-string v24, "com.cootek.smartinput5.presentations.ActionConfirmActivity"

    const/16 v25, 0x1a

    aput-object v24, v1, v25

    const-string v24, "com.cootek.smartinput5.presentations.PresentationLaunchLocalPageActivity"

    const/16 v25, 0x1b

    aput-object v24, v1, v25

    const-string v24, "com.cootek.smartinput5.net.login.TCloudShowActivity"

    const/16 v25, 0x1c

    aput-object v24, v1, v25

    const-string v24, "com.cootek.smartinput5.net.login.TLoginActivity"

    const/16 v25, 0x1d

    aput-object v24, v1, v25

    const-string v24, "com.cootek.smartinput5.net.login.FindPasswordActivity"

    const/16 v25, 0x1e

    aput-object v24, v1, v25

    const-string v24, "com.cootek.smartinput5.net.login.FacebookLoginWebViewActivity"

    const/16 v25, 0x1f

    aput-object v24, v1, v25

    const-string v24, "com.cootek.smartinput5.net.login.GoogleLoginWebviewActivity"

    const/16 v25, 0x20

    aput-object v24, v1, v25

    const-string v24, "com.cootek.smartinput5.net.login.TwitterLoginWebviewActivity"

    const/16 v25, 0x21

    aput-object v24, v1, v25

    const-string v24, "com.cootek.presentation.service.PresentationServiceReceiver"

    const/16 v25, 0x22

    aput-object v24, v1, v25

    const-string v24, "com.cootek.presentation.service.PresentationService"

    const/16 v25, 0x23

    aput-object v24, v1, v25

    const-string v24, "com.cootek.smartinput5.presentations.BindService"

    const/16 v25, 0x24

    aput-object v24, v1, v25

    const-string v24, "com.cootek.smartinput5.presentations.ActionCallbackReceiver"

    const/16 v25, 0x25

    aput-object v24, v1, v25

    const-string v24, "com.cootek.smartinput5.func.iab.google.ControlActivity"

    const/16 v25, 0x26

    aput-object v24, v1, v25

    const-string v24, "com.cootek.smartinput5.func.iab.PurchaseChannelChooseActivity"

    const/16 v25, 0x27

    aput-object v24, v1, v25

    const-string v24, "com.cootek.presentation.service.ShortcutActionHandler"

    const/16 v25, 0x28

    aput-object v24, v1, v25

    const-string v24, "com.cootek.smartinput5.func.ReferrerReceiver"

    const/16 v25, 0x29

    aput-object v24, v1, v25

    const-string v24, "com.cootek.smartinput5.ui.settings.TouchPalFAQActivity"

    const/16 v25, 0x2a

    aput-object v24, v1, v25

    const-string v24, "com.cootek.smartinput5.func.skin.purchase.PurchaseThemeActivity"

    const/16 v25, 0x2b

    aput-object v24, v1, v25

    const-string v24, "com.cootek.smartinput5.func.skin.SponsorThemeReceiver"

    const/16 v25, 0x2c

    aput-object v24, v1, v25

    const-string v24, "com.cootek.smartinput5.func.skin.SponsorThemeActivity"

    const/16 v25, 0x2d

    aput-object v24, v1, v25

    const-string v24, "com.cootek.smartinput5.func.skin.purchase.PurchaseReceiver"

    const/16 v25, 0x2e

    aput-object v24, v1, v25

    const-string v24, "com.cootek.smartinput5.ui.TrendsDetailActivity"

    const/16 v25, 0x2f

    aput-object v24, v1, v25

    const-string v24, "com.cootek.smartinput5.ui.skinappshop.StoreDetailActivity"

    const/16 v25, 0x30

    aput-object v24, v1, v25

    const-string v24, "com.cootek.smartinput5.ui.skinappshop.EmojiStoreActivity"

    const/16 v25, 0x31

    aput-object v24, v1, v25

    const-string v24, "com.cootek.smartinput5.ui.skinappshop.StickerStoreActivity"

    const/16 v25, 0x32

    aput-object v24, v1, v25

    const-string v24, "com.cootek.smartinput5.ui.skinappshop.BoomTextStoreActivity"

    const/16 v25, 0x33

    aput-object v24, v1, v25

    const-string v24, "com.cootek.touchpal.commercial.suggestion.widget.OnePixelActivity"

    const/16 v25, 0x34

    aput-object v24, v1, v25

    const-string v24, "com.cootek.tark.privacy.PrivacySettingsActivity"

    const/16 v25, 0x35

    aput-object v24, v1, v25

    const-string v24, "com.cootek.tark.privacy.PrivacyPolicyLocalActivity"

    const/16 v25, 0x36

    aput-object v24, v1, v25

    const-string v24, "com.cootek.TPDeepLinkActivity"

    const/16 v25, 0x37

    aput-object v24, v1, v25

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/cootek/smartinput5/settings/Offline163;->RETIRED:Ljava/util/Set;

    .line 14
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x28

    new-array v1, v1, [Ljava/lang/String;

    const-string v24, "com.cootek.smartinput.intent.action.PLUGIN_PURCHASE_FINISH"

    aput-object v24, v1, v2

    const-string v2, "com.cootek.smartinput.intent.action.SAVE_PAID_THEME"

    aput-object v2, v1, v3

    const-string v2, "com.cootek.smartinput.intent.action.SHOW_BOOMTEXT_STORE_PAGE"

    aput-object v2, v1, v4

    const-string v2, "com.cootek.smartinput.intent.action.SHOW_EMOJI_STORE_PAGE"

    aput-object v2, v1, v5

    const-string v2, "com.cootek.smartinput.intent.action.SHOW_STICKER_STORE_PAGE"

    aput-object v2, v1, v6

    const-string v2, "com.cootek.smartinput5.ACTION_APP_WALL"

    aput-object v2, v1, v7

    const-string v2, "com.cootek.smartinput5.ACTION_NEWS"

    aput-object v2, v1, v8

    const-string v2, "com.cootek.smartinput5.LOCAL_PAGE_JACKPOT"

    aput-object v2, v1, v9

    const-string v2, "com.cootek.smartinput5.ui.settings.MainEntranceActivity.action.HOTWORD"

    aput-object v2, v1, v10

    const-string v2, "com.cootek.smartinput5.ui.settings.MainEntranceActivity.action.START"

    aput-object v2, v1, v11

    const-string v2, "com.cootek.smartinputv5.BACKUP"

    aput-object v2, v1, v12

    const-string v2, "com.cootek.smartinputv5.CHECK_ANONYMOUS_CALL_LOG"

    aput-object v2, v1, v13

    const-string v2, "com.cootek.smartinputv5.CLOUD_BACKUP"

    aput-object v2, v1, v14

    const-string v2, "com.cootek.smartinputv5.HOTWORD"

    aput-object v2, v1, v15

    const-string v2, "com.cootek.smartinputv5.IMPORT_CONTACTS"

    aput-object v2, v1, v16

    const-string v2, "com.cootek.smartinputv5.INTERNAL_ACTION.ACTION_LAUNCH_SPONSOR_THEME"

    aput-object v2, v1, v17

    const-string v2, "com.cootek.smartinputv5.INTERNAL_ACTION.ACTION_SHOW_SPONSOR_NOTIFICATION"

    aput-object v2, v1, v18

    const-string v2, "com.cootek.smartinputv5.INTERNAL_ACTION.ACTION_SUMMARY"

    aput-object v2, v1, v19

    const-string v2, "com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_INVITE_PRESENT_VIP"

    aput-object v2, v1, v20

    const-string v2, "com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_PURCHASE_THEME"

    aput-object v2, v1, v21

    const-string v2, "com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_PURCHASE_VIP"

    aput-object v2, v1, v22

    const-string v2, "com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_SHOP"

    aput-object v2, v1, v23

    const-string v2, "com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_SHOP_BOOMTEXT"

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const-string v2, "com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_SHOP_CELL"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    const-string v2, "com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_SHOP_CELL_DETAIL"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    const-string v2, "com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_SHOP_DIY_THEME"

    const/16 v3, 0x19

    aput-object v2, v1, v3

    const-string v2, "com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_SHOP_LANGUAGE"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    const-string v2, "com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_SHOP_MORE"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    const-string v2, "com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_SHOP_MORE_DETAIL"

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    const-string v2, "com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_SHOP_SKIN"

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    const-string v2, "com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_SHOP_SKIN_DETAIL"

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    const-string v2, "com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_SHOP_SKIN_FONT"

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    const-string v2, "com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_SHOP_TRENDS_DETAIL"

    const/16 v3, 0x20

    aput-object v2, v1, v3

    const-string v2, "com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_TOUCHPAL_CLOUD"

    const/16 v3, 0x21

    aput-object v2, v1, v3

    const-string v2, "com.cootek.smartinputv5.INTERNAL_ACTION.LOCAL_PAGE_TRENDS_RECOMMENDER"

    const/16 v3, 0x22

    aput-object v2, v1, v3

    const-string v2, "com.cootek.smartinputv5.INTERNAL_ACTION.download_locale_langauge"

    const/16 v3, 0x23

    aput-object v2, v1, v3

    const-string v2, "com.cootek.smartinputv5.INTERNAL_ACTION.download_oem_skin"

    const/16 v3, 0x24

    aput-object v2, v1, v3

    const-string v2, "com.cootek.smartinputv5.INTERNAL_ACTION.superdict_download"

    const/16 v3, 0x25

    aput-object v2, v1, v3

    const-string v2, "com.cootek.smartinputv5.LEARN_TEXT"

    const/16 v3, 0x26

    aput-object v2, v1, v3

    const-string v2, "intent.action.desktop.SHORTCUT_HANDLE"

    const/16 v3, 0x27

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/cootek/smartinput5/settings/Offline163;->ACTIONS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs equalsAny(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .line 42
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static local(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 9

    .line 24
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 26
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v3, ""

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 27
    :goto_1
    const-string v4, "com.cootek.smartinput5.ui.skinappshop.StoreActivity"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p0}, Lcom/cootek/smartinput5/settings/Offline163;->themeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 28
    :cond_3
    const-string v4, "com.cootek.smartinput5.ui.settings.SkinDownloadActivity"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p0}, Lcom/cootek/smartinput5/settings/Offline163;->themeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 29
    :cond_4
    const-string v4, "com.cootek.TPDeepLinkActivity"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "tpinnercall"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    new-array v4, v7, [Ljava/lang/String;

    const-string v8, "content"

    aput-object v8, v4, v6

    const-string v8, "file"

    aput-object v8, v4, v5

    invoke-static {v3, v4}, Lcom/cootek/smartinput5/settings/Offline163;->equalsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    .line 33
    :cond_5
    sget-object v4, Lcom/cootek/smartinput5/settings/Offline163;->RETIRED:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Lcom/cootek/smartinput5/settings/Offline163;->ACTIONS:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    .line 34
    :cond_6
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "http"

    aput-object v4, v1, v6

    const-string v4, "https"

    aput-object v4, v1, v5

    const-string v4, "market"

    aput-object v4, v1, v7

    const-string v4, "intent"

    const/4 v5, 0x3

    aput-object v4, v1, v5

    invoke-static {v3, v1}, Lcom/cootek/smartinput5/settings/Offline163;->equalsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "touchpal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    return-object v0

    .line 36
    :cond_8
    const-string v1, "android.intent.action.CHOOSER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 37
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 38
    if-eqz v1, :cond_9

    invoke-static {p0, v1}, Lcom/cootek/smartinput5/settings/Offline163;->local(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_9

    return-object v0

    .line 40
    :cond_9
    return-object p1

    .line 33
    :cond_a
    :goto_2
    return-object v0

    .line 30
    :cond_b
    :goto_3
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/net/Uri;->isHierarchical()Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_4

    :cond_c
    const-string p1, "page"

    invoke-virtual {v2, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_d
    :goto_4
    move-object p1, v0

    .line 31
    :goto_5
    const-string v1, "theme"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-static {p0}, Lcom/cootek/smartinput5/settings/Offline163;->themeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public static result(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 0

    .line 46
    invoke-static {p0, p1}, Lcom/cootek/smartinput5/settings/Offline163;->local(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/cootek/smartinput5/settings/Offline163;->retired(Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static result(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lcom/cootek/smartinput5/settings/Offline163;->local(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/cootek/smartinput5/settings/Offline163;->retired(Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method private static retired(Landroid/content/Context;)V
    .locals 2

    .line 43
    const-string v0, "\u0423\u0441\u0442\u0430\u0440\u0435\u0432\u0448\u0438\u0439 \u0441\u0435\u0442\u0435\u0432\u043e\u0439 \u0440\u0430\u0437\u0434\u0435\u043b \u0443\u0434\u0430\u043b\u0451\u043d."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static start(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lcom/cootek/smartinput5/settings/Offline163;->local(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/cootek/smartinput5/settings/Offline163;->retired(Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static start(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    .line 45
    invoke-static {p0, p1}, Lcom/cootek/smartinput5/settings/Offline163;->local(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/cootek/smartinput5/settings/Offline163;->retired(Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public static themeIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .line 17
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.cootek.smartinput5.ui.skinappshop.StoreActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 18
    const-string v1, "StoreActivity.EXTRA_START_PAGE"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    instance-of p0, p0, Landroid/app/Activity;

    if-nez p0, :cond_0

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 20
    :cond_0
    return-object v0
.end method

.method public static themes(Landroid/content/Context;)V
    .locals 1

    .line 22
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/cootek/smartinput5/settings/Offline163;->themeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
