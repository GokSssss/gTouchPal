.class final Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;
.super Ljava/lang/Object;
.source "LanguageFiles158.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput5/backup/LanguageFiles158;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Pending"
.end annotation


# instance fields
.field final previous:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

.field final source:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

.field final target:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;Ljava/io/File;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->source:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    iput-object p2, p0, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->previous:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    iput-object p3, p0, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->target:Ljava/io/File;

    return-void
.end method


# virtual methods
.method discard()V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/cootek/smartinput5/backup/LanguageFiles158$Pending;->source:Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/backup/CopyFiles155$Prepared;->discard()V

    return-void
.end method
