.class final Lcom/cootek/smartinput5/settings/ServiceSettings150$JournalHold;
.super Ljava/lang/Object;
.source "ServiceSettings150.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput5/settings/ServiceSettings150;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JournalHold"
.end annotation


# instance fields
.field final hidden:Landroid/preference/PreferenceScreen;

.field final journal:Landroid/preference/Preference;

.field final previous:Landroid/widget/AdapterView$OnItemLongClickListener;


# direct methods
.method constructor <init>(Landroid/preference/Preference;Landroid/preference/PreferenceScreen;Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/cootek/smartinput5/settings/ServiceSettings150$JournalHold;->journal:Landroid/preference/Preference;

    iput-object p2, p0, Lcom/cootek/smartinput5/settings/ServiceSettings150$JournalHold;->hidden:Landroid/preference/PreferenceScreen;

    iput-object p3, p0, Lcom/cootek/smartinput5/settings/ServiceSettings150$JournalHold;->previous:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 39
    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/settings/ServiceSettings150$JournalHold;->journal:Landroid/preference/Preference;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    .line 42
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/ServiceSettings150$JournalHold;->previous:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/cootek/smartinput5/settings/ServiceSettings150$JournalHold;->previous:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-interface/range {v3 .. v8}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 45
    :cond_1
    iget-object v3, p0, Lcom/cootek/smartinput5/settings/ServiceSettings150$JournalHold;->hidden:Landroid/preference/PreferenceScreen;

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 46
    return v2
.end method
