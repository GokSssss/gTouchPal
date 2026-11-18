.class public Lcom/cootek/smartinput5/func/JsHandler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput5/func/JsHandler$e;,
        Lcom/cootek/smartinput5/func/JsHandler$d;
    }
.end annotation


# static fields
.field private static final CALLBACK_NOTIFY_STORE_WEBVIEWS:Ljava/lang/String; = "callbackNotifyStoreWebviews"

.field private static final CALLBACK_PARAMS:Ljava/lang/String; = "callbackParams"

.field private static final CALLBACK_URL:Ljava/lang/String; = "callbackUrl"

.field public static final CHANGE_CELL:I = 0x100

.field public static final CHANGE_IAB_PURCHASE:I = 0x40

.field public static final CHANGE_IAB_QUERY_PURCHASE:I = 0x10

.field public static final CHANGE_IAB_QUERY_SKU:I = 0x20

.field public static final CHANGE_IAB_SETUP:I = 0x80

.field public static final CHANGE_LANGUAGE:I = 0x2

.field public static final CHANGE_LOGIN_SUCCESS:I = 0x800

.field public static final CHANGE_MISSION:I = 0x1

.field public static final CHANGE_MORE:I = 0x200

.field public static final CHANGE_PAGE:I = 0x8

.field public static final CHANGE_REFRESH:I = 0x400

.field public static final CHANGE_SKIN:I = 0x4

.field public static final EXTRA_INT_MISSION_STATE:Ljava/lang/String; = "com.cootek.smartinput5.func.AttachedPackageManager.EXTRA_INT_MISSION_STATE"

.field public static final EXTRA_STRING_MISSION_ID:Ljava/lang/String; = "com.cootek.smartinput5.func.AttachedPackageManager.EXTRA_STRING_MISSION_ID"

.field private static final GOODS_TYPE_CELL:Ljava/lang/String; = "cell"

.field private static final GOODS_TYPE_LANGUAGE:Ljava/lang/String; = "language"

.field private static final GOODS_TYPE_MORE:Ljava/lang/String; = "more"

.field private static final GOODS_TYPE_SKIN:Ljava/lang/String; = "skin"

.field private static final GOODS_TYPE_SKIN_FONT:Ljava/lang/String; = "font"

.field private static final MSG_CALLBACK_WEBVIEW:I = 0x101

.field private static final MSG_LOAD_URL:I = 0x102

.field public static final SHOP_PAGE_ACCOUNT:I = 0x7

.field public static final SHOP_PAGE_DEFAULT:I = 0x1

.field public static final SHOP_PAGE_LOGIN:I = 0x0

.field public static final SHOP_PAGE_MISSION:I = 0x8

.field public static final SHOP_PAGE_MYPLAY_LANGUAGE:I = 0x6

.field public static final SHOP_PAGE_MYPLAY_SKIN:I = 0x5

.field public static final SHOP_PAGE_TOUCHPAL_CELL_LOCAL:I = 0xd

.field public static final SHOP_PAGE_TOUCHPAL_CELL_POP:I = 0xc

.field public static final SHOP_PAGE_TOUCHPAL_PLAY_CELL:I = 0x3

.field public static final SHOP_PAGE_TOUCHPAL_PLAY_DEALS:I = 0xe
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHOP_PAGE_TOUCHPAL_PLAY_LANGUAGE:I = 0x2

.field public static final SHOP_PAGE_TOUCHPAL_PLAY_MORE:I = 0x4

.field public static final SHOP_PAGE_TOUCHPAL_PLAY_SKIN:I = 0x1

.field public static final SHOP_PAGE_TOUCHPAL_PLAY_TRENDS:I = 0x9

.field public static final SHOP_PAGE_TOUCHPAL_SKIN_FONT:I = 0xf

.field public static final SHOP_PAGE_TOUCHPAL_SKIN_LOCAL:I = 0xb

.field public static final SHOP_PAGE_TOUCHPAL_SKIN_POP:I = 0xa

.field public static final SHOP_PAGE_TOUCHPAL_STICKER:I = 0x10

.field private static final TAG:Ljava/lang/String; = "shopJsHandler"

.field private static final Version:Ljava/lang/String; = null

.field public static final WEBVIEW_KEYCODE_BACK:I = 0x0

.field public static final WEBVIEW_KEYCODE_MENU:I = 0x1

.field public static final WEBVIEW_POINT:I = 0x1


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBlockJsInit:Z

.field private mChangeSet:I

.field private mChangedPkgnameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentPageIndex:I

.field private mDealsHandler:Landroid/os/Handler;

.field private mGoodsDetailHandler:Landroid/os/Handler;

.field private mHandler:Lcom/cootek/smartinput5/func/JsHandler$e;

.field private mIPCManager:Lcom/cootek/smartinput5/engine/IPCManager;

.field private mIabHandler:Lcom/cootek/smartinput5/func/JsHandler$d;

.field private mIabHelper:Lcom/cootek/smartinput5/func/iab/i;

.field private mMessenger:Landroid/os/Messenger;

.field private mNonApkDownloader:Lcom/cootek/smartinput5/net/y;

.field private mPurchaseCallback:Ljava/lang/String;

.field private mPurchasedList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/cootek/smartinput5/func/iab/l;",
            ">;"
        }
    .end annotation
.end field

.field private mQuerySkuDetailsCallback:Ljava/lang/String;

.field private mSkinHandler:Lcom/cootek/smartinput5/ui/settings/SkinInfoHandler;

.field private mStarted:Z

.field private mStoreHandler:Landroid/os/Handler;

.field private mSyncOrderCallback:Ljava/lang/String;

.field private mTJavascriptHandler:Lcom/cootek/smartinput/utilities/TJavascriptHandler;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewProgressDownloader:Lcom/cootek/smartinput5/net/M;

.field private missionStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tempMissionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    iput p2, p0, Lcom/cootek/smartinput5/func/JsHandler;->mCurrentPageIndex:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/cootek/smartinput5/func/JsHandler;->mBlockJsInit:Z

    new-instance p2, Lcom/cootek/smartinput5/func/JsHandler$d;

    invoke-direct {p2, p0}, Lcom/cootek/smartinput5/func/JsHandler$d;-><init>(Lcom/cootek/smartinput5/func/JsHandler;)V

    iput-object p2, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIabHandler:Lcom/cootek/smartinput5/func/JsHandler$d;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/cootek/smartinput5/func/JsHandler;->mChangedPkgnameList:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/cootek/smartinput5/func/JsHandler;->mPurchasedList:Ljava/util/HashSet;

    new-instance p2, Lcom/cootek/smartinput5/func/JsHandler$e;

    invoke-direct {p2, p0}, Lcom/cootek/smartinput5/func/JsHandler$e;-><init>(Lcom/cootek/smartinput5/func/JsHandler;)V

    iput-object p2, p0, Lcom/cootek/smartinput5/func/JsHandler;->mHandler:Lcom/cootek/smartinput5/func/JsHandler$e;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/cootek/smartinput5/func/JsHandler;->missionStateMap:Ljava/util/HashMap;

    const-string p2, "mission_curve"

    iput-object p2, p0, Lcom/cootek/smartinput5/func/JsHandler;->tempMissionId:Ljava/lang/String;

    iput-object p1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->a0()Lcom/cootek/smartinput5/engine/IPCManager;

    move-result-object p1

    iput-object p1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIPCManager:Lcom/cootek/smartinput5/engine/IPCManager;

    return-void
.end method

.method static synthetic access$000(Lcom/cootek/smartinput5/func/JsHandler;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/cootek/smartinput5/func/JsHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/func/JsHandler;->callbackWebview(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/cootek/smartinput5/func/JsHandler;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mChangedPkgnameList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/cootek/smartinput5/func/JsHandler;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cootek/smartinput5/func/JsHandler;->doCallbackWebview(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/cootek/smartinput5/func/JsHandler;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/cootek/smartinput5/func/JsHandler;)Lcom/cootek/smartinput5/func/JsHandler$e;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mHandler:Lcom/cootek/smartinput5/func/JsHandler$e;

    return-object p0
.end method

.method static synthetic access$300(Lcom/cootek/smartinput5/func/JsHandler;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/cootek/smartinput5/func/JsHandler;)Lcom/cootek/smartinput5/func/iab/i;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIabHelper:Lcom/cootek/smartinput5/func/iab/i;

    return-object p0
.end method

.method static synthetic access$500(Lcom/cootek/smartinput5/func/JsHandler;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mPurchaseCallback:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/cootek/smartinput5/func/JsHandler;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cootek/smartinput5/func/JsHandler;->callbackWebview(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/cootek/smartinput5/func/JsHandler;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mQuerySkuDetailsCallback:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/cootek/smartinput5/func/JsHandler;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mSyncOrderCallback:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/cootek/smartinput5/func/JsHandler;)Lcom/cootek/smartinput5/engine/IPCManager;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIPCManager:Lcom/cootek/smartinput5/engine/IPCManager;

    return-object p0
.end method

.method private addInterface(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    invoke-virtual {p1, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private callbackWebview(Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/cootek/smartinput5/func/JsHandler;->callbackWebview(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private callbackWebview(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mHandler:Lcom/cootek/smartinput5/func/JsHandler$e;

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "callbackUrl"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "callbackParams"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "callbackNotifyStoreWebviews"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mHandler:Lcom/cootek/smartinput5/func/JsHandler$e;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private checkSDCardUsable(Z)Z
    .locals 3

    invoke-static {}, Lcom/cootek/smartinput5/func/x;->f()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object p1

    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0803

    invoke-static {v1, v2}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/cootek/smartinput5/ui/control/E;->w(Ljava/lang/String;Z)V

    :cond_1
    return v0
.end method

.method private doCallbackWebview(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    aput-object p2, v0, p1

    const-string p1, "javascript:%s(%s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/cootek/smartinput5/func/JsHandler;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object p2

    iget-object p3, p0, Lcom/cootek/smartinput5/func/JsHandler;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p2, p3, p1}, Lcom/cootek/smartinput5/ui/skinappshop/k;->z(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private isFunManagerInitialized()Z
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->J0()Z

    move-result v0

    return v0
.end method

.method private registerMessenger()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIPCManager:Lcom/cootek/smartinput5/engine/IPCManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mHandler:Lcom/cootek/smartinput5/func/JsHandler$e;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mMessenger:Landroid/os/Messenger;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIPCManager:Lcom/cootek/smartinput5/engine/IPCManager;

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/engine/IPCManager;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private unRegisterMessenger()V
    .locals 4

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIPCManager:Lcom/cootek/smartinput5/engine/IPCManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/cootek/smartinput5/func/JsHandler;->mMessenger:Landroid/os/Messenger;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    or-int/2addr v0, v1

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIPCManager:Lcom/cootek/smartinput5/engine/IPCManager;

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/engine/IPCManager;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private writeBackToken()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_TYPE:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_KEY:Ljava/lang/String;

    const/16 v3, 0x5c

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_VALUE:Ljava/lang/String;

    invoke-static {}, Lcom/cootek/smartinput5/net/w;->e()Lcom/cootek/smartinput5/net/w;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/smartinput5/net/w;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIPCManager:Lcom/cootek/smartinput5/engine/IPCManager;

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/engine/IPCManager;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public active(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/cootek/smartinput5/func/JsHandler$a;

    invoke-direct {v0, p0, p1}, Lcom/cootek/smartinput5/func/JsHandler$a;-><init>(Lcom/cootek/smartinput5/func/JsHandler;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public addChangeSet(I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mChangeSet:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mChangeSet:I

    return-void
.end method

.method public applySkin(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/i0;->j0(Ljava/lang/String;)Lcom/cootek/smartinput5/func/E;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIPCManager:Lcom/cootek/smartinput5/engine/IPCManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lcom/cootek/smartinput5/action/ActionSetSkin;

    invoke-direct {v1, p1}, Lcom/cootek/smartinput5/action/ActionSetSkin;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/IPCManager;->sendMessageForParcelableAction(Lcom/cootek/smartinput5/action/ParcelableAction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public cancelDownloadWithProgress()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mWebViewProgressDownloader:Lcom/cootek/smartinput5/net/M;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/net/u;->a()V

    :cond_0
    return-void
.end method

.method public cancelDownloadWithProgress(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mWebViewProgressDownloader:Lcom/cootek/smartinput5/net/M;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/net/u;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public cancelDownloadWithProgressByType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/ui/skinappshop/k;->j(Ljava/lang/String;)Lcom/cootek/smartinput5/net/M;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/cootek/smartinput5/net/u;->c(Ljava/lang/String;)V

    return-void
.end method

.method public checkGoodsUsable(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "skin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p3}, Lcom/cootek/smartinput5/func/JsHandler;->checkSDCardUsable(Z)Z

    move-result p1

    return p1

    :cond_1
    const-string v0, "more"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const-string p1, "cootek.smartinput.android.emoji."

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0, p3}, Lcom/cootek/smartinput5/func/JsHandler;->checkSDCardUsable(Z)Z

    move-result p1

    return p1

    :cond_3
    const-string p2, "language"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_4

    return p3

    :cond_4
    const-string p2, "cell"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    return p3

    :cond_5
    const-string p2, "font"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return p3

    :cond_6
    return v1
.end method

.method public clearActivity(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mActivity:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public closePresentWebView(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "detail"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "deals"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mDealsHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public collectData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/cootek/smartinput5/action/ActionCollectData;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/cootek/smartinput5/action/ActionCollectData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIPCManager:Lcom/cootek/smartinput5/engine/IPCManager;

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/action/ActionCollectData;->run()V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/engine/IPCManager;->sendMessageForParcelableAction(Lcom/cootek/smartinput5/action/ParcelableAction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v0}, Lcom/cootek/smartinput5/action/ActionCollectData;->run()V

    :goto_0
    return-void
.end method

.method public consumePurchase()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public copyText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mContext:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object p1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0391

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cootek/smartinput5/ui/control/E;->s(Ljava/lang/String;)V

    return-void
.end method

.method public destoryDetailWebView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object p1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mDealsHandler:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public doPurchase(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iput-object p5, p0, Lcom/cootek/smartinput5/func/JsHandler;->mPurchaseCallback:Ljava/lang/String;

    iget-object p1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    new-instance p5, Lcom/cootek/smartinput5/func/JsHandler$c;

    invoke-direct {p5, p0, p4, p2, p3}, Lcom/cootek/smartinput5/func/JsHandler$c;-><init>(Lcom/cootek/smartinput5/func/JsHandler;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, p5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public downloadCellPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/net/i;->E()Lcom/cootek/smartinput5/net/i;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mWebViewProgressDownloader:Lcom/cootek/smartinput5/net/M;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/net/i;->R(Lcom/cootek/smartinput5/net/y;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0006

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mHandler:Lcom/cootek/smartinput5/func/JsHandler$e;

    new-instance v2, Lcom/cootek/smartinput5/action/ActionDownloadCellPack;

    invoke-direct {v2, p1, p2, v0}, Lcom/cootek/smartinput5/action/ActionDownloadCellPack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/cootek/smartinput5/actionflow/a;->f()Lcom/cootek/smartinput5/actionflow/a;

    move-result-object p1

    iget-object p2, p0, Lcom/cootek/smartinput5/func/JsHandler;->mContext:Landroid/content/Context;

    const-string v0, "LANGUAGE_SUBDIC_STORE_DOWNLOAD"

    invoke-virtual {p1, v0, p2}, Lcom/cootek/smartinput5/actionflow/a;->i(Ljava/lang/String;Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1
.end method

.method public downloadEmojiPackageWithProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/net/i;->E()Lcom/cootek/smartinput5/net/i;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mWebViewProgressDownloader:Lcom/cootek/smartinput5/net/M;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/net/i;->R(Lcom/cootek/smartinput5/net/y;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mHandler:Lcom/cootek/smartinput5/func/JsHandler$e;

    new-instance v1, Lcom/cootek/smartinput5/action/ActionDownloadEmoji;

    invoke-direct {v1, p1, p2, p3}, Lcom/cootek/smartinput5/action/ActionDownloadEmoji;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public downloadEmojiPackageWithProgressByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/ui/skinappshop/k;->j(Ljava/lang/String;)Lcom/cootek/smartinput5/net/M;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/net/i;->E()Lcom/cootek/smartinput5/net/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/net/i;->R(Lcom/cootek/smartinput5/net/y;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mHandler:Lcom/cootek/smartinput5/func/JsHandler$e;

    new-instance v0, Lcom/cootek/smartinput5/action/ActionDownloadEmoji;

    invoke-direct {v0, p2, p3, p4}, Lcom/cootek/smartinput5/action/ActionDownloadEmoji;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public downloadFontPackageWithProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/net/i;->E()Lcom/cootek/smartinput5/net/i;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mWebViewProgressDownloader:Lcom/cootek/smartinput5/net/M;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/net/i;->R(Lcom/cootek/smartinput5/net/y;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadFontPackageWithProgress:  shortId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  displayName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "leo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mHandler:Lcom/cootek/smartinput5/func/JsHandler$e;

    new-instance v1, Lcom/cootek/smartinput5/action/ActionDownloadFont;

    invoke-direct {v1, p1, p2, p3}, Lcom/cootek/smartinput5/action/ActionDownloadFont;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public downloadFontPackageWithProgressByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadFontPackageWithProgressByType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "leo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/ui/skinappshop/k;->j(Ljava/lang/String;)Lcom/cootek/smartinput5/net/M;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/net/i;->E()Lcom/cootek/smartinput5/net/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/net/i;->R(Lcom/cootek/smartinput5/net/y;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mHandler:Lcom/cootek/smartinput5/func/JsHandler$e;

    new-instance v0, Lcom/cootek/smartinput5/action/ActionDownloadFont;

    invoke-direct {v0, p2, p3, p4}, Lcom/cootek/smartinput5/action/ActionDownloadFont;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public downloadLanguagePackage(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->g0()Lcom/cootek/smartinput5/func/O;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/O;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->g0()Lcom/cootek/smartinput5/func/O;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/O;->g(I)V

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/net/i;->E()Lcom/cootek/smartinput5/net/i;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mNonApkDownloader:Lcom/cootek/smartinput5/net/y;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/net/i;->R(Lcom/cootek/smartinput5/net/y;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mHandler:Lcom/cootek/smartinput5/func/JsHandler$e;

    new-instance v1, Lcom/cootek/smartinput5/action/ActionDownloadLanguagePack;

    invoke-direct {v1, p1}, Lcom/cootek/smartinput5/action/ActionDownloadLanguagePack;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/cootek/smartinput5/actionflow/a;->f()Lcom/cootek/smartinput5/actionflow/a;

    move-result-object p1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mContext:Landroid/content/Context;

    const-string v1, "LANGUAGE_STORE_DOWNLOAD"

    invoke-virtual {p1, v1, v0}, Lcom/cootek/smartinput5/actionflow/a;->i(Ljava/lang/String;Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1
.end method

.method public downloadMoreItem(Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/func/u;->m()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/cootek/smartinput5/func/u;->k0(Landroid/content/Context;)V

    return v1

    :cond_1
    invoke-static {}, Lcom/cootek/smartinput5/net/i;->E()Lcom/cootek/smartinput5/net/i;

    move-result-object v0

    iget-object v2, p0, Lcom/cootek/smartinput5/func/JsHandler;->mNonApkDownloader:Lcom/cootek/smartinput5/net/y;

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/net/i;->R(Lcom/cootek/smartinput5/net/y;)V

    const-string v0, "cootek.smartinput.android.emoji."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mHandler:Lcom/cootek/smartinput5/func/JsHandler$e;

    new-instance v1, Lcom/cootek/smartinput5/action/ActionDownloadEmojiPack;

    invoke-direct {v1, p1}, Lcom/cootek/smartinput5/action/ActionDownloadEmojiPack;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/cootek/smartinput5/actionflow/a;->f()Lcom/cootek/smartinput5/actionflow/a;

    move-result-object p1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mContext:Landroid/content/Context;

    const-string v1, "MORE_STORE_DOWNLOAD_EMOJI"

    invoke-virtual {p1, v1, v0}, Lcom/cootek/smartinput5/actionflow/a;->i(Ljava/lang/String;Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public downloadSkinPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "skin"

    invoke-virtual {p0, v0, p1}, Lcom/cootek/smartinput5/func/JsHandler;->reloadItem(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->g0()Lcom/cootek/smartinput5/func/O;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/O;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->g0()Lcom/cootek/smartinput5/func/O;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/O;->g(I)V

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/net/i;->E()Lcom/cootek/smartinput5/net/i;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mNonApkDownloader:Lcom/cootek/smartinput5/net/y;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/net/i;->R(Lcom/cootek/smartinput5/net/y;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/cootek/smartinput5/func/JsHandler$b;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/cootek/smartinput5/func/JsHandler$b;-><init>(Lcom/cootek/smartinput5/func/JsHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {v0, v1, p1}, Lcom/cootek/smartinput5/func/w0;->e(Landroid/content/Context;Ljava/lang/Runnable;Z)V

    invoke-static {}, Lcom/cootek/smartinput5/actionflow/a;->f()Lcom/cootek/smartinput5/actionflow/a;

    move-result-object p1

    iget-object p2, p0, Lcom/cootek/smartinput5/func/JsHandler;->mContext:Landroid/content/Context;

    const-string p3, "SKIN_STOER_DOWNLOAD"

    invoke-virtual {p1, p3, p2}, Lcom/cootek/smartinput5/actionflow/a;->i(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public downloadSkinPackageWithProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "skin"

    invoke-virtual {p0, v0, p1}, Lcom/cootek/smartinput5/func/JsHandler;->reloadItem(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->g0()Lcom/cootek/smartinput5/func/O;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/O;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->g0()Lcom/cootek/smartinput5/func/O;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/O;->g(I)V

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/net/i;->E()Lcom/cootek/smartinput5/net/i;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mWebViewProgressDownloader:Lcom/cootek/smartinput5/net/M;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/net/i;->R(Lcom/cootek/smartinput5/net/y;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mHandler:Lcom/cootek/smartinput5/func/JsHandler$e;

    new-instance v1, Lcom/cootek/smartinput5/action/ActionDownloadSkinPack;

    invoke-direct {v1, p1, p2, p3}, Lcom/cootek/smartinput5/action/ActionDownloadSkinPack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/cootek/smartinput5/actionflow/a;->f()Lcom/cootek/smartinput5/actionflow/a;

    move-result-object p1

    iget-object p2, p0, Lcom/cootek/smartinput5/func/JsHandler;->mContext:Landroid/content/Context;

    const-string p3, "SKIN_STOER_DOWNLOAD"

    invoke-virtual {p1, p3, p2}, Lcom/cootek/smartinput5/actionflow/a;->i(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public downloadSkinPackageWithProgressByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "skin"

    invoke-virtual {p0, v0, p2}, Lcom/cootek/smartinput5/func/JsHandler;->reloadItem(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/ui/skinappshop/k;->j(Ljava/lang/String;)Lcom/cootek/smartinput5/net/M;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->g0()Lcom/cootek/smartinput5/func/O;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/O;->f(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->g0()Lcom/cootek/smartinput5/func/O;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/O;->g(I)V

    :cond_1
    invoke-static {}, Lcom/cootek/smartinput5/net/i;->E()Lcom/cootek/smartinput5/net/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/net/i;->R(Lcom/cootek/smartinput5/net/y;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mHandler:Lcom/cootek/smartinput5/func/JsHandler$e;

    new-instance v0, Lcom/cootek/smartinput5/action/ActionDownloadSkinPack;

    invoke-direct {v0, p2, p3, p4}, Lcom/cootek/smartinput5/action/ActionDownloadSkinPack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/cootek/smartinput5/actionflow/a;->f()Lcom/cootek/smartinput5/actionflow/a;

    move-result-object p1

    iget-object p2, p0, Lcom/cootek/smartinput5/func/JsHandler;->mContext:Landroid/content/Context;

    const-string p3, "SKIN_STOER_DOWNLOAD"

    invoke-virtual {p1, p3, p2}, Lcom/cootek/smartinput5/actionflow/a;->i(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public downloadSkinPackageWithQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "skin_package_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "skin_package_url"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "skin_display_name"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->a0()Lcom/cootek/smartinput5/engine/IPCManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/engine/IPCManager;->notifyOtherProcesses(Landroid/os/Message;)V

    return-void
.end method

.method public downloadStickerPackageWithProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public downloadStickerPackageWithProgressByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public enableCloudSync(Z)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/func/IMEJsHandler;->getInstance()Lcom/cootek/smartinput5/func/IMEJsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/IMEJsHandler;->setCloudSyncEnable(Z)V

    return-void
.end method

.method public enableFontWithPreview(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/JsHandler;->isFunManagerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->W()Lcom/cootek/smartinput5/func/B0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, v1}, Lcom/cootek/smartinput5/func/B0/a;->c(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method public enableNativeHandleBack(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "deals"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "NATIVE_HANDLE_BACK"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x1

    iput v0, p2, Landroid/os/Message;->what:I

    invoke-virtual {p2, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mDealsHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public enterOnlineShop()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x11

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/z;->a0()Lcom/cootek/smartinput5/engine/IPCManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/engine/IPCManager;->notifyOtherProcesses(Landroid/os/Message;)V

    return-void
.end method

.method public exit()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/func/JsHandler;->writeBackToken()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Settings;->writeBack()V

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/control/E;->k()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/JsHandler;->stop()V

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public finishDetails(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x15

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "finishpage"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/func/JsHandler;->sendGoodsDetailMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->I()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockJsInit()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-boolean v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mBlockJsInit:Z

    return v0
.end method

.method public getChangedPkgnameList()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/cootek/smartinput5/func/JsHandler;->mChangedPkgnameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/cootek/smartinput5/func/JsHandler;->mChangedPkgnameList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mChangedPkgnameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientSize()Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/cootek/smartinput5/func/JsHandler;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "{\"width\":%d, \"height\":%d}"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCloudSyncEnabled()Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x108

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCootekToken()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/net/w;->e()Lcom/cootek/smartinput5/net/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/net/w;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPageIndex()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mCurrentPageIndex:I

    return v0
.end method

.method public getDetailJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/ui/skinappshop/k;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEnabledEmoji()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/JsHandler;->isFunManagerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "system"

    return-object v0

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->V()Lcom/cootek/smartinput5/func/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/u;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledFont()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/JsHandler;->isFunManagerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.cootek.smartinputv5.font.system"

    return-object v0

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->W()Lcom/cootek/smartinput5/func/B0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/B0/a;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledSkin()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/func/IMEJsHandler;->getInstance()Lcom/cootek/smartinput5/func/IMEJsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/IMEJsHandler;->getEnabledSkin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledSticker()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x220

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getStringSetting(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cootek/smartinput5/net/J;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledLanguage()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/func/IMEJsHandler;->getInstance()Lcom/cootek/smartinput5/func/IMEJsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/IMEJsHandler;->getInstalledLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMissionState(Ljava/lang/String;)I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->missionStateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->missionStateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getNativeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->u0()Lcom/cootek/smartinput5/func/f0;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@string/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/f0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPurchase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/func/JsHandler;->isIABSupported(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIabHelper:Lcom/cootek/smartinput5/func/iab/i;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/cootek/smartinput5/func/iab/k;->i(Ljava/lang/String;)Lcom/cootek/smartinput5/func/iab/l;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "getPurchase. null"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "shopJsHandler"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/iab/l;->i()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRecommendUserID()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cootek/smartinput5/net/Activator;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerAddress()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/cootek/smartinput5/net/cmd/HttpCmd;->QUERY_STORE_INFO:Lcom/cootek/smartinput5/net/cmd/HttpCmd;

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/net/J;->G(Landroid/content/Context;Lcom/cootek/smartinput5/net/cmd/HttpCmd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSkuDetails(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/func/JsHandler;->isIABSupported(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIabHelper:Lcom/cootek/smartinput5/func/iab/i;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/cootek/smartinput5/func/iab/k;->f(Ljava/lang/String;)Lcom/cootek/smartinput5/func/iab/p;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/iab/p;->f()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSupportWaveLangs()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/func/N;->o0()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cootek/smartinput5/func/language/Language;

    invoke-virtual {v2}, Lcom/cootek/smartinput5/func/language/Language;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserWordCount()I
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x1c9

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public goBack()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mHandler:Lcom/cootek/smartinput5/func/JsHandler$e;

    if-eqz v0, :cond_0

    const/16 v1, 0x102

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-string v1, "javascript:goBack()"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mHandler:Lcom/cootek/smartinput5/func/JsHandler$e;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public gotoTouchPalSettings()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/cootek/smartinput5/TouchPalOption;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public hasStarted()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-boolean v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mStarted:Z

    return v0
.end method

.method public invalidate(J)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->postInvalidateDelayed(J)V

    :cond_0
    return-void
.end method

.method public isCellInstalled(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/func/IMEJsHandler;->getInstance()Lcom/cootek/smartinput5/func/IMEJsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/IMEJsHandler;->isCellInstalled(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isEmojiCompatible(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/JsHandler;->isFunManagerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->V()Lcom/cootek/smartinput5/func/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/u;->O(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isEmojiPackageInstalled(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/JsHandler;->isFunManagerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->V()Lcom/cootek/smartinput5/func/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/u;->P(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isFontCompatible(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/JsHandler;->isFunManagerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->W()Lcom/cootek/smartinput5/func/B0/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/B0/a;->x(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isFontPackageInstalled(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/JsHandler;->isFunManagerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->W()Lcom/cootek/smartinput5/func/B0/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/B0/a;->y(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isIABSupported(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "inapp"

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIabHelper:Lcom/cootek/smartinput5/func/iab/i;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/iab/i;->n0(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public isIntePackage()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public isInteVersion()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public isLanguageCompatible(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/func/IMEJsHandler;->getInstance()Lcom/cootek/smartinput5/func/IMEJsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/IMEJsHandler;->isLanguageCompatible(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isLanguageEnabled(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/func/IMEJsHandler;->getInstance()Lcom/cootek/smartinput5/func/IMEJsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/IMEJsHandler;->isLanguageEnabled(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isLanguageInstalled(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/func/IMEJsHandler;->getInstance()Lcom/cootek/smartinput5/func/IMEJsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/IMEJsHandler;->isLanguageInstalled(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isMoreItemInstalled(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/func/IMEJsHandler;->getInstance()Lcom/cootek/smartinput5/func/IMEJsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/IMEJsHandler;->isEmojiItemInstalled(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isSkinCompatible(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/func/IMEJsHandler;->getInstance()Lcom/cootek/smartinput5/func/IMEJsHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mSkinHandler:Lcom/cootek/smartinput5/ui/settings/SkinInfoHandler;

    invoke-virtual {v0, p1, v1}, Lcom/cootek/smartinput5/func/IMEJsHandler;->isSkinCompatible(Ljava/lang/String;Lcom/cootek/smartinput5/ui/settings/SkinInfoHandler;)Z

    move-result p1

    return p1
.end method

.method public isSkinPackageInstalled(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/func/IMEJsHandler;->getInstance()Lcom/cootek/smartinput5/func/IMEJsHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mSkinHandler:Lcom/cootek/smartinput5/ui/settings/SkinInfoHandler;

    invoke-virtual {v0, p1, v1}, Lcom/cootek/smartinput5/func/IMEJsHandler;->isSkinPackageInstalled(Ljava/lang/String;Lcom/cootek/smartinput5/ui/settings/SkinInfoHandler;)Z

    move-result p1

    return p1
.end method

.method public isStickerCompatible(Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public isStickerPackageInstalled(Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public isVIP()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadFinished(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "emoji"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "skin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "more"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "font"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "cell"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "trends"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "detail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v6, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "sticker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v6, 0x0

    :goto_0
    const/16 p1, 0x8

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/ui/skinappshop/k;->y(I)V

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/cootek/smartinput5/ui/skinappshop/k;->y(I)V

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/cootek/smartinput5/ui/skinappshop/k;->y(I)V

    goto :goto_1

    :pswitch_3
    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/ui/skinappshop/k;->y(I)V

    goto :goto_1

    :pswitch_4
    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/cootek/smartinput5/ui/skinappshop/k;->y(I)V

    goto :goto_1

    :pswitch_5
    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/cootek/smartinput5/ui/skinappshop/k;->y(I)V

    goto :goto_1

    :pswitch_6
    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/cootek/smartinput5/ui/skinappshop/k;->y(I)V

    goto :goto_1

    :pswitch_7
    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object p1

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/ui/skinappshop/k;->y(I)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70aaf6c3 -> :sswitch_7
        -0x4f95e7af -> :sswitch_6
        -0x3397cd8a -> :sswitch_5
        0x2e8962 -> :sswitch_4
        0x300c4f -> :sswitch_3
        0x333b55 -> :sswitch_2
        0x35e57d -> :sswitch_1
        0x5c28046 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public notifyMissionStateChanged(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/cootek/smartinput5/func/JsHandler;->tempMissionId:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cootek/smartinput5/func/JsHandler;->setMissionState(Ljava/lang/String;I)Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/func/JsHandler;->addChangeSet(I)V

    return-void
.end method

.method public notifyStoreWebviews(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/cootek/smartinput5/ui/skinappshop/k;->z(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/cootek/smartinput5/func/iab/i$n;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cootek/smartinput5/func/iab/i$n;

    invoke-interface {v0}, Lcom/cootek/smartinput5/func/iab/i$n;->g()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/func/JsHandler;->addChangeSet(I)V

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/func/iab/i;->o0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/func/iab/i;->Y()Lcom/cootek/smartinput5/func/iab/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/cootek/smartinput5/func/iab/i;->h0(IILandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onCellDownloaded()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/func/JsHandler;->addChangeSet(I)V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/JsHandler;->refreshWebView()V

    return-void
.end method

.method public onLanguageDownloaded()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/func/JsHandler;->addChangeSet(I)V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/func/JsHandler;->refreshWebView()V

    return-void
.end method

.method public onPageIndexChanged(I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/func/JsHandler;->removeChangeSet(I)V

    iput p1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mCurrentPageIndex:I

    return-void
.end method

.method public openEmojiInNewWebView()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/cootek/smartinput5/ui/skinappshop/EmojiStoreActivity;->f0(Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public openInNewStoreWebView(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "StoreActivity.EXTRA_TAG"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/func/JsHandler;->sendStoreMessage(Landroid/os/Message;)V

    return-void
.end method

.method public openSponsorTheme(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/i0;->j0(Ljava/lang/String;)Lcom/cootek/smartinput5/func/E;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mContext:Landroid/content/Context;

    const-class v2, Lcom/cootek/smartinput5/func/skin/SponsorThemeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.cootek.smartinput5.func.skin.SponsorThemeActivity.EXTRA_SKIN_PKG"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public openStickerDetailWebView(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "StoreActivity.EXTRA_TAG"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object p1

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lcom/cootek/smartinput5/ui/skinappshop/k;->l(I)Lcom/cootek/smartinput5/ui/skinappshop/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/cootek/smartinput5/ui/skinappshop/k;->l(I)Lcom/cootek/smartinput5/ui/skinappshop/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public openStickerInNewWebView()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/cootek/smartinput5/ui/skinappshop/StickerStoreActivity;->f0(Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public preloadAds(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public purchaseVIP()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/func/TAccountManager;->d()Lcom/cootek/smartinput5/func/TAccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/TAccountManager;->r(Landroid/content/Context;)V

    return-void
.end method

.method public queryPurchases(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/func/JsHandler;->isIABSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "inapp"

    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIabHelper:Lcom/cootek/smartinput5/func/iab/i;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIabHandler:Lcom/cootek/smartinput5/func/JsHandler$d;

    invoke-virtual {v0, p1, v1}, Lcom/cootek/smartinput5/func/iab/i;->Q0(Ljava/lang/String;Lcom/cootek/smartinput5/func/iab/j$d;)V

    :cond_2
    return-void
.end method

.method public querySkuDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "inapp"

    :cond_0
    iput-object p3, p0, Lcom/cootek/smartinput5/func/JsHandler;->mQuerySkuDetailsCallback:Ljava/lang/String;

    :try_start_0
    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIabHelper:Lcom/cootek/smartinput5/func/iab/i;

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIabHandler:Lcom/cootek/smartinput5/func/JsHandler$d;

    invoke-virtual {p3, p1, p2, v0}, Lcom/cootek/smartinput5/func/iab/i;->T0(Ljava/lang/String;Ljava/util/ArrayList;Lcom/cootek/smartinput5/func/iab/j$e;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    iget-object p1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIabHandler:Lcom/cootek/smartinput5/func/JsHandler$d;

    const/16 p2, -0x3eb

    invoke-virtual {p1, p2}, Lcom/cootek/smartinput5/func/JsHandler$d;->b(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public refreshMyOrderRedSpot()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x1d

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIPCManager:Lcom/cootek/smartinput5/engine/IPCManager;

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/engine/IPCManager;->notifyOtherProcesses(Landroid/os/Message;)V

    return-void
.end method

.method public refreshWebView()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mHandler:Lcom/cootek/smartinput5/func/JsHandler$e;

    if-eqz v0, :cond_0

    const/16 v1, 0x102

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-string v1, "javascript:refresh()"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mHandler:Lcom/cootek/smartinput5/func/JsHandler$e;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public reloadItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->J0()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const-string p2, "skin"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mSkinHandler:Lcom/cootek/smartinput5/ui/settings/SkinInfoHandler;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/settings/SkinInfoHandler;->queryAllSkinPacks()V

    goto :goto_0

    :cond_1
    const-string p2, "cell"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->M()Lcom/cootek/smartinput5/func/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/m;->D()V

    goto :goto_0

    :cond_2
    const-string p2, "language"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->d0()Lcom/cootek/smartinput5/func/N;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/N;->c1()V

    goto :goto_0

    :cond_3
    const-string p2, "more"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    const-string p2, "font"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->W()Lcom/cootek/smartinput5/func/B0/a;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/cootek/smartinput5/func/B0/a;->F(Z)Ljava/util/ArrayList;

    :cond_5
    :goto_0
    return-void
.end method

.method public removeChangeSet(I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mChangeSet:I

    and-int/2addr p1, v0

    xor-int/2addr p1, v0

    iput p1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mChangeSet:I

    return-void
.end method

.method public resetWebviewAuthToken()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mHandler:Lcom/cootek/smartinput5/func/JsHandler$e;

    if-eqz v0, :cond_0

    const/16 v1, 0x102

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-string v1, "javascript:resetAuthToken()"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mHandler:Lcom/cootek/smartinput5/func/JsHandler$e;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public saveDetailJson(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cootek/smartinput5/ui/skinappshop/k;->G(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendGoodsDetailMessage(I)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mGoodsDetailHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public sendGoodsDetailMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mGoodsDetailHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public sendStoreMessage(I)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mStoreHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public sendStoreMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mStoreHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public setAccountType()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1

    iput-object p1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mTJavascriptHandler:Lcom/cootek/smartinput/utilities/TJavascriptHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->setActivity(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public setBlockJsInit(Z)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iput-boolean p1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mBlockJsInit:Z

    return-void
.end method

.method public setChangeSet(I)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public setCootekToken(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/net/w;->e()Lcom/cootek/smartinput5/net/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/net/w;->v(Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentPageIndex(I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mCurrentPageIndex:I

    const/16 v1, 0x8

    if-ltz v0, :cond_1

    if-eq v0, p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/cootek/smartinput5/func/JsHandler;->addChangeSet(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/cootek/smartinput5/func/JsHandler;->removeChangeSet(I)V

    :goto_0
    iput p1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mCurrentPageIndex:I

    return-void
.end method

.method public setDealsHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mDealsHandler:Landroid/os/Handler;

    return-void
.end method

.method public setEmojiEnable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/JsHandler;->isFunManagerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->V()Lcom/cootek/smartinput5/func/u;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cootek/smartinput5/func/u;->c0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setFontEnable(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/JsHandler;->isFunManagerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->W()Lcom/cootek/smartinput5/func/B0/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/B0/a;->N(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setGoodsDetailHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mGoodsDetailHandler:Landroid/os/Handler;

    return-void
.end method

.method public setLanguageEnable(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/func/IMEJsHandler;->getInstance()Lcom/cootek/smartinput5/func/IMEJsHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cootek/smartinput5/func/IMEJsHandler;->setLanguageEnable(Ljava/lang/String;Z)V

    return-void
.end method

.method public setMissionState(Ljava/lang/String;I)Z
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/cootek/smartinput5/func/JsHandler;->mContext:Landroid/content/Context;

    const-class v3, Lcom/cootek/smartinput5/teaching/TutorialMissionActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "teaching_type"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/cootek/smartinput5/func/JsHandler;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object p1, p0, Lcom/cootek/smartinput5/func/JsHandler;->tempMissionId:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->missionStateMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public setNativeAdsJs(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public setNeedRefresh()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/func/JsHandler;->addChangeSet(I)V

    return-void
.end method

.method public setNotifyStoreWebviews(Z)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/ui/skinappshop/k;->K(Z)V

    return-void
.end method

.method public setSkinEnable(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/func/IMEJsHandler;->getInstance()Lcom/cootek/smartinput5/func/IMEJsHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/IMEJsHandler;->setSkinEnable(Ljava/lang/String;)V

    return-void
.end method

.method public setStickerEnable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public setStoreHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mStoreHandler:Landroid/os/Handler;

    return-void
.end method

.method public setWebView(Landroid/webkit/WebView;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/cootek/smartinput5/func/JsHandler;->setWebView(Landroid/webkit/WebView;Z)V

    return-void
.end method

.method public setWebView(Landroid/webkit/WebView;Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const-string v1, "tpHandler"

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/cootek/smartinput5/func/TouchPalInfo;

    iget-object v2, p0, Lcom/cootek/smartinput5/func/JsHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cootek/smartinput5/func/TouchPalInfo;-><init>(Landroid/content/Context;)V

    const-string v2, "tpInfo"

    invoke-virtual {p1, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "webview"

    invoke-direct {p0, p1, v1}, Lcom/cootek/smartinput5/func/JsHandler;->addInterface(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mTJavascriptHandler:Lcom/cootek/smartinput/utilities/TJavascriptHandler;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIPCManager:Lcom/cootek/smartinput5/engine/IPCManager;

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->clearIPCManager(Lcom/cootek/smartinput5/engine/IPCManager;)V

    :cond_0
    new-instance v1, Lcom/cootek/smartinput/utilities/TJavascriptHandler;

    iget-object v2, p0, Lcom/cootek/smartinput5/func/JsHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/cootek/smartinput/utilities/TJavascriptHandler;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mTJavascriptHandler:Lcom/cootek/smartinput/utilities/TJavascriptHandler;

    iget-object v2, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIPCManager:Lcom/cootek/smartinput5/engine/IPCManager;

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->setIPCManager(Lcom/cootek/smartinput5/engine/IPCManager;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mTJavascriptHandler:Lcom/cootek/smartinput/utilities/TJavascriptHandler;

    const-string v2, "CTKJavaScriptHandler"

    invoke-virtual {p1, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/cootek/smartinput5/func/n0;

    iget-object v2, p0, Lcom/cootek/smartinput5/func/JsHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cootek/smartinput5/func/n0;-><init>(Landroid/content/Context;)V

    const-string v2, "CTKDeviceInfo"

    invoke-virtual {p1, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/cootek/smartinput5/func/o0;

    iget-object v2, p0, Lcom/cootek/smartinput5/func/JsHandler;->mContext:Landroid/content/Context;

    const-string v3, "native_local_storage"

    invoke-direct {v1, v2, v3}, Lcom/cootek/smartinput5/func/o0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, "CTKNativeLocalStorage"

    invoke-virtual {p1, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/IMEJsHandler;->getInstance()Lcom/cootek/smartinput5/func/IMEJsHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/cootek/smartinput5/func/IMEJsHandler;->setWebView(Landroid/webkit/WebView;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/IMEJsHandler;->getInstance()Lcom/cootek/smartinput5/func/IMEJsHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIPCManager:Lcom/cootek/smartinput5/engine/IPCManager;

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/func/IMEJsHandler;->setIPCManager(Lcom/cootek/smartinput5/engine/IPCManager;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/IMEJsHandler;->getInstance()Lcom/cootek/smartinput5/func/IMEJsHandler;

    move-result-object v1

    const-string v2, "IMEHandler"

    invoke-virtual {p1, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/cootek/smartinput5/func/JsHandler;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mWebView:Landroid/webkit/WebView;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    new-instance p2, Lcom/cootek/smartinput5/ui/settings/SkinInfoHandler;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/cootek/smartinput5/ui/settings/SkinInfoHandler;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object p2, p0, Lcom/cootek/smartinput5/func/JsHandler;->mSkinHandler:Lcom/cootek/smartinput5/ui/settings/SkinInfoHandler;

    new-instance p2, Lcom/cootek/smartinput5/net/B;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/cootek/smartinput5/net/B;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/cootek/smartinput5/func/JsHandler;->mNonApkDownloader:Lcom/cootek/smartinput5/net/y;

    new-instance p2, Lcom/cootek/smartinput5/net/M;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/cootek/smartinput5/net/M;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object p2, p0, Lcom/cootek/smartinput5/func/JsHandler;->mWebViewProgressDownloader:Lcom/cootek/smartinput5/net/M;

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mSkinHandler:Lcom/cootek/smartinput5/ui/settings/SkinInfoHandler;

    iput-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mNonApkDownloader:Lcom/cootek/smartinput5/net/y;

    iput-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mWebViewProgressDownloader:Lcom/cootek/smartinput5/net/M;

    :goto_1
    return-void
.end method

.method public setWebViewDownloader(Landroid/webkit/WebView;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mWebView:Landroid/webkit/WebView;

    new-instance v0, Lcom/cootek/smartinput5/ui/settings/SkinInfoHandler;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/cootek/smartinput5/ui/settings/SkinInfoHandler;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mSkinHandler:Lcom/cootek/smartinput5/ui/settings/SkinInfoHandler;

    new-instance v0, Lcom/cootek/smartinput5/net/B;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cootek/smartinput5/net/B;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mNonApkDownloader:Lcom/cootek/smartinput5/net/y;

    new-instance v0, Lcom/cootek/smartinput5/net/M;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/cootek/smartinput5/net/M;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mWebViewProgressDownloader:Lcom/cootek/smartinput5/net/M;

    :cond_0
    return-void
.end method

.method public setWebViewDownloader(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/k;->m()Lcom/cootek/smartinput5/ui/skinappshop/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/ui/skinappshop/k;->r(Ljava/lang/String;)Lcom/cootek/smartinput5/net/TWebView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/func/JsHandler;->setWebViewDownloader(Landroid/webkit/WebView;)V

    :cond_0
    return-void
.end method

.method public shareText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/cootek/smartinput5/func/JsHandler;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public showDetails()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/func/JsHandler;->sendGoodsDetailMessage(I)V

    return-void
.end method

.method public showSettingButton()Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :cond_0
    return v1
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/cootek/smartinput5/ui/control/E;->w(Ljava/lang/String;Z)V

    return-void
.end method

.method public showToast(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cootek/smartinput5/ui/control/E;->t(Ljava/lang/String;I)V

    return-void
.end method

.method public skipDetails()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/func/JsHandler;->sendStoreMessage(I)V

    return-void
.end method

.method public start()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mStarted:Z

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIPCManager:Lcom/cootek/smartinput5/engine/IPCManager;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/IPCManager;->bindService()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/JsHandler;->registerMessenger()V

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->q(Landroid/content/Context;)Lcom/cootek/smartinput5/configuration/ConfigurationManager;

    move-result-object v0

    sget-object v1, Lcom/cootek/smartinput5/configuration/ConfigurationType;->GOOGLE_IAB:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->j(Lcom/cootek/smartinput5/configuration/ConfigurationType;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cootek/smartinput5/func/iab/i;->l0(Landroid/content/Context;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/iab/i;->Y()Lcom/cootek/smartinput5/func/iab/i;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIabHelper:Lcom/cootek/smartinput5/func/iab/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIabHandler:Lcom/cootek/smartinput5/func/JsHandler$d;

    invoke-static {v0}, Lcom/cootek/smartinput5/func/iab/i;->V0(Lcom/cootek/smartinput5/func/iab/j$a;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIabHelper:Lcom/cootek/smartinput5/func/iab/i;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/iab/i;->Z0()V

    :cond_0
    return-void
.end method

.method public startBatchDownloadMode()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/func/IMEJsHandler;->getInstance()Lcom/cootek/smartinput5/func/IMEJsHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mNonApkDownloader:Lcom/cootek/smartinput5/net/y;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/IMEJsHandler;->startBatchDownloadMode(Lcom/cootek/smartinput5/net/y;)V

    return-void
.end method

.method public stop()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mStarted:Z

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/JsHandler;->unRegisterMessenger()V

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIPCManager:Lcom/cootek/smartinput5/engine/IPCManager;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/IPCManager;->destroy()V

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIabHandler:Lcom/cootek/smartinput5/func/JsHandler$d;

    invoke-static {v0}, Lcom/cootek/smartinput5/func/iab/i;->d1(Lcom/cootek/smartinput5/func/iab/j$a;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIabHelper:Lcom/cootek/smartinput5/func/iab/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/iab/i;->S()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIabHelper:Lcom/cootek/smartinput5/func/iab/i;

    :cond_0
    return-void
.end method

.method public stopBatchDownloadMode()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/func/IMEJsHandler;->getInstance()Lcom/cootek/smartinput5/func/IMEJsHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mNonApkDownloader:Lcom/cootek/smartinput5/net/y;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/IMEJsHandler;->stopBatchDownloadMode(Lcom/cootek/smartinput5/net/y;)V

    return-void
.end method

.method public syncOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIabHelper:Lcom/cootek/smartinput5/func/iab/i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIabHandler:Lcom/cootek/smartinput5/func/JsHandler$d;

    invoke-virtual {p1, v1}, Lcom/cootek/smartinput5/func/JsHandler$d;->a(Lorg/json/JSONArray;)V

    return-void

    :cond_0
    iput-object p3, p0, Lcom/cootek/smartinput5/func/JsHandler;->mSyncOrderCallback:Ljava/lang/String;

    :try_start_0
    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p3

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object p2, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIabHelper:Lcom/cootek/smartinput5/func/iab/i;

    iget-object p3, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIabHandler:Lcom/cootek/smartinput5/func/JsHandler$d;

    invoke-virtual {p2, p1, v1, p3}, Lcom/cootek/smartinput5/func/iab/i;->a1(Ljava/lang/String;Lorg/json/JSONArray;Lcom/cootek/smartinput5/func/iab/j$b;)V

    return-void
.end method

.method public uninstallEmoji(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/JsHandler;->isFunManagerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->V()Lcom/cootek/smartinput5/func/u;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/u;->h0(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public uninstallFont(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-direct {p0}, Lcom/cootek/smartinput5/func/JsHandler;->isFunManagerInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->W()Lcom/cootek/smartinput5/func/B0/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/B0/a;->P(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public uninstallSkin(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/func/IMEJsHandler;->getInstance()Lcom/cootek/smartinput5/func/IMEJsHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mSkinHandler:Lcom/cootek/smartinput5/ui/settings/SkinInfoHandler;

    invoke-virtual {v0, p1, v1}, Lcom/cootek/smartinput5/func/IMEJsHandler;->uninstallSkin(Ljava/lang/String;Lcom/cootek/smartinput5/ui/settings/SkinInfoHandler;)V

    return-void
.end method

.method public uninstallSticker(Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public updateGoodsInfo(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    new-array p1, p1, [I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "goods_id"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    aput v3, p1, v2

    const-string v3, "status"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    goto :goto_2

    :catch_2
    move-exception v1

    move-object p1, v0

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    :cond_1
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/z;->X()Lcom/cootek/smartinput5/func/GoodsManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/cootek/smartinput5/func/GoodsManager;->J([I[Ljava/lang/String;)V

    return-void
.end method

.method public updateResult()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mHandler:Lcom/cootek/smartinput5/func/JsHandler$e;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mChangeSet:I

    if-lez v1, :cond_0

    const/16 v1, 0x102

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:refresh("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/cootek/smartinput5/func/JsHandler;->mChangeSet:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/cootek/smartinput5/func/JsHandler;->mHandler:Lcom/cootek/smartinput5/func/JsHandler$e;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mChangeSet:I

    :cond_0
    return-void
.end method

.method public updateServiceInfo(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/func/JsHandler;->mIabHelper:Lcom/cootek/smartinput5/func/iab/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/iab/i;->k1(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public waitReloadingStore(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ".html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x16

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "reloadTab"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->a0()Lcom/cootek/smartinput5/engine/IPCManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/engine/IPCManager;->notifyOtherProcesses(Landroid/os/Message;)V

    :cond_1
    return-void
.end method
