.class final Lcom/cootek/smartinput5/backup/LanguageFiles158;
.super Ljava/lang/Object;
.source "LanguageFiles158.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;
    }
.end annotation


# static fields
.field private static final MAX_EXPANDED:J = 0x10000000L

.field private static final MAX_FILE:J = 0x4000000L


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static child(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Language destination is not a file"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :cond_1
    :goto_0
    return-object v0

    .line 45
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Linked language file"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static declared-synchronized commit(Landroid/content/Context;Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;)Ljava/io/File;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/cootek/smartinput5/backup/LanguageFiles158;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p1, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->source:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->verify()V

    invoke-static {}, Lcom/cootek/smartinput5/backup/LanguageFiles158;->folder()Ljava/io/File;

    move-result-object v1

    .line 98
    iget-object v2, p1, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->target:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 99
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v3, "language_import158.lock"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    new-instance p0, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {p0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 101
    nop

    .line 103
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v4
    :try_end_1
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 104
    if-eqz v4, :cond_b

    .line 105
    :try_start_2
    invoke-static {p1}, Lcom/cootek/smartinput5/backup/LanguageFiles158;->verifyPrevious(Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;)V

    .line 106
    iget-object v5, p1, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->previous:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    if-eqz v5, :cond_1

    iget-object v5, p1, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->source:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    iget-wide v5, v5, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->length:J

    iget-object v7, p1, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->previous:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    iget-wide v7, v7, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->length:J

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    iget-object v5, p1, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->source:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    iget-object v5, v5, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->digest:[B

    iget-object v6, p1, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->previous:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    iget-object v6, v6, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->digest:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object p1, p1, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->target:Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 121
    nop

    .line 122
    nop

    .line 123
    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_4
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V

    :goto_0
    throw p1

    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 106
    monitor-exit v0

    return-object p1

    .line 107
    :cond_1
    :try_start_5
    const-string v5, "language158_"

    const-string v6, ".part"

    invoke-static {v5, v6, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 108
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    iget-object v5, p1, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->source:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    invoke-virtual {v5, v1}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->copy(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 109
    new-instance v1, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    iget-object v5, p1, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->source:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    iget-object v5, v5, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->name:Ljava/lang/String;

    iget-object v6, p1, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->source:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    iget-object v6, v6, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->mime:Ljava/lang/String;

    invoke-direct {v1, v3, v5, v6}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-wide v5, v1, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->length:J

    iget-object v7, p1, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->source:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    iget-wide v7, v7, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->length:J

    cmp-long v9, v5, v7

    if-nez v9, :cond_a

    iget-object v1, v1, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->digest:[B

    iget-object v5, p1, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->source:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    iget-object v5, v5, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->digest:[B

    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 111
    iget-object v1, p1, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->previous:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    if-eqz v1, :cond_4

    .line 112
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/cootek/smartinput5/backup/BackupLocations155;->safeFolder()Ljava/io/File;

    move-result-object v5

    const-string v6, "Language"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 114
    :cond_2
    iget-object v5, p1, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->previous:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    invoke-static {v5, v1}, Lcom/cootek/smartinput5/backup/CopyFiles155;->saveStandard(Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;Ljava/io/File;)Ljava/io/File;

    goto :goto_2

    .line 113
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v5, "Language recovery folder unavailable"

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_4
    :goto_2
    iget-object v1, p1, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->source:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->verify()V

    invoke-static {p1}, Lcom/cootek/smartinput5/backup/LanguageFiles158;->verifyPrevious(Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;)V

    .line 117
    iget-object v1, p1, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->previous:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    const/4 v5, 0x1

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->target:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v5, "Language target busy"

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :cond_6
    const/4 v1, 0x0

    .line 118
    :goto_3
    :try_start_8
    iget-object v6, p1, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->target:Ljava/io/File;

    invoke-virtual {v3, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v6, :cond_9

    .line 119
    :try_start_9
    iget-object p1, p1, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->target:Ljava/io/File;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 121
    if-eqz v3, :cond_7

    :try_start_a
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 122
    :cond_7
    nop

    .line 123
    if-eqz v4, :cond_8

    :try_start_b
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    :try_start_c
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V

    goto/16 :goto_0

    :cond_8
    :goto_4
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 119
    monitor-exit v0

    return-object p1

    .line 121
    :catchall_2
    move-exception v2

    move-object v10, v2

    move v2, v1

    move-object v1, v10

    goto :goto_6

    .line 118
    :cond_9
    :try_start_d
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Language publication failed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 121
    :catchall_3
    move-exception v5

    move v2, v1

    move-object v1, v5

    goto :goto_5

    .line 110
    :cond_a
    :try_start_e
    new-instance v1, Ljava/io/IOException;

    const-string v5, "Language copy verification"

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :catchall_4
    move-exception v5

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v5

    .line 121
    :catchall_5
    move-exception v1

    goto :goto_5

    .line 104
    :cond_b
    new-instance v1, Ljava/io/IOException;

    const-string v5, "Language import busy"

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 121
    :catchall_6
    move-exception v1

    move-object v4, v3

    :goto_5
    const/4 v5, 0x0

    goto :goto_6

    .line 103
    :catch_0
    move-exception v1

    :try_start_f
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Language import busy"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 121
    :goto_6
    if-eqz v3, :cond_c

    :try_start_10
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 122
    :cond_c
    if-eqz v2, :cond_d

    if-nez v5, :cond_d

    iget-object v2, p1, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->target:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p1, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->target:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-nez v7, :cond_d

    iget-object p1, p1, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->target:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 123
    :cond_d
    if-eqz v4, :cond_e

    :try_start_11
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception p1

    :try_start_12
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V

    goto/16 :goto_0

    :cond_e
    :goto_7
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V

    .line 124
    throw v1

    .line 98
    :cond_f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Language directory changed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 96
    :catchall_8
    move-exception p0

    monitor-exit v0

    goto :goto_9

    :goto_8
    throw p0

    :goto_9
    goto :goto_8
.end method

.method private static displayName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    nop

    .line 32
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 p0, 0x1

    new-array v3, p0, [Ljava/lang/String;

    const-string p0, "_display_name"

    const/4 v7, 0x0

    aput-object p0, v3, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_2

    .line 33
    :catch_0
    move-exception v1

    goto :goto_3

    .line 34
    :cond_0
    :goto_0
    if-eqz p0, :cond_2

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw p1

    .line 33
    :catch_1
    move-exception p0

    move-object p0, v0

    .line 34
    :goto_3
    if-eqz p0, :cond_2

    goto :goto_1

    .line 35
    :cond_2
    :goto_4
    if-nez v0, :cond_3

    const-string p0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 36
    :cond_3
    invoke-static {v0}, Lcom/cootek/smartinput5/backup/LanguageFiles158;->normalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static folder()Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    const-string v0, "language"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/storage/StorageRoot135;->directory(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    return-object v0

    .line 40
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Language folder unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static normalizedName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-gt v0, v1, :cond_3

    .line 24
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".tpl.apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 25
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ".tpl"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 27
    const-string v0, "[A-Za-z0-9_-]{1,100}\\.tpl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    return-object p0

    .line 27
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Invalid language filename"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Choose TPL or TPL.apk"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Language filename unavailable"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static prepare(Landroid/content/Context;Landroid/net/Uri;)Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    const-string v0, "application/octet-stream"

    invoke-static {p0}, Lcom/cootek/smartinput5/backup/BackupLocations155;->bind(Landroid/content/Context;)V

    invoke-static {p0, p1}, Lcom/cootek/smartinput5/backup/LanguageFiles158;->displayName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 51
    const-string v2, ".tmp"

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "language158_"

    invoke-static {v4, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 53
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p0, :cond_3

    .line 55
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    const/16 v4, 0x4000

    :try_start_2
    new-array v4, v4, [B

    const-wide/16 v5, 0x0

    :goto_0
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    int-to-long v8, v7

    add-long/2addr v5, v8

    const-wide/32 v8, 0x4000000

    cmp-long v10, v5, v8

    if-gtz v10, :cond_0

    invoke-virtual {p1, v4, v3, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Language too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 58
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 59
    invoke-static {v2}, Lcom/cootek/smartinput5/backup/LanguageFiles158;->validateArchive(Ljava/io/File;)V

    .line 60
    new-instance p0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    invoke-direct {p0, v2, v1, v0}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/cootek/smartinput5/backup/LanguageFiles158;->folder()Ljava/io/File;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/cootek/smartinput5/backup/LanguageFiles158;->child(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    invoke-direct {v4, p1, v1, v0}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 63
    :goto_1
    const/4 v3, 0x1

    new-instance v0, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;

    invoke-direct {v0, p0, v4, p1}, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;-><init>(Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 64
    nop

    .line 63
    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 58
    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw p1

    .line 53
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Language unavailable"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 64
    :catchall_2
    move-exception p0

    if-nez v3, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_4
    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method static validateArchive(Ljava/io/File;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    move-object/from16 v0, p0

    const-string v1, "assets/"

    const-string v2, "/"

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_d

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v7, 0x4000000

    cmp-long v9, v3, v7

    if-gtz v9, :cond_d

    .line 69
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 70
    new-instance v4, Ljava/util/zip/ZipInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v9}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 72
    const/16 v9, 0x4000

    :try_start_0
    new-array v9, v9, [B

    const/4 v10, 0x0

    move-wide v13, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 73
    :goto_0
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v15

    if-eqz v15, :cond_8

    .line 74
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    .line 75
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    const/16 v6, 0x1000

    if-ge v5, v6, :cond_7

    invoke-interface {v3, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const/16 v5, 0x5c

    invoke-virtual {v15, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_7

    invoke-virtual {v15, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_7

    .line 76
    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    :goto_1
    if-ge v10, v6, :cond_1

    aget-object v7, v5, v10

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, ".."

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    add-int/lit8 v10, v10, 0x1

    const-wide/32 v7, 0x4000000

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid language path"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    const-wide/16 v5, 0x0

    .line 78
    :goto_2
    invoke-virtual {v4, v9}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    int-to-long v7, v7

    add-long/2addr v5, v7

    add-long/2addr v13, v7

    const-wide/32 v7, 0x4000000

    cmp-long v10, v5, v7

    if-gtz v10, :cond_2

    const-wide/32 v18, 0x10000000

    cmp-long v10, v13, v18

    if-gtz v10, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Expanded language limit"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_3
    const-wide/32 v7, 0x4000000

    invoke-virtual {v15, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    const/16 v18, 0x1

    if-eqz v10, :cond_4

    const-string v10, ".lng.png"

    invoke-virtual {v15, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-wide/16 v16, 0x0

    cmp-long v10, v5, v16

    if-lez v10, :cond_4

    const/4 v11, 0x1

    .line 80
    :cond_4
    invoke-virtual {v15, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, ".rom.png"

    invoke-virtual {v15, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-wide/16 v15, 0x0

    cmp-long v10, v5, v15

    if-lez v10, :cond_6

    const/4 v12, 0x1

    goto :goto_3

    :cond_5
    const-wide/16 v15, 0x0

    .line 81
    :cond_6
    :goto_3
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 82
    move-wide v5, v15

    const/4 v10, 0x0

    goto/16 :goto_0

    .line 75
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid language archive"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    :cond_8
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V

    .line 84
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 86
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->size()I

    move-result v0

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "Language directory mismatch"

    if-ne v0, v2, :cond_c

    .line 87
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_4

    :cond_9
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    :cond_a
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 89
    if-eqz v11, :cond_b

    if-eqz v12, :cond_b

    .line 90
    return-void

    .line 89
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a TouchPal language package"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_c
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    throw v0

    .line 83
    :catchall_1
    move-exception v0

    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V

    throw v0

    .line 68
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Language size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method private static verifyPrevious(Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->target:Ljava/io/File;

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->target:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->previous:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->target:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Language appeared during confirmation"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 94
    :cond_1
    iget-object p0, p0, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->previous:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->verify()V

    .line 95
    :goto_0
    return-void

    .line 92
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Linked language target"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
