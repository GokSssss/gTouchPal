.class public Lcom/cootek/smartinput/utilities/TJavascriptHandler;
.super Lcom/cootek/nativejsapis/JavascriptHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput/utilities/TJavascriptHandler$f;,
        Lcom/cootek/smartinput/utilities/TJavascriptHandler$d;,
        Lcom/cootek/smartinput/utilities/TJavascriptHandler$e;
    }
.end annotation


# static fields
.field private static final CALLBACK_METHOD:Ljava/lang/String; = "callbackMethod"

.field private static final CALLBACK_PARAMS:Ljava/lang/String; = "callbackParams"

.field public static final EXTRA_STRING_JS_METHOD:Ljava/lang/String; = "TJavascriptHandler.EXTRA_JS_METHOD"

.field public static final EXTRA_STRING_SHARE_CALLBACK_FLAG:Ljava/lang/String; = "TJavascriptHandler.EXTRA_SHARE_CALLBACK_FLAG"

.field private static final MAX_SHORTCUT_HEIGHT:I = 0x90

.field private static final MAX_SHORTCUT_WIDTH:I = 0x90

.field private static final MSG_CALLBACK_WEBVIEW:I = 0x1

.field public static final SETTING_TYPE_BOOL:Ljava/lang/String; = "bool"

.field public static final SETTING_TYPE_INT:Ljava/lang/String; = "int"

.field public static final SETTING_TYPE_LONG:Ljava/lang/String; = "long"

.field public static final SETTING_TYPE_STRING:Ljava/lang/String; = "string"

.field public static final SHARE_PARAM_DLG_TITLE:Ljava/lang/String; = "dlgTitle"

.field public static final SHARE_PARAM_SCREENSHOT:Ljava/lang/String; = "screenshot"

.field private static final TAG:Ljava/lang/String; = "TJavascriptHandler"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBackpressHandler:Ljava/lang/String;

.field private mCallbackHandler:Landroid/os/Handler;

.field private mFinishOnShareMessageCallback:Z

.field private mHandler:Landroid/os/Handler;

.field private mIPCManager:Lcom/cootek/smartinput5/engine/IPCManager;

.field private mMessenger:Landroid/os/Messenger;

.field private mNotifyOtherProcessShareMessageCallback:Z

.field private mOnResumeHandler:Ljava/lang/String;

.field private mSkinInfoHandler:Lcom/cootek/smartinput5/ui/settings/SkinInfoHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cootek/nativejsapis/JavascriptHandler;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mNotifyOtherProcessShareMessageCallback:Z

    iput-boolean p1, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mFinishOnShareMessageCallback:Z

    new-instance p1, Lcom/cootek/smartinput/utilities/TJavascriptHandler$d;

    invoke-direct {p1, p0}, Lcom/cootek/smartinput/utilities/TJavascriptHandler$d;-><init>(Lcom/cootek/smartinput/utilities/TJavascriptHandler;)V

    iput-object p1, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mCallbackHandler:Landroid/os/Handler;

    new-instance p1, Lcom/cootek/smartinput/utilities/TJavascriptHandler$f;

    invoke-direct {p1, p0}, Lcom/cootek/smartinput/utilities/TJavascriptHandler$f;-><init>(Lcom/cootek/smartinput/utilities/TJavascriptHandler;)V

    iput-object p1, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/cootek/smartinput/utilities/TJavascriptHandler;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/cootek/smartinput/utilities/TJavascriptHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->callbackWebview(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/cootek/smartinput/utilities/TJavascriptHandler;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/cootek/smartinput/utilities/TJavascriptHandler;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/cootek/smartinput/utilities/TJavascriptHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->doCallbackWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/cootek/smartinput/utilities/TJavascriptHandler;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mWebview:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/cootek/smartinput/utilities/TJavascriptHandler;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mWebview:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/cootek/smartinput/utilities/TJavascriptHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->writeBackToken()V

    return-void
.end method

.method static synthetic access$300(Lcom/cootek/smartinput/utilities/TJavascriptHandler;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/cootek/smartinput/utilities/TJavascriptHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->share(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/cootek/smartinput/utilities/TJavascriptHandler;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/cootek/smartinput/utilities/p$a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->doCreateShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/cootek/smartinput/utilities/p$a;)V

    return-void
.end method

.method static synthetic access$600(Lcom/cootek/smartinput/utilities/TJavascriptHandler;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/cootek/smartinput/utilities/TJavascriptHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->collectShortcutCreate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/cootek/smartinput/utilities/TJavascriptHandler;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->downloadShortcut(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private callbackWebview(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->callbackWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private callbackWebview(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "callbackMethod"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "callbackParams"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private collectShortcutCreate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHORTCUT/WEB_CREATE/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object v0

    const-string v1, "/STATISTIC/"

    invoke-virtual {v0, p1, p2, v1}, Lcom/cootek/smartinput5/l/g;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private doCallbackWebview(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mWebview:Landroid/webkit/WebView;

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

    const-string p1, "javascript:try{%s(%s)}catch(e){}"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private doCreateShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/cootek/smartinput/utilities/p$a;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1, p4}, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->getActualIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p4, "android.intent.action.VIEW"

    invoke-virtual {p1, p4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p4, Landroid/content/pm/ShortcutInfo$Builder;

    iget-object v0, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    const-string v1, "javascript_shortcut"

    invoke-direct {p4, v0, v1}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p3}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    invoke-static {p2, p1, p5}, Lcom/cootek/smartinput/utilities/p;->g(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;Lcom/cootek/smartinput/utilities/p$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "duplicate"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, p4}, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->getActualIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, p5}, Lcom/cootek/smartinput/utilities/p;->f(Landroid/content/Context;Landroid/content/Intent;Lcom/cootek/smartinput/utilities/p$a;)V

    :goto_0
    return-void
.end method

.method private downloadShortcut(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    invoke-direct {p0, p1}, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->getSampleSize(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_1

    :try_start_2
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :goto_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    :cond_1
    :goto_4
    return-object v1
.end method

.method private getActualIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.cootek.smartinputv5.PARSE_SHORTCUT_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "action_string"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "info"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private getSampleSize(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, p1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    if-eqz v0, :cond_0

    :try_start_2
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    iget p1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v2, 0x90

    invoke-static {v2, v2, p1, v1}, Lcom/cootek/smartinput5/ui/w;->g(IIII)F

    move-result p1
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p1

    float-to-int p1, v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    :goto_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p1

    :cond_0
    :goto_4
    const/4 p1, 0x0

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sampleSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TJavascriptHandler"

    invoke-static {v1, v0}, Lcom/cootek/smartinput/utilities/r;->n(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method private notifyProcessShareMessageCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mNotifyOtherProcessShareMessageCallback:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "TJavascriptHandler.EXTRA_JS_METHOD"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "TJavascriptHandler.EXTRA_SHARE_CALLBACK_FLAG"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->a0()Lcom/cootek/smartinput5/engine/IPCManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/engine/IPCManager;->notifyOtherProcesses(Landroid/os/Message;)V

    iget-boolean p1, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mFinishOnShareMessageCallback:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method private registerMessenger()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mIPCManager:Lcom/cootek/smartinput5/engine/IPCManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mCallbackHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mMessenger:Landroid/os/Messenger;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v1, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mIPCManager:Lcom/cootek/smartinput5/engine/IPCManager;

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/engine/IPCManager;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private share(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "full"

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_0

    iget-object p6, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mActivity:Landroid/app/Activity;

    invoke-static {p6}, Lcom/cootek/smartinput5/func/w0;->B(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p6

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    :goto_0
    move-object v4, p6

    iget-object v0, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/cootek/smartinput5/func/share/e;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private unRegisterMessenger()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mIPCManager:Lcom/cootek/smartinput5/engine/IPCManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mCallbackHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mMessenger:Landroid/os/Messenger;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v1, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mIPCManager:Lcom/cootek/smartinput5/engine/IPCManager;

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/engine/IPCManager;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private updateGuidePointSetting()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/z;->a0()Lcom/cootek/smartinput5/engine/IPCManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/engine/IPCManager;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private writeBackToken()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->writeBackToken(Ljava/lang/String;)V

    return-void
.end method

.method private writeBackToken(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mIPCManager:Lcom/cootek/smartinput5/engine/IPCManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
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

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/net/w;->e()Lcom/cootek/smartinput5/net/w;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/net/w;->j()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    iget-object p1, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mIPCManager:Lcom/cootek/smartinput5/engine/IPCManager;

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/engine/IPCManager;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public callFacebook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.facebook.katana"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_1
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, "android.intent.action.VIEW"

    move-object v1, p0

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->launchLocalApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public clearIPCManager(Lcom/cootek/smartinput5/engine/IPCManager;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mIPCManager:Lcom/cootek/smartinput5/engine/IPCManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->unRegisterMessenger()V

    :cond_0
    return-void
.end method

.method public createShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->J0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->p0()Lcom/cootek/smartinput5/func/permission/a;

    move-result-object v0

    const-string v1, "com.android.launcher.permission.INSTALL_SHORTCUT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/func/permission/a;->f(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/cootek/smartinput/utilities/TJavascriptHandler$e;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/cootek/smartinput/utilities/TJavascriptHandler$e;-><init>(Lcom/cootek/smartinput/utilities/TJavascriptHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    aput-object p3, p1, v2

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    const-string p2, "NO_PERMISSION"

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->collectShortcutCreate(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    const p2, 0x7f0f03bc

    invoke-static {p1, p2}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "TJavascriptHandler"

    invoke-static {p2, p1}, Lcom/cootek/smartinput/utilities/r;->n(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public disableBackpressHandler()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mBackpressHandler:Ljava/lang/String;

    return-void
.end method

.method public disableOnResumeHandler()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mOnResumeHandler:Ljava/lang/String;

    return-void
.end method

.method public doLogin()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->Q()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/func/Q;->b(Landroid/content/Context;)V

    return-void
.end method

.method public downloadApk(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "url"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "appName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pkgName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "needConfirm"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "nonWifiReminder"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "autoInstall"

    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "requestToken"

    invoke-virtual {v0, v7, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    sget-object v4, Lcom/cootek/smartinput/utilities/DownloadDataCollector$DownloadAction;->START:Lcom/cootek/smartinput/utilities/DownloadDataCollector$DownloadAction;

    invoke-static {p1, v4}, Lcom/cootek/smartinput/utilities/DownloadDataCollector;->a(Ljava/lang/String;Lcom/cootek/smartinput/utilities/DownloadDataCollector$DownloadAction;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v7, 0x5

    const-string v8, "extra_action_type"

    invoke-virtual {v4, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "com.cootek.smartinputv5.INTERNAL_ACTION.PresentationClient.EXTRA_URL"

    invoke-virtual {v4, v7, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.cootek.smartinputv5.INTERNAL_ACTION.PresentationClient.EXTRA_APP_NAME"

    invoke-virtual {v4, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.cootek.smartinputv5.INTERNAL_ACTION.PresentationClient.EXTRA_PKGNAME"

    invoke-virtual {v4, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.cootek.smartinputv5.INTERNAL_ACTION.PresentationClient.DOWNLOAD_CONFIRM"

    invoke-virtual {v4, p1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "com.cootek.smartinputv5.INTERNAL_ACTION.PresentationClient.NON_WIFI_REMINDER"

    invoke-virtual {v4, p1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "com.cootek.smartinputv5.INTERNAL_ACTION.PresentationClient.EXTRA_AUTO_INSTALL"

    invoke-virtual {v4, p1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "com.cootek.smartinputv5.INTERNAL_ACTION.PresentationClient.EXTRA_REQUEST_TOKEN"

    invoke-virtual {v4, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mIPCManager:Lcom/cootek/smartinput5/engine/IPCManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x4

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_1
    iget-object v0, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mIPCManager:Lcom/cootek/smartinput5/engine/IPCManager;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/IPCManager;->sendMessage(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->a0()Lcom/cootek/smartinput5/engine/IPCManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/cootek/smartinput5/engine/IPCManager;->handleExtralAction(Landroid/os/Bundle;)V

    :goto_0
    invoke-static {}, Lcom/cootek/smartinput5/actionflow/a;->f()Lcom/cootek/smartinput5/actionflow/a;

    move-result-object p1

    iget-object v0, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    const-string v1, "MORE_STORE_DOWNLOAD_APPS"

    invoke-virtual {p1, v1, v0}, Lcom/cootek/smartinput5/actionflow/a;->i(Ljava/lang/String;Landroid/content/Context;)V

    :catch_1
    return-void
.end method

.method public downloadSkinPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/cootek/smartinput5/action/ActionDownloadSkinPack;

    invoke-direct {v0, p1, p2, p3}, Lcom/cootek/smartinput5/action/ActionDownloadSkinPack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mIPCManager:Lcom/cootek/smartinput5/engine/IPCManager;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/engine/IPCManager;->sendMessageForParcelableAction(Lcom/cootek/smartinput5/action/ParcelableAction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/cootek/smartinput5/action/ActionDownloadSkinPack;->run()V

    :catch_0
    :goto_0
    return-void
.end method

.method public enableBackpressHandler(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iput-object p1, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mBackpressHandler:Ljava/lang/String;

    return-void
.end method

.method public enableOnResumeHandler(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iput-object p1, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mOnResumeHandler:Ljava/lang/String;

    return-void
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/func/TAccountManager;->d()Lcom/cootek/smartinput5/func/TAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/TAccountManager;->c()Lcom/cootek/smartinput5/net/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/net/login/g;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/net/w;->e()Lcom/cootek/smartinput5/net/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/net/w;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmojiStatistics(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object p1, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/cootek/smartinput5/func/E0/i/b;->d(Landroid/content/Context;)Lcom/cootek/smartinput5/func/E0/i/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/cootek/smartinput5/func/E0/i/b;->c(I)Ljava/util/ArrayList;

    move-result-object p1

    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cootek/smartinput5/func/E0/i/a;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "id"

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/E0/i/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "count"

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/E0/i/a;->a()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerIp()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSettingValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Settings;->getIdByKey(Ljava/lang/String;)I

    move-result p1

    const-string v0, "int"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string v0, "bool"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string v0, "long"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/cootek/smartinput5/engine/Settings;->getLongSetting(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_0

    :cond_2
    const-string v0, "string"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/cootek/smartinput5/engine/Settings;->getStringSetting(I)Ljava/lang/String;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTypingInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/z;->U()Lcom/cootek/smartinput5/func/t0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/func/t0;->h()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/cootek/smartinput5/func/t0;->i()J

    move-result-wide v5

    invoke-virtual {v2}, Lcom/cootek/smartinput5/func/t0;->e()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-eqz v2, :cond_0

    long-to-float v2, v5

    long-to-float v7, v7

    div-float/2addr v2, v7

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/z;->B0()Lcom/cootek/smartinput5/func/u0;

    move-result-object v1

    const/4 v7, 0x0

    invoke-virtual {v1, p1, v7}, Lcom/cootek/smartinput5/func/u0;->r(Ljava/lang/String;I)Lcom/cootek/smartinput5/func/TypingSpeedData$Meta;

    move-result-object p1

    if-eqz p1, :cond_1

    iget v1, p1, Lcom/cootek/smartinput5/func/TypingSpeedData$Meta;->commit:I

    iget p1, p1, Lcom/cootek/smartinput5/func/TypingSpeedData$Meta;->time:I

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_1
    :try_start_0
    const-string v8, "totalCommit"

    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "dailySpeed"

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v1, p1}, Lcom/cootek/smartinput5/func/TypingSpeedData;->getSpeed(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    :goto_2
    invoke-virtual {v0, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p1

    const-string v1, "typeEfficiency"

    float-to-double v7, v2

    invoke-virtual {p1, v7, v8}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "typoCorrected"

    invoke-virtual {p1, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "strokesSaved"

    invoke-virtual {p1, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public handleBackpress()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mBackpressHandler:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->callbackWebview(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public handleOnResume()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mOnResumeHandler:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->callbackWebview(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSkinPackageInstalled(Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mSkinInfoHandler:Lcom/cootek/smartinput5/ui/settings/SkinInfoHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cootek/smartinput5/ui/settings/SkinInfoHandler;

    iget-object v1, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mWebview:Landroid/webkit/WebView;

    invoke-direct {v0, v1, v2}, Lcom/cootek/smartinput5/ui/settings/SkinInfoHandler;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mSkinInfoHandler:Lcom/cootek/smartinput5/ui/settings/SkinInfoHandler;

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mSkinInfoHandler:Lcom/cootek/smartinput5/ui/settings/SkinInfoHandler;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/ui/settings/SkinInfoHandler;->isPackageInstalled(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public launchLocalApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-super/range {p0 .. p5}, Lcom/cootek/nativejsapis/JavascriptHandler;->launchLocalApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public openInWebView(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "description"

    const-string v1, "title"

    const-string v2, "imageUrl"

    const-string v3, "type"

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "url"

    if-nez p1, :cond_4

    :try_start_1
    new-instance p1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    const-class v6, Lcom/cootek/smartinput5/ui/TrendsDetailActivity;

    invoke-direct {p1, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    iget-object v0, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string p1, "deals"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    const-class v1, Lcom/cootek/smartinput5/ui/skinappshop/StoreDetailActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string p1, "coupon"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    const-class v1, Lcom/cootek/smartinput5/presentations/PresentationWebviewActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "com.cootek.smartinputv5.INTERNAL_ACTION.PresentationClient.EXTRA_URL"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.cootek.smartinputv5.INTERNAL_ACTION.PresentationClient.EXTRA_BOOL_SHOW_PROGRESS"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_6
    :goto_0
    return-void
.end method

.method public openUrlSelf(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mWebview:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mWebview:Landroid/webkit/WebView;

    instance-of v1, v0, Lcom/cootek/smartinput5/net/TWebView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cootek/smartinput5/net/TWebView;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/net/TWebView;->l(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public refreshAuthToken(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/cootek/smartinput/utilities/TJavascriptHandler$a;

    invoke-direct {v0, p0, p1}, Lcom/cootek/smartinput/utilities/TJavascriptHandler$a;-><init>(Lcom/cootek/smartinput/utilities/TJavascriptHandler;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public restart()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/cootek/smartinput/utilities/TJavascriptHandler$b;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput/utilities/TJavascriptHandler$b;-><init>(Lcom/cootek/smartinput/utilities/TJavascriptHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/net/w;->e()Lcom/cootek/smartinput5/net/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/net/w;->v(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->writeBackToken(Ljava/lang/String;)V

    return-void
.end method

.method public setFinishOnShareMessageCallback(Z)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iput-boolean p1, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mFinishOnShareMessageCallback:Z

    return-void
.end method

.method public setIPCManager(Lcom/cootek/smartinput5/engine/IPCManager;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mIPCManager:Lcom/cootek/smartinput5/engine/IPCManager;

    invoke-direct {p0}, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->registerMessenger()V

    return-void
.end method

.method public setNotifyOtherProcessShareMessageCallback(Z)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iput-boolean p1, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mNotifyOtherProcessShareMessageCallback:Z

    return-void
.end method

.method public setSettingValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->J0()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/cootek/smartinput5/engine/Settings;->getIdByKey(Ljava/lang/String;)I

    move-result p1

    const-string v1, "int"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p2

    invoke-virtual {p2, p1, v3}, Lcom/cootek/smartinput5/engine/Settings;->setIntSetting(II)V

    const/4 p2, 0x1

    sget-object p3, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_VALUE:Ljava/lang/String;

    invoke-virtual {v0, p3, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "bool"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    sget-object p3, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_VALUE:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v3, 0x3

    goto :goto_0

    :cond_1
    const-string v1, "long"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/16 v3, 0x0

    :try_start_1
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p2

    invoke-virtual {p2, p1, v3, v4}, Lcom/cootek/smartinput5/engine/Settings;->setLongSetting(IJ)V

    const/4 p2, 0x4

    sget-object p3, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_VALUE:Ljava/lang/String;

    invoke-virtual {v0, p3, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v3, 0x4

    goto :goto_0

    :cond_2
    const-string v1, "string"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/cootek/smartinput5/engine/Settings;->setStringSetting(ILjava/lang/String;)V

    const/4 v3, 0x2

    sget-object p3, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_VALUE:Ljava/lang/String;

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    sget-object p2, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_TYPE:Ljava/lang/String;

    invoke-virtual {v0, p2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p2, Lcom/cootek/smartinput5/engine/IPCManager;->SETTING_KEY:Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x0

    invoke-static {p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->J0()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_4
    :try_start_2
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cootek/smartinput5/func/z;->a0()Lcom/cootek/smartinput5/engine/IPCManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/cootek/smartinput5/engine/IPCManager;->sendMessage(Landroid/os/Message;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method public shareMessage(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "type"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "dlgTitle"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p1, "title"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p1, "msg"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p1, "imageUrl"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p1, "url"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string p1, "screenshot"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object p1, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/cootek/smartinput/utilities/TJavascriptHandler$c;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/cootek/smartinput/utilities/TJavascriptHandler$c;-><init>(Lcom/cootek/smartinput/utilities/TJavascriptHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public switchSkin(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/cootek/smartinput5/action/ActionSetSkin;

    invoke-direct {v0, p1}, Lcom/cootek/smartinput5/action/ActionSetSkin;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cootek/nativejsapis/JavascriptHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cootek/smartinput5/l/e;->g(Landroid/content/Context;)Lcom/cootek/smartinput5/l/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/l/e;->c()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    const/16 v2, 0x54

    invoke-virtual {v1, v2, p1}, Lcom/cootek/smartinput5/engine/Settings;->setStringSetting(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->mIPCManager:Lcom/cootek/smartinput5/engine/IPCManager;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/action/ActionSetSkin;->run()V

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/cootek/smartinput5/action/ActionSetSkin;

    invoke-direct {v0, p1}, Lcom/cootek/smartinput5/action/ActionSetSkin;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/engine/IPCManager;->sendMessageForParcelableAction(Lcom/cootek/smartinput5/action/ParcelableAction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public updateStoreTimestamp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-wide v2, v0

    :goto_0
    const-string v4, "skin"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    cmp-long p1, v2, v0

    if-lez p1, :cond_0

    const-string p1, "STORE_UPDATE_TIMESTAMP_SKIN"

    const-string v0, "long"

    invoke-virtual {p0, p1, p2, v0}, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->setSettingValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/cootek/smartinput/utilities/TJavascriptHandler;->updateGuidePointSetting()V

    :cond_1
    return-void
.end method
