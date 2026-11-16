.class final Lcom/cootek/smartinput5/settings/ThemePicker156$Choice;
.super Ljava/lang/Object;
.source "ThemePicker156.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput5/settings/ThemePicker156;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Choice"
.end annotation


# instance fields
.field final id:Ljava/lang/String;

.field final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cootek/smartinput5/settings/ThemePicker156$Choice;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/cootek/smartinput5/settings/ThemePicker156$Choice;->title:Ljava/lang/String;

    return-void
.end method
