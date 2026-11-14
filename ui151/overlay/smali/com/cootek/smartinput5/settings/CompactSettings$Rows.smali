.class final Lcom/cootek/smartinput5/settings/CompactSettings$Rows;
.super Ljava/lang/Object;
.source "CompactSettings.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cootek/smartinput5/settings/CompactSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Rows"
.end annotation


# instance fields
.field private final source:Landroid/widget/ListAdapter;


# direct methods
.method constructor <init>(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;->source:Landroid/widget/ListAdapter;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;->source:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;->source:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;->source:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;->source:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;->source:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17

    .line 105
    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 106
    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v1, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;->body:Landroid/view/View;

    .line 107
    :goto_1
    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;->source:Landroid/widget/ListAdapter;

    move/from16 v5, p1

    move-object/from16 v6, p3

    invoke-interface {v4, v5, v0, v6}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 109
    const/high16 v6, 0x40400000    # 3.0f

    mul-float v6, v6, v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v0, v7}, Lcom/cootek/smartinput5/settings/CompactSettings;->access$000(Landroid/view/View;I)V

    .line 110
    invoke-virtual/range {p0 .. p1}, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    .line 111
    instance-of v8, v7, Landroid/preference/PreferenceCategory;

    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/cootek/smartinput5/settings/SettingsIcons149;->dark(Landroid/content/Context;)Z

    move-result v9

    .line 113
    if-eqz v9, :cond_2

    const v10, -0x101011

    goto :goto_2

    :cond_2
    const v10, -0xdfdfe0

    :goto_2
    if-eqz v9, :cond_3

    const v11, -0x474748

    goto :goto_3

    :cond_3
    const v11, -0x99999a

    .line 114
    :goto_3
    instance-of v12, v0, Landroid/widget/TextView;

    if-eqz v12, :cond_4

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    goto :goto_4

    :cond_4
    const v12, 0x1020016

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 115
    :goto_4
    const v13, 0x1020010

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 116
    const/4 v15, 0x2

    const/4 v2, 0x0

    if-eqz v12, :cond_8

    .line 117
    if-eqz v8, :cond_5

    const/high16 v14, 0x41600000    # 14.0f

    goto :goto_5

    :cond_5
    const/high16 v16, 0x41800000    # 16.0f

    const/high16 v14, 0x41800000    # 16.0f

    :goto_5
    invoke-virtual {v12, v15, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 118
    if-eqz v8, :cond_7

    if-eqz v9, :cond_6

    const v10, -0xa64922

    goto :goto_6

    :cond_6
    const v10, -0xdb8661

    :cond_7
    :goto_6
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 121
    :cond_8
    if-eqz v13, :cond_9

    .line 122
    const/high16 v9, 0x41500000    # 13.0f

    invoke-virtual {v13, v15, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 125
    :cond_9
    invoke-static {v0}, Lcom/cootek/smartinput5/settings/CompactSettings;->access$100(Landroid/view/View;)V

    .line 126
    invoke-static {v0, v12, v13}, Lcom/cootek/smartinput5/settings/CompactSettings;->access$200(Landroid/view/View;Landroid/view/View;Landroid/view/View;)Z

    .line 127
    instance-of v9, v7, Landroid/preference/Preference;

    if-eqz v9, :cond_a

    move-object v10, v7

    check-cast v10, Landroid/preference/Preference;

    invoke-virtual {v10}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_a
    const/4 v10, 0x0

    .line 128
    :goto_7
    const-string v12, "tp_recent_category146"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 129
    if-eqz v8, :cond_d

    .line 130
    if-eqz v10, :cond_b

    const/16 v1, 0x26

    goto :goto_8

    :cond_b
    const/16 v1, 0x1a

    :goto_8
    int-to-float v1, v1

    mul-float v1, v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 131
    const/high16 v1, 0x41600000    # 14.0f

    mul-float v14, v4, v1

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-eqz v10, :cond_c

    const/16 v2, 0xc

    goto :goto_9

    :cond_c
    const/4 v2, 0x5

    :goto_9
    int-to-float v2, v2

    mul-float v2, v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 132
    invoke-static {v0, v10}, Lcom/cootek/smartinput5/settings/RecentSettings146;->separator(Landroid/view/View;Z)V

    .line 133
    return-object v0

    .line 135
    :cond_d
    invoke-static {v0, v2}, Lcom/cootek/smartinput5/settings/RecentSettings146;->separator(Landroid/view/View;Z)V

    .line 136
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v0, v2, v8, v10, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 137
    if-nez v1, :cond_e

    new-instance v1, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;-><init>(Landroid/content/Context;)V

    .line 138
    :cond_e
    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;->body(Landroid/view/View;)V

    const/high16 v2, 0x42380000    # 46.0f

    mul-float v4, v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;->setMinimumHeight(I)V

    .line 139
    if-eqz v9, :cond_f

    iget-object v2, v1, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v4, v7

    check-cast v4, Landroid/preference/Preference;

    invoke-static {v4}, Lcom/cootek/smartinput5/settings/SettingsIcons149;->name(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v11}, Lcom/cootek/smartinput5/settings/SettingsIcons149;->drawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    .line 140
    :cond_f
    iget-object v0, v1, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;->icon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    :goto_a
    if-eqz v9, :cond_10

    check-cast v7, Landroid/preference/Preference;

    invoke-virtual {v7}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    goto :goto_b

    :cond_10
    invoke-virtual/range {p0 .. p1}, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;->isEnabled(I)Z

    move-result v0

    .line 142
    :goto_b
    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;->setEnabled(Z)V

    .line 143
    iget-object v2, v1, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_11

    const/16 v0, 0xff

    goto :goto_c

    :cond_11
    const/16 v0, 0x6e

    :goto_c
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 144
    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;->source:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;->source:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;->source:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;->source:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;->source:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;->source:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;->source:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
