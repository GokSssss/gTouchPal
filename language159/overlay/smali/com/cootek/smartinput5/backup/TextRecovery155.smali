.class final Lcom/cootek/smartinput5/backup/TextRecovery155;
.super Ljava/lang/Object;
.source "TextRecovery155.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized clear(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/cootek/smartinput5/backup/TextRecovery155;

    monitor-enter v0

    .line 43
    :try_start_0
    invoke-static {p0}, Lcom/cootek/smartinput5/backup/TextRecovery155;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v1, Ljava/io/File;

    const-string v2, "ready"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Cannot finish TXT recovery"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 45
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/File;

    const-string v2, "before.usr"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit v0

    return-void

    .line 42
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static digest([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 20
    :catch_0
    move-exception p0

    new-instance p0, Ljava/io/IOException;

    const-string v0, "Digest unavailable"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static dir(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    invoke-static {p0}, Lcom/cootek/smartinput5/backup/BackupFiles;->workspace(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    const-string v1, "txt_import155"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Recovery folder unavailable"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_1
    :goto_0
    return-object v0

    .line 13
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Linked recovery path"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static pending(Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/cootek/smartinput5/backup/TextRecovery155;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v1, "ready"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    return p0
.end method

.method static declared-synchronized prepare(Landroid/content/Context;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/cootek/smartinput5/backup/TextRecovery155;

    monitor-enter v0

    .line 23
    :try_start_0
    invoke-static {p0}, Lcom/cootek/smartinput5/backup/TextRecovery155;->pending(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 24
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Lcom/cootek/smartinput5/backup/WesternImport137;->read(Ljava/io/InputStream;)[B

    .line 25
    invoke-static {p0}, Lcom/cootek/smartinput5/backup/TextRecovery155;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v1, Ljava/io/File;

    const-string v2, "before.usr"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "ready"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Recovery snapshot occupied"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 27
    :cond_1
    :goto_0
    const-string v3, ".before155_"

    const-string v4, ".part"

    invoke-static {v3, v4, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 29
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 30
    const/high16 v3, 0x1000000

    invoke-static {p0, v3}, Lcom/cootek/smartinput5/backup/BackupFiles;->read(Ljava/io/File;I)[B

    move-result-object v3

    .line 31
    invoke-static {p1}, Lcom/cootek/smartinput5/backup/TextRecovery155;->digest([B)[B

    move-result-object v4

    invoke-static {v3}, Lcom/cootek/smartinput5/backup/TextRecovery155;->digest([B)[B

    move-result-object v3

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {p1}, Lcom/cootek/smartinput5/backup/TextRecovery155;->digest([B)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 33
    :try_start_6
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 34
    monitor-exit v0

    return-void

    .line 32
    :catchall_0
    move-exception p1

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw p1

    .line 31
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Recovery verification failed"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :catchall_1
    move-exception p1

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 33
    :catchall_2
    move-exception p1

    :try_start_8
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    throw p1

    .line 23
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Resolve previous TXT import first"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 22
    :catchall_3
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized read(Landroid/content/Context;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/cootek/smartinput5/backup/TextRecovery155;

    monitor-enter v0

    .line 36
    :try_start_0
    invoke-static {p0}, Lcom/cootek/smartinput5/backup/TextRecovery155;->pending(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    invoke-static {p0}, Lcom/cootek/smartinput5/backup/TextRecovery155;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v1, Ljava/io/File;

    const-string v2, "before.usr"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 v2, 0x1000000

    invoke-static {v1, v2}, Lcom/cootek/smartinput5/backup/BackupFiles;->read(Ljava/io/File;I)[B

    move-result-object v1

    .line 38
    new-instance v2, Ljava/io/File;

    const-string v3, "ready"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 p0, 0x20

    invoke-static {v2, p0}, Lcom/cootek/smartinput5/backup/BackupFiles;->read(Ljava/io/File;I)[B

    move-result-object v2

    .line 39
    array-length v3, v2

    if-ne v3, p0, :cond_0

    invoke-static {v1}, Lcom/cootek/smartinput5/backup/TextRecovery155;->digest([B)[B

    move-result-object p0

    invoke-static {v2, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 40
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p0}, Lcom/cootek/smartinput5/backup/WesternImport137;->read(Ljava/io/InputStream;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 39
    :cond_0
    :try_start_1
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Recovery snapshot changed"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v1, "No TXT recovery snapshot"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
