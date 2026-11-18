.class final Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;
.super Ljava/lang/Object;
.source "CopyFiles155.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput5/backup/CopyFiles155;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Prepared"
.end annotation


# instance fields
.field final digest:[B

.field final file:Ljava/io/File;

.field final length:J

.field final mime:Ljava/lang/String;

.field final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->file:Ljava/io/File;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->mime:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->length:J

    invoke-static {p1}, Lcom/cootek/smartinput5/backup/CopyFiles155;->access$000(Ljava/io/File;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->digest:[B

    .line 20
    iget-wide p1, p0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->length:J

    const-wide/32 v0, 0x4800000

    cmp-long p3, p1, v0

    if-gtz p3, :cond_0

    .line 21
    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Copy size limit"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method copy(Ljava/io/OutputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->verify()V

    invoke-static {}, Lcom/cootek/smartinput5/backup/CopyFiles155;->access$100()Ljava/security/MessageDigest;

    move-result-object v0

    .line 28
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 30
    const/16 v2, 0x4000

    :try_start_0
    new-array v2, v2, [B

    const-wide/16 v3, 0x0

    .line 31
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, -0x1

    const-string v7, "Prepared copy changed"

    if-eq v5, v6, :cond_1

    .line 32
    int-to-long v8, v5

    add-long/2addr v3, v8

    :try_start_1
    iget-wide v8, p0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->length:J

    cmp-long v6, v3, v8

    if-gtz v6, :cond_0

    .line 33
    const/4 v6, 0x0

    invoke-virtual {p1, v2, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v0, v2, v6, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 32
    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 36
    iget-wide v1, p0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->length:J

    cmp-long v5, v3, v1

    if-nez v5, :cond_2

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->digest:[B

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 38
    return-void

    .line 36
    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method discard()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method verify()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->length:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->digest:[B

    iget-object v1, p0, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->file:Ljava/io/File;

    invoke-static {v1}, Lcom/cootek/smartinput5/backup/CopyFiles155;->access$000(Ljava/io/File;)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Prepared copy changed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
