.class public final Lcom/cootek/smartinput5/settings/SizeModel$Session;
.super Ljava/lang/Object;
.source "SizeModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput5/settings/SizeModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Session"
.end annotation


# instance fields
.field private final allowed:[I

.field private final defaultRaw:I

.field private final mode:I

.field private raw:I

.field private final store:Lcom/cootek/smartinput5/settings/SizeModel$Store;


# direct methods
.method public constructor <init>(ILcom/cootek/smartinput5/settings/SizeModel$Store;)V
    .locals 2

    .line 54
    invoke-static {p1}, Lcom/cootek/smartinput5/settings/SizeModel;->values(I)[I

    move-result-object v0

    invoke-static {p1}, Lcom/cootek/smartinput5/settings/SizeModel;->defaultRaw(I)I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/cootek/smartinput5/settings/SizeModel$Session;-><init>(ILcom/cootek/smartinput5/settings/SizeModel$Store;[II)V

    return-void
.end method

.method public constructor <init>(ILcom/cootek/smartinput5/settings/SizeModel$Store;[II)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Lcom/cootek/smartinput5/settings/SizeModel;->access$000(I)V

    iput p1, p0, Lcom/cootek/smartinput5/settings/SizeModel$Session;->mode:I

    iput-object p2, p0, Lcom/cootek/smartinput5/settings/SizeModel$Session;->store:Lcom/cootek/smartinput5/settings/SizeModel$Store;

    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/cootek/smartinput5/settings/SizeModel$Session;->allowed:[I

    iput p4, p0, Lcom/cootek/smartinput5/settings/SizeModel$Session;->defaultRaw:I

    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeModel$Session;->reload()V

    .line 57
    return-void
.end method

.method private find(I)I
    .locals 2

    .line 58
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeModel$Session;->allowed:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/SizeModel$Session;->allowed:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public choose(I)Z
    .locals 3

    .line 66
    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/settings/SizeModel$Session;->find(I)I

    move-result v0

    if-gez v0, :cond_1

    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeModel$Session;->defaultRaw:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size raw"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_1
    :goto_0
    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeModel$Session;->raw:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    return v1

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeModel$Session;->store:Lcom/cootek/smartinput5/settings/SizeModel$Store;

    iget v2, p0, Lcom/cootek/smartinput5/settings/SizeModel$Session;->mode:I

    invoke-interface {v0, v2, p1}, Lcom/cootek/smartinput5/settings/SizeModel$Store;->write(II)Z

    move-result v0

    .line 69
    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SizeModel$Session;->reload()V

    .line 70
    if-eqz v0, :cond_3

    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeModel$Session;->raw:I

    if-ne v0, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public chooseIndex(I)Z
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/settings/SizeModel$Session;->valueAt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/settings/SizeModel$Session;->choose(I)Z

    move-result p1

    return p1
.end method

.method public count()I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeModel$Session;->allowed:[I

    array-length v0, v0

    return v0
.end method

.method public index()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeModel$Session;->raw:I

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/settings/SizeModel$Session;->find(I)I

    move-result v0

    return v0
.end method

.method public raw()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/cootek/smartinput5/settings/SizeModel$Session;->raw:I

    return v0
.end method

.method public reload()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeModel$Session;->store:Lcom/cootek/smartinput5/settings/SizeModel$Store;

    iget v1, p0, Lcom/cootek/smartinput5/settings/SizeModel$Session;->mode:I

    invoke-interface {v0, v1}, Lcom/cootek/smartinput5/settings/SizeModel$Store;->read(I)I

    move-result v0

    iput v0, p0, Lcom/cootek/smartinput5/settings/SizeModel$Session;->raw:I

    return-void
.end method

.method public valueAt(I)I
    .locals 1

    .line 61
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeModel$Session;->allowed:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeModel$Session;->allowed:[I

    aget p1, v0, p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size index"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public values()[I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SizeModel$Session;->allowed:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
