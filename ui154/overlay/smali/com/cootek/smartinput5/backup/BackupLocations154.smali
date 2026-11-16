.class public final Lcom/cootek/smartinput5/backup/BackupLocations154;
.super Ljava/lang/Object;
.source "BackupLocations154.java"


# static fields
.field private static final RELATIVE:Ljava/lang/String; = "TouchPalG/Backup"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized copyMissingText(Landroid/content/Context;Ljava/io/File;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-class v1, Lcom/cootek/smartinput5/backup/BackupLocations154;

    monitor-enter v1

    .line 67
    const/4 v2, 0x0

    move-object/from16 v3, p0

    :try_start_0
    invoke-virtual {v3, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 68
    if-nez v2, :cond_0

    monitor-exit v1

    return-void

    .line 69
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    const-string v5, "TouchPalG"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "Backup"

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_5

    .line 71
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 72
    if-eqz v2, :cond_d

    array-length v3, v2

    const/16 v4, 0x200

    if-le v3, v4, :cond_2

    goto/16 :goto_4

    .line 73
    :cond_2
    array-length v3, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_c

    aget-object v6, v2, v5

    .line 74
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 75
    const-string v8, "western_dict(?:_[A-Za-z0-9_-]{1,80})?\\.txt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    move-object v4, v2

    move/from16 v16, v3

    const/4 v2, 0x0

    goto/16 :goto_3

    .line 76
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 77
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/32 v10, 0x1000000

    cmp-long v12, v8, v10

    if-lez v12, :cond_4

    move-object v4, v2

    move/from16 v16, v3

    const/4 v2, 0x0

    goto/16 :goto_3

    .line 78
    :cond_4
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v8}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    move-object v4, v2

    move/from16 v16, v3

    const/4 v2, 0x0

    goto/16 :goto_3

    .line 80
    :cond_5
    const-string v7, ".txt154_"

    const-string v9, ".part"

    invoke-static {v7, v9, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 82
    :try_start_2
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 84
    :try_start_3
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 86
    const/16 v12, 0x4000

    :try_start_4
    new-array v12, v12, [B

    .line 87
    const-wide/16 v13, 0x0

    .line 88
    :goto_1
    invoke-virtual {v9, v12}, Ljava/io/FileInputStream;->read([B)I

    move-result v15

    const/4 v4, -0x1

    if-eq v15, v4, :cond_7

    .line 89
    move-object v4, v2

    move/from16 v16, v3

    int-to-long v2, v15

    add-long/2addr v13, v2

    cmp-long v2, v13, v10

    if-gtz v2, :cond_6

    .line 91
    const/4 v2, 0x0

    invoke-virtual {v6, v12, v2, v15}, Ljava/io/FileOutputStream;->write([BII)V

    move-object v2, v4

    move/from16 v3, v16

    goto :goto_1

    .line 90
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TXT export size limit"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_7
    move-object v4, v2

    move/from16 v16, v3

    const/4 v2, 0x0

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 94
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 95
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 96
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v7, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_2

    .line 97
    :cond_8
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Cannot copy previous TXT export"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 98
    :cond_9
    :goto_2
    :try_start_7
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    .line 94
    :catchall_0
    move-exception v0

    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 95
    :catchall_1
    move-exception v0

    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 98
    :catchall_2
    move-exception v0

    :try_start_a
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 79
    :cond_a
    move-object v4, v2

    move/from16 v16, v3

    const/4 v2, 0x0

    goto :goto_3

    .line 76
    :cond_b
    move-object v4, v2

    move/from16 v16, v3

    const/4 v2, 0x0

    .line 73
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move-object v2, v4

    move/from16 v3, v16

    goto/16 :goto_0

    .line 100
    :cond_c
    monitor-exit v1

    return-void

    .line 72
    :cond_d
    :goto_4
    monitor-exit v1

    return-void

    .line 70
    :cond_e
    :goto_5
    monitor-exit v1

    return-void

    .line 66
    :catchall_3
    move-exception v0

    monitor-exit v1

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public static folder()Ljava/io/File;
    .locals 3

    .line 18
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    new-instance v1, Ljava/io/File;

    const-string v2, "TouchPalG/Backup"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SD storage unavailable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static preparePicker(Landroid/content/Intent;)V
    .locals 2

    .line 25
    :try_start_0
    invoke-static {}, Lcom/cootek/smartinput5/backup/BackupLocations154;->safeFolder()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 25
    :catch_1
    move-exception v0

    goto :goto_0

    .line 27
    :goto_1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 28
    const-string v1, "com.android.externalstorage.documents"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 29
    const-string v1, "document"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "primary:TouchPalG/Backup"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 30
    const-string v1, "android.provider.extra.INITIAL_URI"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 31
    return-void
.end method

.method private static safeFolder()Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "SD storage unavailable"

    if-eqz v0, :cond_5

    .line 36
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_4

    .line 38
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    const-string v2, "TouchPalG"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Linked export directory"

    if-eqz v0, :cond_3

    .line 40
    new-instance v0, Ljava/io/File;

    const-string v3, "Backup"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Export directory unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    :goto_0
    return-object v0

    .line 41
    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static textDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    .line 49
    invoke-static {}, Lcom/cootek/smartinput5/backup/BackupLocations154;->folder()Ljava/io/File;

    move-result-object v0

    .line 51
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 52
    new-instance v2, Ljava/io/File;

    const-string v3, "TouchPalG/Backup"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    goto :goto_0

    .line 54
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Linked TXT export directory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :catch_0
    move-exception v1

    .line 57
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/cootek/smartinput5/backup/BackupLocations154;->safeFolder()Ljava/io/File;

    move-result-object v0

    .line 59
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 60
    invoke-static {p0, v0}, Lcom/cootek/smartinput5/backup/BackupLocations154;->copyMissingText(Landroid/content/Context;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 62
    :catch_1
    move-exception p0

    goto :goto_1

    .line 61
    :catch_2
    move-exception p0

    .line 62
    :cond_1
    :goto_1
    nop

    .line 63
    return-object v0
.end method
