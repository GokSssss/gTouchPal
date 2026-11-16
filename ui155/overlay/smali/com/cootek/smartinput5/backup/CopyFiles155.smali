.class final Lcom/cootek/smartinput5/backup/CopyFiles155;
.super Ljava/lang/Object;
.source "CopyFiles155.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;
    }
.end annotation


# static fields
.field private static final LIMIT:J = 0x4800000L


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/io/File;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-static {p0}, Lcom/cootek/smartinput5/backup/CopyFiles155;->hash(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Ljava/security/MessageDigest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-static {}, Lcom/cootek/smartinput5/backup/CopyFiles155;->digest()Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method private static child(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa0

    if-gt v0, v1, :cond_1

    const-string v0, "[A-Za-z0-9_.() -]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 77
    return-object v0

    .line 76
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Linked copy destination"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid copy name"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static digest()Ljava/security/MessageDigest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 44
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Digest unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static hash(Ljava/io/File;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-static {}, Lcom/cootek/smartinput5/backup/CopyFiles155;->digest()Ljava/security/MessageDigest;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 49
    const/16 p0, 0x4000

    :try_start_0
    new-array p0, p0, [B

    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    int-to-long v5, v4

    add-long/2addr v2, v5

    const-wide/32 v5, 0x4800000

    cmp-long v7, v2, v5

    if-gtz v7, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v0, p0, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Copy size limit"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method static declared-synchronized saveStandard(Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;Ljava/io/File;)Ljava/io/File;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/cootek/smartinput5/backup/CopyFiles155;

    monitor-enter v0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->verify()V

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 82
    invoke-virtual {p1, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 83
    const-string p1, ".gtouchpal155_"

    const-string v2, ".part"

    invoke-static {p1, v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 85
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    :try_start_2
    invoke-virtual {p0, v5}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->copy(Ljava/io/OutputStream;)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 87
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->length:J

    cmp-long v9, v5, v7

    if-nez v9, :cond_7

    iget-object v5, p0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->digest:[B

    invoke-static {p1}, Lcom/cootek/smartinput5/backup/CopyFiles155;->hash(Ljava/io/File;)[B

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 88
    iget-object v5, p0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->name:Ljava/lang/String;

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v6, 0x0

    if-gez v5, :cond_0

    iget-object v7, p0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->name:Ljava/lang/String;

    invoke-virtual {v7, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :goto_0
    if-gez v5, :cond_1

    const-string v5, ""

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->name:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 89
    :goto_1
    nop

    :goto_2
    const/16 v8, 0x2710

    if-ge v6, v8, :cond_4

    .line 90
    if-nez v6, :cond_2

    iget-object v8, p0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->name:Ljava/lang/String;

    goto :goto_3

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-static {v1, v8}, Lcom/cootek/smartinput5/backup/CopyFiles155;->child(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 91
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v4, v8

    goto :goto_4

    .line 89
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 93
    :cond_4
    :goto_4
    if-eqz v4, :cond_6

    .line 94
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long p0, v5, v2

    if-nez p0, :cond_5

    invoke-virtual {p1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_5

    .line 95
    nop

    .line 97
    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 98
    nop

    .line 95
    monitor-exit v0

    return-object v4

    .line 94
    :cond_5
    :try_start_5
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Cannot publish saved copy"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 93
    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Cannot choose copy name"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 87
    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Saved copy verification failed"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 86
    :catchall_0
    move-exception p0

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 97
    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 98
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long p1, v5, v2

    if-nez p1, :cond_8

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 99
    :cond_8
    throw p0

    .line 82
    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Copy directory unavailable"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 80
    :catchall_2
    move-exception p0

    monitor-exit v0

    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5
.end method

.method static text(Ljava/io/File;[B)Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-static {p0, p1}, Lcom/cootek/smartinput5/backup/WesternExport135;->prepare(Ljava/io/File;[B)Lcom/cootek/smartinput5/backup/WesternExport135$Prepared;

    move-result-object p1

    .line 64
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/cootek/smartinput5/backup/WesternExport135;->verify(Lcom/cootek/smartinput5/backup/WesternExport135$Prepared;)V

    .line 65
    iget-object v1, p1, Lcom/cootek/smartinput5/backup/WesternExport135$Prepared;->file:Ljava/io/File;

    invoke-static {v1}, Lcom/cootek/smartinput5/backup/TextDictionary155;->export(Ljava/io/File;)[B

    move-result-object v1

    .line 66
    const-string v2, "words155_"

    const-string v3, ".tmp"

    invoke-static {v2, v3, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 67
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 69
    new-instance p0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    const-string v1, "western_dict_full.txt"

    const-string v2, "text/plain"

    invoke-direct {p0, v0, v1, v2}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 71
    invoke-static {p1}, Lcom/cootek/smartinput5/backup/WesternExport135;->discard(Lcom/cootek/smartinput5/backup/WesternExport135$Prepared;)V

    .line 69
    return-object p0

    .line 68
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 71
    :catchall_1
    move-exception p0

    goto :goto_0

    .line 70
    :catch_0
    move-exception p0

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 71
    :goto_0
    invoke-static {p1}, Lcom/cootek/smartinput5/backup/WesternExport135;->discard(Lcom/cootek/smartinput5/backup/WesternExport135$Prepared;)V

    throw p0
.end method

.method static western(Ljava/io/File;[B)Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-static {p0, p1}, Lcom/cootek/smartinput5/backup/WesternExport135;->prepare(Ljava/io/File;[B)Lcom/cootek/smartinput5/backup/WesternExport135$Prepared;

    move-result-object p0

    .line 58
    :try_start_0
    invoke-static {p0}, Lcom/cootek/smartinput5/backup/WesternExport135;->verify(Lcom/cootek/smartinput5/backup/WesternExport135$Prepared;)V

    new-instance p1, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/WesternExport135$Prepared;->file:Ljava/io/File;

    const-string v1, "western.usr"

    const-string v2, "application/octet-stream"

    invoke-direct {p1, v0, v1, v2}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 59
    :catch_0
    move-exception p1

    invoke-static {p0}, Lcom/cootek/smartinput5/backup/WesternExport135;->discard(Lcom/cootek/smartinput5/backup/WesternExport135$Prepared;)V

    throw p1
.end method

.method static zip(Ljava/io/File;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-static {p0, p1, p2}, Lcom/cootek/smartinput5/backup/BackupExport;->prepare(Ljava/io/File;Ljava/util/Map;Ljava/util/Map;)Ljava/io/File;

    move-result-object p0

    .line 54
    :try_start_0
    new-instance p1, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    const-string p2, "application/zip"

    invoke-direct {p1, p0, p3, p2}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p0}, Lcom/cootek/smartinput5/backup/BackupExport;->discard(Ljava/io/File;)V

    throw p1
.end method
