.class public Lcom/cootek/smartinput5/ui/EmotionKey;
.super Lcom/cootek/smartinput5/ui/T;


# static fields
.field private static final EMO_PREFIX:Ljava/lang/String; = "emo_"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/cootek/smartinput5/ui/a0;IILcom/cootek/smartinput5/ui/schema/b;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/cootek/smartinput5/ui/T;-><init>(Landroid/content/res/Resources;Lcom/cootek/smartinput5/ui/a0;IILcom/cootek/smartinput5/ui/schema/b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/cootek/smartinput5/ui/a0;IILcom/cootek/smartinput5/ui/schema/b;Lcom/cootek/smartinput5/ui/t0/f;Lcom/cootek/smartinput5/ui/t0/a;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/cootek/smartinput5/ui/T;-><init>(Landroid/content/res/Resources;Lcom/cootek/smartinput5/ui/a0;IILcom/cootek/smartinput5/ui/schema/b;Lcom/cootek/smartinput5/ui/t0/f;Lcom/cootek/smartinput5/ui/t0/a;)V

    return-void
.end method

.method static synthetic access$000(Lcom/cootek/smartinput5/ui/EmotionKey;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/ui/EmotionKey;->processLongPress(I)V

    return-void
.end method

.method private getEmotionId()I
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->keyName:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getLanguageId(Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const-string v0, "chinese"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private processLongPress(I)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/EmotionKey;->showDialog()V

    return-void
.end method

.method private showDialog()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v1

    const-class v2, Lcom/cootek/smartinput5/ui/settings/EmotionKeyDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/EmotionKey;->getEmotionId()I

    move-result v1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/engine/Engine;->getCurrentLanguageId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/cootek/smartinput5/ui/EmotionKey;->getLanguageId(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    const-string v2, "INDEX"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->mSoftKeyInfo:Lcom/cootek/smartinput5/ui/SoftKeyInfo;

    iget-object v1, v1, Lcom/cootek/smartinput5/ui/SoftKeyInfo;->mainTitle:Ljava/lang/String;

    const-string v2, "SYMBOL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected updateActionListener()V
    .locals 1

    new-instance v0, Lcom/cootek/smartinput5/ui/EmotionKey$a;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/ui/EmotionKey$a;-><init>(Lcom/cootek/smartinput5/ui/EmotionKey;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mActionListener:Lcom/cootek/smartinput5/ui/T$b;

    return-void
.end method

.method protected updateKeyInfo()V
    .locals 3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->keyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Engine;->getKeyId(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->mSoftKeyInfo:Lcom/cootek/smartinput5/ui/SoftKeyInfo;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/ui/SoftKeyInfo;->setSupportedOperation(I)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v1

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/T;->mSoftKeyInfo:Lcom/cootek/smartinput5/ui/SoftKeyInfo;

    invoke-virtual {v1, v0, v2}, Lcom/cootek/smartinput5/engine/Engine;->updateKey(ILcom/cootek/smartinput5/ui/SoftKeyInfo;)V

    return-void
.end method
