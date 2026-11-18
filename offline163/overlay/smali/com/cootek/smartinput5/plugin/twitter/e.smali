.class public Lcom/cootek/smartinput5/plugin/twitter/e;
.super Ljava/lang/Object;


# static fields
.field public static final A:Ljava/lang/String; = "accessSecret"

.field public static final B:Ljava/lang/String; = "userId"

.field public static final C:Ljava/lang/String; = "screenName"

.field private static D:Lcom/cootek/smartinput5/plugin/twitter/e; = null

.field private static final j:Ljava/lang/String; = "Twitter"

.field public static k:Ljava/lang/String; = "Rj1ZzK5O10RgmdEcYgpSQ"

.field public static l:Ljava/lang/String; = "stYKCzRptoCl9yYgkSJwwO3nbP7CPi03dI0NCQU"

.field public static final m:Ljava/lang/String; = "https://api.twitter.com"

.field public static final n:Ljava/lang/String; = "https://api.twitter.com/oauth/request_token"

.field public static final o:Ljava/lang/String; = "https://api.twitter.com/oauth/authorize"

.field public static final p:Ljava/lang/String; = "https://api.twitter.com/oauth/access_token"

.field public static final q:Ljava/lang/String; = "https://api.twitter.com/oauth/authenticate"

.field public static final r:Ljava/lang/String; = "twitterandroidsdk://FollowActivity"

.field public static final s:Ljava/lang/String; = "Authorization"

.field public static final t:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final u:Lokhttp3/MediaType;

.field public static final v:Lokhttp3/MediaType;

.field public static final w:Ljava/lang/String; = "144898415"

.field public static final x:Ljava/lang/String; = "requestToken"

.field public static final y:Ljava/lang/String; = "requestSecret"

.field public static final z:Ljava/lang/String; = "accessToken"


# instance fields
.field private a:J

.field private b:Lcom/cootek/smartinput5/plugin/twitter/d;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/cootek/smartinput5/plugin/twitter/d;

.field private f:Lcom/cootek/smartinput5/plugin/twitter/d;

.field private g:Lokhttp3/Call;

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/cootek/smartinput5/plugin/twitter/e;->u:Lokhttp3/MediaType;

    const-string v0, "text/html;charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/cootek/smartinput5/plugin/twitter/e;->v:Lokhttp3/MediaType;

    const/4 v0, 0x0

    sput-object v0, Lcom/cootek/smartinput5/plugin/twitter/e;->D:Lcom/cootek/smartinput5/plugin/twitter/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->a:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->b:Lcom/cootek/smartinput5/plugin/twitter/d;

    iput-object v0, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->e:Lcom/cootek/smartinput5/plugin/twitter/d;

    iput-object v0, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->f:Lcom/cootek/smartinput5/plugin/twitter/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->h:Z

    return-void
.end method

.method static synthetic b(Lcom/cootek/smartinput5/plugin/twitter/e;)Lokhttp3/Call;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->g:Lokhttp3/Call;

    return-object p0
.end method

.method static synthetic c(Lcom/cootek/smartinput5/plugin/twitter/e;Lokhttp3/Call;)Lokhttp3/Call;
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->g:Lokhttp3/Call;

    return-object p1
.end method

.method private k(Lcom/cootek/smartinput5/plugin/twitter/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/cootek/smartinput5/plugin/twitter/f;

    invoke-static {p1}, Lcom/cootek/smartinput5/plugin/twitter/c;->i(Lcom/cootek/smartinput5/plugin/twitter/b;)Lcom/cootek/smartinput5/plugin/twitter/b;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/cootek/smartinput5/plugin/twitter/f;-><init>(Lcom/cootek/smartinput5/plugin/twitter/b;)V

    invoke-static {p2}, Lcom/cootek/smartinput5/plugin/twitter/c;->g(Lcom/cootek/smartinput5/plugin/twitter/b;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "?"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static l()Lcom/cootek/smartinput5/plugin/twitter/e;
    .locals 1

    sget-object v0, Lcom/cootek/smartinput5/plugin/twitter/e;->D:Lcom/cootek/smartinput5/plugin/twitter/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cootek/smartinput5/plugin/twitter/e;

    invoke-direct {v0}, Lcom/cootek/smartinput5/plugin/twitter/e;-><init>()V

    sput-object v0, Lcom/cootek/smartinput5/plugin/twitter/e;->D:Lcom/cootek/smartinput5/plugin/twitter/e;

    :cond_0
    sget-object v0, Lcom/cootek/smartinput5/plugin/twitter/e;->D:Lcom/cootek/smartinput5/plugin/twitter/e;

    return-object v0
.end method

.method private u(Ljava/lang/String;)Lcom/cootek/smartinput5/plugin/twitter/d;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "oauth_token"

    invoke-static {v0, p1}, Lcom/cootek/smartinput5/plugin/twitter/c;->k(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oauth_token_secret"

    invoke-static {v1, p1}, Lcom/cootek/smartinput5/plugin/twitter/c;->k(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_id"

    invoke-static {v2, p1}, Lcom/cootek/smartinput5/plugin/twitter/c;->k(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "screen_name"

    invoke-static {v3, p1}, Lcom/cootek/smartinput5/plugin/twitter/c;->k(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object v2, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->d:Ljava/lang/String;

    new-instance p1, Lcom/cootek/smartinput5/plugin/twitter/d;

    invoke-direct {p1, v0, v1}, Lcom/cootek/smartinput5/plugin/twitter/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private v(Lokhttp3/Response;)Lcom/cootek/smartinput5/plugin/twitter/d;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/plugin/twitter/e;->u(Ljava/lang/String;)Lcom/cootek/smartinput5/plugin/twitter/d;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public A(Ljava/lang/String;Ljava/lang/String;Lcom/cootek/smartinput5/plugin/twitter/f;Lcom/cootek/smartinput5/plugin/twitter/d;)Lokhttp3/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cootek/smartinput5/plugin/twitter/TwitterException;
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/cootek/smartinput5/plugin/twitter/e;->B(Ljava/lang/String;Ljava/lang/String;Lcom/cootek/smartinput5/plugin/twitter/f;Lcom/cootek/smartinput5/plugin/twitter/d;Z)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public B(Ljava/lang/String;Ljava/lang/String;Lcom/cootek/smartinput5/plugin/twitter/f;Lcom/cootek/smartinput5/plugin/twitter/d;Z)Lokhttp3/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cootek/smartinput5/plugin/twitter/TwitterException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cootek/smartinput5/plugin/twitter/e;->F(Ljava/lang/String;Ljava/lang/String;Lcom/cootek/smartinput5/plugin/twitter/f;Lcom/cootek/smartinput5/plugin/twitter/d;)Lcom/cootek/smartinput5/plugin/twitter/f;

    move-result-object p4

    invoke-static {p4}, Lcom/cootek/smartinput5/plugin/twitter/c;->b(Lcom/cootek/smartinput5/plugin/twitter/b;)Ljava/lang/String;

    move-result-object p4

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    const-string v1, "POST"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    if-eqz p5, :cond_0

    invoke-virtual {p0, p3}, Lcom/cootek/smartinput5/plugin/twitter/e;->o(Lcom/cootek/smartinput5/plugin/twitter/f;)[B

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object p2, Lcom/cootek/smartinput5/plugin/twitter/e;->u:Lokhttp3/MediaType;

    invoke-static {p2, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/cootek/smartinput5/plugin/twitter/e;->v:Lokhttp3/MediaType;

    const-string p2, ""

    invoke-static {p1, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_1
    invoke-direct {p0, p3, p1}, Lcom/cootek/smartinput5/plugin/twitter/e;->k(Lcom/cootek/smartinput5/plugin/twitter/f;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_2
    :goto_0
    const-string p1, "Authorization"

    invoke-virtual {v0, p1, p4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    iget-boolean p1, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->h:Z

    const/4 p2, 0x0

    if-nez p1, :cond_5

    invoke-static {}, Lcom/cootek/smartinput5/plugin/twitter/c;->j()Lokhttp3/OkHttpClient;

    move-result-object p1

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p3

    invoke-virtual {p1, p3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->g:Lokhttp3/Call;

    :try_start_0
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    move-object p1, p2

    :goto_1
    if-nez p1, :cond_3

    return-object p2

    :cond_3
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p2

    const/16 p3, 0xc8

    if-eq p2, p3, :cond_4

    new-instance p3, Lcom/cootek/smartinput5/plugin/twitter/TwitterException;

    invoke-direct {p3}, Lcom/cootek/smartinput5/plugin/twitter/TwitterException;-><init>()V

    invoke-virtual {p3, p2}, Lcom/cootek/smartinput5/plugin/twitter/TwitterException;->setErrorCode(I)V

    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/cootek/smartinput5/plugin/twitter/TwitterException;->setErrorMessage(Ljava/lang/String;)V

    :cond_4
    move-object p2, p1

    :cond_5
    return-object p2
.end method

.method public C(Lcom/cootek/smartinput5/plugin/twitter/d;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->b:Lcom/cootek/smartinput5/plugin/twitter/d;

    return-void
.end method

.method public D(Lcom/cootek/smartinput5/plugin/twitter/d;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->e:Lcom/cootek/smartinput5/plugin/twitter/d;

    return-void
.end method

.method public E(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->c:Ljava/lang/String;

    return-void
.end method

.method public F(Ljava/lang/String;Ljava/lang/String;Lcom/cootek/smartinput5/plugin/twitter/f;Lcom/cootek/smartinput5/plugin/twitter/d;)Lcom/cootek/smartinput5/plugin/twitter/f;
    .locals 5

    new-instance v0, Lcom/cootek/smartinput5/plugin/twitter/f;

    invoke-direct {v0}, Lcom/cootek/smartinput5/plugin/twitter/f;-><init>()V

    invoke-virtual {v0, p3}, Lcom/cootek/smartinput5/plugin/twitter/b;->b(Lcom/cootek/smartinput5/plugin/twitter/b;)V

    sget-object p3, Lcom/cootek/smartinput5/plugin/twitter/e;->k:Ljava/lang/String;

    const-string v1, "oauth_consumer_key"

    invoke-virtual {v0, v1, p3}, Lcom/cootek/smartinput5/plugin/twitter/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const-string v3, "oauth_timestamp"

    invoke-virtual {v0, v3, p3}, Lcom/cootek/smartinput5/plugin/twitter/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/util/Random;

    invoke-direct {p3}, Ljava/util/Random;-><init>()V

    invoke-virtual {p3}, Ljava/util/Random;->nextInt()I

    move-result p3

    int-to-long v3, p3

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const-string v1, "oauth_nonce"

    invoke-virtual {v0, v1, p3}, Lcom/cootek/smartinput5/plugin/twitter/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "oauth_signature_method"

    const-string v1, "HMAC-SHA1"

    invoke-virtual {v0, p3, v1}, Lcom/cootek/smartinput5/plugin/twitter/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "oauth_version"

    const-string v1, "1.0"

    invoke-virtual {v0, p3, v1}, Lcom/cootek/smartinput5/plugin/twitter/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/cootek/smartinput5/plugin/twitter/d;->c()Ljava/lang/String;

    move-result-object p3

    const-string v1, "oauth_token"

    invoke-virtual {v0, v1, p3}, Lcom/cootek/smartinput5/plugin/twitter/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/cootek/smartinput5/plugin/twitter/d;->a()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {v0}, Lcom/cootek/smartinput5/plugin/twitter/c;->i(Lcom/cootek/smartinput5/plugin/twitter/b;)Lcom/cootek/smartinput5/plugin/twitter/b;

    move-result-object p4

    invoke-static {p4}, Lcom/cootek/smartinput5/plugin/twitter/c;->m(Lcom/cootek/smartinput5/plugin/twitter/b;)Lcom/cootek/smartinput5/plugin/twitter/b;

    move-result-object p4

    invoke-static {p4}, Lcom/cootek/smartinput5/plugin/twitter/c;->g(Lcom/cootek/smartinput5/plugin/twitter/b;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, p2, p1}, Lcom/cootek/smartinput5/plugin/twitter/c;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/cootek/smartinput5/plugin/twitter/e;->l:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/cootek/smartinput5/plugin/twitter/c;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "oauth_signature"

    invoke-virtual {v0, p2, p1}, Lcom/cootek/smartinput5/plugin/twitter/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public G(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Lcom/cootek/smartinput5/plugin/twitter/e;->q()Lcom/cootek/smartinput5/plugin/twitter/d;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.twitter.com/oauth/authorize?oauth_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cootek/smartinput5/plugin/twitter/e;->q()Lcom/cootek/smartinput5/plugin/twitter/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/plugin/twitter/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/cootek/smartinput5/plugin/twitter/TwitterDialog;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->e:Lcom/cootek/smartinput5/plugin/twitter/d;

    invoke-virtual {v2}, Lcom/cootek/smartinput5/plugin/twitter/d;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "requestToken"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->e:Lcom/cootek/smartinput5/plugin/twitter/d;

    invoke-virtual {v2}, Lcom/cootek/smartinput5/plugin/twitter/d;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "requestSecret"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v2, 0xad

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v2, "TwitterDialog.EXTRA_NEED_DISABLE_INVITE_DIALOG"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-static {p1, v1}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->d:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->e:Lcom/cootek/smartinput5/plugin/twitter/d;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/plugin/twitter/d;->h(Ljava/lang/String;)V

    return-void
.end method

.method public e(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cootek/smartinput5/plugin/twitter/TwitterException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cootek/smartinput5/plugin/twitter/e;->z()Lcom/cootek/smartinput5/plugin/twitter/d;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/plugin/twitter/e;->D(Lcom/cootek/smartinput5/plugin/twitter/d;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->h:Z

    iget-object v0, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->g:Lokhttp3/Call;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/cootek/smartinput5/plugin/twitter/e$a;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/plugin/twitter/e$a;-><init>(Lcom/cootek/smartinput5/plugin/twitter/e;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->h:Z

    return-void
.end method

.method public g()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cootek/smartinput5/plugin/twitter/TwitterException;
        }
    .end annotation

    new-instance v0, Lcom/cootek/smartinput5/plugin/twitter/f;

    invoke-direct {v0}, Lcom/cootek/smartinput5/plugin/twitter/f;-><init>()V

    const-string v1, "user_id"

    const-string v2, "144898415"

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/plugin/twitter/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->b:Lcom/cootek/smartinput5/plugin/twitter/d;

    const-string v2, "https://api.twitter.com/1.1/friendships/lookup.json"

    const-string v3, "GET"

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/cootek/smartinput5/plugin/twitter/e;->A(Ljava/lang/String;Ljava/lang/String;Lcom/cootek/smartinput5/plugin/twitter/f;Lcom/cootek/smartinput5/plugin/twitter/d;)Lokhttp3/Response;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "connections"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lorg/json/JSONArray;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "following"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return v1
.end method

.method public h()V
    .locals 4

    const-string v0, "https://api.twitter.com/1.1/friendships/create.json"

    new-instance v1, Lcom/cootek/smartinput5/plugin/twitter/f;

    invoke-direct {v1}, Lcom/cootek/smartinput5/plugin/twitter/f;-><init>()V

    const-string v2, "user_id"

    const-string v3, "144898415"

    invoke-virtual {v1, v2, v3}, Lcom/cootek/smartinput5/plugin/twitter/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "follow"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Lcom/cootek/smartinput5/plugin/twitter/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v2, "POST"

    iget-object v3, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->b:Lcom/cootek/smartinput5/plugin/twitter/d;

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/cootek/smartinput5/plugin/twitter/e;->A(Ljava/lang/String;Ljava/lang/String;Lcom/cootek/smartinput5/plugin/twitter/f;Lcom/cootek/smartinput5/plugin/twitter/d;)Lokhttp3/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;
    :try_end_0
    .catch Lcom/cootek/smartinput5/plugin/twitter/TwitterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/plugin/twitter/TwitterException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public i()Lcom/cootek/smartinput5/plugin/twitter/d;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->b:Lcom/cootek/smartinput5/plugin/twitter/d;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public m()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cootek/smartinput5/plugin/twitter/TwitterException;
        }
    .end annotation

    const-string v0, "statuses_count"

    new-instance v1, Lcom/cootek/smartinput5/plugin/twitter/f;

    invoke-direct {v1}, Lcom/cootek/smartinput5/plugin/twitter/f;-><init>()V

    iget-object v2, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->c:Ljava/lang/String;

    const-string v3, "user_id"

    invoke-virtual {v1, v3, v2}, Lcom/cootek/smartinput5/plugin/twitter/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->b:Lcom/cootek/smartinput5/plugin/twitter/d;

    const-string v3, "https://api.twitter.com/1.1/users/show.json"

    const-string v4, "GET"

    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/cootek/smartinput5/plugin/twitter/e;->A(Ljava/lang/String;Ljava/lang/String;Lcom/cootek/smartinput5/plugin/twitter/f;Lcom/cootek/smartinput5/plugin/twitter/d;)Lokhttp3/Response;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return v2
.end method

.method public n()Lcom/cootek/smartinput5/plugin/twitter/d;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->f:Lcom/cootek/smartinput5/plugin/twitter/d;

    return-object v0
.end method

.method public o(Lcom/cootek/smartinput5/plugin/twitter/f;)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const v1, 0xc800

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Lcom/cootek/smartinput5/plugin/twitter/f;

    invoke-static {p1}, Lcom/cootek/smartinput5/plugin/twitter/c;->i(Lcom/cootek/smartinput5/plugin/twitter/b;)Lcom/cootek/smartinput5/plugin/twitter/b;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/cootek/smartinput5/plugin/twitter/f;-><init>(Lcom/cootek/smartinput5/plugin/twitter/b;)V

    invoke-static {v1}, Lcom/cootek/smartinput5/plugin/twitter/c;->g(Lcom/cootek/smartinput5/plugin/twitter/b;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public p(I)[Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cootek/smartinput5/plugin/twitter/TwitterException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/plugin/twitter/e;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->i:Z
    :try_end_0
    .catch Lcom/cootek/smartinput5/plugin/twitter/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const/4 v0, 0x0

    new-instance v1, Lcom/cootek/smartinput5/plugin/twitter/f;

    invoke-direct {v1}, Lcom/cootek/smartinput5/plugin/twitter/f;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "count"

    invoke-virtual {v1, v2, p1}, Lcom/cootek/smartinput5/plugin/twitter/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "include_rts"

    const-string v2, "true"

    invoke-virtual {v1, p1, v2}, Lcom/cootek/smartinput5/plugin/twitter/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    const/16 v2, 0xae

    invoke-virtual {p1, v2}, Lcom/cootek/smartinput5/engine/Settings;->getStringSetting(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->a:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v3, "since_id"

    invoke-virtual {v1, v3, p1}, Lcom/cootek/smartinput5/plugin/twitter/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->b:Lcom/cootek/smartinput5/plugin/twitter/d;

    const-string v3, "https://api.twitter.com/1.1/statuses/user_timeline.json"

    const-string v4, "GET"

    invoke-virtual {p0, v3, v4, v1, p1}, Lcom/cootek/smartinput5/plugin/twitter/e;->A(Ljava/lang/String;Ljava/lang/String;Lcom/cootek/smartinput5/plugin/twitter/f;Lcom/cootek/smartinput5/plugin/twitter/d;)Lokhttp3/Response;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    new-array v0, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "text"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    const-string v5, "id_str"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->a:J

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    iput-wide v4, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->a:J

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    iget-wide v3, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->a:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1}, Lcom/cootek/smartinput5/engine/Settings;->setStringSetting(ILjava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-object v0

    :cond_2
    new-instance p1, Lcom/cootek/smartinput5/plugin/twitter/TwitterException;

    invoke-direct {p1}, Lcom/cootek/smartinput5/plugin/twitter/TwitterException;-><init>()V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/plugin/twitter/TwitterException;->setErrorCode(I)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public q()Lcom/cootek/smartinput5/plugin/twitter/d;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->e:Lcom/cootek/smartinput5/plugin/twitter/d;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->i:Z

    return v0
.end method

.method public t()Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public w(Lokhttp3/Response;)Lcom/cootek/smartinput5/plugin/twitter/d;
    .locals 6

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v3, "Content-Encoding"

    invoke-virtual {p1, v3}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v4, "gzip"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-le p1, v3, :cond_0

    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, p1

    :cond_0
    const/16 p1, 0x200

    new-array p1, p1, [B

    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v4, v3, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v2, p1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v1, Lcom/cootek/smartinput5/plugin/twitter/d;

    invoke-direct {v1, p1}, Lcom/cootek/smartinput5/plugin/twitter/d;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    const/4 p1, 0x0

    return-object p1

    :goto_2
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public x(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cootek/smartinput5/plugin/twitter/TwitterException;
        }
    .end annotation

    new-instance v0, Lcom/cootek/smartinput5/plugin/twitter/f;

    invoke-direct {v0}, Lcom/cootek/smartinput5/plugin/twitter/f;-><init>()V

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Lcom/cootek/smartinput5/plugin/twitter/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->b:Lcom/cootek/smartinput5/plugin/twitter/d;

    const-string v1, "https://api.twitter.com/1.1/statuses/update.json"

    const-string v2, "POST"

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/cootek/smartinput5/plugin/twitter/e;->A(Ljava/lang/String;Ljava/lang/String;Lcom/cootek/smartinput5/plugin/twitter/f;Lcom/cootek/smartinput5/plugin/twitter/d;)Lokhttp3/Response;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Lcom/cootek/smartinput5/plugin/twitter/TwitterException;

    invoke-direct {p1}, Lcom/cootek/smartinput5/plugin/twitter/TwitterException;-><init>()V

    throw p1
.end method

.method public y()Lcom/cootek/smartinput5/plugin/twitter/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cootek/smartinput5/plugin/twitter/TwitterException;
        }
    .end annotation

    new-instance v0, Lcom/cootek/smartinput5/plugin/twitter/f;

    invoke-direct {v0}, Lcom/cootek/smartinput5/plugin/twitter/f;-><init>()V

    iget-object v1, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->e:Lcom/cootek/smartinput5/plugin/twitter/d;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/plugin/twitter/d;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oauth_verifier"

    invoke-virtual {v0, v2, v1}, Lcom/cootek/smartinput5/plugin/twitter/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cootek/smartinput5/plugin/twitter/e;->e:Lcom/cootek/smartinput5/plugin/twitter/d;

    const-string v2, "https://api.twitter.com/oauth/access_token"

    const-string v3, "POST"

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/cootek/smartinput5/plugin/twitter/e;->A(Ljava/lang/String;Ljava/lang/String;Lcom/cootek/smartinput5/plugin/twitter/f;Lcom/cootek/smartinput5/plugin/twitter/d;)Lokhttp3/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/plugin/twitter/e;->v(Lokhttp3/Response;)Lcom/cootek/smartinput5/plugin/twitter/d;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/cootek/smartinput5/plugin/twitter/TwitterException;

    invoke-direct {v0}, Lcom/cootek/smartinput5/plugin/twitter/TwitterException;-><init>()V

    throw v0
.end method

.method public z()Lcom/cootek/smartinput5/plugin/twitter/d;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cootek/smartinput5/plugin/twitter/TwitterException;
        }
    .end annotation

    new-instance v3, Lcom/cootek/smartinput5/plugin/twitter/f;

    invoke-direct {v3}, Lcom/cootek/smartinput5/plugin/twitter/f;-><init>()V

    const-string v0, "oauth_callback"

    const-string v1, "http://localhost/sign-in-with-twitter/"

    invoke-virtual {v3, v0, v1}, Lcom/cootek/smartinput5/plugin/twitter/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "https://api.twitter.com/oauth/request_token"

    const-string v2, "POST"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/cootek/smartinput5/plugin/twitter/e;->B(Ljava/lang/String;Ljava/lang/String;Lcom/cootek/smartinput5/plugin/twitter/f;Lcom/cootek/smartinput5/plugin/twitter/d;Z)Lokhttp3/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/plugin/twitter/e;->w(Lokhttp3/Response;)Lcom/cootek/smartinput5/plugin/twitter/d;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Lcom/cootek/smartinput5/plugin/twitter/TwitterException;

    invoke-direct {v1}, Lcom/cootek/smartinput5/plugin/twitter/TwitterException;-><init>()V

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/plugin/twitter/TwitterException;->setErrorCode(I)V

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/plugin/twitter/TwitterException;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/plugin/twitter/TwitterException;->setErrorCode(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    throw v1
.end method
