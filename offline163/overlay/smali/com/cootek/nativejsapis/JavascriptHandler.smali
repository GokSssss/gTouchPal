.class public abstract Lcom/cootek/nativejsapis/JavascriptHandler;
.super Ljava/lang/Object;


# static fields
.field public static DIALER_INTENT_CALL_PHONE:Ljava/lang/String; = "com.cootek.presentation.action.CALL_PHONE"

.field public static DIALER_INTENT_PARAM_NAME:Ljava/lang/String; = "name"

.field public static DIALER_INTENT_PARAM_NUMBER:Ljava/lang/String; = "number"

.field public static DIALER_SERVICE:Ljava/lang/String; = "com.cootek.smartdialer.PresentationJsHandlerService"

.field public static final DOWNLOAD_PARAM_APPNAME:Ljava/lang/String; = "appName"

.field public static final DOWNLOAD_PARAM_AUTO_INSTALL:Ljava/lang/String; = "autoInstall"

.field public static final DOWNLOAD_PARAM_NEED_CONFIRM:Ljava/lang/String; = "needConfirm"

.field public static final DOWNLOAD_PARAM_NON_WIFI_REMINDER:Ljava/lang/String; = "nonWifiReminder"

.field public static final DOWNLOAD_PARAM_PKGNAME:Ljava/lang/String; = "pkgName"

.field public static final DOWNLOAD_PARAM_REQUEST_TOKEN:Ljava/lang/String; = "requestToken"

.field public static final DOWNLOAD_PARAM_URL:Ljava/lang/String; = "url"

.field public static final INTENT_PARAM_ACTION:Ljava/lang/String; = "action"

.field public static final INTENT_PARAM_CLASS_NAME:Ljava/lang/String; = "className"

.field public static final INTENT_PARAM_DATA:Ljava/lang/String; = "data"

.field public static final INTENT_PARAM_IS_SERVICE:Ljava/lang/String; = "isService"

.field public static final INTENT_PARAM_JSON_CATEGORY_ARRAY:Ljava/lang/String; = "jsonCategoryArray"

.field public static final INTENT_PARAM_JSON_EXTRA_DATA:Ljava/lang/String; = "jsonExtra"

.field public static final INTENT_PARAM_PKGNAME:Ljava/lang/String; = "pkgName"

.field public static final INTENT_PARAM_TYPE:Ljava/lang/String; = "type"

.field public static final LOCATION_LATITUDE:Ljava/lang/String; = "latitude"

.field public static final LOCATION_LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final MESSAGE_TYPE_SMS:Ljava/lang/String; = "sms"

.field public static final MESSAGE_TYPE_WEIXIN_TO_FRIEND:Ljava/lang/String; = "weixin_friend"

.field public static final MESSAGE_TYPE_WEIXIN_TO_GROUP:Ljava/lang/String; = "weixin_group"

.field public static PACKAGE_NAME_SMART_DIALER:Ljava/lang/String; = "com.cootek.smartdialer"

.field public static final SHARE_CALLBACK_FLAG_CANCEL:Ljava/lang/String; = "share_cancel"

.field public static final SHARE_CALLBACK_FLAG_FAIL:Ljava/lang/String; = "share_fail"

.field public static final SHARE_CALLBACK_FLAG_SUCCESS:Ljava/lang/String; = "share_success"

.field public static final SHARE_PARAM_APPKEY:Ljava/lang/String; = "appKey"

.field public static final SHARE_PARAM_APP_EXTRA_INFO:Ljava/lang/String; = "appExtraInfo"

.field public static final SHARE_PARAM_APP_FILE_PATH:Ljava/lang/String; = "appFilePath"

.field public static final SHARE_PARAM_DLG_TITLE:Ljava/lang/String; = "dlgTitle"

.field public static final SHARE_PARAM_FILE_PATH:Ljava/lang/String; = "filePath"

.field public static final SHARE_PARAM_IMAGE_PATH:Ljava/lang/String; = "imagePath"

.field public static final SHARE_PARAM_IMAGE_URL:Ljava/lang/String; = "imageUrl"

.field public static final SHARE_PARAM_JS_CALLBACK:Ljava/lang/String; = "callback"

.field public static final SHARE_PARAM_MSG:Ljava/lang/String; = "msg"

.field public static final SHARE_PARAM_MUSIC_RELATED_URL:Ljava/lang/String; = "musicRelatedUrl"

.field public static final SHARE_PARAM_MUSIC_URL:Ljava/lang/String; = "musicUrl"

.field public static final SHARE_PARAM_SCEENSHOT:Ljava/lang/String; = "screenshot"

.field public static final SHARE_PARAM_TITLE:Ljava/lang/String; = "title"

.field public static final SHARE_PARAM_TYPE:Ljava/lang/String; = "type"

.field public static final SHARE_PARAM_URL:Ljava/lang/String; = "url"

.field public static final SHARE_PARAM_VIDEO_URL:Ljava/lang/String; = "videoUrl"

.field public static final SHARE_TYPE_FACEBOOK:Ljava/lang/String; = "facebook"

.field public static final SHARE_TYPE_TWITTER:Ljava/lang/String; = "twitter"

.field public static final SHARE_TYPE_WECHAT:Ljava/lang/String; = "wechat"

.field public static final SHARE_TYPE_WECHAT_MOMENT:Ljava/lang/String; = "wechat_moment"

.field public static final SHARE_TYPE_WEIBO:Ljava/lang/String; = "sina_weibo"

.field private static final TAG:Ljava/lang/String; = "PJavaScriptHandler"

.field public static final WEB_CALLBACK_METHOD_NAME_APK_DOWNLOADED:Ljava/lang/String; = "onApkDownloaded"

.field public static final WEB_CALLBACK_METHOD_NAME_PKG_INSTALLED:Ljava/lang/String; = "onPkgInstalled"

.field public static final WEB_CALLBACK_METHOD_PARAM_PKGNAME:Ljava/lang/String; = "pkgName"

.field public static final WEB_CALLBACK_METHOD_PARAM_URL:Ljava/lang/String; = "url"


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mResourceManager:Lcom/cootek/common/utils/TResourceManager;

.field protected mWebview:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mWebview:Landroid/webkit/WebView;

    new-instance p2, Lcom/cootek/common/utils/TResourceManager;

    invoke-direct {p2, p1}, Lcom/cootek/common/utils/TResourceManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mResourceManager:Lcom/cootek/common/utils/TResourceManager;

    return-void
.end method

.method static synthetic access$000(Lcom/cootek/nativejsapis/JavascriptHandler;)Lcom/cootek/common/utils/TResourceManager;
    .locals 0

    iget-object p0, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mResourceManager:Lcom/cootek/common/utils/TResourceManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/cootek/nativejsapis/JavascriptHandler;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cootek/nativejsapis/JavascriptHandler;->showToastWithResId(II)V

    return-void
.end method

.method private showToastWithResId(II)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1, p2}, Lcom/cootek/nativejsapis/JavascriptHandler;->showToast(Ljava/lang/String;I)V

    :catch_0
    return-void
.end method


# virtual methods
.method public copyToClipboard(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1
.end method

.method public abstract downloadApk(Ljava/lang/String;)V
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

.method public getApiLevel()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public abstract getAuthToken()Ljava/lang/String;
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getServerIp()Ljava/lang/String;
.end method

.method public isInstalled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1
    return v1
.end method

.method public launchLocalApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p4

    invoke-static/range {v0 .. v7}, Lcom/cootek/nativejsapis/IntentProvider;->getLaunchLocalAppIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p5, :cond_0

    iget-object p2, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const/high16 p2, 0x10000000

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public launchLocalAppByClassName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-static/range {v0 .. v7}, Lcom/cootek/nativejsapis/IntentProvider;->getLaunchLocalAppIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p5, :cond_0

    iget-object p2, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const/high16 p2, 0x10000000

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public launchLocalAppWithJsonParam(Ljava/lang/String;)V
    .locals 10
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "pkgName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    const-string v4, "action"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    const-string v5, "className"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    const-string v6, "data"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    const-string v7, "jsonExtra"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    const-string v8, "type"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    const-string v9, "isService"

    invoke-virtual {v2, v9, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v9, "jsonCategoryArray"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    :catch_0
    move-object v8, v1

    goto :goto_4

    :catch_1
    move-object v7, v1

    goto :goto_3

    :catch_2
    move-object v6, v1

    goto :goto_2

    :catch_3
    move-object v5, v1

    goto :goto_1

    :catch_4
    move-object v4, v1

    goto :goto_0

    :catch_5
    move-object v3, v1

    move-object v4, v3

    :goto_0
    move-object v5, v4

    :goto_1
    move-object v6, v5

    :goto_2
    move-object v7, v6

    :goto_3
    move-object v8, v7

    :catch_6
    :goto_4
    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    move-object v8, v1

    iget-object v1, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    invoke-static/range {v1 .. v8}, Lcom/cootek/nativejsapis/IntentProvider;->getLaunchLocalAppIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_5

    :cond_0
    const/high16 v0, 0x10000000

    :try_start_7
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_5

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_1
    :goto_5
    return-void
.end method

.method public openMap(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "geo:0,0?q=%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cootek/nativejsapis/JavascriptHandler;->openMapStartup(Landroid/net/Uri;)V

    return-void
.end method

.method public openMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "geo:%s,%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cootek/nativejsapis/JavascriptHandler;->openMapStartup(Landroid/net/Uri;)V

    return-void
.end method

.method public openMapStartup(Landroid/net/Uri;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "string"

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 p1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v1, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mResourceManager:Lcom/cootek/common/utils/TResourceManager;

    const-string v2, "jssdk_open_map_failed"

    invoke-virtual {v1, v2, v0}, Lcom/cootek/common/utils/TResourceManager;->getIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/cootek/nativejsapis/JavascriptHandler;->showToastWithResId(II)V

    goto :goto_0

    :catch_1
    iget-object v1, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mResourceManager:Lcom/cootek/common/utils/TResourceManager;

    const-string v2, "jssdk_no_map_install"

    invoke-virtual {v1, v2, v0}, Lcom/cootek/common/utils/TResourceManager;->getIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/cootek/nativejsapis/JavascriptHandler;->showToastWithResId(II)V

    :goto_0
    return-void
.end method

.method public abstract refreshAuthToken(Ljava/lang/String;)V
.end method

.method public abstract restart()V
.end method

.method public saveImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cootek/nativejsapis/JavascriptHandler$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/cootek/nativejsapis/JavascriptHandler$1;-><init>(Lcom/cootek/nativejsapis/JavascriptHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "sms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2, p3}, Lcom/cootek/nativejsapis/IntentProvider;->getSMSIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    :try_start_0
    iget-object p2, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public abstract setAuthToken(Ljava/lang/String;)V
.end method

.method public showContextMenu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_0
    const p1, 0x1040001

    new-instance v1, Lcom/cootek/nativejsapis/JavascriptHandler$5;

    invoke-direct {v1, p0, p2}, Lcom/cootek/nativejsapis/JavascriptHandler$5;-><init>(Lcom/cootek/nativejsapis/JavascriptHandler;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance p1, Lcom/cootek/nativejsapis/JavascriptHandler$6;

    invoke-direct {p1, p0, p4}, Lcom/cootek/nativejsapis/JavascriptHandler$6;-><init>(Lcom/cootek/nativejsapis/JavascriptHandler;Ljava/lang/String;)V

    invoke-virtual {v0, p3, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public showMessenger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_1
    const p1, 0x104000a

    new-instance p2, Lcom/cootek/nativejsapis/JavascriptHandler$2;

    invoke-direct {p2, p0, p3}, Lcom/cootek/nativejsapis/JavascriptHandler$2;-><init>(Lcom/cootek/nativejsapis/JavascriptHandler;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    new-instance p2, Lcom/cootek/nativejsapis/JavascriptHandler$3;

    invoke-direct {p2, p0, p4}, Lcom/cootek/nativejsapis/JavascriptHandler$3;-><init>(Lcom/cootek/nativejsapis/JavascriptHandler;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance p1, Lcom/cootek/nativejsapis/JavascriptHandler$4;

    invoke-direct {p1, p0, p4}, Lcom/cootek/nativejsapis/JavascriptHandler$4;-><init>(Lcom/cootek/nativejsapis/JavascriptHandler;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public showSystemShareDialog(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "text/plain"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object p1, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public showToast(Ljava/lang/String;I)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/common/utils/ToastWidget;->getInstance()Lcom/cootek/common/utils/ToastWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v0, v1, p1, v2}, Lcom/cootek/common/utils/ToastWidget;->showText(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public abstract switchSkin(Ljava/lang/String;)V
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation
.end method

.method public uploadPic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
