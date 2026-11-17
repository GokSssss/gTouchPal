.class final Lcom/cootek/smartinput5/backup/TextDictionary155$Session;
.super Ljava/lang/Object;
.source "TextDictionary155.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput5/backup/TextDictionary155;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Session"
.end annotation


# instance fields
.field final already:I

.field final before:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final core:Lcom/cootek/smartinput5/engine/Okinawa;

.field final engine:Lcom/cootek/smartinput5/engine/Engine;

.field final language:Ljava/lang/String;

.field mutated:Z

.field next:I

.field final words:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {}, Lcom/cootek/smartinput5/backup/TextDictionary155;->access$000()Lcom/cootek/smartinput5/engine/Okinawa;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->core:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->engine:Lcom/cootek/smartinput5/engine/Engine;

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->core:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getCurrentLanguageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->language:Ljava/lang/String;

    .line 72
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->language:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 73
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->existing()Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->before:Ljava/util/Set;

    new-instance p2, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->before:Ljava/util/Set;

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->words:Ljava/util/List;

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/cootek/smartinput5/backup/TextDictionary155;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->words:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->words:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->already:I

    .line 76
    return-void

    .line 72
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Dictionary language changed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private check()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-static {}, Lcom/cootek/smartinput5/backup/TextDictionary155;->access$200()V

    invoke-static {}, Lcom/cootek/smartinput5/backup/TextDictionary155;->access$000()Lcom/cootek/smartinput5/engine/Okinawa;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->core:Lcom/cootek/smartinput5/engine/Okinawa;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->engine:Lcom/cootek/smartinput5/engine/Engine;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->language:Ljava/lang/String;

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->core:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Okinawa;->getCurrentLanguageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Dictionary changed during import"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private existing()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cootek/smartinput5/engine/Engine;->setBusyState(Z)V

    .line 83
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->core:Lcom/cootek/smartinput5/engine/Okinawa;

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->language:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/engine/Okinawa;->getEditableUserWordList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_2

    .line 85
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    invoke-static {v5}, Lcom/cootek/smartinput5/backup/TextDictionary155;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 86
    :cond_1
    invoke-static {v0}, Lcom/cootek/smartinput5/engine/Engine;->setBusyState(Z)V

    .line 85
    return-object v2

    .line 84
    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Cannot read current user words"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/cootek/smartinput5/engine/Engine;->setBusyState(Z)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method finish()[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->check()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->existing()Ljava/util/Set;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->before:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    iget-object v1, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->words:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/cootek/smartinput5/backup/TextDictionary155;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    :cond_1
    iget v0, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->already:I

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->words:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    return-object v0

    .line 103
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Dictionary needs restoration from the pre-import copy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method step()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->check()V

    iget v0, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->next:I

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->words:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    return v2

    .line 90
    :cond_0
    iget v0, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->next:I

    add-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->words:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2}, Lcom/cootek/smartinput5/engine/Engine;->setBusyState(Z)V

    .line 92
    const/4 v1, 0x2

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->core:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v4, v2}, Lcom/cootek/smartinput5/engine/Okinawa;->fireTransactionOperation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 93
    :try_start_1
    iget v4, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->next:I

    :goto_0
    if-ge v4, v0, :cond_1

    iget-object v5, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->words:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-boolean v2, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->mutated:Z

    iget-object v6, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->core:Lcom/cootek/smartinput5/engine/Okinawa;

    const/4 v7, 0x3

    invoke-virtual {v6, v5, v5, v7}, Lcom/cootek/smartinput5/engine/Okinawa;->fireAddUserwordOperation(Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 94
    :cond_1
    iget-object v4, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->core:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v4, v1}, Lcom/cootek/smartinput5/engine/Okinawa;->fireTransactionOperation(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->core:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v4}, Lcom/cootek/smartinput5/engine/Okinawa;->doProcessEvent()V

    iput v0, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->next:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 96
    nop

    .line 97
    invoke-static {v3}, Lcom/cootek/smartinput5/engine/Engine;->setBusyState(Z)V

    .line 98
    nop

    .line 99
    iget v0, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->next:I

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->words:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 96
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_3

    :try_start_3
    iget-object v2, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->core:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v2, v1}, Lcom/cootek/smartinput5/engine/Okinawa;->fireTransactionOperation(I)V

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/TextDictionary155$Session;->core:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Okinawa;->doProcessEvent()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    .line 97
    :catchall_2
    move-exception v0

    invoke-static {v3}, Lcom/cootek/smartinput5/engine/Engine;->setBusyState(Z)V

    throw v0

    :cond_3
    :goto_3
    invoke-static {v3}, Lcom/cootek/smartinput5/engine/Engine;->setBusyState(Z)V

    .line 98
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
