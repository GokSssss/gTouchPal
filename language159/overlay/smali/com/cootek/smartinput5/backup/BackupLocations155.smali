.class public final Lcom/cootek/smartinput5/backup/BackupLocations155;
.super Ljava/lang/Object;
.source "BackupLocations155.java"


# static fields
.field private static application:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized bind(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/cootek/smartinput5/backup/BackupLocations155;

    monitor-enter v0

    .line 15
    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    .line 16
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 17
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    sput-object p0, Lcom/cootek/smartinput5/backup/BackupLocations155;->application:Landroid/content/Context;

    .line 18
    sget-object p0, Lcom/cootek/smartinput5/backup/BackupLocations155;->application:Landroid/content/Context;

    invoke-static {p0}, Lcom/cootek/smartinput5/storage/StorageRoot135;->bind(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit v0

    return-void

    .line 14
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized folder()Ljava/io/File;
    .locals 5

    const-class v0, Lcom/cootek/smartinput5/backup/BackupLocations155;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/cootek/smartinput5/backup/BackupLocations155;->application:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 22
    sget-object v1, Lcom/cootek/smartinput5/backup/BackupLocations155;->application:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    const-string v4, "TouchPalG"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "Backup"

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v2

    .line 23
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "App copy directory unavailable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Copy context unavailable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static preparePicker(Landroid/content/Intent;)V
    .locals 2

    .line 28
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 29
    const-string v1, "com.android.externalstorage.documents"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 30
    const-string v1, "document"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "primary:Download"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 31
    const-string v1, "android.provider.extra.INITIAL_URI"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 32
    return-void
.end method

.method static declared-synchronized safeFolder()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/cootek/smartinput5/backup/BackupLocations155;

    monitor-enter v0

    .line 34
    :try_start_0
    const-string v1, "Backup"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/cootek/smartinput5/storage/StorageRoot135;->directory(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 35
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    invoke-static {}, Lcom/cootek/smartinput5/backup/BackupLocations155;->folder()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 38
    monitor-exit v0

    return-object v1

    .line 37
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "App copy directory unavailable"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static textDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/cootek/smartinput5/backup/BackupLocations155;->bind(Landroid/content/Context;)V

    .line 42
    :try_start_0
    invoke-static {}, Lcom/cootek/smartinput5/backup/BackupLocations155;->safeFolder()Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 43
    :catch_0
    move-exception p0

    invoke-static {}, Lcom/cootek/smartinput5/backup/BackupLocations155;->folder()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
