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

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;->source:Landroid/widget/ListAdapter;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;->source:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;->source:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;->source:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;->source:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;->source:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19

    .line 108
    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 109
    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v1, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;->body:Landroid/view/View;

    .line 110
    :goto_1
    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;->source:Landroid/widget/ListAdapter;

    move/from16 v5, p1

    move-object/from16 v6, p3

    invoke-interface {v4, v5, v0, v6}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 112
    const/high16 v6, 0x40400000    # 3.0f

    mul-float v6, v6, v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v0, v7}, Lcom/cootek/smartinput5/settings/CompactSettings;->access$000(Landroid/view/View;I)V

    .line 113
    invoke-virtual/range {p0 .. p1}, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    .line 114
    instance-of v8, v7, Landroid/preference/PreferenceCategory;

    .line 115
    instance-of v9, v7, Landroid/preference/Preference;

    if-eqz v9, :cond_2

    move-object v10, v7

    check-cast v10, Landroid/preference/Preference;

    invoke-virtual {v10}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 116
    :goto_2
    if-eqz v9, :cond_3

    move-object v5, v7

    check-cast v5, Landroid/preference/Preference;

    invoke-virtual {v5}, Landroid/preference/Preference;->isEnabled()Z

    move-result v5

    goto :goto_3

    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;->isEnabled(I)Z

    move-result v5

    .line 117
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/cootek/smartinput5/settings/SettingsIcons149;->dark(Landroid/content/Context;)Z

    move-result v11

    .line 118
    if-eqz v11, :cond_4

    const v12, -0x101011

    goto :goto_4

    :cond_4
    const v12, -0xdfdfe0

    :goto_4
    if-eqz v11, :cond_5

    const v13, -0x474748

    goto :goto_5

    :cond_5
    const v13, -0x99999a

    .line 119
    :goto_5
    instance-of v14, v0, Landroid/widget/TextView;

    if-eqz v14, :cond_6

    move-object v14, v0

    check-cast v14, Landroid/widget/TextView;

    goto :goto_6

    :cond_6
    const v14, 0x1020016

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 120
    :goto_6
    const v15, 0x1020010

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 121
    const v16, -0x888889

    const/high16 v17, 0x41600000    # 14.0f

    if-eqz v14, :cond_b

    .line 122
    if-eqz v8, :cond_7

    const/high16 v2, 0x41600000    # 14.0f

    goto :goto_7

    :cond_7
    const/high16 v18, 0x41800000    # 16.0f

    const/high16 v2, 0x41800000    # 16.0f

    :goto_7
    const/4 v3, 0x2

    invoke-virtual {v14, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 123
    if-eqz v8, :cond_9

    if-eqz v11, :cond_8

    const v12, -0xa64922

    goto :goto_8

    :cond_8
    const v12, -0xdb8661

    goto :goto_8

    :cond_9
    if-eqz v5, :cond_a

    goto :goto_8

    :cond_a
    const v12, -0x888889

    :goto_8
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 126
    :cond_b
    if-eqz v15, :cond_e

    .line 127
    const/high16 v2, 0x41500000    # 13.0f

    const/4 v3, 0x2

    invoke-virtual {v15, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v5, :cond_c

    move v2, v13

    goto :goto_9

    :cond_c
    const v2, -0x888889

    :goto_9
    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    invoke-static {v10}, Lcom/cootek/smartinput5/settings/SmartInput153;->ownRow(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 129
    :cond_d
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 131
    :cond_e
    invoke-static {v0}, Lcom/cootek/smartinput5/settings/CompactSettings;->access$100(Landroid/view/View;)V

    .line 132
    invoke-static {v0, v14, v15}, Lcom/cootek/smartinput5/settings/CompactSettings;->access$200(Landroid/view/View;Landroid/view/View;Landroid/view/View;)Z

    .line 133
    if-eqz v9, :cond_f

    move-object v2, v7

    check-cast v2, Landroid/preference/Preference;

    goto :goto_a

    :cond_f
    const/4 v2, 0x0

    :goto_a
    invoke-static {v2, v14}, Lcom/cootek/smartinput5/settings/KeyboardActivation152;->bindTitle(Landroid/preference/Preference;Landroid/widget/TextView;)V

    .line 134
    const-string v2, "tp_recent_category146"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v10}, Lcom/cootek/smartinput5/settings/SmartInput153;->ownHeading(Ljava/lang/String;)Z

    move-result v3

    .line 135
    if-eqz v8, :cond_14

    .line 136
    if-nez v2, :cond_11

    if-eqz v3, :cond_10

    goto :goto_b

    :cond_10
    const/16 v1, 0x1a

    goto :goto_c

    :cond_11
    :goto_b
    const/16 v1, 0x26

    :goto_c
    int-to-float v1, v1

    mul-float v1, v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 137
    mul-float v17, v17, v4

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-nez v2, :cond_13

    if-eqz v3, :cond_12

    goto :goto_d

    :cond_12
    const/4 v3, 0x5

    goto :goto_e

    :cond_13
    :goto_d
    const/16 v3, 0xc

    :goto_e
    int-to-float v3, v3

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 138
    invoke-static {v0, v2}, Lcom/cootek/smartinput5/settings/RecentSettings146;->separator(Landroid/view/View;Z)V

    .line 139
    invoke-static {v0, v10}, Lcom/cootek/smartinput5/settings/SmartInput153;->heading(Landroid/view/View;Ljava/lang/String;)V

    .line 140
    return-object v0

    .line 142
    :cond_14
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/cootek/smartinput5/settings/RecentSettings146;->separator(Landroid/view/View;Z)V

    .line 143
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/cootek/smartinput5/settings/SmartInput153;->heading(Landroid/view/View;Ljava/lang/String;)V

    .line 144
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v0, v2, v3, v8, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 145
    if-nez v1, :cond_15

    new-instance v1, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;-><init>(Landroid/content/Context;)V

    .line 146
    :cond_15
    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;->body(Landroid/view/View;)V

    const/high16 v2, 0x42380000    # 46.0f

    mul-float v4, v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;->setMinimumHeight(I)V

    .line 147
    if-eqz v9, :cond_17

    iget-object v2, v1, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "tp_enable_touchpal152"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, "keyboard"

    goto :goto_f

    :cond_16
    check-cast v7, Landroid/preference/Preference;

    invoke-static {v7}, Lcom/cootek/smartinput5/settings/SettingsIcons149;->name(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v3

    :goto_f
    invoke-static {v0, v3, v13}, Lcom/cootek/smartinput5/settings/SettingsIcons149;->drawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_10

    .line 148
    :cond_17
    iget-object v0, v1, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;->icon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    :goto_10
    invoke-virtual {v1, v5}, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;->setEnabled(Z)V

    .line 150
    iget-object v0, v1, Lcom/cootek/smartinput5/settings/CompactSettings$RowFrame;->icon:Landroid/widget/ImageView;

    if-eqz v5, :cond_18

    const/16 v2, 0xff

    goto :goto_11

    :cond_18
    const/16 v2, 0x6e

    :goto_11
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 151
    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;->source:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;->source:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;->source:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;->source:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;->source:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;->source:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/CompactSettings$Rows;->source:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
