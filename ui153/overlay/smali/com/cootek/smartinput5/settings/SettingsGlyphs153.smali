.class public final Lcom/cootek/smartinput5/settings/SettingsGlyphs153;
.super Landroid/graphics/drawable/Drawable;
.source "SettingsGlyphs153.java"


# instance fields
.field private final name:Ljava/lang/String;

.field private final paint:Landroid/graphics/Paint;

.field private final size:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 17
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->paint:Landroid/graphics/Paint;

    .line 17
    iput-object p2, p0, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41b00000    # 22.0f

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->size:I

    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->paint:Landroid/graphics/Paint;

    const p2, 0x3fd33333    # 1.65f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->paint:Landroid/graphics/Paint;

    const-string p2, "sans-serif"

    const/4 p3, 0x0

    invoke-static {p2, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget p1, p0, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->size:I

    iget p2, p0, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->size:I

    invoke-virtual {p0, p3, p3, p1, p2}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->setBounds(IIII)V

    return-void
.end method

.method private arrow(Landroid/graphics/Canvas;FFF)V
    .locals 7

    .line 49
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->line(Landroid/graphics/Canvas;FFFF)V

    const/high16 p2, 0x40400000    # 3.0f

    sub-float v6, p4, p2

    sub-float v3, p3, p2

    move v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->line(Landroid/graphics/Canvas;FFFF)V

    add-float v3, p3, p2

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->line(Landroid/graphics/Canvas;FFFF)V

    return-void
.end method

.method private book(Landroid/graphics/Canvas;)V
    .locals 10

    .line 51
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    const/high16 v0, 0x40c00000    # 6.0f

    const/high16 v8, 0x41400000    # 12.0f

    invoke-virtual {v7, v8, v0}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v5, 0x40400000    # 3.0f

    const/high16 v6, 0x40a00000    # 5.0f

    const/high16 v1, 0x41000000    # 8.0f

    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v4, 0x40800000    # 4.0f

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v0, 0x40400000    # 3.0f

    const/high16 v1, 0x41980000    # 19.0f

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, 0x41a80000    # 21.0f

    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v2, 0x41900000    # 18.0f

    const/high16 v3, 0x41100000    # 9.0f

    const/high16 v4, 0x41900000    # 18.0f

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v5, 0x41a80000    # 21.0f

    const/high16 v6, 0x41980000    # 19.0f

    const/high16 v1, 0x41700000    # 15.0f

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v0, 0x40a00000    # 5.0f

    const/high16 v9, 0x41a80000    # 21.0f

    invoke-virtual {v7, v9, v0}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, 0x40c00000    # 6.0f

    const/high16 v1, 0x41900000    # 18.0f

    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v3, 0x41700000    # 15.0f

    const/high16 v4, 0x40400000    # 3.0f

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-direct {p0, p1, v7}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->path(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    return-void
.end method

.method static drawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 40
    if-eqz p1, :cond_0

    const-string v0, "smart-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;

    invoke-direct {v0, p0, p1, p2}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private line(Landroid/graphics/Canvas;FFFF)V
    .locals 8

    .line 45
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v7, p0, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static name(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 19
    const-string v0, "option_curve"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "smart-curve"

    return-object p0

    .line 20
    :cond_0
    const-string v0, "option_wave"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "smart-wave"

    return-object p0

    .line 21
    :cond_1
    const-string v0, "option_wave_without_next_word_on_candidate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "smart-wave-off"

    return-object p0

    .line 22
    :cond_2
    const-string v0, "option_predict"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "smart-t9"

    return-object p0

    .line 23
    :cond_3
    const-string v0, "option_auto_correction"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "smart-replace"

    return-object p0

    .line 24
    :cond_4
    const-string v0, "option_auto_save"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "smart-save"

    return-object p0

    .line 25
    :cond_5
    const-string v0, "smartdash"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "smart-dash"

    return-object p0

    .line 26
    :cond_6
    const-string v0, "option_auto_space"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "smart-space"

    return-object p0

    .line 27
    :cond_7
    const-string v0, "option_auto_capitalization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "smart-caps"

    return-object p0

    .line 28
    :cond_8
    const-string v0, "option_space_to_input_nextword"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "smart-next"

    return-object p0

    .line 29
    :cond_9
    const-string v0, "option_emoji_prediction"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "smart-emoji"

    return-object p0

    .line 30
    :cond_a
    const-string v0, "option_advanced_prediction"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "smart-context"

    return-object p0

    .line 31
    :cond_b
    const-string v0, "option_import_contact"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "smart-contacts"

    return-object p0

    .line 32
    :cond_c
    const-string v0, "option_manage_user_word"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p0, "smart-book"

    return-object p0

    .line 33
    :cond_d
    const-string v0, "option_edit_dictionary"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p0, "smart-import"

    return-object p0

    .line 34
    :cond_e
    const-string v0, "option_backup_dictionary"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p0, "smart-backup"

    return-object p0

    .line 35
    :cond_f
    const-string v0, "option_restore_dictionary"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p0, "smart-restore"

    return-object p0

    .line 36
    :cond_10
    const-string v0, "option_rebuild_language_data"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p0, "smart-repair"

    return-object p0

    .line 37
    :cond_11
    const-string v0, "option_clear_language_data"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const-string p0, "smart-clear"

    return-object p0

    .line 38
    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method private path(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private space(Landroid/graphics/Canvas;FFF)V
    .locals 2

    .line 48
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v1, 0x40400000    # 3.0f

    add-float/2addr v1, p3

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, p4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, p4, p3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-direct {p0, p1, v0}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->path(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    return-void
.end method

.method private text(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p5, p0, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p5, p0, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private wave(Landroid/graphics/Canvas;)V
    .locals 9

    .line 50
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x7

    add-int/lit8 v1, v1, 0x8

    int-to-float v8, v1

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v1, v2, v8}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v2, 0x40c00000    # 6.0f

    sub-float v4, v8, v2

    add-float v6, v8, v2

    const/high16 v7, 0x41a80000    # 21.0f

    const/high16 v3, 0x41100000    # 9.0f

    const/high16 v5, 0x41700000    # 15.0f

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-direct {p0, p1, v1}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->path(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 19

    .line 53
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41c00000    # 24.0f

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {v7, v1, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->name:Ljava/lang/String;

    const-string v1, "smart-curve"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    const/high16 v2, 0x41980000    # 19.0f

    const/high16 v9, 0x40c00000    # 6.0f

    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v10, 0x41900000    # 18.0f

    const/high16 v11, 0x40a00000    # 5.0f

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v17, 0x41980000    # 19.0f

    const/high16 v18, 0x40e00000    # 7.0f

    const/high16 v13, 0x41600000    # 14.0f

    const/high16 v14, 0x41880000    # 17.0f

    const/high16 v15, 0x41800000    # 16.0f

    const/high16 v16, 0x41400000    # 12.0f

    move-object v12, v0

    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-direct {v6, v7, v0}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->path(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    iget-object v0, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->paint:Landroid/graphics/Paint;

    const v4, 0x3fe66666    # 1.8f

    invoke-virtual {v7, v3, v2, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v11, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 55
    :cond_1
    iget-object v0, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->name:Ljava/lang/String;

    const-string v4, "smart-wave"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->name:Ljava/lang/String;

    const-string v4, "smart-wave-off"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 56
    :cond_2
    iget-object v0, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->name:Ljava/lang/String;

    const-string v4, "smart-t9"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v4, 0x40600000    # 3.5f

    if-eqz v0, :cond_3

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x41a40000    # 20.5f

    invoke-direct {v0, v4, v4, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v7, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/high16 v4, 0x41880000    # 17.0f

    const/high16 v5, 0x41600000    # 14.0f

    const-string v2, "A"

    const/high16 v3, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->text(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto/16 :goto_2

    .line 57
    :cond_3
    iget-object v0, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->name:Ljava/lang/String;

    const-string v5, "smart-replace"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v5, 0x40d00000    # 6.5f

    if-eqz v0, :cond_4

    .line 58
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v9, v11, v5}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v17, 0x41980000    # 19.0f

    const/high16 v18, 0x40d00000    # 6.5f

    const/high16 v13, 0x41000000    # 8.0f

    const/high16 v14, 0x40000000    # 2.0f

    const/high16 v15, 0x41800000    # 16.0f

    const/high16 v16, 0x40000000    # 2.0f

    move-object v12, v9

    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-direct {v6, v7, v9}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->path(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    const/high16 v4, 0x40b00000    # 5.5f

    const/high16 v5, 0x40400000    # 3.0f

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, 0x40d00000    # 6.5f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->line(Landroid/graphics/Canvas;FFFF)V

    const/high16 v4, 0x41080000    # 8.5f

    const/high16 v5, 0x40d00000    # 6.5f

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->line(Landroid/graphics/Canvas;FFFF)V

    .line 59
    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    const/high16 v0, 0x418c0000    # 17.5f

    invoke-virtual {v9, v11, v0}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v18, 0x418c0000    # 17.5f

    const/high16 v14, 0x41b00000    # 22.0f

    const/high16 v16, 0x41b00000    # 22.0f

    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-direct {v6, v7, v9}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->path(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    const/high16 v4, 0x41940000    # 18.5f

    const/high16 v5, 0x41a80000    # 21.0f

    const/high16 v2, 0x41980000    # 19.0f

    const/high16 v3, 0x418c0000    # 17.5f

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->line(Landroid/graphics/Canvas;FFFF)V

    const/high16 v4, 0x41780000    # 15.5f

    const/high16 v5, 0x418c0000    # 17.5f

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->line(Landroid/graphics/Canvas;FFFF)V

    .line 60
    const/high16 v5, 0x41280000    # 10.5f

    const-string v2, "\u0410"

    const/high16 v3, 0x40d00000    # 6.5f

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->text(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    const/high16 v5, 0x41400000    # 12.0f

    const-string v2, "\u043e"

    const/high16 v3, 0x418c0000    # 17.5f

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->text(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    .line 61
    goto/16 :goto_2

    :cond_4
    iget-object v0, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->name:Ljava/lang/String;

    const-string v12, "smart-save"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v12, 0x41880000    # 17.0f

    const/high16 v13, 0x41a80000    # 21.0f

    const/high16 v14, 0x40400000    # 3.0f

    if-nez v0, :cond_11

    iget-object v0, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->name:Ljava/lang/String;

    const-string v15, "smart-backup"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_0

    .line 63
    :cond_5
    iget-object v0, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->name:Ljava/lang/String;

    const-string v1, "smart-dash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v15, 0x41600000    # 14.0f

    if-eqz v0, :cond_6

    const/high16 v4, 0x41700000    # 15.0f

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v2, 0x41100000    # 9.0f

    const/high16 v3, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->line(Landroid/graphics/Canvas;FFFF)V

    invoke-direct {v6, v7, v14, v15, v9}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->space(Landroid/graphics/Canvas;FFF)V

    invoke-direct {v6, v7, v10, v15, v13}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->space(Landroid/graphics/Canvas;FFF)V

    goto/16 :goto_2

    .line 64
    :cond_6
    iget-object v0, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->name:Ljava/lang/String;

    const-string v1, "smart-space"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    const/high16 v15, 0x41000000    # 8.0f

    if-eqz v0, :cond_7

    invoke-direct {v6, v7, v14, v1, v13}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->space(Landroid/graphics/Canvas;FFF)V

    invoke-direct {v6, v7, v15, v15, v12}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->arrow(Landroid/graphics/Canvas;FFF)V

    goto/16 :goto_2

    .line 65
    :cond_7
    iget-object v0, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->name:Ljava/lang/String;

    const-string v4, "smart-caps"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/high16 v4, 0x41900000    # 18.0f

    const/high16 v5, 0x41600000    # 14.0f

    const-string v2, "a"

    const/high16 v3, 0x40e00000    # 7.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->text(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    const/high16 v5, 0x41880000    # 17.0f

    const-string v2, "A"

    const/high16 v3, 0x41880000    # 17.0f

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->text(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto/16 :goto_2

    .line 66
    :cond_8
    iget-object v0, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->name:Ljava/lang/String;

    const-string v4, "smart-next"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v4, 0x41400000    # 12.0f

    const/high16 v5, 0x41100000    # 9.0f

    if-eqz v0, :cond_9

    invoke-direct {v6, v7, v14, v12, v13}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->space(Landroid/graphics/Canvas;FFF)V

    invoke-direct {v6, v7, v14, v5, v4}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->arrow(Landroid/graphics/Canvas;FFF)V

    const/high16 v4, 0x41a80000    # 21.0f

    const/high16 v5, 0x41100000    # 9.0f

    const/high16 v2, 0x41880000    # 17.0f

    const/high16 v3, 0x41100000    # 9.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->line(Landroid/graphics/Canvas;FFFF)V

    goto/16 :goto_2

    .line 67
    :cond_9
    iget-object v0, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->name:Ljava/lang/String;

    const-string v14, "smart-emoji"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v4, v15, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v0, 0x3f59999a    # 0.85f

    iget-object v1, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5, v5, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v7, v2, v5, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/RectF;

    const/high16 v0, 0x40e00000    # 7.0f

    invoke-direct {v1, v0, v15, v12, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v4, 0x0

    iget-object v5, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x41c80000    # 25.0f

    const/high16 v3, 0x43020000    # 130.0f

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 68
    :cond_a
    iget-object v0, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->name:Ljava/lang/String;

    const-string v5, "smart-context"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v5, 0x41b00000    # 22.0f

    const/high16 v14, 0x41500000    # 13.0f

    if-eqz v0, :cond_b

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v11, v3}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v13, v3, v13, v9}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {v0, v13, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v13, v10, v2, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {v0, v2, v10}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v11, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v11, v10}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v0, v2, v10, v2, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {v0, v2, v9}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v2, v3, v11, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-direct {v6, v7, v0}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->path(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    const/high16 v5, 0x41300000    # 11.0f

    const/high16 v9, 0x41000000    # 8.0f

    const/high16 v2, 0x40e00000    # 7.0f

    const/high16 v3, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/high16 v11, 0x41400000    # 12.0f

    move v4, v5

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->line(Landroid/graphics/Canvas;FFFF)V

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v3, 0x41400000    # 12.0f

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->line(Landroid/graphics/Canvas;FFFF)V

    invoke-direct {v6, v7, v14, v11, v10}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->arrow(Landroid/graphics/Canvas;FFF)V

    goto/16 :goto_2

    .line 69
    :cond_b
    iget-object v0, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->name:Ljava/lang/String;

    const-string v1, "smart-contacts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/high16 v0, 0x41200000    # 10.0f

    iget-object v1, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x40d00000    # 6.5f

    const/high16 v3, 0x40600000    # 3.5f

    invoke-virtual {v7, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1, v13}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v14, v2, v14}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {v0, v12, v14, v12, v13}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    invoke-direct {v6, v7, v0}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->path(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    const/high16 v4, 0x41a00000    # 20.0f

    const/high16 v5, 0x41a00000    # 20.0f

    const/high16 v2, 0x41a00000    # 20.0f

    const/high16 v3, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->line(Landroid/graphics/Canvas;FFFF)V

    const/high16 v2, 0x41880000    # 17.0f

    const/high16 v3, 0x41880000    # 17.0f

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->line(Landroid/graphics/Canvas;FFFF)V

    const/high16 v2, 0x41b80000    # 23.0f

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->line(Landroid/graphics/Canvas;FFFF)V

    goto/16 :goto_2

    .line 70
    :cond_c
    iget-object v0, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->name:Ljava/lang/String;

    const-string v1, "smart-book"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct/range {p0 .. p1}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->book(Landroid/graphics/Canvas;)V

    const/high16 v4, 0x41b00000    # 22.0f

    const/high16 v5, 0x41700000    # 15.0f

    const/high16 v2, 0x41800000    # 16.0f

    const/high16 v3, 0x41a80000    # 21.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->line(Landroid/graphics/Canvas;FFFF)V

    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v5, 0x41a80000    # 21.0f

    const/high16 v2, 0x41600000    # 14.0f

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->line(Landroid/graphics/Canvas;FFFF)V

    goto/16 :goto_2

    .line 71
    :cond_d
    iget-object v0, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->name:Ljava/lang/String;

    const-string v1, "smart-import"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v2, v12}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    invoke-direct {v6, v7, v0}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->path(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    const/high16 v4, 0x41700000    # 15.0f

    const/high16 v5, 0x40e00000    # 7.0f

    const/high16 v2, 0x41700000    # 15.0f

    const/high16 v3, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->line(Landroid/graphics/Canvas;FFFF)V

    const/high16 v4, 0x41980000    # 19.0f

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->line(Landroid/graphics/Canvas;FFFF)V

    const/high16 v4, 0x41400000    # 12.0f

    const/high16 v5, 0x41b00000    # 22.0f

    const/high16 v2, 0x41400000    # 12.0f

    const/high16 v3, 0x41400000    # 12.0f

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->line(Landroid/graphics/Canvas;FFFF)V

    const/high16 v2, 0x41000000    # 8.0f

    const/high16 v3, 0x41900000    # 18.0f

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->line(Landroid/graphics/Canvas;FFFF)V

    const/high16 v2, 0x41800000    # 16.0f

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->line(Landroid/graphics/Canvas;FFFF)V

    goto/16 :goto_2

    .line 72
    :cond_e
    iget-object v0, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->name:Ljava/lang/String;

    const-string v1, "smart-restore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct/range {p0 .. p1}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->book(Landroid/graphics/Canvas;)V

    const/high16 v4, 0x41880000    # 17.0f

    const/high16 v5, 0x41600000    # 14.0f

    const/high16 v2, 0x41880000    # 17.0f

    const/high16 v3, 0x41b00000    # 22.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->line(Landroid/graphics/Canvas;FFFF)V

    const/high16 v2, 0x41600000    # 14.0f

    const/high16 v3, 0x41880000    # 17.0f

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->line(Landroid/graphics/Canvas;FFFF)V

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->line(Landroid/graphics/Canvas;FFFF)V

    goto/16 :goto_2

    .line 73
    :cond_f
    iget-object v0, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->name:Ljava/lang/String;

    const-string v1, "smart-repair"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct/range {p0 .. p1}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->book(Landroid/graphics/Canvas;)V

    new-instance v1, Landroid/graphics/RectF;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-direct {v1, v0, v0, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v4, 0x0

    iget-object v5, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x42340000    # 45.0f

    const/high16 v3, 0x43870000    # 270.0f

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/high16 v4, 0x41900000    # 18.0f

    const/high16 v5, 0x41700000    # 15.0f

    const/high16 v2, 0x41a80000    # 21.0f

    const/high16 v3, 0x41700000    # 15.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->line(Landroid/graphics/Canvas;FFFF)V

    goto/16 :goto_2

    .line 74
    :cond_10
    iget-object v0, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->name:Ljava/lang/String;

    const-string v1, "smart-clear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct/range {p0 .. p1}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->book(Landroid/graphics/Canvas;)V

    const/high16 v4, 0x41b00000    # 22.0f

    const/high16 v5, 0x41b00000    # 22.0f

    const/high16 v2, 0x41800000    # 16.0f

    const/high16 v3, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->line(Landroid/graphics/Canvas;FFFF)V

    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->line(Landroid/graphics/Canvas;FFFF)V

    goto :goto_2

    .line 62
    :cond_11
    :goto_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, v12, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v1, v9}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v1, v13}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v3, v13}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    invoke-direct {v6, v7, v0}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->path(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    const/high16 v4, 0x41100000    # 9.0f

    iget-object v5, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40e00000    # 7.0f

    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x41700000    # 15.0f

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x41900000    # 18.0f

    iget-object v5, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41000000    # 8.0f

    const/high16 v2, 0x41600000    # 14.0f

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 63
    goto :goto_2

    .line 55
    :cond_12
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->wave(Landroid/graphics/Canvas;)V

    iget-object v0, v6, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->name:Ljava/lang/String;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/high16 v4, 0x41a00000    # 20.0f

    const/high16 v5, 0x40400000    # 3.0f

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, 0x41a80000    # 21.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->line(Landroid/graphics/Canvas;FFFF)V

    .line 75
    :cond_13
    :goto_2
    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 76
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->size:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->size:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 42
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lcom/cootek/smartinput5/settings/SettingsGlyphs153;->invalidateSelf()V

    return-void
.end method
