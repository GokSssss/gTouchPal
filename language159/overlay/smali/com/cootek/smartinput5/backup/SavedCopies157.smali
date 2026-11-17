.class final Lcom/cootek/smartinput5/backup/SavedCopies157;
.super Ljava/lang/Object;
.source "SavedCopies157.java"


# static fields
.field private static final LIMIT:J = 0x4800000L

.field static final TXT:I = 0x3

.field static final USR:I = 0x2

.field static final ZIP:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static download(Landroid/content/Context;Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "application/zip"

    invoke-virtual/range {p1 .. p1}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->verify()V

    .line 135
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    const-string v5, "Downloads unavailable"

    if-ge v3, v4, :cond_2

    .line 136
    const-string v1, "Download"

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    :cond_0
    invoke-static {v0, v1}, Lcom/cootek/smartinput5/backup/CopyFiles155;->saveStandard(Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 139
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_2
    const-string v3, "android.provider.MediaStore$Downloads"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "EXTERNAL_CONTENT_URI"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 143
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "_display_name"

    iget-object v8, v0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v7, "mime_type"

    iget-object v8, v0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->mime:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "relative_path"

    const-string v8, "Download/"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "is_pending"

    invoke-virtual {v6, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v3, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 146
    if-eqz v3, :cond_b

    .line 147
    nop

    .line 149
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "w"

    invoke-virtual {v8, v3, v10}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 150
    if-eqz v8, :cond_9

    .line 151
    :try_start_1
    invoke-virtual {v0, v8}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->copy(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 152
    iget-object v8, v0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->mime:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const-string v12, "text/plain"

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_0

    :cond_3
    :try_start_3
    iget-object v8, v0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->mime:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x3

    goto :goto_0

    :cond_4
    const/4 v8, 0x2

    :goto_0
    invoke-static {v1, v3, v8}, Lcom/cootek/smartinput5/backup/SavedCopies157;->read(Landroid/content/Context;Landroid/net/Uri;I)Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 154
    :try_start_4
    iget-wide v13, v8, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->length:J

    iget-wide v10, v0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->length:J

    cmp-long v15, v13, v10

    if-nez v15, :cond_8

    iget-object v10, v8, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->digest:[B

    iget-object v11, v0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->digest:[B

    invoke-static {v10, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v10, :cond_8

    .line 155
    :try_start_5
    invoke-virtual {v8}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->discard()V

    .line 156
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v3, v6, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-ne v6, v7, :cond_7

    .line 158
    :try_start_6
    iget-object v5, v0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->mime:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v10, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, v0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->mime:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v10, 0x3

    goto :goto_1

    :cond_6
    const/4 v10, 0x2

    :goto_1
    invoke-static {v1, v3, v10}, Lcom/cootek/smartinput5/backup/SavedCopies157;->name(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 159
    nop

    .line 158
    return-object v0

    .line 159
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 157
    :cond_7
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Downloads publication failed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 154
    :cond_8
    :try_start_8
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Downloads verification failed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 155
    :catchall_1
    move-exception v0

    :try_start_9
    invoke-virtual {v8}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->discard()V

    throw v0

    .line 151
    :catchall_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    throw v2

    .line 150
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Downloads output unavailable"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 159
    :catchall_3
    move-exception v0

    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_a
    throw v0

    .line 146
    :cond_b
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static fallback(I)Ljava/lang/String;
    .locals 3

    .line 26
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "western.usr"

    return-object p0

    .line 27
    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    const-string p0, "western_dict_full.txt"

    return-object p0

    .line 28
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TouchPal_backup_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ".zip"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static files()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-static {}, Lcom/cootek/smartinput5/backup/BackupLocations155;->safeFolder()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_2

    array-length v1, v0

    const/16 v2, 0x2710

    if-gt v1, v2, :cond_2

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Lcom/cootek/smartinput5/backup/SavedCopies157;->kind(Ljava/io/File;)I

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    :cond_1
    new-instance v0, Lcom/cootek/smartinput5/backup/SavedCopies157$1;

    invoke-direct {v0}, Lcom/cootek/smartinput5/backup/SavedCopies157$1;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 87
    return-object v1

    .line 81
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Copy listing unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method static kind(Ljava/io/File;)I
    .locals 1

    .line 22
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 23
    const-string v0, ".zip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, ".usr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const-string v0, ".txt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static label(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd.MM.yyyy HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static latestZip()Ljava/io/File;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-static {}, Lcom/cootek/smartinput5/backup/SavedCopies157;->files()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-static {v1}, Lcom/cootek/smartinput5/backup/SavedCopies157;->kind(Ljava/io/File;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 92
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :try_start_1
    invoke-static {v2}, Lcom/cootek/smartinput5/backup/BackupArchive;->read(Ljava/io/InputStream;)Lcom/cootek/smartinput5/backup/BackupArchive$Archive;

    move-result-object v3

    invoke-static {v3}, Lcom/cootek/smartinput5/backup/BackupController;->validate(Lcom/cootek/smartinput5/backup/BackupArchive$Archive;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 93
    return-object v1

    .line 94
    :catchall_0
    move-exception v1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 95
    :catch_0
    move-exception v1

    .line 90
    :cond_0
    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static declared-synchronized migratePublic()I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/cootek/smartinput5/backup/SavedCopies157;

    monitor-enter v0

    .line 105
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    .line 107
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    const-string v4, "TouchPalG"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    new-instance v1, Ljava/io/File;

    const-string v4, "Backup"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 111
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    monitor-exit v0

    return v2

    .line 112
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_9

    array-length v5, v4

    const/16 v6, 0x2710

    if-gt v5, v6, :cond_9

    .line 113
    nop

    .line 114
    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v2, v5, :cond_8

    aget-object v7, v4, v2

    .line 115
    invoke-static {v7}, Lcom/cootek/smartinput5/backup/SavedCopies157;->kind(Ljava/io/File;)I

    move-result v8

    .line 116
    if-eqz v8, :cond_7

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v7}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/32 v11, 0x4800000

    cmp-long v13, v9, v11

    if-lez v13, :cond_2

    goto/16 :goto_1

    .line 117
    :cond_2
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 118
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x8c

    if-gt v10, v11, :cond_7

    const-string v10, ".."

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "[\\p{L}\\p{N}_.() -]+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_1

    .line 119
    :cond_3
    new-instance v10, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    invoke-static {v8}, Lcom/cootek/smartinput5/backup/SavedCopies157;->mime(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v7, v9, v8}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {v10}, Lcom/cootek/smartinput5/backup/SavedCopies157;->remember(Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;)Ljava/io/File;

    move-result-object v8

    .line 121
    new-instance v9, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v10, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->mime:Ljava/lang/String;

    invoke-direct {v9, v8, v11, v12}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-wide v11, v9, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->length:J

    iget-wide v13, v10, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->length:J

    cmp-long v15, v11, v13

    if-nez v15, :cond_6

    iget-object v11, v10, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->digest:[B

    iget-object v9, v9, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->digest:[B

    invoke-static {v11, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 123
    invoke-virtual {v10}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->verify()V

    .line 124
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    cmp-long v13, v9, v11

    if-eqz v13, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/io/File;->setLastModified(J)Z

    .line 125
    :cond_4
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 126
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 125
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Verified copy saved; original could not be removed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_6
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Migration verification failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 129
    :cond_8
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return v6

    .line 112
    :cond_9
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Old copies unavailable"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Linked old copy directory"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method static mime(I)Ljava/lang/String;
    .locals 1

    .line 19
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "application/zip"

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "application/octet-stream"

    goto :goto_0

    :cond_1
    const-string p0, "text/plain"

    :goto_0
    return-object p0
.end method

.method private static name(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;
    .locals 9

    .line 31
    nop

    .line 33
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/String;

    const-string p0, "_display_name"

    const/4 v8, 0x0

    aput-object p0, v4, v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    if-eqz p0, :cond_0

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    move-object v1, p0

    goto :goto_2

    .line 35
    :catch_0
    move-exception v2

    goto :goto_3

    .line 36
    :cond_0
    :goto_0
    if-eqz p0, :cond_2

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw p1

    .line 35
    :catch_1
    move-exception p0

    move-object p0, v1

    .line 36
    :goto_3
    if-eqz p0, :cond_2

    goto :goto_1

    .line 37
    :cond_2
    :goto_4
    if-nez v1, :cond_3

    const-string p0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 38
    :cond_3
    if-ne p2, v0, :cond_4

    const-string p0, ".zip"

    goto :goto_5

    :cond_4
    const/4 p0, 0x2

    if-ne p2, p0, :cond_5

    const-string p0, ".usr"

    goto :goto_5

    :cond_5
    const-string p0, ".txt"

    .line 39
    :goto_5
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x8c

    if-gt p1, v0, :cond_7

    const-string p1, ".."

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 40
    const-string p1, "[\\p{L}\\p{N}_.() -]+"

    invoke-virtual {v1, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_6

    .line 42
    :cond_6
    return-object v1

    .line 41
    :cond_7
    :goto_6
    invoke-static {p2}, Lcom/cootek/smartinput5/backup/SavedCopies157;->fallback(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static read(Landroid/content/Context;Landroid/net/Uri;I)Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    const-string v0, ".tmp"

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "incoming157_"

    invoke-static {v2, v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 48
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 49
    if-eqz v1, :cond_3

    .line 51
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    const/16 v3, 0x4000

    :try_start_2
    new-array v3, v3, [B

    const-wide/16 v4, 0x0

    move-wide v6, v4

    .line 54
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 55
    int-to-long v9, v8

    add-long/2addr v6, v9

    const-wide/32 v9, 0x4800000

    cmp-long v11, v6, v9

    if-gtz v11, :cond_0

    .line 56
    const/4 v9, 0x0

    invoke-virtual {v2, v3, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 55
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Incoming file too large"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_1
    cmp-long v3, v6, v4

    if-eqz v3, :cond_2

    .line 59
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 61
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 62
    new-instance v1, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    invoke-static {p0, p1, p2}, Lcom/cootek/smartinput5/backup/SavedCopies157;->name(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lcom/cootek/smartinput5/backup/SavedCopies157;->mime(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p0, p1}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 63
    nop

    .line 64
    nop

    .line 63
    return-object v1

    .line 58
    :cond_2
    :try_start_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Incoming file empty"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 60
    :catchall_0
    move-exception p0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 61
    :catchall_1
    move-exception p0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw p0

    .line 49
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Incoming file unavailable"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 64
    :catchall_2
    move-exception p0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method static declared-synchronized remember(Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;)Ljava/io/File;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/cootek/smartinput5/backup/SavedCopies157;

    monitor-enter v0

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->verify()V

    invoke-static {}, Lcom/cootek/smartinput5/backup/BackupLocations155;->safeFolder()Ljava/io/File;

    move-result-object v1

    .line 70
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->name:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->length:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 73
    new-instance v3, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    iget-object v4, p0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->mime:Ljava/lang/String;

    invoke-direct {v3, v2, v4, v5}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v4, p0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->digest:[B

    iget-object v3, v3, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->digest:[B

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v0

    return-object v2

    .line 76
    :cond_0
    :try_start_1
    invoke-static {p0, v1}, Lcom/cootek/smartinput5/backup/CopyFiles155;->saveStandard(Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;Ljava/io/File;)Ljava/io/File;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    .line 71
    :cond_1
    :try_start_2
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Linked copy file"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
