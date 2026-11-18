.class public Lcom/cootek/smartinput5/ui/T;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cootek/smartinput5/ui/q$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput5/ui/T$b;
    }
.end annotation


# static fields
.field public static final BACKGROUND_CLEAN:I = 0x3

.field public static final BACKGROUND_FUN:I = 0x1

.field public static final BACKGROUND_FUN_HIGHLIGHT:I = 0x2

.field public static final BACKGROUND_NORMAL:I = 0x0

.field public static final BACKGROUND_PLACE:I = 0x4

.field protected static final BIN_TYPE_DICT:I = 0x0

.field protected static final BIN_TYPE_UNDEFINE:I = -0x1

.field private static final COUNT:I = 0x3

.field static final CURVE_TIMEOUT:J = 0x12cL

.field private static final DOUBLE_CLICK_TIME_OUT:J = 0x1f4L

.field private static final DOUBLE_CLICK_TIME_OUT_SHIFT:I = 0x12c

.field static final FOREICON_SCALE_TYPE_CENTER:I = 0x0

.field static final FOREICON_SCALE_TYPE_FIT_CENTER:I = 0x1

.field static final FOREICON_SCALE_TYPE_FIT_END:I = 0x2

.field public static final FORE_TEXTCOLOR_FUN:I = 0x1

.field public static final FORE_TEXTCOLOR_HIGHLIGHT:I = 0x2

.field public static final FORE_TEXTCOLOR_NONE:I = 0x0

.field private static final KEY_ICON_CONSTANT_RATIO:D = 1.0

.field protected static final LONGPRESS_MULTI_THRESHOLD:I = 0x1f4

.field private static final MAX_DIS:I = 0x3fffffff

.field public static final NORMAL_KEY_MATCH:Ljava/lang/String; = "(sk|sk_sub)_[0-9]+_[0-9]+|(sk_num_[0-9]+)"

.field public static final NOT_AN_ID_KEY:I = -0x1

.field static final NOT_NEW_FUNCTION:Z = false

.field static final NO_DISPLAY_LIMIT:I = -0x1

.field private static final PATTERN_NORMAL_KEY:Ljava/util/regex/Pattern;

.field private static final POPUP_PREVIEW_CONTENT_WRAPCONTENT:I = -0x1

.field public static final PREVIEW_ICONCOLOR_NONE:I = 0x0

.field public static final PREVIEW_ICON_PREVIEWTEXT_NORMAL:I = 0x1

.field private static final QUADRANT_1:I = 0x0

.field private static final QUADRANT_2:I = 0x1

.field private static final QUADRANT_3:I = 0x2

.field private static final QUADRANT_4:I = 0x3

.field protected static final STATE_BIN_OFF_CURRENT:[I

.field protected static final STATE_BIN_OFF_DEFAULT:[I

.field protected static final STATE_BIN_ON_CURRENT:[I

.field protected static final STATE_BIN_ON_DEFAULT:[I

.field protected static final STATE_FOCUSED:[I

.field protected static final STATE_PRESSED:[I

.field protected static final STATE_TRI_FORTH_CURRENT:[I

.field protected static final STATE_TRI_FORTH_DEFAULT:[I

.field protected static final STATE_TRI_LOCK_CURRENT:[I

.field protected static final STATE_TRI_LOCK_DEFAULT:[I

.field protected static final STATE_TRI_NONE_CURRENT:[I

.field protected static final STATE_TRI_NONE_DEFAULT:[I

.field protected static final STATE_TRI_TOGGLE_CURRENT:[I

.field protected static final STATE_TRI_TOGGLE_DEFAULT:[I

.field private static final TAG:Ljava/lang/String; = "SoftKey"

.field public static final TRACE_TYPE_CURVE:I = 0x11

.field private static final TRI_FROM_OKINAWA:I = 0x2

.field private static final TRI_STATUS_LOCKED:I = 0x3

.field private static final TRI_STATUS_NORMAL:I = 0x1

.field private static final TRI_STATUS_TOGGLED:I = 0x2

.field private static final TRI_TYPE_HINDISHIFT:I = 0x2

.field private static final TRI_TYPE_LOCK:I = 0x4

.field private static final TRI_TYPE_OPT_CURVE:I = 0x3

.field private static final TRI_TYPE_SEPERATOR:I = 0x1

.field private static final TRI_TYPE_SHIFT:I = 0x0

.field protected static final TRI_TYPE_UNDEFINE:I = -0x1

.field static final USE_DEFAULT:I = -0x1

.field public static final WORD_SPLIT_SEPARATOR:Ljava/lang/String; = " "

.field public static final ZERO_WIDTH_NON_JOINER:Ljava/lang/String; = "\u200c"

.field private static final action:[[I

.field private static final denominator:[I

.field static lastInputKey:Lcom/cootek/smartinput5/ui/T;

.field static lastInputKeyClickTime:J

.field private static final param:[[I

.field static final sBackgroundMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sBinTypeMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final sForeIconMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final sForeTextColorMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final sPreviewIconColorMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTriTypeMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final HEIGHT_THRESHOLD:I

.field private final WIDTH_THRESHOLD:I

.field allowMultiLine:Z

.field altTextInCorner:Z

.field altTextPos:Landroid/graphics/Point;

.field altTextSize:I

.field altTextXAlign:Landroid/graphics/Paint$Align;

.field altTextYAlign:Landroid/graphics/Paint$Align;

.field public altTitlePreviewOnly:Z

.field background:Landroid/graphics/drawable/Drawable;

.field backgroundType:I

.field dis:[I

.field disSupport:[I

.field public displaySplit:Z

.field private downX:I

.field private downY:I

.field public edgeFlags:I

.field foreIconType:I

.field public foreTextColor:I

.field public foreTextColorType:I

.field gap:I

.field public hasLongPressIcon:Z

.field public height:I

.field icon:Landroid/graphics/drawable/Drawable;

.field iconPreview:Landroid/graphics/drawable/Drawable;

.field public iconPreviewColorType:I

.field iconPreviewRight:Landroid/graphics/drawable/Drawable;

.field public iconWithMainTitle:Z

.field public identifyId:Ljava/lang/String;

.field intTag:I

.field isMultiLineMode:Z

.field public keyName:Ljava/lang/String;

.field leftTextPos:Landroid/graphics/Point;

.field lineInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field longPressIcon:Landroid/graphics/drawable/Drawable;

.field mActionListener:Lcom/cootek/smartinput5/ui/T$b;

.field protected mBinType:I

.field private mCachable:Z

.field mCombineFlag:I

.field private mComputedRightNow:Z

.field protected mCurrentDrawableState:[I

.field private mCurveKeyId:I

.field private mCurvePoints:Lcom/cootek/smartinput5/engine/MoveContrail;

.field mDisplayType:I

.field mExtendSurfaceType:I

.field mFunctionSettingId:Ljava/lang/String;

.field private mIgnoreCurve:Z

.field private mIgnoreSlip:Z

.field private mIgnoreStroke:Z

.field private mInThreshold:Z

.field public mKeyAltTextColor:I

.field public mKeyBackground:Landroid/graphics/drawable/Drawable;

.field public mKeyMainTextColor:I

.field mKeyboard:Lcom/cootek/smartinput5/ui/W;

.field private mLastPointX:I

.field private mLastPointY:I

.field private mLastPreviewOperation:I

.field private mLastShiftStatus:I

.field private mListening:Z

.field private mLongPressPendingState:Z

.field private mLongPressType:I

.field private mLongPressed:Z

.field private mLongpressThreshold:I

.field mMaxDisplay:I

.field mMoveContrail:Lcom/cootek/smartinput5/engine/MoveContrail;

.field mMovePointCount:I

.field mParentRow:Lcom/cootek/smartinput5/ui/a0;

.field private mPressed:Z

.field private mRendingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/cootek/smartinput5/ui/K;",
            ">;"
        }
    .end annotation
.end field

.field private mSlideThresholdSquare:I

.field mSoftKeyDrawInfo:Lcom/cootek/smartinput5/ui/U;

.field mSoftKeyInfo:Lcom/cootek/smartinput5/ui/SoftKeyInfo;

.field private mStartWaveFromGesture:Z

.field private mSupportCustomSkin:Z

.field protected mSupportPreviewPopup:Z

.field private mTraceCurveInTime:Z

.field private mTraceLongPress:Z

.field private mTraceSlide:Z

.field protected mTriType:I

.field mainOnlyAdjustedTextSize:I

.field mainOnlyTextSize:I

.field mainTextPos:Landroid/graphics/Point;

.field mainTextSize:I

.field mainTextXAlign:Landroid/graphics/Paint$Align;

.field mainTextYAlign:Landroid/graphics/Paint$Align;

.field public mainTitleRef:Ljava/lang/String;

.field rightTextPos:Landroid/graphics/Point;

.field splitWord:Z

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v0, [I

    const v3, 0x10100a7

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput v3, v2, v4

    sput-object v2, Lcom/cootek/smartinput5/ui/T;->STATE_PRESSED:[I

    new-array v2, v0, [I

    const v3, 0x101009c

    aput v3, v2, v4

    sput-object v2, Lcom/cootek/smartinput5/ui/T;->STATE_FOCUSED:[I

    new-array v2, v0, [I

    const v3, 0x7f0401f2

    aput v3, v2, v4

    sput-object v2, Lcom/cootek/smartinput5/ui/T;->STATE_TRI_NONE_DEFAULT:[I

    new-array v2, v0, [I

    const v6, 0x7f0401f3

    aput v6, v2, v4

    sput-object v2, Lcom/cootek/smartinput5/ui/T;->STATE_TRI_TOGGLE_DEFAULT:[I

    new-array v2, v0, [I

    const v7, 0x7f0401f1

    aput v7, v2, v4

    sput-object v2, Lcom/cootek/smartinput5/ui/T;->STATE_TRI_LOCK_DEFAULT:[I

    new-array v2, v0, [I

    const v8, 0x7f0401f0

    aput v8, v2, v4

    sput-object v2, Lcom/cootek/smartinput5/ui/T;->STATE_TRI_FORTH_DEFAULT:[I

    new-array v2, v0, [I

    const v9, 0x7f0401ec

    aput v9, v2, v4

    sput-object v2, Lcom/cootek/smartinput5/ui/T;->STATE_BIN_ON_DEFAULT:[I

    new-array v2, v0, [I

    const v10, 0x7f0401eb

    aput v10, v2, v4

    sput-object v2, Lcom/cootek/smartinput5/ui/T;->STATE_BIN_OFF_DEFAULT:[I

    new-array v2, v0, [I

    aput v3, v2, v4

    sput-object v2, Lcom/cootek/smartinput5/ui/T;->STATE_TRI_NONE_CURRENT:[I

    new-array v2, v0, [I

    aput v6, v2, v4

    sput-object v2, Lcom/cootek/smartinput5/ui/T;->STATE_TRI_TOGGLE_CURRENT:[I

    new-array v2, v0, [I

    aput v7, v2, v4

    sput-object v2, Lcom/cootek/smartinput5/ui/T;->STATE_TRI_LOCK_CURRENT:[I

    new-array v2, v0, [I

    aput v8, v2, v4

    sput-object v2, Lcom/cootek/smartinput5/ui/T;->STATE_TRI_FORTH_CURRENT:[I

    new-array v2, v0, [I

    aput v9, v2, v4

    sput-object v2, Lcom/cootek/smartinput5/ui/T;->STATE_BIN_ON_CURRENT:[I

    new-array v2, v0, [I

    aput v10, v2, v4

    sput-object v2, Lcom/cootek/smartinput5/ui/T;->STATE_BIN_OFF_CURRENT:[I

    const-string v2, "(sk|sk_sub)_[0-9]+_[0-9]+|(sk_num_[0-9]+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lcom/cootek/smartinput5/ui/T;->PATTERN_NORMAL_KEY:Ljava/util/regex/Pattern;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    sput-object v2, Lcom/cootek/smartinput5/ui/T;->sBackgroundMap:Ljava/util/Hashtable;

    const-string v3, "normal"

    invoke-virtual {v2, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "fun"

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "fun_highlight"

    invoke-virtual {v2, v8, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "place"

    invoke-virtual {v2, v10, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    sput-object v2, Lcom/cootek/smartinput5/ui/T;->sForeTextColorMap:Ljava/util/Hashtable;

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "highlight"

    invoke-virtual {v2, v3, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    sput-object v2, Lcom/cootek/smartinput5/ui/T;->sForeIconMap:Ljava/util/Hashtable;

    const-string v3, "center"

    invoke-virtual {v2, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "fitCenter"

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "fitEnd"

    invoke-virtual {v2, v3, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    sput-object v2, Lcom/cootek/smartinput5/ui/T;->sTriTypeMap:Ljava/util/Hashtable;

    const-string v3, "shift"

    invoke-virtual {v2, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "separator"

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "hindishift"

    invoke-virtual {v2, v3, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v10, "opt_curve"

    invoke-virtual {v2, v10, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "lock"

    invoke-virtual {v2, v7, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    sput-object v2, Lcom/cootek/smartinput5/ui/T;->sBinTypeMap:Ljava/util/Hashtable;

    const-string v7, "dict"

    invoke-virtual {v2, v7, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    sput-object v2, Lcom/cootek/smartinput5/ui/T;->sPreviewIconColorMap:Ljava/util/Hashtable;

    const-string v5, "preview_text_normal"

    invoke-virtual {v2, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v3, [[I

    new-array v2, v6, [I

    fill-array-data v2, :array_0

    aput-object v2, v1, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v0

    new-array v2, v6, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v6

    sput-object v1, Lcom/cootek/smartinput5/ui/T;->param:[[I

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    sput-object v1, Lcom/cootek/smartinput5/ui/T;->denominator:[I

    new-array v1, v8, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v1, v4

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v1, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_6

    aput-object v0, v1, v6

    new-array v0, v3, [I

    fill-array-data v0, :array_7

    aput-object v0, v1, v3

    sput-object v1, Lcom/cootek/smartinput5/ui/T;->action:[[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x7
        0xb
        0x5
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xa
        0x5
    .end array-data

    :array_6
    .array-data 4
        0x6
        0x8
        0x4
    .end array-data

    :array_7
    .array-data 4
        0x7
        0x9
        0x4
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/cootek/smartinput5/ui/W;Lcom/cootek/smartinput5/ui/a0;IILcom/cootek/smartinput5/ui/schema/b;Lcom/cootek/smartinput5/ui/t0/f;Lcom/cootek/smartinput5/ui/t0/a;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v12, -0x1

    iput v12, v1, Lcom/cootek/smartinput5/ui/T;->mainOnlyAdjustedTextSize:I

    const/4 v13, 0x0

    iput v13, v1, Lcom/cootek/smartinput5/ui/T;->mLastShiftStatus:I

    iput v13, v1, Lcom/cootek/smartinput5/ui/T;->iconPreviewColorType:I

    iput-boolean v13, v1, Lcom/cootek/smartinput5/ui/T;->mTraceSlide:Z

    iput-boolean v13, v1, Lcom/cootek/smartinput5/ui/T;->mLongPressed:Z

    iput-boolean v13, v1, Lcom/cootek/smartinput5/ui/T;->mTraceLongPress:Z

    const/4 v14, 0x1

    iput-boolean v14, v1, Lcom/cootek/smartinput5/ui/T;->mSupportPreviewPopup:Z

    iput-boolean v14, v1, Lcom/cootek/smartinput5/ui/T;->mSupportCustomSkin:Z

    iput v12, v1, Lcom/cootek/smartinput5/ui/T;->mLastPreviewOperation:I

    iput-boolean v13, v1, Lcom/cootek/smartinput5/ui/T;->mLongPressPendingState:Z

    iput v13, v1, Lcom/cootek/smartinput5/ui/T;->foreTextColorType:I

    iput v13, v1, Lcom/cootek/smartinput5/ui/T;->foreTextColor:I

    iput v13, v1, Lcom/cootek/smartinput5/ui/T;->mMovePointCount:I

    const/4 v4, 0x3

    new-array v5, v4, [I

    iput-object v5, v1, Lcom/cootek/smartinput5/ui/T;->dis:[I

    new-array v4, v4, [I

    iput-object v4, v1, Lcom/cootek/smartinput5/ui/T;->disSupport:[I

    iput-boolean v13, v1, Lcom/cootek/smartinput5/ui/T;->mTraceCurveInTime:Z

    iput-object v2, v1, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iput-object v3, v1, Lcom/cootek/smartinput5/ui/T;->mParentRow:Lcom/cootek/smartinput5/ui/a0;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/cootek/smartinput5/ui/a0;->i:Lcom/cootek/smartinput5/ui/T;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/cootek/smartinput5/ui/W;->H:Lcom/cootek/smartinput5/ui/T;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-direct {v1, v3}, Lcom/cootek/smartinput5/ui/T;->copyFromParent(Lcom/cootek/smartinput5/ui/T;)V

    new-instance v8, Lcom/cootek/smartinput5/ui/f0;

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-direct {v8, v2}, Lcom/cootek/smartinput5/ui/f0;-><init>(Z)V

    move/from16 v2, p4

    iput v2, v1, Lcom/cootek/smartinput5/ui/T;->x:I

    move/from16 v2, p5

    iput v2, v1, Lcom/cootek/smartinput5/ui/T;->y:I

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->Q()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41400000    # 12.0f

    mul-float v3, v3, v2

    float-to-int v3, v3

    iput v3, v1, Lcom/cootek/smartinput5/ui/T;->WIDTH_THRESHOLD:I

    const/high16 v3, 0x41900000    # 18.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/cootek/smartinput5/ui/T;->HEIGHT_THRESHOLD:I

    :try_start_0
    iget-object v2, v1, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget-object v2, v2, Lcom/cootek/smartinput5/ui/W;->b0:Lcom/cootek/smartinput5/func/E;

    invoke-interface {v2}, Lcom/cootek/smartinput5/func/E;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v5, v9, Lcom/cootek/smartinput5/ui/schema/b;->mainOnlyTextSize:Ljava/lang/String;

    const/4 v6, -0x1

    iget v4, v1, Lcom/cootek/smartinput5/ui/T;->mainOnlyTextSize:I

    move-object v2, v8

    move-object/from16 v3, p1

    move/from16 v16, v4

    move-object v4, v7

    move-object/from16 p2, v7

    move/from16 v7, v16

    invoke-virtual/range {v2 .. v7}, Lcom/cootek/smartinput5/ui/f0;->c(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v2

    iput v2, v1, Lcom/cootek/smartinput5/ui/T;->mainOnlyTextSize:I

    iget-object v5, v9, Lcom/cootek/smartinput5/ui/schema/b;->mainTextSize:Ljava/lang/String;

    const/4 v6, -0x1

    iget v7, v1, Lcom/cootek/smartinput5/ui/T;->mainTextSize:I

    move-object v2, v8

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/cootek/smartinput5/ui/f0;->c(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v2

    iput v2, v1, Lcom/cootek/smartinput5/ui/T;->mainTextSize:I

    iget-object v5, v9, Lcom/cootek/smartinput5/ui/schema/b;->altTextSize:Ljava/lang/String;

    const/4 v6, -0x1

    iget v7, v1, Lcom/cootek/smartinput5/ui/T;->altTextSize:I

    move-object v2, v8

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/cootek/smartinput5/ui/f0;->c(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v2

    iput v2, v1, Lcom/cootek/smartinput5/ui/T;->altTextSize:I

    iget-object v5, v9, Lcom/cootek/smartinput5/ui/schema/b;->keyWidth:Ljava/lang/String;

    iget-object v2, v1, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget v6, v2, Lcom/cootek/smartinput5/ui/W;->w:I

    iget v7, v2, Lcom/cootek/smartinput5/ui/W;->n:I

    iget v4, v1, Lcom/cootek/smartinput5/ui/T;->width:I

    move-object v2, v8

    move-object/from16 v3, p1

    move/from16 v16, v4

    move-object/from16 v4, p2

    move-object/from16 p3, v8

    move/from16 v8, v16

    invoke-virtual/range {v2 .. v8}, Lcom/cootek/smartinput5/ui/f0;->d(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;III)I

    move-result v2

    iput v2, v1, Lcom/cootek/smartinput5/ui/T;->width:I

    iget-object v5, v9, Lcom/cootek/smartinput5/ui/schema/b;->keyHeight:Ljava/lang/String;

    iget-object v2, v1, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget v6, v2, Lcom/cootek/smartinput5/ui/W;->t:I

    iget v7, v2, Lcom/cootek/smartinput5/ui/W;->m:I

    iget v8, v1, Lcom/cootek/smartinput5/ui/T;->height:I

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/cootek/smartinput5/ui/f0;->d(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;III)I

    move-result v2

    iput v2, v1, Lcom/cootek/smartinput5/ui/T;->height:I

    iget-object v5, v9, Lcom/cootek/smartinput5/ui/schema/b;->horizontalGap:Ljava/lang/String;

    iget-object v2, v1, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget v6, v2, Lcom/cootek/smartinput5/ui/W;->w:I

    iget v7, v2, Lcom/cootek/smartinput5/ui/W;->o:I

    iget v8, v1, Lcom/cootek/smartinput5/ui/T;->gap:I

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/cootek/smartinput5/ui/f0;->d(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;III)I

    move-result v2

    iput v2, v1, Lcom/cootek/smartinput5/ui/T;->gap:I

    iget-object v2, v1, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget v3, v2, Lcom/cootek/smartinput5/ui/W;->q:I

    iput v3, v1, Lcom/cootek/smartinput5/ui/T;->mSlideThresholdSquare:I

    iget-object v5, v9, Lcom/cootek/smartinput5/ui/schema/b;->altTextInCorner:Ljava/lang/String;

    iget-boolean v6, v2, Lcom/cootek/smartinput5/ui/W;->h:Z

    iget-boolean v7, v1, Lcom/cootek/smartinput5/ui/T;->altTextInCorner:Z

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/cootek/smartinput5/ui/f0;->b(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v2

    iput-boolean v2, v1, Lcom/cootek/smartinput5/ui/T;->altTextInCorner:Z

    iget v2, v1, Lcom/cootek/smartinput5/ui/T;->x:I

    iget v3, v1, Lcom/cootek/smartinput5/ui/T;->gap:I

    add-int v8, v2, v3

    iput v8, v1, Lcom/cootek/smartinput5/ui/T;->x:I

    iget-object v5, v9, Lcom/cootek/smartinput5/ui/schema/b;->keyX:Ljava/lang/String;

    iget-object v2, v1, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget v6, v2, Lcom/cootek/smartinput5/ui/W;->w:I

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move v7, v8

    invoke-virtual/range {v2 .. v8}, Lcom/cootek/smartinput5/ui/f0;->d(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;III)I

    move-result v2

    iput v2, v1, Lcom/cootek/smartinput5/ui/T;->x:I

    iget-object v2, v9, Lcom/cootek/smartinput5/ui/schema/b;->keyR:Ljava/lang/String;

    iget-object v3, v1, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget v3, v3, Lcom/cootek/smartinput5/ui/W;->w:I

    move-object/from16 v8, p2

    invoke-static {v0, v8, v2, v3, v12}, Lcom/cootek/smartinput5/func/g0;->q(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v2

    if-lez v2, :cond_3

    iget v3, v1, Lcom/cootek/smartinput5/ui/T;->x:I

    sub-int/2addr v2, v3

    goto :goto_2

    :cond_3
    iget v2, v1, Lcom/cootek/smartinput5/ui/T;->width:I

    :goto_2
    iput v2, v1, Lcom/cootek/smartinput5/ui/T;->width:I

    iget-object v5, v9, Lcom/cootek/smartinput5/ui/schema/b;->keyY:Ljava/lang/String;

    iget-object v2, v1, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget v6, v2, Lcom/cootek/smartinput5/ui/W;->t:I

    iget v12, v1, Lcom/cootek/smartinput5/ui/T;->y:I

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    move-object v4, v8

    move v7, v12

    move-object v15, v8

    move v8, v12

    invoke-virtual/range {v2 .. v8}, Lcom/cootek/smartinput5/ui/f0;->d(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;III)I

    move-result v2

    iput v2, v1, Lcom/cootek/smartinput5/ui/T;->y:I

    iget-object v2, v9, Lcom/cootek/smartinput5/ui/schema/b;->mainTextXAlign:Ljava/lang/String;

    iget-object v3, v1, Lcom/cootek/smartinput5/ui/T;->mainTextXAlign:Landroid/graphics/Paint$Align;

    move-object/from16 v12, p3

    invoke-virtual {v12, v2, v3}, Lcom/cootek/smartinput5/ui/f0;->g(Ljava/lang/String;Landroid/graphics/Paint$Align;)Landroid/graphics/Paint$Align;

    move-result-object v2

    iput-object v2, v1, Lcom/cootek/smartinput5/ui/T;->mainTextXAlign:Landroid/graphics/Paint$Align;

    iget-object v2, v9, Lcom/cootek/smartinput5/ui/schema/b;->mainTextYAlign:Ljava/lang/String;

    iget-object v3, v1, Lcom/cootek/smartinput5/ui/T;->mainTextYAlign:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v2, v3}, Lcom/cootek/smartinput5/ui/f0;->g(Ljava/lang/String;Landroid/graphics/Paint$Align;)Landroid/graphics/Paint$Align;

    move-result-object v2

    iput-object v2, v1, Lcom/cootek/smartinput5/ui/T;->mainTextYAlign:Landroid/graphics/Paint$Align;

    iget-object v2, v9, Lcom/cootek/smartinput5/ui/schema/b;->altTextXAlign:Ljava/lang/String;

    iget-object v3, v1, Lcom/cootek/smartinput5/ui/T;->altTextXAlign:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v2, v3}, Lcom/cootek/smartinput5/ui/f0;->g(Ljava/lang/String;Landroid/graphics/Paint$Align;)Landroid/graphics/Paint$Align;

    move-result-object v2

    iput-object v2, v1, Lcom/cootek/smartinput5/ui/T;->altTextXAlign:Landroid/graphics/Paint$Align;

    iget-object v2, v9, Lcom/cootek/smartinput5/ui/schema/b;->altTextYAlign:Ljava/lang/String;

    iget-object v3, v1, Lcom/cootek/smartinput5/ui/T;->altTextYAlign:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v2, v3}, Lcom/cootek/smartinput5/ui/f0;->g(Ljava/lang/String;Landroid/graphics/Paint$Align;)Landroid/graphics/Paint$Align;

    move-result-object v2

    iput-object v2, v1, Lcom/cootek/smartinput5/ui/T;->altTextYAlign:Landroid/graphics/Paint$Align;

    iget-object v2, v9, Lcom/cootek/smartinput5/ui/schema/b;->mainTextX:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Landroid/graphics/Point;

    iget v4, v1, Lcom/cootek/smartinput5/ui/T;->width:I

    invoke-static {v0, v15, v2, v4, v13}, Lcom/cootek/smartinput5/func/g0;->q(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v2

    iget-object v4, v9, Lcom/cootek/smartinput5/ui/schema/b;->mainTextY:Ljava/lang/String;

    iget v5, v1, Lcom/cootek/smartinput5/ui/T;->height:I

    invoke-static {v0, v15, v4, v5, v13}, Lcom/cootek/smartinput5/func/g0;->q(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v4

    invoke-direct {v3, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, v1, Lcom/cootek/smartinput5/ui/T;->mainTextPos:Landroid/graphics/Point;

    :cond_4
    iget-object v2, v9, Lcom/cootek/smartinput5/ui/schema/b;->altTextX:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget v3, v1, Lcom/cootek/smartinput5/ui/T;->width:I

    invoke-static {v0, v15, v2, v3, v13}, Lcom/cootek/smartinput5/func/g0;->q(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v2

    iget-object v3, v9, Lcom/cootek/smartinput5/ui/schema/b;->altTextY:Ljava/lang/String;

    iget v4, v1, Lcom/cootek/smartinput5/ui/T;->height:I

    invoke-static {v0, v15, v3, v4, v13}, Lcom/cootek/smartinput5/func/g0;->q(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v3

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v4, v1, Lcom/cootek/smartinput5/ui/T;->altTextPos:Landroid/graphics/Point;

    :cond_5
    iget-object v2, v9, Lcom/cootek/smartinput5/ui/schema/b;->leftTextX:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Landroid/graphics/Point;

    iget v4, v1, Lcom/cootek/smartinput5/ui/T;->width:I

    invoke-static {v0, v15, v2, v4, v13}, Lcom/cootek/smartinput5/func/g0;->q(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v2

    iget-object v4, v9, Lcom/cootek/smartinput5/ui/schema/b;->leftTextY:Ljava/lang/String;

    iget v5, v1, Lcom/cootek/smartinput5/ui/T;->height:I

    invoke-static {v0, v15, v4, v5, v13}, Lcom/cootek/smartinput5/func/g0;->q(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v4

    invoke-direct {v3, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, v1, Lcom/cootek/smartinput5/ui/T;->leftTextPos:Landroid/graphics/Point;

    :cond_6
    iget-object v2, v9, Lcom/cootek/smartinput5/ui/schema/b;->rightTextX:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    new-instance v3, Landroid/graphics/Point;

    iget v4, v1, Lcom/cootek/smartinput5/ui/T;->width:I

    invoke-static {v0, v15, v2, v4, v13}, Lcom/cootek/smartinput5/func/g0;->q(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v2

    iget-object v4, v9, Lcom/cootek/smartinput5/ui/schema/b;->rightTextY:Ljava/lang/String;

    iget v5, v1, Lcom/cootek/smartinput5/ui/T;->height:I

    invoke-static {v0, v15, v4, v5, v13}, Lcom/cootek/smartinput5/func/g0;->q(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v4

    invoke-direct {v3, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, v1, Lcom/cootek/smartinput5/ui/T;->rightTextPos:Landroid/graphics/Point;

    :cond_7
    iget-object v2, v9, Lcom/cootek/smartinput5/ui/schema/b;->keyName:Ljava/lang/String;

    iput-object v2, v1, Lcom/cootek/smartinput5/ui/T;->keyName:Ljava/lang/String;

    iget-object v2, v9, Lcom/cootek/smartinput5/ui/schema/b;->mainTitleRef:Ljava/lang/String;

    iput-object v2, v1, Lcom/cootek/smartinput5/ui/T;->mainTitleRef:Ljava/lang/String;

    iget-object v2, v9, Lcom/cootek/smartinput5/ui/schema/b;->identifyId:Ljava/lang/String;

    iput-object v2, v1, Lcom/cootek/smartinput5/ui/T;->identifyId:Ljava/lang/String;

    iget-object v5, v9, Lcom/cootek/smartinput5/ui/schema/b;->displaySplit:Ljava/lang/String;

    const/4 v6, 0x0

    iget-boolean v7, v1, Lcom/cootek/smartinput5/ui/T;->displaySplit:Z

    move-object v2, v12

    move-object/from16 v3, p1

    move-object v4, v15

    invoke-virtual/range {v2 .. v7}, Lcom/cootek/smartinput5/ui/f0;->b(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v2

    iput-boolean v2, v1, Lcom/cootek/smartinput5/ui/T;->displaySplit:Z

    iget-object v5, v9, Lcom/cootek/smartinput5/ui/schema/b;->backgroundType:Ljava/lang/String;

    sget-object v6, Lcom/cootek/smartinput5/ui/T;->sBackgroundMap:Ljava/util/Hashtable;

    const/4 v7, 0x0

    iget v8, v1, Lcom/cootek/smartinput5/ui/T;->backgroundType:I

    move-object v2, v12

    move-object/from16 v3, p1

    move-object v4, v15

    invoke-virtual/range {v2 .. v8}, Lcom/cootek/smartinput5/ui/f0;->f(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;II)I

    move-result v2

    iput v2, v1, Lcom/cootek/smartinput5/ui/T;->backgroundType:I

    iget-object v5, v9, Lcom/cootek/smartinput5/ui/schema/b;->triType:Ljava/lang/String;

    sget-object v6, Lcom/cootek/smartinput5/ui/T;->sTriTypeMap:Ljava/util/Hashtable;

    const/4 v7, -0x1

    iget v8, v1, Lcom/cootek/smartinput5/ui/T;->mTriType:I

    move-object v2, v12

    move-object/from16 v3, p1

    move-object v4, v15

    invoke-virtual/range {v2 .. v8}, Lcom/cootek/smartinput5/ui/f0;->f(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;II)I

    move-result v2

    iput v2, v1, Lcom/cootek/smartinput5/ui/T;->mTriType:I

    iget-object v5, v9, Lcom/cootek/smartinput5/ui/schema/b;->binType:Ljava/lang/String;

    sget-object v6, Lcom/cootek/smartinput5/ui/T;->sBinTypeMap:Ljava/util/Hashtable;

    const/4 v7, -0x1

    iget v8, v1, Lcom/cootek/smartinput5/ui/T;->mBinType:I

    move-object v2, v12

    move-object/from16 v3, p1

    move-object v4, v15

    invoke-virtual/range {v2 .. v8}, Lcom/cootek/smartinput5/ui/f0;->f(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;II)I

    move-result v2

    iput v2, v1, Lcom/cootek/smartinput5/ui/T;->mBinType:I

    iget-object v5, v9, Lcom/cootek/smartinput5/ui/schema/b;->foregroundType:Ljava/lang/String;

    sget-object v6, Lcom/cootek/smartinput5/ui/T;->sForeIconMap:Ljava/util/Hashtable;

    const/4 v7, 0x0

    iget v8, v1, Lcom/cootek/smartinput5/ui/T;->foreIconType:I

    move-object v2, v12

    move-object/from16 v3, p1

    move-object v4, v15

    invoke-virtual/range {v2 .. v8}, Lcom/cootek/smartinput5/ui/f0;->f(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;II)I

    move-result v2

    iput v2, v1, Lcom/cootek/smartinput5/ui/T;->foreIconType:I

    iget-object v5, v9, Lcom/cootek/smartinput5/ui/schema/b;->foreTextColorType:Ljava/lang/String;

    sget-object v6, Lcom/cootek/smartinput5/ui/T;->sForeTextColorMap:Ljava/util/Hashtable;

    const/4 v7, 0x0

    iget v8, v1, Lcom/cootek/smartinput5/ui/T;->foreTextColorType:I

    move-object v2, v12

    move-object/from16 v3, p1

    move-object v4, v15

    invoke-virtual/range {v2 .. v8}, Lcom/cootek/smartinput5/ui/f0;->f(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;II)I

    move-result v2

    iput v2, v1, Lcom/cootek/smartinput5/ui/T;->foreTextColorType:I

    iget-object v5, v9, Lcom/cootek/smartinput5/ui/schema/b;->combineFlag:Ljava/lang/String;

    sget-object v6, Lcom/cootek/smartinput5/ui/W;->v1:Ljava/util/Hashtable;

    const/4 v7, 0x0

    iget v8, v1, Lcom/cootek/smartinput5/ui/T;->mCombineFlag:I

    move-object v2, v12

    move-object/from16 v3, p1

    move-object v4, v15

    invoke-virtual/range {v2 .. v8}, Lcom/cootek/smartinput5/ui/f0;->f(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;II)I

    move-result v2

    iput v2, v1, Lcom/cootek/smartinput5/ui/T;->mCombineFlag:I

    iget-object v5, v9, Lcom/cootek/smartinput5/ui/schema/b;->ignoreCurve:Ljava/lang/String;

    const/4 v6, 0x0

    iget-boolean v7, v1, Lcom/cootek/smartinput5/ui/T;->mIgnoreCurve:Z

    move-object v2, v12

    move-object/from16 v3, p1

    move-object v4, v15

    invoke-virtual/range {v2 .. v7}, Lcom/cootek/smartinput5/ui/f0;->b(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v2

    iput-boolean v2, v1, Lcom/cootek/smartinput5/ui/T;->mIgnoreCurve:Z

    iget-object v5, v9, Lcom/cootek/smartinput5/ui/schema/b;->ignoreStroke:Ljava/lang/String;

    const/4 v6, 0x0

    iget-boolean v7, v1, Lcom/cootek/smartinput5/ui/T;->mIgnoreStroke:Z

    move-object v2, v12

    move-object/from16 v3, p1

    move-object v4, v15

    invoke-virtual/range {v2 .. v7}, Lcom/cootek/smartinput5/ui/f0;->b(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v2

    iput-boolean v2, v1, Lcom/cootek/smartinput5/ui/T;->mIgnoreStroke:Z

    iget-object v5, v9, Lcom/cootek/smartinput5/ui/schema/b;->ignoreSlip:Ljava/lang/String;

    const/4 v6, 0x0

    iget-boolean v7, v1, Lcom/cootek/smartinput5/ui/T;->mIgnoreSlip:Z

    move-object v2, v12

    move-object/from16 v3, p1

    move-object v4, v15

    invoke-virtual/range {v2 .. v7}, Lcom/cootek/smartinput5/ui/f0;->b(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v2

    iput-boolean v2, v1, Lcom/cootek/smartinput5/ui/T;->mIgnoreSlip:Z

    iget-object v2, v9, Lcom/cootek/smartinput5/ui/schema/b;->caheable:Ljava/lang/String;

    invoke-static {v0, v15, v2, v14}, Lcom/cootek/smartinput5/func/g0;->n(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/cootek/smartinput5/ui/T;->mCachable:Z

    iget-object v5, v9, Lcom/cootek/smartinput5/ui/schema/b;->allowMultiLine:Ljava/lang/String;

    const/4 v6, 0x0

    iget-boolean v7, v1, Lcom/cootek/smartinput5/ui/T;->allowMultiLine:Z

    move-object v2, v12

    move-object/from16 v3, p1

    move-object v4, v15

    invoke-virtual/range {v2 .. v7}, Lcom/cootek/smartinput5/ui/f0;->b(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v2

    iput-boolean v2, v1, Lcom/cootek/smartinput5/ui/T;->allowMultiLine:Z

    iget-object v5, v9, Lcom/cootek/smartinput5/ui/schema/b;->splitWord:Ljava/lang/String;

    const/4 v6, 0x0

    iget-boolean v7, v1, Lcom/cootek/smartinput5/ui/T;->splitWord:Z

    move-object v2, v12

    move-object/from16 v3, p1

    move-object v4, v15

    invoke-virtual/range {v2 .. v7}, Lcom/cootek/smartinput5/ui/f0;->b(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v2

    iput-boolean v2, v1, Lcom/cootek/smartinput5/ui/T;->splitWord:Z

    iget-object v5, v9, Lcom/cootek/smartinput5/ui/schema/b;->altTitlePreviewOnly:Ljava/lang/String;

    const/4 v6, 0x0

    iget-boolean v7, v1, Lcom/cootek/smartinput5/ui/T;->altTitlePreviewOnly:Z

    move-object v2, v12

    move-object/from16 v3, p1

    move-object v4, v15

    invoke-virtual/range {v2 .. v7}, Lcom/cootek/smartinput5/ui/f0;->b(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v2

    iput-boolean v2, v1, Lcom/cootek/smartinput5/ui/T;->altTitlePreviewOnly:Z

    iget-object v5, v9, Lcom/cootek/smartinput5/ui/schema/b;->iconWithMainTitle:Ljava/lang/String;

    const/4 v6, 0x0

    iget-boolean v7, v1, Lcom/cootek/smartinput5/ui/T;->iconWithMainTitle:Z

    move-object v2, v12

    move-object/from16 v3, p1

    move-object v4, v15

    invoke-virtual/range {v2 .. v7}, Lcom/cootek/smartinput5/ui/f0;->b(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v2

    iput-boolean v2, v1, Lcom/cootek/smartinput5/ui/T;->iconWithMainTitle:Z

    iget-object v5, v9, Lcom/cootek/smartinput5/ui/schema/b;->hasLongPressIcon:Ljava/lang/String;

    const/4 v6, 0x0

    iget-boolean v7, v1, Lcom/cootek/smartinput5/ui/T;->hasLongPressIcon:Z

    move-object v2, v12

    move-object/from16 v3, p1

    move-object v4, v15

    invoke-virtual/range {v2 .. v7}, Lcom/cootek/smartinput5/ui/f0;->b(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v2

    iput-boolean v2, v1, Lcom/cootek/smartinput5/ui/T;->hasLongPressIcon:Z

    iget-object v5, v9, Lcom/cootek/smartinput5/ui/schema/b;->maxDiaplay:Ljava/lang/String;

    const/4 v6, -0x1

    iget v7, v1, Lcom/cootek/smartinput5/ui/T;->mMaxDisplay:I

    move-object v2, v12

    move-object/from16 v3, p1

    move-object v4, v15

    invoke-virtual/range {v2 .. v7}, Lcom/cootek/smartinput5/ui/f0;->e(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v2

    iput v2, v1, Lcom/cootek/smartinput5/ui/T;->mMaxDisplay:I

    iget-object v2, v9, Lcom/cootek/smartinput5/ui/schema/b;->diaplayType:Ljava/lang/String;

    sget-object v3, Lcom/cootek/smartinput5/ui/W;->z1:Ljava/util/Hashtable;

    invoke-static {v0, v15, v2, v3, v13}, Lcom/cootek/smartinput5/func/g0;->y(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;I)I

    move-result v2

    iput v2, v1, Lcom/cootek/smartinput5/ui/T;->mDisplayType:I

    iget-object v2, v9, Lcom/cootek/smartinput5/ui/schema/b;->extendSurfaceType:Ljava/lang/String;

    invoke-static {v0, v15, v2, v3, v13}, Lcom/cootek/smartinput5/func/g0;->y(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;I)I

    move-result v2

    iput v2, v1, Lcom/cootek/smartinput5/ui/T;->mExtendSurfaceType:I

    iget-object v5, v9, Lcom/cootek/smartinput5/ui/schema/b;->intTag:Ljava/lang/String;

    const/4 v6, 0x0

    iget v7, v1, Lcom/cootek/smartinput5/ui/T;->intTag:I

    move-object v2, v12

    move-object/from16 v3, p1

    move-object v4, v15

    invoke-virtual/range {v2 .. v7}, Lcom/cootek/smartinput5/ui/f0;->e(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v2

    iput v2, v1, Lcom/cootek/smartinput5/ui/T;->intTag:I

    iget-object v5, v9, Lcom/cootek/smartinput5/ui/schema/b;->supportPreviewPopup:Ljava/lang/String;

    const/4 v6, 0x1

    iget-boolean v7, v1, Lcom/cootek/smartinput5/ui/T;->mSupportPreviewPopup:Z

    move-object v2, v12

    move-object/from16 v3, p1

    move-object v4, v15

    invoke-virtual/range {v2 .. v7}, Lcom/cootek/smartinput5/ui/f0;->b(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v2

    iput-boolean v2, v1, Lcom/cootek/smartinput5/ui/T;->mSupportPreviewPopup:Z

    iget-object v5, v9, Lcom/cootek/smartinput5/ui/schema/b;->supportCustomSkin:Ljava/lang/String;

    const/4 v6, 0x1

    iget-boolean v7, v1, Lcom/cootek/smartinput5/ui/T;->mSupportCustomSkin:Z

    move-object v2, v12

    move-object/from16 v3, p1

    move-object v4, v15

    invoke-virtual/range {v2 .. v7}, Lcom/cootek/smartinput5/ui/f0;->b(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v2

    iput-boolean v2, v1, Lcom/cootek/smartinput5/ui/T;->mSupportCustomSkin:Z

    iget-object v2, v9, Lcom/cootek/smartinput5/ui/schema/b;->functionSettingId:Ljava/lang/String;

    iput-object v2, v1, Lcom/cootek/smartinput5/ui/T;->mFunctionSettingId:Ljava/lang/String;

    iget-object v5, v9, Lcom/cootek/smartinput5/ui/schema/b;->iconPreviewColorType:Ljava/lang/String;

    sget-object v6, Lcom/cootek/smartinput5/ui/T;->sPreviewIconColorMap:Ljava/util/Hashtable;

    const/4 v7, 0x0

    iget v8, v1, Lcom/cootek/smartinput5/ui/T;->iconPreviewColorType:I

    move-object v2, v12

    move-object/from16 v3, p1

    move-object v4, v15

    invoke-virtual/range {v2 .. v8}, Lcom/cootek/smartinput5/ui/f0;->f(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;II)I

    move-result v2

    iput v2, v1, Lcom/cootek/smartinput5/ui/T;->iconPreviewColorType:I

    iget-object v2, v9, Lcom/cootek/smartinput5/ui/schema/b;->keyIcon:Ljava/lang/String;

    const/4 v3, 0x2

    if-eqz v2, :cond_b

    sget-object v4, Lcom/cootek/smartinput5/ui/RendingColorPosition;->KEY_NORMAL_ICON:Lcom/cootek/smartinput5/ui/RendingColorPosition;

    iget v5, v1, Lcom/cootek/smartinput5/ui/T;->backgroundType:I

    if-eq v5, v14, :cond_9

    if-eq v5, v3, :cond_8

    goto :goto_3

    :cond_8
    sget-object v4, Lcom/cootek/smartinput5/ui/RendingColorPosition;->KEY_FUN_HIGHLIGHT_ICON:Lcom/cootek/smartinput5/ui/RendingColorPosition;

    goto :goto_3

    :cond_9
    sget-object v4, Lcom/cootek/smartinput5/ui/RendingColorPosition;->KEY_FUN_ICON:Lcom/cootek/smartinput5/ui/RendingColorPosition;

    :goto_3
    iget-boolean v5, v1, Lcom/cootek/smartinput5/ui/T;->mSupportCustomSkin:Z

    if-nez v5, :cond_a

    const/4 v4, 0x0

    :cond_a
    invoke-static {v0, v15, v2, v4, v14}, Lcom/cootek/smartinput5/func/g0;->t(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Lcom/cootek/smartinput5/ui/RendingColorPosition;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/cootek/smartinput5/ui/T;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v4}, Lcom/cootek/smartinput5/ui/T;->cacheRendingColor(Landroid/graphics/drawable/Drawable;Lcom/cootek/smartinput5/ui/RendingColorPosition;)V

    iget-object v2, v1, Lcom/cootek/smartinput5/ui/T;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, v1, Lcom/cootek/smartinput5/ui/T;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v2, v13, v13, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_b
    iget-object v2, v9, Lcom/cootek/smartinput5/ui/schema/b;->foreTextColorType:Ljava/lang/String;

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v2

    sget-object v4, Lcom/cootek/smartinput5/ui/TextColorPosition;->KEY_TEXT:Lcom/cootek/smartinput5/ui/TextColorPosition;

    iget v5, v1, Lcom/cootek/smartinput5/ui/T;->foreTextColorType:I

    if-ne v5, v14, :cond_c

    sget-object v4, Lcom/cootek/smartinput5/ui/TextColorPosition;->KEY_FORE_TEXT_FUN:Lcom/cootek/smartinput5/ui/TextColorPosition;

    goto :goto_4

    :cond_c
    if-ne v5, v3, :cond_d

    sget-object v4, Lcom/cootek/smartinput5/ui/TextColorPosition;->KEY_FORE_TEXT_HIGHLIGHT:Lcom/cootek/smartinput5/ui/TextColorPosition;

    :cond_d
    :goto_4
    invoke-direct {v1, v5}, Lcom/cootek/smartinput5/ui/T;->getForeTextColorId(I)I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/cootek/smartinput5/func/i0;->z(ILcom/cootek/smartinput5/ui/TextColorPosition;)I

    move-result v2

    iput v2, v1, Lcom/cootek/smartinput5/ui/T;->foreTextColor:I

    :cond_e
    iget-object v2, v9, Lcom/cootek/smartinput5/ui/schema/b;->longPressIcon:Ljava/lang/String;

    if-eqz v2, :cond_11

    sget-object v3, Lcom/cootek/smartinput5/ui/RendingColorPosition;->KEY_FUN_LONGPRESS_ICON:Lcom/cootek/smartinput5/ui/RendingColorPosition;

    iget v4, v1, Lcom/cootek/smartinput5/ui/T;->backgroundType:I

    if-nez v4, :cond_f

    sget-object v3, Lcom/cootek/smartinput5/ui/RendingColorPosition;->KEY_NORMAL_LONGPRESS_ICON:Lcom/cootek/smartinput5/ui/RendingColorPosition;

    :cond_f
    iget-boolean v4, v1, Lcom/cootek/smartinput5/ui/T;->mSupportCustomSkin:Z

    if-nez v4, :cond_10

    const/4 v3, 0x0

    :cond_10
    invoke-static {v0, v15, v2, v3}, Lcom/cootek/smartinput5/func/g0;->s(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Lcom/cootek/smartinput5/ui/RendingColorPosition;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/cootek/smartinput5/ui/T;->longPressIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v3}, Lcom/cootek/smartinput5/ui/T;->cacheRendingColor(Landroid/graphics/drawable/Drawable;Lcom/cootek/smartinput5/ui/RendingColorPosition;)V

    :cond_11
    iget-object v2, v9, Lcom/cootek/smartinput5/ui/schema/b;->iconPreview:Ljava/lang/String;

    if-eqz v2, :cond_13

    iget v3, v1, Lcom/cootek/smartinput5/ui/T;->iconPreviewColorType:I

    if-ne v3, v14, :cond_12

    sget-object v3, Lcom/cootek/smartinput5/ui/RendingColorPosition;->POPUP_PREVIEW_TEXTCOLOR_ICON:Lcom/cootek/smartinput5/ui/RendingColorPosition;

    goto :goto_5

    :cond_12
    sget-object v3, Lcom/cootek/smartinput5/ui/RendingColorPosition;->KEY_NORMAL_ICON:Lcom/cootek/smartinput5/ui/RendingColorPosition;

    :goto_5
    invoke-static {v0, v15, v2, v3}, Lcom/cootek/smartinput5/func/g0;->s(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Lcom/cootek/smartinput5/ui/RendingColorPosition;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/cootek/smartinput5/ui/T;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, v1, Lcom/cootek/smartinput5/ui/T;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v13, v13, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_13
    iget-object v2, v9, Lcom/cootek/smartinput5/ui/schema/b;->iconPreviewRight:Ljava/lang/String;

    if-eqz v2, :cond_14

    sget-object v3, Lcom/cootek/smartinput5/ui/RendingColorPosition;->KEY_NORMAL_ICON:Lcom/cootek/smartinput5/ui/RendingColorPosition;

    invoke-static {v0, v15, v2, v3}, Lcom/cootek/smartinput5/func/g0;->s(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Lcom/cootek/smartinput5/ui/RendingColorPosition;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/cootek/smartinput5/ui/T;->iconPreviewRight:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, v1, Lcom/cootek/smartinput5/ui/T;->iconPreviewRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v13, v13, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_14
    iget-object v2, v9, Lcom/cootek/smartinput5/ui/schema/b;->background:Ljava/lang/String;

    if-eqz v2, :cond_15

    iget-object v3, v1, Lcom/cootek/smartinput5/ui/T;->background:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_15

    invoke-static {v0, v15, v2}, Lcom/cootek/smartinput5/func/g0;->r(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/cootek/smartinput5/ui/T;->background:Landroid/graphics/drawable/Drawable;

    :cond_15
    iget-object v2, v9, Lcom/cootek/smartinput5/ui/schema/b;->keyEdgeFlags:Ljava/lang/String;

    sget-object v3, Lcom/cootek/smartinput5/ui/W;->p1:Ljava/util/Hashtable;

    invoke-static {v0, v15, v2, v3, v13}, Lcom/cootek/smartinput5/func/g0;->y(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;I)I

    move-result v0

    iput v0, v1, Lcom/cootek/smartinput5/ui/T;->edgeFlags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SoftKey"

    invoke-static {v3, v2}, Lcom/cootek/smartinput/utilities/r;->C(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    if-eqz v11, :cond_17

    iget v0, v1, Lcom/cootek/smartinput5/ui/T;->backgroundType:I

    if-nez v0, :cond_16

    invoke-interface {v11, v10}, Lcom/cootek/smartinput5/ui/t0/a;->i(Lcom/cootek/smartinput5/ui/t0/f;)I

    move-result v0

    iput v0, v1, Lcom/cootek/smartinput5/ui/T;->mKeyMainTextColor:I

    invoke-interface {v11, v10}, Lcom/cootek/smartinput5/ui/t0/a;->n(Lcom/cootek/smartinput5/ui/t0/f;)I

    move-result v0

    iput v0, v1, Lcom/cootek/smartinput5/ui/T;->mKeyAltTextColor:I

    invoke-interface {v11, v10}, Lcom/cootek/smartinput5/ui/t0/a;->q(Lcom/cootek/smartinput5/ui/t0/f;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/cootek/smartinput5/ui/T;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_7

    :cond_16
    invoke-interface {v11, v10}, Lcom/cootek/smartinput5/ui/t0/a;->l(Lcom/cootek/smartinput5/ui/t0/f;)I

    move-result v0

    iput v0, v1, Lcom/cootek/smartinput5/ui/T;->mKeyMainTextColor:I

    invoke-interface {v11, v10}, Lcom/cootek/smartinput5/ui/t0/a;->j(Lcom/cootek/smartinput5/ui/t0/f;)I

    move-result v0

    iput v0, v1, Lcom/cootek/smartinput5/ui/T;->mKeyAltTextColor:I

    invoke-interface {v11, v10}, Lcom/cootek/smartinput5/ui/t0/a;->s(Lcom/cootek/smartinput5/ui/t0/f;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/cootek/smartinput5/ui/T;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    :cond_17
    :goto_7
    new-instance v0, Lcom/cootek/smartinput5/engine/MoveContrail;

    invoke-direct {v0}, Lcom/cootek/smartinput5/engine/MoveContrail;-><init>()V

    iput-object v0, v1, Lcom/cootek/smartinput5/ui/T;->mMoveContrail:Lcom/cootek/smartinput5/engine/MoveContrail;

    new-instance v0, Lcom/cootek/smartinput5/engine/MoveContrail;

    invoke-direct {v0}, Lcom/cootek/smartinput5/engine/MoveContrail;-><init>()V

    iput-object v0, v1, Lcom/cootek/smartinput5/ui/T;->mCurvePoints:Lcom/cootek/smartinput5/engine/MoveContrail;

    iget-object v0, v1, Lcom/cootek/smartinput5/ui/T;->mMoveContrail:Lcom/cootek/smartinput5/engine/MoveContrail;

    iget-object v2, v1, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget v3, v2, Lcom/cootek/smartinput5/ui/W;->w:I

    iget v2, v2, Lcom/cootek/smartinput5/ui/W;->t:I

    invoke-virtual {v0, v3, v2}, Lcom/cootek/smartinput5/engine/MoveContrail;->setCanvasSize(II)V

    iget-object v0, v1, Lcom/cootek/smartinput5/ui/T;->mCurvePoints:Lcom/cootek/smartinput5/engine/MoveContrail;

    iget-object v2, v1, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget v3, v2, Lcom/cootek/smartinput5/ui/W;->w:I

    iget v2, v2, Lcom/cootek/smartinput5/ui/W;->u:I

    invoke-virtual {v0, v3, v2}, Lcom/cootek/smartinput5/engine/MoveContrail;->setCanvasSize(II)V

    new-instance v0, Lcom/cootek/smartinput5/ui/SoftKeyInfo;

    invoke-direct {v0}, Lcom/cootek/smartinput5/ui/SoftKeyInfo;-><init>()V

    iput-object v0, v1, Lcom/cootek/smartinput5/ui/T;->mSoftKeyInfo:Lcom/cootek/smartinput5/ui/SoftKeyInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/ui/T;->prepareData()V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/cootek/smartinput5/ui/a0;IILcom/cootek/smartinput5/ui/schema/b;)V
    .locals 9

    iget-object v2, p2, Lcom/cootek/smartinput5/ui/a0;->h:Lcom/cootek/smartinput5/ui/W;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/cootek/smartinput5/ui/T;-><init>(Landroid/content/res/Resources;Lcom/cootek/smartinput5/ui/W;Lcom/cootek/smartinput5/ui/a0;IILcom/cootek/smartinput5/ui/schema/b;Lcom/cootek/smartinput5/ui/t0/f;Lcom/cootek/smartinput5/ui/t0/a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/cootek/smartinput5/ui/a0;IILcom/cootek/smartinput5/ui/schema/b;Lcom/cootek/smartinput5/ui/t0/f;Lcom/cootek/smartinput5/ui/t0/a;)V
    .locals 9

    move-object v3, p2

    iget-object v2, v3, Lcom/cootek/smartinput5/ui/a0;->h:Lcom/cootek/smartinput5/ui/W;

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/cootek/smartinput5/ui/T;-><init>(Landroid/content/res/Resources;Lcom/cootek/smartinput5/ui/W;Lcom/cootek/smartinput5/ui/a0;IILcom/cootek/smartinput5/ui/schema/b;Lcom/cootek/smartinput5/ui/t0/f;Lcom/cootek/smartinput5/ui/t0/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/cootek/smartinput5/ui/W;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->mainOnlyAdjustedTextSize:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/cootek/smartinput5/ui/T;->mLastShiftStatus:I

    iput v1, p0, Lcom/cootek/smartinput5/ui/T;->iconPreviewColorType:I

    iput-boolean v1, p0, Lcom/cootek/smartinput5/ui/T;->mTraceSlide:Z

    iput-boolean v1, p0, Lcom/cootek/smartinput5/ui/T;->mLongPressed:Z

    iput-boolean v1, p0, Lcom/cootek/smartinput5/ui/T;->mTraceLongPress:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/cootek/smartinput5/ui/T;->mSupportPreviewPopup:Z

    iput-boolean v2, p0, Lcom/cootek/smartinput5/ui/T;->mSupportCustomSkin:Z

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->mLastPreviewOperation:I

    iput-boolean v1, p0, Lcom/cootek/smartinput5/ui/T;->mLongPressPendingState:Z

    iput v1, p0, Lcom/cootek/smartinput5/ui/T;->foreTextColorType:I

    iput v1, p0, Lcom/cootek/smartinput5/ui/T;->foreTextColor:I

    iput v1, p0, Lcom/cootek/smartinput5/ui/T;->mMovePointCount:I

    const/4 v2, 0x3

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/cootek/smartinput5/ui/T;->dis:[I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/cootek/smartinput5/ui/T;->disSupport:[I

    iput-boolean v1, p0, Lcom/cootek/smartinput5/ui/T;->mTraceCurveInTime:Z

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->Q()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41400000    # 12.0f

    mul-float v3, v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/cootek/smartinput5/ui/T;->WIDTH_THRESHOLD:I

    const/high16 v3, 0x41900000    # 18.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/cootek/smartinput5/ui/T;->HEIGHT_THRESHOLD:I

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iput v1, p0, Lcom/cootek/smartinput5/ui/T;->backgroundType:I

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->mMaxDisplay:I

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->mainOnlyTextSize:I

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->mainTextSize:I

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->altTextSize:I

    iget v1, p1, Lcom/cootek/smartinput5/ui/W;->q:I

    iput v1, p0, Lcom/cootek/smartinput5/ui/T;->mSlideThresholdSquare:I

    iget-boolean p1, p1, Lcom/cootek/smartinput5/ui/W;->h:Z

    iput-boolean p1, p0, Lcom/cootek/smartinput5/ui/T;->altTextInCorner:Z

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->mTriType:I

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->mBinType:I

    new-instance p1, Lcom/cootek/smartinput5/engine/MoveContrail;

    invoke-direct {p1}, Lcom/cootek/smartinput5/engine/MoveContrail;-><init>()V

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/T;->mMoveContrail:Lcom/cootek/smartinput5/engine/MoveContrail;

    new-instance p1, Lcom/cootek/smartinput5/engine/MoveContrail;

    invoke-direct {p1}, Lcom/cootek/smartinput5/engine/MoveContrail;-><init>()V

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/T;->mCurvePoints:Lcom/cootek/smartinput5/engine/MoveContrail;

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/T;->mMoveContrail:Lcom/cootek/smartinput5/engine/MoveContrail;

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget v1, v0, Lcom/cootek/smartinput5/ui/W;->w:I

    iget v0, v0, Lcom/cootek/smartinput5/ui/W;->t:I

    invoke-virtual {p1, v1, v0}, Lcom/cootek/smartinput5/engine/MoveContrail;->setCanvasSize(II)V

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/T;->mCurvePoints:Lcom/cootek/smartinput5/engine/MoveContrail;

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget v1, v0, Lcom/cootek/smartinput5/ui/W;->w:I

    iget v0, v0, Lcom/cootek/smartinput5/ui/W;->u:I

    invoke-virtual {p1, v1, v0}, Lcom/cootek/smartinput5/engine/MoveContrail;->setCanvasSize(II)V

    new-instance p1, Lcom/cootek/smartinput5/ui/SoftKeyInfo;

    invoke-direct {p1}, Lcom/cootek/smartinput5/ui/SoftKeyInfo;-><init>()V

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/T;->mSoftKeyInfo:Lcom/cootek/smartinput5/ui/SoftKeyInfo;

    return-void
.end method

.method private addCurvePoints(IIIZ)V
    .locals 0

    if-eqz p4, :cond_0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/T;->isCorrectCurvePoint()Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget p4, p4, Lcom/cootek/smartinput5/ui/W;->v:I

    sub-int/2addr p2, p4

    iget-object p4, p0, Lcom/cootek/smartinput5/ui/T;->mCurvePoints:Lcom/cootek/smartinput5/engine/MoveContrail;

    invoke-virtual {p4, p1, p2, p3}, Lcom/cootek/smartinput5/engine/MoveContrail;->addPoint(III)V

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/cootek/smartinput5/ui/T;->mCurvePoints:Lcom/cootek/smartinput5/engine/MoveContrail;

    invoke-virtual {p4, p1, p2, p3}, Lcom/cootek/smartinput5/engine/MoveContrail;->addPoint(III)V

    :goto_0
    return-void
.end method

.method private beginListen()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->mListening:Z

    return-void
.end method

.method private canAddCurvePoints(III)Z
    .locals 2

    iget-object p3, p0, Lcom/cootek/smartinput5/ui/T;->mCurvePoints:Lcom/cootek/smartinput5/engine/MoveContrail;

    invoke-virtual {p3}, Lcom/cootek/smartinput5/engine/MoveContrail;->size()I

    move-result p3

    const/4 v0, 0x1

    if-nez p3, :cond_0

    return v0

    :cond_0
    iget-object p3, p0, Lcom/cootek/smartinput5/ui/T;->mCurvePoints:Lcom/cootek/smartinput5/engine/MoveContrail;

    invoke-virtual {p3}, Lcom/cootek/smartinput5/engine/MoveContrail;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p3, v1}, Lcom/cootek/smartinput5/engine/MoveContrail;->getX(I)I

    move-result p3

    sub-int/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p3, p0, Lcom/cootek/smartinput5/ui/T;->WIDTH_THRESHOLD:I

    if-le p1, p3, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/T;->mCurvePoints:Lcom/cootek/smartinput5/engine/MoveContrail;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/MoveContrail;->size()I

    move-result p3

    sub-int/2addr p3, v0

    invoke-virtual {p1, p3}, Lcom/cootek/smartinput5/engine/MoveContrail;->getY(I)I

    move-result p1

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/cootek/smartinput5/ui/T;->HEIGHT_THRESHOLD:I

    if-le p1, p2, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private collectKeyPressData()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->keyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->keyName:Ljava/lang/String;

    const-string v1, "sk_num"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/T;->collectNumberLineUsage()V

    :cond_0
    return-void
.end method

.method private collectNumberLineUsage()V
    .locals 5

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->Q()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->getStringSetting(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/T;->keyName:Ljava/lang/String;

    const-string v4, "KEY_NAME"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/cootek/smartinput5/ui/T;->getCurrentApp()Ljava/lang/String;

    move-result-object v3

    const-string v4, "USE_IN_APP"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "CURRENT_KEYBOARD_LANGUAGE"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object v0

    const-string v1, "NUMBER_LINE_USAGE"

    const-string v3, "/UI/"

    invoke-virtual {v0, v1, v2, v3}, Lcom/cootek/smartinput5/l/g;->n(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private copyFromParent(Lcom/cootek/smartinput5/ui/T;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/cootek/smartinput5/ui/T;->mainOnlyTextSize:I

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->mainOnlyTextSize:I

    iget v0, p1, Lcom/cootek/smartinput5/ui/T;->mainTextSize:I

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->mainTextSize:I

    iget v0, p1, Lcom/cootek/smartinput5/ui/T;->altTextSize:I

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->altTextSize:I

    iget v0, p1, Lcom/cootek/smartinput5/ui/T;->width:I

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->width:I

    iget v0, p1, Lcom/cootek/smartinput5/ui/T;->height:I

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->height:I

    iget v0, p1, Lcom/cootek/smartinput5/ui/T;->gap:I

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->gap:I

    iget v0, p1, Lcom/cootek/smartinput5/ui/T;->mSlideThresholdSquare:I

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->mSlideThresholdSquare:I

    iget-boolean v0, p1, Lcom/cootek/smartinput5/ui/T;->altTextInCorner:Z

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->altTextInCorner:Z

    iget-object v0, p1, Lcom/cootek/smartinput5/ui/T;->mainTextXAlign:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mainTextXAlign:Landroid/graphics/Paint$Align;

    iget-object v0, p1, Lcom/cootek/smartinput5/ui/T;->mainTextYAlign:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mainTextYAlign:Landroid/graphics/Paint$Align;

    iget-object v0, p1, Lcom/cootek/smartinput5/ui/T;->altTextXAlign:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/T;->altTextXAlign:Landroid/graphics/Paint$Align;

    iget-object v0, p1, Lcom/cootek/smartinput5/ui/T;->altTextYAlign:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/T;->altTextYAlign:Landroid/graphics/Paint$Align;

    iget-object v0, p1, Lcom/cootek/smartinput5/ui/T;->mainTextPos:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mainTextPos:Landroid/graphics/Point;

    iget-object v0, p1, Lcom/cootek/smartinput5/ui/T;->altTextPos:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/T;->altTextPos:Landroid/graphics/Point;

    iget-object v0, p1, Lcom/cootek/smartinput5/ui/T;->leftTextPos:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/T;->leftTextPos:Landroid/graphics/Point;

    iget-object v0, p1, Lcom/cootek/smartinput5/ui/T;->rightTextPos:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/T;->rightTextPos:Landroid/graphics/Point;

    iget v0, p1, Lcom/cootek/smartinput5/ui/T;->backgroundType:I

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->backgroundType:I

    iget v0, p1, Lcom/cootek/smartinput5/ui/T;->mTriType:I

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->mTriType:I

    iget v0, p1, Lcom/cootek/smartinput5/ui/T;->mBinType:I

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->mBinType:I

    iget v0, p1, Lcom/cootek/smartinput5/ui/T;->foreIconType:I

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->foreIconType:I

    iget v0, p1, Lcom/cootek/smartinput5/ui/T;->foreTextColor:I

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->foreTextColor:I

    iget v0, p1, Lcom/cootek/smartinput5/ui/T;->mCombineFlag:I

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->mCombineFlag:I

    iget-boolean v0, p1, Lcom/cootek/smartinput5/ui/T;->mIgnoreCurve:Z

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->mIgnoreCurve:Z

    iget-boolean v0, p1, Lcom/cootek/smartinput5/ui/T;->mIgnoreSlip:Z

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->mIgnoreSlip:Z

    iget-boolean v0, p1, Lcom/cootek/smartinput5/ui/T;->allowMultiLine:Z

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->allowMultiLine:Z

    iget-boolean v0, p1, Lcom/cootek/smartinput5/ui/T;->splitWord:Z

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->splitWord:Z

    iget-boolean v0, p1, Lcom/cootek/smartinput5/ui/T;->altTitlePreviewOnly:Z

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->altTitlePreviewOnly:Z

    iget-boolean v0, p1, Lcom/cootek/smartinput5/ui/T;->iconWithMainTitle:Z

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->iconWithMainTitle:Z

    iget-boolean v0, p1, Lcom/cootek/smartinput5/ui/T;->hasLongPressIcon:Z

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->hasLongPressIcon:Z

    iget-object v0, p1, Lcom/cootek/smartinput5/ui/T;->longPressIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/T;->longPressIcon:Landroid/graphics/drawable/Drawable;

    iget v0, p1, Lcom/cootek/smartinput5/ui/T;->mMaxDisplay:I

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->mMaxDisplay:I

    iget v0, p1, Lcom/cootek/smartinput5/ui/T;->mDisplayType:I

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->mDisplayType:I

    iget v0, p1, Lcom/cootek/smartinput5/ui/T;->mExtendSurfaceType:I

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->mExtendSurfaceType:I

    iget v0, p1, Lcom/cootek/smartinput5/ui/T;->intTag:I

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->intTag:I

    iget-boolean v0, p1, Lcom/cootek/smartinput5/ui/T;->mSupportPreviewPopup:Z

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->mSupportPreviewPopup:Z

    iget v0, p1, Lcom/cootek/smartinput5/ui/T;->edgeFlags:I

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->edgeFlags:I

    iget-object v0, p1, Lcom/cootek/smartinput5/ui/T;->identifyId:Ljava/lang/String;

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/T;->identifyId:Ljava/lang/String;

    iget v0, p1, Lcom/cootek/smartinput5/ui/T;->mKeyMainTextColor:I

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->mKeyMainTextColor:I

    iget v0, p1, Lcom/cootek/smartinput5/ui/T;->mKeyAltTextColor:I

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->mKeyAltTextColor:I

    iget-object p1, p1, Lcom/cootek/smartinput5/ui/T;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/T;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private dismissPreview()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->mLastPreviewOperation:I

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->V()Lcom/cootek/smartinput5/ui/control/A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/control/A;->d()V

    return-void
.end method

.method private endListen()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->mListening:Z

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/W;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->R()Lcom/cootek/smartinput5/ui/control/MoveContrailView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/control/MoveContrailView;->e()V

    :cond_0
    return-void
.end method

.method public static getBackgroundType(Ljava/lang/String;)I
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/cootek/smartinput5/ui/T;->sBackgroundMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static getCurrentApp()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getEditor()Lcom/cootek/smartinput5/engine/Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Editor;->getEditorPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private getForeTextColorId(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const p1, 0x7f060218

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const p1, 0x7f0600b3

    goto :goto_0

    :cond_1
    const p1, 0x7f06021b

    :goto_0
    return p1
.end method

.method private hasExtendKey()Z
    .locals 2

    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->mTraceLongPress:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mSoftKeyInfo:Lcom/cootek/smartinput5/ui/SoftKeyInfo;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/SoftKeyInfo;->isOperationSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isCharacterNormalKey(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/cootek/smartinput5/ui/T;->PATTERN_NORMAL_KEY:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isCorrectCurvePoint()Z
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/W;->z()Lcom/cootek/smartinput5/ui/schema/KeyboardSchema;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/W;->z()Lcom/cootek/smartinput5/ui/schema/KeyboardSchema;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/schema/KeyboardSchema;->getNumKeyboardSchemaId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x18d

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFuncKey(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private isSlide(IIII)Z
    .locals 0

    sub-int/2addr p3, p1

    sub-int/2addr p4, p2

    invoke-virtual {p0, p3, p4}, Lcom/cootek/smartinput5/ui/T;->isSlide(II)Z

    move-result p1

    return p1
.end method

.method private isSwipeDownOnT9(I)Z
    .locals 2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/func/paopaopanel/KeyboardSubTypeProvider;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x283

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->keyName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "sk_1_1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sk_1_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sk_1_3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sk_2_1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sk_2_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sk_2_3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sk_3_1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sk_3_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sk_3_3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isTriBinStateChanged()Z
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mCurrentDrawableState:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->getCurrentDrawableState()[I

    move-result-object v0

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/T;->mCurrentDrawableState:[I

    invoke-static {v0, v2}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method private pauseMultiTouch()V
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Engine;->setMutiTouchPaused(Z)V

    return-void
.end method

.method private quadrant(II)I
    .locals 0

    if-lez p2, :cond_1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    if-lez p1, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const/4 p1, 0x2

    return p1
.end method

.method private resetRendingMap()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mRendingMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mRendingMap:Ljava/util/HashMap;

    :cond_0
    return-void
.end method

.method private startTraceCurveInTime()V
    .locals 4

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/W;->p()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/ui/W;->p()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->mTraceCurveInTime:Z

    return-void
.end method

.method private startTraceLongPress()V
    .locals 9

    const/4 v0, -0x1

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->mLongPressType:I

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->mSoftKeyInfo:Lcom/cootek/smartinput5/ui/SoftKeyInfo;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/ui/SoftKeyInfo;->isOperationSupported(I)Z

    move-result v1

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/T;->mSoftKeyInfo:Lcom/cootek/smartinput5/ui/SoftKeyInfo;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/cootek/smartinput5/ui/SoftKeyInfo;->isOperationSupported(I)Z

    move-result v3

    iget-object v5, p0, Lcom/cootek/smartinput5/ui/T;->mSoftKeyInfo:Lcom/cootek/smartinput5/ui/SoftKeyInfo;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lcom/cootek/smartinput5/ui/SoftKeyInfo;->isOperationSupported(I)Z

    move-result v5

    iget-object v6, p0, Lcom/cootek/smartinput5/ui/T;->mSoftKeyInfo:Lcom/cootek/smartinput5/ui/SoftKeyInfo;

    const/16 v7, 0xf

    invoke-virtual {v6, v7}, Lcom/cootek/smartinput5/ui/SoftKeyInfo;->isOperationSupported(I)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v5, :cond_0

    if-eqz v6, :cond_1

    :cond_0
    if-nez v1, :cond_2

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v8, 0x1

    :goto_1
    if-eqz v8, :cond_3

    iput-boolean v4, p0, Lcom/cootek/smartinput5/ui/T;->mLongPressPendingState:Z

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->getLongpressMultiThreshold()I

    move-result v1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->getLongpressOnceThreshold()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/cootek/smartinput5/ui/T;->mLongpressThreshold:I

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    iput v2, p0, Lcom/cootek/smartinput5/ui/T;->mLongPressType:I

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->getLongpressMultiThreshold()I

    move-result v1

    iput v1, p0, Lcom/cootek/smartinput5/ui/T;->mLongpressThreshold:I

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    iput v4, p0, Lcom/cootek/smartinput5/ui/T;->mLongPressType:I

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->getLongpressOnceThreshold()I

    move-result v1

    iput v1, p0, Lcom/cootek/smartinput5/ui/T;->mLongpressThreshold:I

    goto :goto_2

    :cond_5
    if-nez v5, :cond_6

    if-eqz v6, :cond_7

    :cond_6
    iput-boolean v4, p0, Lcom/cootek/smartinput5/ui/T;->mLongPressPendingState:Z

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->getLongpressMultiThreshold()I

    move-result v1

    iput v1, p0, Lcom/cootek/smartinput5/ui/T;->mLongpressThreshold:I

    :cond_7
    :goto_2
    iget v1, p0, Lcom/cootek/smartinput5/ui/T;->mLongPressType:I

    if-ne v1, v0, :cond_9

    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->mLongPressPendingState:Z

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    iput-boolean v7, p0, Lcom/cootek/smartinput5/ui/T;->mTraceLongPress:Z

    goto :goto_4

    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/W;->p()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/cootek/smartinput5/ui/T;->mLongPressType:I

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/ui/W;->p()Landroid/os/Handler;

    move-result-object v1

    iget v2, p0, Lcom/cootek/smartinput5/ui/T;->mLongpressThreshold:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput-boolean v4, p0, Lcom/cootek/smartinput5/ui/T;->mTraceLongPress:Z

    :goto_4
    return-void
.end method

.method private supportOperation(II)I
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mSoftKeyInfo:Lcom/cootek/smartinput5/ui/SoftKeyInfo;

    sget-object v1, Lcom/cootek/smartinput5/ui/T;->action:[[I

    aget-object p2, v1, p2

    aget p1, p2, p1

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/ui/SoftKeyInfo;->isOperationSupported(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const p1, 0x3fffffff    # 1.9999999f

    return p1
.end method

.method private traceLongPressSlide()Z
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mSoftKeyInfo:Lcom/cootek/smartinput5/ui/SoftKeyInfo;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/SoftKeyInfo;->isOperationSupported(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mSoftKeyInfo:Lcom/cootek/smartinput5/ui/SoftKeyInfo;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/SoftKeyInfo;->isOperationSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private unPauseMultiTouch()V
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Engine;->setMutiTouchPaused(Z)V

    return-void
.end method

.method public static updateAttrId(Z)V
    .locals 8

    const v0, 0x7f0401eb

    const v1, 0x7f0401ec

    const v2, 0x7f0401f0

    const v3, 0x7f0401f1

    const v4, 0x7f0401f3

    const v5, 0x7f0401f2

    const/4 v6, 0x0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/cootek/smartinput5/ui/T;->STATE_TRI_NONE_CURRENT:[I

    aput v5, p0, v6

    sget-object p0, Lcom/cootek/smartinput5/ui/T;->STATE_TRI_TOGGLE_CURRENT:[I

    aput v4, p0, v6

    sget-object p0, Lcom/cootek/smartinput5/ui/T;->STATE_TRI_LOCK_CURRENT:[I

    aput v3, p0, v6

    sget-object p0, Lcom/cootek/smartinput5/ui/T;->STATE_TRI_FORTH_CURRENT:[I

    aput v2, p0, v6

    sget-object p0, Lcom/cootek/smartinput5/ui/T;->STATE_BIN_ON_CURRENT:[I

    aput v1, p0, v6

    sget-object p0, Lcom/cootek/smartinput5/ui/T;->STATE_BIN_OFF_CURRENT:[I

    aput v0, p0, v6

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/cootek/smartinput5/ui/T;->STATE_TRI_NONE_CURRENT:[I

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/cootek/smartinput5/func/i0;->c0(I)I

    move-result v5

    aput v5, p0, v6

    sget-object p0, Lcom/cootek/smartinput5/ui/T;->STATE_TRI_TOGGLE_CURRENT:[I

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/cootek/smartinput5/func/i0;->c0(I)I

    move-result v4

    aput v4, p0, v6

    sget-object p0, Lcom/cootek/smartinput5/ui/T;->STATE_TRI_LOCK_CURRENT:[I

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/cootek/smartinput5/func/i0;->c0(I)I

    move-result v3

    aput v3, p0, v6

    sget-object p0, Lcom/cootek/smartinput5/ui/T;->STATE_TRI_FORTH_CURRENT:[I

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/cootek/smartinput5/func/i0;->c0(I)I

    move-result v2

    aput v2, p0, v6

    sget-object p0, Lcom/cootek/smartinput5/ui/T;->STATE_BIN_ON_CURRENT:[I

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/cootek/smartinput5/func/i0;->c0(I)I

    move-result v1

    aput v1, p0, v6

    sget-object p0, Lcom/cootek/smartinput5/ui/T;->STATE_BIN_OFF_CURRENT:[I

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/func/i0;->c0(I)I

    move-result v0

    aput v0, p0, v6

    :goto_0
    return-void
.end method


# virtual methods
.method protected cacheRendingColor(Landroid/graphics/drawable/Drawable;Lcom/cootek/smartinput5/ui/RendingColorPosition;)V
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/cootek/smartinput5/ui/RendingColorPosition;->getRendingColor()Lcom/cootek/smartinput5/ui/K;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mRendingMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mRendingMap:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mRendingMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/cootek/smartinput5/ui/RendingColorPosition;->getRendingColor()Lcom/cootek/smartinput5/ui/K;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public curveInTime(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x11

    if-ne p1, v0, :cond_3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/o0;->a0()Lcom/cootek/smartinput5/ui/control/SlideSentenceView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/o0;->a0()Lcom/cootek/smartinput5/ui/control/SlideSentenceView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/control/SlideSentenceView;->n0()V

    :cond_0
    iget-boolean p1, p0, Lcom/cootek/smartinput5/ui/T;->mInThreshold:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cootek/smartinput5/ui/T;->mInThreshold:Z

    iput-boolean p1, p0, Lcom/cootek/smartinput5/ui/T;->mComputedRightNow:Z

    :cond_1
    iget-boolean p1, p0, Lcom/cootek/smartinput5/ui/T;->mComputedRightNow:Z

    if-nez p1, :cond_3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    :cond_2
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget-object p1, p1, Lcom/cootek/smartinput5/ui/W;->U:Lcom/cootek/smartinput5/ui/W$c;

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mCurvePoints:Lcom/cootek/smartinput5/engine/MoveContrail;

    invoke-interface {p1, v0}, Lcom/cootek/smartinput5/ui/W$c;->b(Lcom/cootek/smartinput5/engine/MoveContrail;)V

    iput-boolean v1, p0, Lcom/cootek/smartinput5/ui/T;->mComputedRightNow:Z

    :cond_3
    return-void
.end method

.method public destroy()V
    .locals 1

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/T;->resetRendingMap()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    return-void
.end method

.method protected doKeyAction(I)V
    .locals 7

    invoke-static {p0, p1}, Lcom/cootek/smartinput5/ui/SymbolHoldProbe;->action(Lcom/cootek/smartinput5/ui/T;I)V

    sput-object p0, Lcom/cootek/smartinput5/ui/T;->lastInputKey:Lcom/cootek/smartinput5/ui/T;

    iget v0, p0, Lcom/cootek/smartinput5/ui/T;->mCombineFlag:I

    if-nez v0, :cond_11

    const-string v0, "sk_sp"

    if-nez p1, :cond_1

    iget v1, p0, Lcom/cootek/smartinput5/ui/T;->backgroundType:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->isCharacterNormalKey()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v1

    const-string v2, "A"

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/engine/Engine;->updateInputOp(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->keyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v1

    const-string v2, "B"

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/engine/Engine;->updateInputOp(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v1, 0x7

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_2

    const/16 v3, 0xe

    if-eq p1, v3, :cond_2

    const/16 v3, 0xf

    if-ne p1, v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/cootek/smartinput5/ui/T;->keyName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->jumpToLangSetting()Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    if-nez p1, :cond_5

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/T;->keyName:Ljava/lang/String;

    const-string v4, "sk_lng"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->jumpToLangSetting()Z

    move-result v3

    if-eqz v3, :cond_4

    return-void

    :cond_4
    iget-object v3, p0, Lcom/cootek/smartinput5/ui/T;->keyName:Ljava/lang/String;

    const-string v4, "sk_lng_key"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->jumpToLangSetting()Z

    move-result v3

    if-eqz v3, :cond_5

    return-void

    :cond_5
    iget v3, p0, Lcom/cootek/smartinput5/ui/T;->backgroundType:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->isCharacterNormalKey()Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    const/16 v3, 0xc

    if-ne p1, v3, :cond_8

    :cond_7
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/smartinput5/engine/Engine;->isClickTransMode()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/cootek/smartinput5/engine/Engine;->fireTransactionOperation(I)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/cootek/smartinput5/engine/Engine;->setClickTransMode(Z)V

    goto :goto_1

    :cond_8
    if-nez p1, :cond_9

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/smartinput5/engine/Engine;->isClickTransMode()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/cootek/smartinput5/engine/Engine;->setClickTransMode(Z)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/cootek/smartinput5/engine/Engine;->fireTransactionOperation(I)V

    :cond_9
    :goto_1
    if-eq p1, v2, :cond_a

    if-ne p1, v1, :cond_b

    :cond_a
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v1

    iget-boolean v1, v1, Lcom/cootek/smartinput5/engine/Engine;->isMultitouch:Z

    if-nez v1, :cond_c

    :cond_b
    if-ne p1, v5, :cond_e

    :cond_c
    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->keyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->jumpToLangSetting()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->isClickTransMode()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/cootek/smartinput5/engine/Engine;->setClickTransMode(Z)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/cootek/smartinput5/engine/Engine;->fireTransactionOperation(I)V

    :cond_e
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    invoke-static {p0, v0, p1}, Lcom/cootek/smartinput5/ui/SoftKeyActionInfo;->getActionInfo(Lcom/cootek/smartinput5/ui/T;Lcom/cootek/smartinput5/ui/W;I)Lcom/cootek/smartinput5/ui/SoftKeyActionInfo;

    move-result-object v0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v1

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    invoke-virtual {v3}, Lcom/cootek/smartinput5/ui/W;->o()I

    move-result v3

    invoke-virtual {v1, v0, p1, v3}, Lcom/cootek/smartinput5/engine/Engine;->fireKeyOperation(Lcom/cootek/smartinput5/ui/SoftKeyActionInfo;II)V

    const/16 v0, 0xd

    if-ne p1, v0, :cond_f

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->isClickTransMode()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/cootek/smartinput5/engine/Engine;->setClickTransMode(Z)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/cootek/smartinput5/engine/Engine;->fireTransactionOperation(I)V

    goto :goto_2

    :cond_f
    if-ne p1, v2, :cond_10

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/T;->keyName:Ljava/lang/String;

    const-string v0, "sk_bk"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    const/16 v0, 0xe9

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->D0()Lcom/cootek/smartinput5/func/s0;

    move-result-object p1

    invoke-static {p1, v6, p0}, Lcom/cootek/smartinput5/settings/SpaceOnlyVibration;->vibrate(Lcom/cootek/smartinput5/func/s0;ZLcom/cootek/smartinput5/ui/T;)V

    :cond_10
    :goto_2
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/W;->g()V

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/W;->b()V

    goto :goto_3

    :cond_11
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/W;->L()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v1

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/T;->keyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/engine/Engine;->getKeyId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/cootek/smartinput5/engine/Engine;->fireKeyOperation(II)V

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/W;->b()V

    :cond_12
    :goto_3
    return-void
.end method

.method protected doLongPressLeftSlide(Landroid/os/Message;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->mLongPressed:Z

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mActionListener:Lcom/cootek/smartinput5/ui/T$b;

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Lcom/cootek/smartinput5/ui/T$b;->a(I)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->processEvent()V

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/ui/T;->restartLongPressMultiCycle(Landroid/os/Message;)V

    return-void
.end method

.method protected doLongPressMulti(Landroid/os/Message;)V
    .locals 3

    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->mLongPressed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mSoftKeyInfo:Lcom/cootek/smartinput5/ui/SoftKeyInfo;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/SoftKeyInfo;->isOperationSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mActionListener:Lcom/cootek/smartinput5/ui/T$b;

    invoke-interface {v0, v1}, Lcom/cootek/smartinput5/ui/T$b;->a(I)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->mLongPressed:Z

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Engine;->getCandidateManager()Lcom/cootek/smartinput5/engine/CandidateManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/engine/CandidateManager;->EnableUpdate(Z)V

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->mActionListener:Lcom/cootek/smartinput5/ui/T$b;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/cootek/smartinput5/ui/T$b;->a(I)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Engine;->processEvent()V

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/ui/T;->restartLongPressMultiCycle(Landroid/os/Message;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/T;->keyName:Ljava/lang/String;

    const-string v1, "sk_bk"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/cootek/smartinput5/engine/Engine;->setLongPressDelete(Z)V

    :cond_1
    return-void
.end method

.method protected doLongPressOnce(Landroid/os/Message;)V
    .locals 3

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/T;->dismissPreview()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    const/16 v0, 0xdb

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/o0;->a0()Lcom/cootek/smartinput5/ui/control/SlideSentenceView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/o0;->a0()Lcom/cootek/smartinput5/ui/control/SlideSentenceView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/control/SlideSentenceView;->R()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cootek/smartinput5/ui/T;->mLongPressed:Z

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mActionListener:Lcom/cootek/smartinput5/ui/T$b;

    invoke-interface {v0, p1}, Lcom/cootek/smartinput5/ui/T$b;->a(I)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->processEvent()V

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/T;->keyName:Ljava/lang/String;

    const-string v0, "sk_sp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->Q()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object p1

    const-string v0, "LONG_PRESS_SPACE_VOICE"

    const-string v1, "CLICK"

    const-string v2, "/STATISTIC/"

    invoke-virtual {p1, v0, v1, v2}, Lcom/cootek/smartinput5/l/g;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected doLongPressRightSlide(Landroid/os/Message;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->mLongPressed:Z

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mActionListener:Lcom/cootek/smartinput5/ui/T$b;

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Lcom/cootek/smartinput5/ui/T$b;->a(I)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->processEvent()V

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/ui/T;->restartLongPressMultiCycle(Landroid/os/Message;)V

    return-void
.end method

.method protected getBackState()[I
    .locals 1

    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->mPressed:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cootek/smartinput5/ui/T;->STATE_PRESSED:[I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCurrentDrawableState()[I
    .locals 2

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->getBackState()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->getForeState()[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/ui/control/C;->b([I[I)[I

    move-result-object v0

    return-object v0
.end method

.method public getDownX()I
    .locals 1

    iget v0, p0, Lcom/cootek/smartinput5/ui/T;->downX:I

    return v0
.end method

.method public getDownY()I
    .locals 1

    iget v0, p0, Lcom/cootek/smartinput5/ui/T;->downY:I

    return v0
.end method

.method protected getForeColor()Ljava/lang/Integer;
    .locals 1

    iget v0, p0, Lcom/cootek/smartinput5/ui/T;->foreTextColor:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected getForeState()[I
    .locals 7

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/i0;->x0(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    iget v1, p0, Lcom/cootek/smartinput5/ui/T;->mBinType:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_4

    const/4 v1, 0x0

    invoke-static {}, Lcom/cootek/smartinput5/func/N;->D0()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/cootek/smartinput5/ui/T;->mBinType:I

    if-nez v2, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v1

    :cond_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    sget-object v0, Lcom/cootek/smartinput5/ui/T;->STATE_BIN_ON_DEFAULT:[I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/cootek/smartinput5/ui/T;->STATE_BIN_ON_CURRENT:[I

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    sget-object v0, Lcom/cootek/smartinput5/ui/T;->STATE_BIN_OFF_DEFAULT:[I

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/cootek/smartinput5/ui/T;->STATE_BIN_OFF_CURRENT:[I

    :goto_0
    move-object v4, v0

    goto/16 :goto_1

    :cond_4
    iget v1, p0, Lcom/cootek/smartinput5/ui/T;->mTriType:I

    if-eq v1, v2, :cond_15

    const/4 v2, 0x2

    if-gt v1, v2, :cond_d

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v1

    iget v5, p0, Lcom/cootek/smartinput5/ui/T;->mTriType:I

    invoke-virtual {v1, v5}, Lcom/cootek/smartinput5/engine/Engine;->getTriStatus(I)I

    move-result v1

    iget v5, p0, Lcom/cootek/smartinput5/ui/T;->mTriType:I

    if-nez v5, :cond_6

    iget v5, p0, Lcom/cootek/smartinput5/ui/T;->mLastShiftStatus:I

    if-eq v1, v5, :cond_5

    if-lez v5, :cond_5

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v5

    sget-object v6, Lcom/cootek/tool/perf/PerfActionType;->SHIFT_STATUS_CHANGED:Lcom/cootek/tool/perf/PerfActionType;

    invoke-virtual {v5, v6}, Lcom/cootek/tool/perf/d;->a(Lcom/cootek/tool/perf/PerfActionType;)V

    :cond_5
    iput v1, p0, Lcom/cootek/smartinput5/ui/T;->mLastShiftStatus:I

    :cond_6
    if-eq v1, v3, :cond_b

    if-eq v1, v2, :cond_9

    const/4 v2, 0x3

    if-eq v1, v2, :cond_7

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    sget-object v0, Lcom/cootek/smartinput5/ui/T;->STATE_TRI_LOCK_DEFAULT:[I

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/cootek/smartinput5/ui/T;->STATE_TRI_LOCK_CURRENT:[I

    goto :goto_0

    :cond_9
    if-eqz v0, :cond_a

    sget-object v0, Lcom/cootek/smartinput5/ui/T;->STATE_TRI_TOGGLE_DEFAULT:[I

    goto :goto_0

    :cond_a
    sget-object v0, Lcom/cootek/smartinput5/ui/T;->STATE_TRI_TOGGLE_CURRENT:[I

    goto :goto_0

    :cond_b
    if-eqz v0, :cond_c

    sget-object v0, Lcom/cootek/smartinput5/ui/T;->STATE_TRI_NONE_DEFAULT:[I

    goto :goto_0

    :cond_c
    sget-object v0, Lcom/cootek/smartinput5/ui/T;->STATE_TRI_NONE_CURRENT:[I

    goto :goto_0

    :cond_d
    const/4 v2, 0x4

    if-ne v1, v2, :cond_15

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    const/16 v4, 0x83

    invoke-virtual {v1, v4}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(I)I

    move-result v1

    if-nez v1, :cond_f

    if-eqz v0, :cond_e

    sget-object v0, Lcom/cootek/smartinput5/ui/T;->STATE_TRI_NONE_DEFAULT:[I

    goto :goto_0

    :cond_e
    sget-object v0, Lcom/cootek/smartinput5/ui/T;->STATE_TRI_NONE_CURRENT:[I

    goto :goto_0

    :cond_f
    if-ne v1, v3, :cond_11

    if-eqz v0, :cond_10

    sget-object v0, Lcom/cootek/smartinput5/ui/T;->STATE_TRI_TOGGLE_DEFAULT:[I

    goto :goto_0

    :cond_10
    sget-object v0, Lcom/cootek/smartinput5/ui/T;->STATE_TRI_TOGGLE_CURRENT:[I

    goto :goto_0

    :cond_11
    if-lt v1, v2, :cond_13

    if-eqz v0, :cond_12

    sget-object v0, Lcom/cootek/smartinput5/ui/T;->STATE_TRI_FORTH_DEFAULT:[I

    goto :goto_0

    :cond_12
    sget-object v0, Lcom/cootek/smartinput5/ui/T;->STATE_TRI_FORTH_CURRENT:[I

    goto :goto_0

    :cond_13
    if-eqz v0, :cond_14

    sget-object v0, Lcom/cootek/smartinput5/ui/T;->STATE_TRI_LOCK_DEFAULT:[I

    goto :goto_0

    :cond_14
    sget-object v0, Lcom/cootek/smartinput5/ui/T;->STATE_TRI_LOCK_CURRENT:[I

    goto/16 :goto_0

    :cond_15
    :goto_1
    return-object v4
.end method

.method public getKeyIconConstantRatio()D
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method public getKeyIconHeight()I
    .locals 6

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->getKeyIconConstantRatio()D

    move-result-wide v0

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/T;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/cootek/smartinput5/ui/T;->height:I

    iget v4, p0, Lcom/cootek/smartinput5/ui/T;->width:I

    if-le v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/T;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget v4, p0, Lcom/cootek/smartinput5/ui/T;->width:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v0

    double-to-int v4, v4

    if-lez v2, :cond_0

    mul-int v4, v4, v3

    div-int/2addr v4, v2

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-gtz v4, :cond_1

    iget v2, p0, Lcom/cootek/smartinput5/ui/T;->height:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    double-to-int v4, v2

    :cond_1
    return v4
.end method

.method public getKeyIconWidth()I
    .locals 6

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->getKeyIconConstantRatio()D

    move-result-wide v0

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/T;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/cootek/smartinput5/ui/T;->width:I

    iget v4, p0, Lcom/cootek/smartinput5/ui/T;->height:I

    if-le v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/T;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget v4, p0, Lcom/cootek/smartinput5/ui/T;->height:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v0

    double-to-int v4, v4

    if-lez v3, :cond_0

    mul-int v4, v4, v2

    div-int/2addr v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-gtz v4, :cond_1

    iget v2, p0, Lcom/cootek/smartinput5/ui/T;->width:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    double-to-int v4, v2

    :cond_1
    return v4
.end method

.method protected getLongpressMultiThreshold()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method protected getLongpressOnceThreshold()I
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/engine/HighFreqSettings;->getInstance()Lcom/cootek/smartinput5/engine/HighFreqSettings;

    move-result-object v0

    iget v0, v0, Lcom/cootek/smartinput5/engine/HighFreqSettings;->longPressDelay:I

    return v0
.end method

.method protected getPreviewHeight()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected getPreviewIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/T;->iconPreviewRight:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/T;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/cootek/smartinput5/ui/T;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected getPreviewText(I)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->keyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Engine;->getKeyId(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/cootek/smartinput5/engine/Engine;->getPreviewText(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/T;->mSoftKeyInfo:Lcom/cootek/smartinput5/ui/SoftKeyInfo;

    iget-object p1, p1, Lcom/cootek/smartinput5/ui/SoftKeyInfo;->mainTitle:Ljava/lang/String;

    :cond_1
    return-object p1
.end method

.method protected getPreviewWidth()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getRelativeX()I
    .locals 3

    iget v0, p0, Lcom/cootek/smartinput5/ui/T;->width:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/cootek/smartinput5/ui/T;->downX:I

    iget v2, p0, Lcom/cootek/smartinput5/ui/T;->x:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getRelativeY()I
    .locals 3

    iget v0, p0, Lcom/cootek/smartinput5/ui/T;->height:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/cootek/smartinput5/ui/T;->downY:I

    iget v2, p0, Lcom/cootek/smartinput5/ui/T;->y:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method getSlideDirection(II)I
    .locals 9

    invoke-direct {p0, p1, p2}, Lcom/cootek/smartinput5/ui/T;->quadrant(II)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/4 v1, -0x1

    const/4 v2, 0x0

    const v3, 0x3fffffff    # 1.9999999f

    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_0
    const/4 v6, 0x3

    if-ge v4, v6, :cond_1

    sget-object v6, Lcom/cootek/smartinput5/ui/T;->param:[[I

    aget-object v7, v6, v4

    aget v7, v7, v2

    mul-int v7, v7, p1

    aget-object v6, v6, v4

    const/4 v8, 0x1

    aget v6, v6, v8

    mul-int v6, v6, p2

    add-int/2addr v7, v6

    mul-int v7, v7, v7

    iget-object v6, p0, Lcom/cootek/smartinput5/ui/T;->dis:[I

    sget-object v8, Lcom/cootek/smartinput5/ui/T;->denominator:[I

    aget v8, v8, v4

    div-int/2addr v7, v8

    aput v7, v6, v4

    iget-object v7, p0, Lcom/cootek/smartinput5/ui/T;->disSupport:[I

    aget v6, v6, v4

    invoke-direct {p0, v4, v0}, Lcom/cootek/smartinput5/ui/T;->supportOperation(II)I

    move-result v8

    add-int/2addr v6, v8

    aput v6, v7, v4

    iget-object v6, p0, Lcom/cootek/smartinput5/ui/T;->disSupport:[I

    aget v7, v6, v4

    if-ge v7, v3, :cond_0

    aget v3, v6, v4

    move v5, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eq v5, v1, :cond_2

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/T;->dis:[I

    aget p2, p1, v5

    rsub-int/lit8 v1, v5, 0x2

    aget p1, p1, v1

    if-gt p2, p1, :cond_2

    sget-object p1, Lcom/cootek/smartinput5/ui/T;->action:[[I

    aget-object p1, p1, v0

    aget v2, p1, v5

    :cond_2
    return v2
.end method

.method getSoftKeyDrawInfo()Lcom/cootek/smartinput5/ui/U;
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mSoftKeyDrawInfo:Lcom/cootek/smartinput5/ui/U;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cootek/smartinput5/ui/U;

    invoke-direct {v0}, Lcom/cootek/smartinput5/ui/U;-><init>()V

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mSoftKeyDrawInfo:Lcom/cootek/smartinput5/ui/U;

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mSoftKeyDrawInfo:Lcom/cootek/smartinput5/ui/U;

    iget v1, p0, Lcom/cootek/smartinput5/ui/T;->x:I

    iput v1, v0, Lcom/cootek/smartinput5/ui/U;->d:I

    iget v1, p0, Lcom/cootek/smartinput5/ui/T;->y:I

    iput v1, v0, Lcom/cootek/smartinput5/ui/U;->e:I

    iget v1, p0, Lcom/cootek/smartinput5/ui/T;->width:I

    iput v1, v0, Lcom/cootek/smartinput5/ui/U;->f:I

    iget v1, p0, Lcom/cootek/smartinput5/ui/T;->height:I

    iput v1, v0, Lcom/cootek/smartinput5/ui/U;->g:I

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->mSoftKeyInfo:Lcom/cootek/smartinput5/ui/SoftKeyInfo;

    iget-object v2, v1, Lcom/cootek/smartinput5/ui/SoftKeyInfo;->mainTitle:Ljava/lang/String;

    iput-object v2, v0, Lcom/cootek/smartinput5/ui/U;->j:Ljava/lang/String;

    iget-object v2, v1, Lcom/cootek/smartinput5/ui/SoftKeyInfo;->leftTitle:Ljava/lang/String;

    iput-object v2, v0, Lcom/cootek/smartinput5/ui/U;->k:Ljava/lang/String;

    iget-object v2, v1, Lcom/cootek/smartinput5/ui/SoftKeyInfo;->rightTitle:Ljava/lang/String;

    iput-object v2, v0, Lcom/cootek/smartinput5/ui/U;->l:Ljava/lang/String;

    iget-object v2, v1, Lcom/cootek/smartinput5/ui/SoftKeyInfo;->altTitle:Ljava/lang/String;

    iput-object v2, v0, Lcom/cootek/smartinput5/ui/U;->m:Ljava/lang/String;

    iget v1, v1, Lcom/cootek/smartinput5/ui/SoftKeyInfo;->printTitle:I

    iput v1, v0, Lcom/cootek/smartinput5/ui/U;->h:I

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->mainTextXAlign:Landroid/graphics/Paint$Align;

    iput-object v1, v0, Lcom/cootek/smartinput5/ui/U;->n:Landroid/graphics/Paint$Align;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->mainTextYAlign:Landroid/graphics/Paint$Align;

    iput-object v1, v0, Lcom/cootek/smartinput5/ui/U;->o:Landroid/graphics/Paint$Align;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->mainTextPos:Landroid/graphics/Point;

    iput-object v1, v0, Lcom/cootek/smartinput5/ui/U;->p:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->altTextPos:Landroid/graphics/Point;

    iput-object v1, v0, Lcom/cootek/smartinput5/ui/U;->q:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->altTextXAlign:Landroid/graphics/Paint$Align;

    iput-object v1, v0, Lcom/cootek/smartinput5/ui/U;->r:Landroid/graphics/Paint$Align;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->altTextYAlign:Landroid/graphics/Paint$Align;

    iput-object v1, v0, Lcom/cootek/smartinput5/ui/U;->s:Landroid/graphics/Paint$Align;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->leftTextPos:Landroid/graphics/Point;

    iput-object v1, v0, Lcom/cootek/smartinput5/ui/U;->t:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->rightTextPos:Landroid/graphics/Point;

    iput-object v1, v0, Lcom/cootek/smartinput5/ui/U;->u:Landroid/graphics/Point;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, v0, Lcom/cootek/smartinput5/ui/U;->a:I

    return-object v0
.end method

.method protected getVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mSoftKeyInfo:Lcom/cootek/smartinput5/ui/SoftKeyInfo;

    iget v0, v0, Lcom/cootek/smartinput5/ui/SoftKeyInfo;->printTitle:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isCachable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->mCachable:Z

    return v0
.end method

.method public isCharacterNormalKey()Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->keyName:Ljava/lang/String;

    invoke-static {v0}, Lcom/cootek/smartinput5/ui/T;->isCharacterNormalKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEdgeFuncKey()Z
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->keyName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lcom/cootek/smartinput5/ui/T;->backgroundType:I

    if-eqz v2, :cond_2

    const-string v2, "sk_sft"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public isFuncKey()Z
    .locals 1

    iget v0, p0, Lcom/cootek/smartinput5/ui/T;->backgroundType:I

    invoke-static {v0}, Lcom/cootek/smartinput5/ui/T;->isFuncKey(I)Z

    move-result v0

    return v0
.end method

.method public isInside(II)Z
    .locals 7

    iget v0, p0, Lcom/cootek/smartinput5/ui/T;->edgeFlags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v4, v0, 0x2

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-lez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iget v6, p0, Lcom/cootek/smartinput5/ui/T;->x:I

    if-ge p1, v6, :cond_4

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/cootek/smartinput5/ui/T;->width:I

    add-int/2addr v1, v6

    if-gt p1, v1, :cond_7

    :cond_4
    iget v1, p0, Lcom/cootek/smartinput5/ui/T;->width:I

    add-int/2addr v1, v6

    if-lt p1, v1, :cond_5

    if-eqz v4, :cond_7

    if-lt p1, v6, :cond_7

    :cond_5
    iget p1, p0, Lcom/cootek/smartinput5/ui/T;->y:I

    if-ge p2, p1, :cond_6

    if-eqz v5, :cond_7

    iget v1, p0, Lcom/cootek/smartinput5/ui/T;->height:I

    add-int/2addr v1, p1

    if-gt p2, v1, :cond_7

    :cond_6
    iget v1, p0, Lcom/cootek/smartinput5/ui/T;->height:I

    add-int/2addr v1, p1

    if-lt p2, v1, :cond_8

    if-eqz v0, :cond_7

    if-lt p2, p1, :cond_7

    goto :goto_4

    :cond_7
    return v2

    :cond_8
    :goto_4
    return v3
.end method

.method public isKeyIconConstantSize()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isPendingInputEmpty(ZLcom/cootek/smartinput5/engine/CandidateManager$ICandidateProvider;)Z
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getInlineText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method

.method isSlide(II)Z
    .locals 0

    mul-int p1, p1, p1

    mul-int p2, p2, p2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/cootek/smartinput5/ui/T;->mSlideThresholdSquare:I

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected judgeLongPressType(Landroid/os/Message;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method protected jumpToLangSetting()Z
    .locals 6

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x17c

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->Q()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/cootek/smartinput5/TouchPalIME;->requestHideSelf(I)V

    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/cootek/smartinput5/func/x0;->d()Lcom/cootek/smartinput5/func/x0;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/cootek/smartinput5/func/x0;->b(I)Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "SHOW_ALL_LANGUAGE"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0, v3}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x19d

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    return v5

    :cond_0
    return v2
.end method

.method public layoutMainOnlyText(IILandroid/graphics/Paint;)V
    .locals 11

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mSoftKeyInfo:Lcom/cootek/smartinput5/ui/SoftKeyInfo;

    iget-object v0, v0, Lcom/cootek/smartinput5/ui/SoftKeyInfo;->mainTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->lineInfo:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cootek/smartinput5/ui/T;->lineInfo:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->lineInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p3}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v8

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v9, v1, :cond_2

    int-to-float v1, v10

    mul-float v1, v1, v8

    add-float/2addr v1, v8

    int-to-float v2, p2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    int-to-float v6, p1

    const/4 v7, 0x0

    move-object v1, p3

    move-object v2, v0

    move v3, v9

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Paint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result v1

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/T;->lineInfo:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v9, v1

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method protected longPress(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    iget-boolean v1, p0, Lcom/cootek/smartinput5/ui/T;->mLongPressPendingState:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/ui/T;->judgeLongPressType(Landroid/os/Message;)I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/ui/T;->doLongPressMulti(Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/ui/T;->doLongPressOnce(Landroid/os/Message;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0xe

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/ui/T;->doLongPressLeftSlide(Landroid/os/Message;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/ui/T;->doLongPressRightSlide(Landroid/os/Message;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onClickExtendKey(I)V
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->A()Lcom/cootek/smartinput5/ui/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/r;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/cootek/smartinput5/engine/Engine;->fireKeyOperation(II)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->processEvent()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/o0;->A()Lcom/cootek/smartinput5/ui/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/r;->d()V

    :cond_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->onRelease()V

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Z)V
    .locals 12

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mSoftKeyInfo:Lcom/cootek/smartinput5/ui/SoftKeyInfo;

    iget v0, v0, Lcom/cootek/smartinput5/ui/SoftKeyInfo;->supportedOperation:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget p2, p0, Lcom/cootek/smartinput5/ui/T;->mCombineFlag:I

    if-eqz p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->mListening:Z

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v7, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/smartinput5/ui/o0;->A()Lcom/cootek/smartinput5/ui/r;

    move-result-object v3

    iget v4, p0, Lcom/cootek/smartinput5/ui/T;->mExtendSurfaceType:I

    invoke-virtual {v3, v4}, Lcom/cootek/smartinput5/ui/r;->e(I)Lcom/cootek/smartinput5/ui/v;

    move-result-object v3

    invoke-interface {v3}, Lcom/cootek/smartinput5/ui/v;->b()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3, p1}, Lcom/cootek/smartinput5/ui/v;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/T;->mMoveContrail:Lcom/cootek/smartinput5/engine/MoveContrail;

    invoke-virtual {p1, v0, v7, p2}, Lcom/cootek/smartinput5/engine/MoveContrail;->addPoint(III)V

    return-void

    :cond_3
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v3

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v3

    invoke-virtual {p1, v4, v3}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    :cond_4
    const/4 p1, 0x0

    if-nez p2, :cond_5

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->onPress()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/T;->beginListen()V

    sget-boolean v3, Lcom/cootek/smartinput5/engine/Engine;->uStartToInput:Z

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/cootek/smartinput5/actionflow/a;->f()Lcom/cootek/smartinput5/actionflow/a;

    move-result-object v3

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->Q()Landroid/content/Context;

    move-result-object v4

    const-string v5, "KEYBOARD_STARTINPUT"

    invoke-virtual {v3, v5, v4}, Lcom/cootek/smartinput5/actionflow/a;->i(Ljava/lang/String;Landroid/content/Context;)V

    sput-boolean p1, Lcom/cootek/smartinput5/engine/Engine;->uStartToInput:Z

    :cond_5
    iget-object v3, p0, Lcom/cootek/smartinput5/ui/T;->mMoveContrail:Lcom/cootek/smartinput5/engine/MoveContrail;

    invoke-virtual {v3, v0, v7, p2}, Lcom/cootek/smartinput5/engine/MoveContrail;->addPoint(III)V

    const/4 v8, -0x1

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-nez p2, :cond_8

    iput-boolean p1, p0, Lcom/cootek/smartinput5/ui/T;->mLongPressed:Z

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->downX:I

    iput v7, p0, Lcom/cootek/smartinput5/ui/T;->downY:I

    iput p1, p0, Lcom/cootek/smartinput5/ui/T;->mMovePointCount:I

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iput v0, v1, Lcom/cootek/smartinput5/ui/W;->u0:I

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->mCurvePoints:Lcom/cootek/smartinput5/engine/MoveContrail;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/MoveContrail;->clear()V

    iput v8, p0, Lcom/cootek/smartinput5/ui/T;->mCurveKeyId:I

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->mLastPointX:I

    iput v7, p0, Lcom/cootek/smartinput5/ui/T;->mLastPointY:I

    invoke-direct {p0, v0, v7, p2, v10}, Lcom/cootek/smartinput5/ui/T;->addCurvePoints(IIIZ)V

    iput-boolean p1, p0, Lcom/cootek/smartinput5/ui/T;->mInThreshold:Z

    iput-boolean p1, p0, Lcom/cootek/smartinput5/ui/T;->mComputedRightNow:Z

    iput-boolean v10, p0, Lcom/cootek/smartinput5/ui/T;->mTraceSlide:Z

    sget-boolean v1, Lcom/cootek/smartinput5/n/b;->n:Z

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/ui/o0;->a0()Lcom/cootek/smartinput5/ui/control/SlideSentenceView;

    move-result-object v1

    invoke-virtual {v1, v0, v7}, Lcom/cootek/smartinput5/ui/control/SlideSentenceView;->p0(II)Z

    :cond_6
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/T;->startTraceLongPress()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->stopTraceCurveInTime()V

    iget v0, p0, Lcom/cootek/smartinput5/ui/T;->mCombineFlag:I

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/ui/W;->c(I)V

    :cond_7
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/T;->dismissPreview()V

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/ui/T;->showPreview(I)V

    goto/16 :goto_13

    :cond_8
    const/4 v3, 0x2

    if-ne p2, v3, :cond_21

    iget v1, p0, Lcom/cootek/smartinput5/ui/T;->mMovePointCount:I

    add-int/2addr v1, v10

    iput v1, p0, Lcom/cootek/smartinput5/ui/T;->mMovePointCount:I

    iget-boolean v1, p0, Lcom/cootek/smartinput5/ui/T;->mLongPressed:Z

    if-nez v1, :cond_1e

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/T;->traceLongPressSlide()Z

    move-result v1

    invoke-virtual {p0, v0, v7}, Lcom/cootek/smartinput5/ui/T;->isInside(II)Z

    move-result v2

    if-nez v2, :cond_9

    if-nez v1, :cond_9

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->stopTraceLongPress()V

    :cond_9
    iget-boolean v2, p0, Lcom/cootek/smartinput5/ui/T;->mTraceSlide:Z

    if-eqz v2, :cond_e

    iget v2, p0, Lcom/cootek/smartinput5/ui/T;->downX:I

    iget v3, p0, Lcom/cootek/smartinput5/ui/T;->downY:I

    invoke-direct {p0, v2, v3, v0, v7}, Lcom/cootek/smartinput5/ui/T;->isSlide(IIII)Z

    move-result v2

    if-eqz v2, :cond_b

    if-nez v1, :cond_b

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->stopTraceLongPress()V

    iget v1, p0, Lcom/cootek/smartinput5/ui/T;->downX:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/cootek/smartinput5/ui/T;->downY:I

    sub-int v2, v7, v2

    invoke-virtual {p0, v1, v2}, Lcom/cootek/smartinput5/ui/T;->getSlideDirection(II)I

    move-result v1

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/T;->mSoftKeyInfo:Lcom/cootek/smartinput5/ui/SoftKeyInfo;

    invoke-virtual {v2, v1}, Lcom/cootek/smartinput5/ui/SoftKeyInfo;->isOperationSupported(I)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    iput-boolean p1, p0, Lcom/cootek/smartinput5/ui/T;->mTraceSlide:Z

    goto :goto_0

    :cond_b
    const/4 v1, 0x0

    :cond_c
    :goto_0
    invoke-direct {p0, v0, v7, p2}, Lcom/cootek/smartinput5/ui/T;->canAddCurvePoints(III)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-direct {p0, v0, v7, p2, v10}, Lcom/cootek/smartinput5/ui/T;->addCurvePoints(IIIZ)V

    :cond_d
    move v11, v1

    goto :goto_1

    :cond_e
    const/4 v11, 0x0

    :goto_1
    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget v2, p0, Lcom/cootek/smartinput5/ui/T;->downX:I

    iget v3, p0, Lcom/cootek/smartinput5/ui/T;->downY:I

    iget v6, p0, Lcom/cootek/smartinput5/ui/T;->mMovePointCount:I

    move v4, v0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/cootek/smartinput5/ui/W;->G(IIIII)I

    move-result v1

    iget-boolean v2, p0, Lcom/cootek/smartinput5/ui/T;->mTraceSlide:Z

    const/4 v3, -0x2

    if-nez v2, :cond_18

    iget-boolean v2, p0, Lcom/cootek/smartinput5/ui/T;->mIgnoreCurve:Z

    if-nez v2, :cond_18

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget-object v4, p0, Lcom/cootek/smartinput5/ui/T;->mMoveContrail:Lcom/cootek/smartinput5/engine/MoveContrail;

    invoke-virtual {v2, v4}, Lcom/cootek/smartinput5/ui/W;->M(Lcom/cootek/smartinput5/engine/MoveContrail;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->stopTraceLongPress()V

    iget v2, p0, Lcom/cootek/smartinput5/ui/T;->mMovePointCount:I

    const/4 v4, 0x4

    if-gt v2, v4, :cond_f

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v2

    const/16 v4, 0x1e

    invoke-virtual {v2, v4}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v2

    invoke-virtual {v2, v4, p1}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    :cond_f
    iget-object v2, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget-object v2, v2, Lcom/cootek/smartinput5/ui/W;->K:Lcom/cootek/smartinput5/ui/SoftKeyboardView;

    if-nez v2, :cond_10

    invoke-direct {p0, v0, v7, p2, v10}, Lcom/cootek/smartinput5/ui/T;->addCurvePoints(IIIZ)V

    goto/16 :goto_4

    :cond_10
    invoke-virtual {v2, v0, v7}, Lcom/cootek/smartinput5/ui/SoftKeyboardView;->v(II)I

    move-result v2

    iget v4, p0, Lcom/cootek/smartinput5/ui/T;->mCurveKeyId:I

    if-ne v2, v4, :cond_11

    invoke-direct {p0, v0, v7, p2}, Lcom/cootek/smartinput5/ui/T;->canAddCurvePoints(III)Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_11
    invoke-direct {p0, v0, v7, p2, v10}, Lcom/cootek/smartinput5/ui/T;->addCurvePoints(IIIZ)V

    :cond_12
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v4

    const/16 v5, 0x56

    invoke-virtual {v4, v5}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v4

    if-eqz v4, :cond_16

    iget v4, p0, Lcom/cootek/smartinput5/ui/T;->mCurveKeyId:I

    if-eq v2, v4, :cond_14

    iget v4, p0, Lcom/cootek/smartinput5/ui/T;->mLastPointX:I

    sub-int v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/cootek/smartinput5/ui/T;->WIDTH_THRESHOLD:I

    if-gt v4, v5, :cond_13

    iget v4, p0, Lcom/cootek/smartinput5/ui/T;->mLastPointY:I

    sub-int v4, v7, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/cootek/smartinput5/ui/T;->HEIGHT_THRESHOLD:I

    if-gt v4, v5, :cond_13

    iput-boolean v10, p0, Lcom/cootek/smartinput5/ui/T;->mInThreshold:Z

    iput-boolean v10, p0, Lcom/cootek/smartinput5/ui/T;->mComputedRightNow:Z

    goto :goto_2

    :cond_13
    iput-boolean p1, p0, Lcom/cootek/smartinput5/ui/T;->mInThreshold:Z

    iput-boolean p1, p0, Lcom/cootek/smartinput5/ui/T;->mComputedRightNow:Z

    :goto_2
    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->stopTraceCurveInTime()V

    goto :goto_3

    :cond_14
    iget-boolean v4, p0, Lcom/cootek/smartinput5/ui/T;->mTraceCurveInTime:Z

    if-nez v4, :cond_16

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cootek/smartinput5/ui/o0;->a0()Lcom/cootek/smartinput5/ui/control/SlideSentenceView;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cootek/smartinput5/ui/o0;->a0()Lcom/cootek/smartinput5/ui/control/SlideSentenceView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cootek/smartinput5/ui/control/SlideSentenceView;->R()Z

    move-result v4

    if-nez v4, :cond_16

    :cond_15
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/T;->startTraceCurveInTime()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/T;->pauseMultiTouch()V

    :cond_16
    :goto_3
    iput v2, p0, Lcom/cootek/smartinput5/ui/T;->mCurveKeyId:I

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->mLastPointX:I

    iput v7, p0, Lcom/cootek/smartinput5/ui/T;->mLastPointY:I

    :goto_4
    iget-object v2, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    invoke-virtual {v2}, Lcom/cootek/smartinput5/ui/W;->e()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/ui/o0;->R()Lcom/cootek/smartinput5/ui/control/MoveContrailView;

    move-result-object v2

    iget-object v4, p0, Lcom/cootek/smartinput5/ui/T;->mMoveContrail:Lcom/cootek/smartinput5/engine/MoveContrail;

    invoke-virtual {v2, v4}, Lcom/cootek/smartinput5/ui/control/MoveContrailView;->j(Lcom/cootek/smartinput5/engine/MoveContrail;)V

    goto :goto_5

    :cond_17
    const/4 p1, 0x1

    :goto_5
    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->onRelease()V

    goto :goto_7

    :cond_18
    iget-boolean v2, p0, Lcom/cootek/smartinput5/ui/T;->mIgnoreSlip:Z

    if-nez v2, :cond_19

    if-eq v1, v8, :cond_19

    if-eq v1, v3, :cond_19

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->stopTraceLongPress()V

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget-object v2, v2, Lcom/cootek/smartinput5/ui/W;->U:Lcom/cootek/smartinput5/ui/W$c;

    invoke-interface {v2, v1}, Lcom/cootek/smartinput5/ui/W$c;->a(I)V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->onRelease()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/T;->endListen()V

    goto :goto_7

    :cond_19
    iget-boolean v2, p0, Lcom/cootek/smartinput5/ui/T;->mIgnoreStroke:Z

    if-nez v2, :cond_1b

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget-object v4, p0, Lcom/cootek/smartinput5/ui/T;->mMoveContrail:Lcom/cootek/smartinput5/engine/MoveContrail;

    invoke-virtual {v2, v4}, Lcom/cootek/smartinput5/ui/W;->R(Lcom/cootek/smartinput5/engine/MoveContrail;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->stopTraceLongPress()V

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    invoke-virtual {v2}, Lcom/cootek/smartinput5/ui/W;->e()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/ui/o0;->R()Lcom/cootek/smartinput5/ui/control/MoveContrailView;

    move-result-object v2

    iget-object v4, p0, Lcom/cootek/smartinput5/ui/T;->mMoveContrail:Lcom/cootek/smartinput5/engine/MoveContrail;

    invoke-virtual {v2, v4}, Lcom/cootek/smartinput5/ui/control/MoveContrailView;->j(Lcom/cootek/smartinput5/engine/MoveContrail;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/T;->pauseMultiTouch()V

    goto :goto_6

    :cond_1a
    const/4 p1, 0x1

    :goto_6
    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->onRelease()V

    goto :goto_7

    :cond_1b
    iput-boolean v10, p0, Lcom/cootek/smartinput5/ui/T;->mTraceSlide:Z

    iget p1, p0, Lcom/cootek/smartinput5/ui/T;->downX:I

    iget v2, p0, Lcom/cootek/smartinput5/ui/T;->downY:I

    invoke-direct {p0, p1, v2, v0, v7}, Lcom/cootek/smartinput5/ui/T;->isSlide(IIII)Z

    move-result p1

    if-eqz p1, :cond_1c

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/T;->pauseMultiTouch()V

    :cond_1c
    const/4 p1, 0x1

    :goto_7
    if-ne v1, v3, :cond_1d

    iget v1, p0, Lcom/cootek/smartinput5/ui/T;->mMovePointCount:I

    sub-int/2addr v1, v10

    iput v1, p0, Lcom/cootek/smartinput5/ui/T;->mMovePointCount:I

    goto :goto_8

    :cond_1d
    const/4 v1, 0x0

    sput-object v1, Lcom/cootek/smartinput5/ui/T;->lastInputKey:Lcom/cootek/smartinput5/ui/T;

    :goto_8
    iget-boolean v1, p0, Lcom/cootek/smartinput5/ui/T;->mPressed:Z

    if-eqz v1, :cond_1e

    if-eqz p1, :cond_1e

    invoke-virtual {p0, v11}, Lcom/cootek/smartinput5/ui/T;->showPreview(I)V

    :cond_1e
    sget-boolean p1, Lcom/cootek/smartinput5/n/b;->n:Z

    if-eqz p1, :cond_41

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    const/16 v1, 0xdb

    invoke-virtual {p1, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->stopTraceCurveInTime()V

    :cond_1f
    iget-boolean p1, p0, Lcom/cootek/smartinput5/ui/T;->mStartWaveFromGesture:Z

    if-eqz p1, :cond_20

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/o0;->a0()Lcom/cootek/smartinput5/ui/control/SlideSentenceView;

    move-result-object p1

    invoke-virtual {p1, v0, v7}, Lcom/cootek/smartinput5/ui/control/SlideSentenceView;->H(II)V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->stopTraceCurveInTime()V

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/T;->mMoveContrail:Lcom/cootek/smartinput5/engine/MoveContrail;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/MoveContrail;->clear()V

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/T;->mCurvePoints:Lcom/cootek/smartinput5/engine/MoveContrail;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/MoveContrail;->clear()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->onRelease()V

    goto/16 :goto_13

    :cond_20
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/o0;->a0()Lcom/cootek/smartinput5/ui/control/SlideSentenceView;

    move-result-object p1

    invoke-virtual {p1, v0, v7}, Lcom/cootek/smartinput5/ui/control/SlideSentenceView;->p0(II)Z

    move-result p1

    if-eqz p1, :cond_41

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->stopTraceCurveInTime()V

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/T;->mMoveContrail:Lcom/cootek/smartinput5/engine/MoveContrail;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/MoveContrail;->clear()V

    iget-object p1, p0, Lcom/cootek/smartinput5/ui/T;->mCurvePoints:Lcom/cootek/smartinput5/engine/MoveContrail;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/MoveContrail;->clear()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/o0;->R()Lcom/cootek/smartinput5/ui/control/MoveContrailView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/control/MoveContrailView;->e()V

    iput-boolean v10, p0, Lcom/cootek/smartinput5/ui/T;->mStartWaveFromGesture:Z

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/T;->pauseMultiTouch()V

    goto/16 :goto_13

    :cond_21
    if-ne p2, v10, :cond_3c

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->stopTraceLongPress()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->stopTraceCurveInTime()V

    sget-boolean v4, Lcom/cootek/smartinput5/n/b;->n:Z

    if-eqz v4, :cond_22

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cootek/smartinput5/ui/o0;->a0()Lcom/cootek/smartinput5/ui/control/SlideSentenceView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cootek/smartinput5/ui/control/SlideSentenceView;->b0()Z

    move-result v4

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cootek/smartinput5/ui/o0;->a0()Lcom/cootek/smartinput5/ui/control/SlideSentenceView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cootek/smartinput5/ui/control/SlideSentenceView;->K()V

    goto :goto_9

    :cond_22
    const/4 v4, 0x0

    :goto_9
    iput-boolean p1, p0, Lcom/cootek/smartinput5/ui/T;->mStartWaveFromGesture:Z

    iget-boolean v5, p0, Lcom/cootek/smartinput5/ui/T;->mLongPressed:Z

    if-nez v5, :cond_3a

    if-nez v4, :cond_3a

    iget-boolean v4, p0, Lcom/cootek/smartinput5/ui/T;->mTraceSlide:Z

    if-eqz v4, :cond_24

    iget v4, p0, Lcom/cootek/smartinput5/ui/T;->downX:I

    iget v5, p0, Lcom/cootek/smartinput5/ui/T;->downY:I

    invoke-direct {p0, v4, v5, v0, v7}, Lcom/cootek/smartinput5/ui/T;->isSlide(IIII)Z

    move-result v4

    if-eqz v4, :cond_24

    iget v4, p0, Lcom/cootek/smartinput5/ui/T;->downX:I

    sub-int v4, v0, v4

    iget v5, p0, Lcom/cootek/smartinput5/ui/T;->downY:I

    sub-int v5, v7, v5

    invoke-virtual {p0, v4, v5}, Lcom/cootek/smartinput5/ui/T;->getSlideDirection(II)I

    move-result v4

    if-eqz v4, :cond_23

    iget-object v5, p0, Lcom/cootek/smartinput5/ui/T;->mSoftKeyInfo:Lcom/cootek/smartinput5/ui/SoftKeyInfo;

    invoke-virtual {v5, v4}, Lcom/cootek/smartinput5/ui/SoftKeyInfo;->isOperationSupported(I)Z

    move-result v4

    if-nez v4, :cond_24

    :cond_23
    iput-boolean p1, p0, Lcom/cootek/smartinput5/ui/T;->mTraceSlide:Z

    :cond_24
    iget-boolean v4, p0, Lcom/cootek/smartinput5/ui/T;->mTraceSlide:Z

    if-nez v4, :cond_25

    iget-boolean v4, p0, Lcom/cootek/smartinput5/ui/T;->mIgnoreCurve:Z

    if-nez v4, :cond_25

    iget-object v4, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget-object v5, p0, Lcom/cootek/smartinput5/ui/T;->mMoveContrail:Lcom/cootek/smartinput5/engine/MoveContrail;

    invoke-virtual {v4, v5}, Lcom/cootek/smartinput5/ui/W;->M(Lcom/cootek/smartinput5/engine/MoveContrail;)Z

    move-result v4

    if-nez v4, :cond_26

    :cond_25
    iget-boolean v4, p0, Lcom/cootek/smartinput5/ui/T;->mIgnoreStroke:Z

    if-nez v4, :cond_2a

    iget-object v4, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget-object v5, p0, Lcom/cootek/smartinput5/ui/T;->mMoveContrail:Lcom/cootek/smartinput5/engine/MoveContrail;

    invoke-virtual {v4, v5}, Lcom/cootek/smartinput5/ui/W;->R(Lcom/cootek/smartinput5/engine/MoveContrail;)Z

    move-result v4

    if-eqz v4, :cond_2a

    :cond_26
    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->stopTraceLongPress()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->stopTraceCurveInTime()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/ui/o0;->R()Lcom/cootek/smartinput5/ui/control/MoveContrailView;

    move-result-object v1

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/T;->mMoveContrail:Lcom/cootek/smartinput5/engine/MoveContrail;

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/ui/control/MoveContrailView;->j(Lcom/cootek/smartinput5/engine/MoveContrail;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/T;->dismissPreview()V

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget-object v2, v1, Lcom/cootek/smartinput5/ui/W;->K:Lcom/cootek/smartinput5/ui/SoftKeyboardView;

    if-eqz v2, :cond_29

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/T;->mMoveContrail:Lcom/cootek/smartinput5/engine/MoveContrail;

    invoke-virtual {v1, v3}, Lcom/cootek/smartinput5/ui/W;->M(Lcom/cootek/smartinput5/engine/MoveContrail;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {v2, v0, v7}, Lcom/cootek/smartinput5/ui/SoftKeyboardView;->v(II)I

    move-result v1

    iget v2, p0, Lcom/cootek/smartinput5/ui/T;->mCurveKeyId:I

    if-eq v1, v2, :cond_27

    invoke-direct {p0, v0, v7, p2}, Lcom/cootek/smartinput5/ui/T;->canAddCurvePoints(III)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-direct {p0, v0, v7, p2, v10}, Lcom/cootek/smartinput5/ui/T;->addCurvePoints(IIIZ)V

    iput-boolean p1, p0, Lcom/cootek/smartinput5/ui/T;->mComputedRightNow:Z

    goto :goto_a

    :cond_27
    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->mComputedRightNow:Z

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->mInThreshold:Z

    if-eqz v0, :cond_28

    iput-boolean p1, p0, Lcom/cootek/smartinput5/ui/T;->mComputedRightNow:Z

    :cond_28
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mCurvePoints:Lcom/cootek/smartinput5/engine/MoveContrail;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/MoveContrail;->size()I

    move-result v1

    sub-int/2addr v1, v10

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/MoveContrail;->getX(I)I

    move-result v0

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->mCurvePoints:Lcom/cootek/smartinput5/engine/MoveContrail;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/MoveContrail;->size()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/engine/MoveContrail;->getY(I)I

    move-result v1

    invoke-direct {p0, v0, v1, v10, p1}, Lcom/cootek/smartinput5/ui/T;->addCurvePoints(IIIZ)V

    :goto_a
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget-object v0, v0, Lcom/cootek/smartinput5/ui/W;->U:Lcom/cootek/smartinput5/ui/W$c;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->mCurvePoints:Lcom/cootek/smartinput5/engine/MoveContrail;

    invoke-interface {v0, v1}, Lcom/cootek/smartinput5/ui/W$c;->b(Lcom/cootek/smartinput5/engine/MoveContrail;)V

    goto/16 :goto_11

    :cond_29
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget-object v0, v0, Lcom/cootek/smartinput5/ui/W;->U:Lcom/cootek/smartinput5/ui/W$c;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->mMoveContrail:Lcom/cootek/smartinput5/engine/MoveContrail;

    invoke-interface {v0, v1}, Lcom/cootek/smartinput5/ui/W$c;->b(Lcom/cootek/smartinput5/engine/MoveContrail;)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x128

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getLongSetting(I)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_3a

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/engine/Settings;->getStringSetting(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "chinese_pinyin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-wide/32 v2, 0x5265c00

    add-long/2addr v4, v2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0, v1, v4, v5}, Lcom/cootek/smartinput5/engine/Settings;->setLongSetting(IJ)V

    goto/16 :goto_11

    :cond_2a
    iget v4, p0, Lcom/cootek/smartinput5/ui/T;->downX:I

    iget v5, p0, Lcom/cootek/smartinput5/ui/T;->downY:I

    invoke-direct {p0, v4, v5, v0, v7}, Lcom/cootek/smartinput5/ui/T;->isSlide(IIII)Z

    move-result v4

    if-eqz v4, :cond_2b

    iget v1, p0, Lcom/cootek/smartinput5/ui/T;->downX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/cootek/smartinput5/ui/T;->downY:I

    sub-int/2addr v7, v1

    invoke-virtual {p0, v0, v7}, Lcom/cootek/smartinput5/ui/T;->getSlideDirection(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/ui/T;->isSwipeDownOnT9(I)Z

    move-result v4

    if-nez v4, :cond_3a

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->mActionListener:Lcom/cootek/smartinput5/ui/T$b;

    invoke-interface {v1, v0}, Lcom/cootek/smartinput5/ui/T$b;->a(I)V

    goto/16 :goto_11

    :cond_2b
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    iget-boolean v0, v0, Lcom/cootek/smartinput5/engine/Engine;->isMultitouch:Z

    const-string v4, "sk_sft"

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->isEdgeFuncKey()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget v0, p0, Lcom/cootek/smartinput5/ui/T;->mCombineFlag:I

    if-eqz v0, :cond_2c

    iget-object v5, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    invoke-virtual {v5, v0}, Lcom/cootek/smartinput5/ui/W;->e0(I)V

    :cond_2c
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->a0()Lcom/cootek/smartinput5/ui/control/SlideSentenceView;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->a0()Lcom/cootek/smartinput5/ui/control/SlideSentenceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/control/SlideSentenceView;->z()V

    :cond_2d
    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->onRelease()V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget-object v0, v0, Lcom/cootek/smartinput5/ui/W;->K:Lcom/cootek/smartinput5/ui/SoftKeyboardView;

    if-eqz v0, :cond_2e

    invoke-virtual {v0, p0}, Lcom/cootek/smartinput5/ui/SoftKeyboardView;->E(Lcom/cootek/smartinput5/ui/T;)V

    :cond_2e
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/T;->dismissPreview()V

    sget-object v0, Lcom/cootek/smartinput5/ui/T;->lastInputKey:Lcom/cootek/smartinput5/ui/T;

    if-eqz v0, :cond_2f

    iget-object v0, v0, Lcom/cootek/smartinput5/ui/T;->keyName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    return-void

    :cond_2f
    sget-object v0, Lcom/cootek/smartinput5/ui/T;->lastInputKey:Lcom/cootek/smartinput5/ui/T;

    if-eqz v0, :cond_30

    iget-object v0, v0, Lcom/cootek/smartinput5/ui/T;->identifyId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->identifyId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    sget-object v0, Lcom/cootek/smartinput5/ui/T;->lastInputKey:Lcom/cootek/smartinput5/ui/T;

    iget-object v0, v0, Lcom/cootek/smartinput5/ui/T;->identifyId:Ljava/lang/String;

    iget-object v5, p0, Lcom/cootek/smartinput5/ui/T;->identifyId:Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    goto :goto_b

    :cond_30
    const/4 v0, 0x0

    :goto_b
    sget-object v5, Lcom/cootek/smartinput5/ui/T;->lastInputKey:Lcom/cootek/smartinput5/ui/T;

    if-eq v5, p0, :cond_32

    if-eqz v0, :cond_31

    goto :goto_c

    :cond_31
    const/4 v0, 0x0

    goto :goto_d

    :cond_32
    :goto_c
    const/4 v0, 0x1

    :goto_d
    iget-object v5, p0, Lcom/cootek/smartinput5/ui/T;->mSoftKeyInfo:Lcom/cootek/smartinput5/ui/SoftKeyInfo;

    invoke-virtual {v5, v9}, Lcom/cootek/smartinput5/ui/SoftKeyInfo;->isOperationSupported(I)Z

    move-result v5

    if-eqz v5, :cond_34

    if-eqz v0, :cond_34

    iget-object v5, p0, Lcom/cootek/smartinput5/ui/T;->keyName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    sget-wide v5, Lcom/cootek/smartinput5/ui/T;->lastInputKeyClickTime:J

    sub-long v5, v1, v5

    const-wide/16 v7, 0x12c

    cmp-long v11, v5, v7

    if-gez v11, :cond_34

    :goto_e
    const/4 v5, 0x1

    goto :goto_f

    :cond_33
    sget-wide v5, Lcom/cootek/smartinput5/ui/T;->lastInputKeyClickTime:J

    sub-long v5, v1, v5

    const-wide/16 v7, 0x1f4

    cmp-long v11, v5, v7

    if-gez v11, :cond_34

    goto :goto_e

    :cond_34
    const/4 v5, 0x0

    :goto_f
    iget-object v6, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    if-eqz v6, :cond_36

    if-nez v0, :cond_35

    iput p1, v6, Lcom/cootek/smartinput5/ui/W;->p0:I

    :cond_35
    iget v0, v6, Lcom/cootek/smartinput5/ui/W;->p0:I

    add-int/2addr v0, v10

    iput v0, v6, Lcom/cootek/smartinput5/ui/W;->p0:I

    :cond_36
    if-eqz v5, :cond_37

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mActionListener:Lcom/cootek/smartinput5/ui/T$b;

    invoke-interface {v0, v9}, Lcom/cootek/smartinput5/ui/T$b;->a(I)V

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/cootek/smartinput5/ui/T;->lastInputKeyClickTime:J

    invoke-static {}, Lcom/cootek/smartinput5/engine/HighFreqSettings;->getInstance()Lcom/cootek/smartinput5/engine/HighFreqSettings;

    move-result-object v0

    iget-boolean v0, v0, Lcom/cootek/smartinput5/engine/HighFreqSettings;->showDoubleClickShiftTips:Z

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->keyName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget v0, p0, Lcom/cootek/smartinput5/ui/T;->mTriType:I

    if-nez v0, :cond_38

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->y0()Lcom/cootek/smartinput5/teaching/k/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/teaching/k/b;->l()Z

    move-result v0

    if-nez v0, :cond_38

    invoke-static {}, Lcom/cootek/smartinput5/teaching/k/c;->q()Z

    move-result v0

    if-nez v0, :cond_38

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0xd1

    invoke-virtual {v0, v1, p1}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    goto :goto_10

    :cond_37
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mActionListener:Lcom/cootek/smartinput5/ui/T$b;

    invoke-interface {v0, p1}, Lcom/cootek/smartinput5/ui/T$b;->a(I)V

    sput-wide v1, Lcom/cootek/smartinput5/ui/T;->lastInputKeyClickTime:J

    invoke-static {}, Lcom/cootek/smartinput5/engine/HighFreqSettings;->getInstance()Lcom/cootek/smartinput5/engine/HighFreqSettings;

    move-result-object v0

    iget-boolean v0, v0, Lcom/cootek/smartinput5/engine/HighFreqSettings;->showDoubleClickShiftTips:Z

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->keyName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    if-eqz v0, :cond_38

    iget v0, v0, Lcom/cootek/smartinput5/ui/W;->p0:I

    if-ne v0, v3, :cond_38

    invoke-static {}, Lcom/cootek/smartinput5/teaching/k/c;->q()Z

    move-result v0

    if-nez v0, :cond_38

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->y0()Lcom/cootek/smartinput5/teaching/k/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/teaching/k/b;->l()Z

    move-result v0

    if-nez v0, :cond_38

    iget v0, p0, Lcom/cootek/smartinput5/ui/T;->mTriType:I

    if-nez v0, :cond_38

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object v0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->Q()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f03ed

    invoke-static {v1, v2}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/cootek/smartinput5/ui/control/E;->w(Ljava/lang/String;Z)V

    :cond_38
    :goto_10
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->keyName:Ljava/lang/String;

    const-string v1, "sk_bk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget v0, v0, Lcom/cootek/smartinput5/ui/W;->p0:I

    if-lt v0, v9, :cond_39

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->Q()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/cootek/smartinput5/wizard/WizardTipsType;->DELETE_SLIDE_LEFT:Lcom/cootek/smartinput5/wizard/WizardTipsType;

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/wizard/a;->j(Landroid/content/Context;Lcom/cootek/smartinput5/wizard/WizardTipsType;)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getDialogManager()Lcom/cootek/smartinput5/engine/DialogManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/DialogManager;->showWizardTipsDialog(Lcom/cootek/smartinput5/wizard/WizardTipsType;)Z

    :cond_39
    const/4 v0, 0x1

    goto :goto_12

    :cond_3a
    :goto_11
    const/4 v0, 0x0

    :goto_12
    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    if-eqz v0, :cond_3b

    iput p1, v0, Lcom/cootek/smartinput5/ui/W;->p0:I

    :cond_3b
    iget p1, p0, Lcom/cootek/smartinput5/ui/T;->mCombineFlag:I

    if-eqz p1, :cond_41

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/ui/W;->e0(I)V

    goto :goto_13

    :cond_3c
    if-ne p2, v9, :cond_3e

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->stopTraceLongPress()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->stopTraceCurveInTime()V

    iget p1, p0, Lcom/cootek/smartinput5/ui/T;->mCombineFlag:I

    if-eqz p1, :cond_3d

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/ui/W;->e0(I)V

    :cond_3d
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/o0;->a0()Lcom/cootek/smartinput5/ui/control/SlideSentenceView;

    move-result-object p1

    if-eqz p1, :cond_41

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/o0;->a0()Lcom/cootek/smartinput5/ui/control/SlideSentenceView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/control/SlideSentenceView;->z()V

    goto :goto_13

    :cond_3e
    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->stopTraceLongPress()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->stopTraceCurveInTime()V

    iget p1, p0, Lcom/cootek/smartinput5/ui/T;->mCombineFlag:I

    if-eqz p1, :cond_3f

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/ui/W;->e0(I)V

    :cond_3f
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/o0;->a0()Lcom/cootek/smartinput5/ui/control/SlideSentenceView;

    move-result-object p1

    if-eqz p1, :cond_40

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/o0;->a0()Lcom/cootek/smartinput5/ui/control/SlideSentenceView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/control/SlideSentenceView;->z()V

    :cond_40
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/T;->dismissPreview()V

    :cond_41
    :goto_13
    if-eq p2, v10, :cond_42

    if-ne p2, v9, :cond_43

    :cond_42
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/T;->unPauseMultiTouch()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->onRelease()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/T;->endListen()V

    :cond_43
    return-void
.end method

.method protected onPress()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->mPressed:Z

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mMoveContrail:Lcom/cootek/smartinput5/engine/MoveContrail;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/MoveContrail;->clear()V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mCurvePoints:Lcom/cootek/smartinput5/engine/MoveContrail;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/MoveContrail;->clear()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/T;->collectKeyPressData()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/cootek/smartinput5/settings/SpaceOnlyVibration;->keyFeedback(Lcom/cootek/smartinput5/engine/Engine;Lcom/cootek/smartinput5/ui/T;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget-object v0, v0, Lcom/cootek/smartinput5/ui/W;->K:Lcom/cootek/smartinput5/ui/SoftKeyboardView;

    invoke-virtual {v0, p0}, Lcom/cootek/smartinput5/ui/SoftKeyboardView;->E(Lcom/cootek/smartinput5/ui/T;)V

    return-void
.end method

.method protected onRelease()V
    .locals 3

    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->mPressed:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->mPressed:Z

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/T;->mFunctionSettingId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->getIdByKey(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget-object v0, v0, Lcom/cootek/smartinput5/ui/W;->K:Lcom/cootek/smartinput5/ui/SoftKeyboardView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/cootek/smartinput5/ui/SoftKeyboardView;->E(Lcom/cootek/smartinput5/ui/T;)V

    :cond_1
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/T;->dismissPreview()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->releaseCallback()V

    :cond_2
    return-void
.end method

.method protected prepareData()V
    .locals 0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->updateKeyInfo()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->updateActionListener()V

    return-void
.end method

.method protected refreshIconColor()V
    .locals 3

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/i0;->u0()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->mSupportCustomSkin:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/cootek/smartinput5/ui/RendingColorPosition;->KEY_FUN_ICON:Lcom/cootek/smartinput5/ui/RendingColorPosition;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/RendingColorPosition;->refresh()V

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/RendingColorPosition;->getRendingColor()Lcom/cootek/smartinput5/ui/K;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/K;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->mRendingMap:Ljava/util/HashMap;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/cootek/smartinput5/ui/T;->mRendingMap:Ljava/util/HashMap;

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/K;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->mRendingMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/T;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method protected releaseCallback()V
    .locals 5

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->keyName:Ljava/lang/String;

    const-string v1, "sk_sft"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget-object v1, v1, Lcom/cootek/smartinput5/ui/W;->I:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cootek/smartinput5/ui/T;

    iget-object v3, v2, Lcom/cootek/smartinput5/ui/T;->keyName:Ljava/lang/String;

    iget-object v4, p0, Lcom/cootek/smartinput5/ui/T;->keyName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eq p0, v2, :cond_1

    move-object v0, v2

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget-object v1, v1, Lcom/cootek/smartinput5/ui/W;->K:Lcom/cootek/smartinput5/ui/SoftKeyboardView;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/ui/SoftKeyboardView;->E(Lcom/cootek/smartinput5/ui/T;)V

    :cond_3
    return-void
.end method

.method public removeMainTitle([I)[I
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->mSoftKeyInfo:Lcom/cootek/smartinput5/ui/SoftKeyInfo;

    iget-object v2, v1, Lcom/cootek/smartinput5/ui/SoftKeyInfo;->mainTitle:Ljava/lang/String;

    iget-object v1, v1, Lcom/cootek/smartinput5/ui/SoftKeyInfo;->altTitle:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v2, v1, [I

    move v3, v0

    :goto_0
    sub-int v4, v3, v0

    if-ge v4, v1, :cond_2

    array-length v5, p1

    if-ge v3, v5, :cond_2

    aget v5, p1, v3

    aput v5, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object p1, v2

    :cond_3
    return-object p1

    :cond_4
    :goto_1
    return-object v0
.end method

.method protected restartLongPressMultiCycle(Landroid/os/Message;)V
    .locals 3

    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->mTraceLongPress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/W;->p()Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cootek/smartinput5/ui/T;->mLongPressed:Z

    return-void
.end method

.method public setCurrentDrawableState([I)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/ui/T;->mCurrentDrawableState:[I

    return-void
.end method

.method public showExtendSurface(I)V
    .locals 6

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getAllKeyId()[I

    move-result-object v0

    iget-boolean v1, p0, Lcom/cootek/smartinput5/ui/T;->altTitlePreviewOnly:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/ui/T;->removeMainTitle([I)[I

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_3

    array-length v1, v0

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget-object v1, v1, Lcom/cootek/smartinput5/ui/W;->K:Lcom/cootek/smartinput5/ui/SoftKeyboardView;

    iget v2, p0, Lcom/cootek/smartinput5/ui/T;->x:I

    iget v3, p0, Lcom/cootek/smartinput5/ui/T;->y:I

    iget v4, p0, Lcom/cootek/smartinput5/ui/T;->width:I

    iget v5, p0, Lcom/cootek/smartinput5/ui/T;->height:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/cootek/smartinput5/ui/control/A;->r(Landroid/view/View;IIII)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/ui/o0;->A()Lcom/cootek/smartinput5/ui/r;

    move-result-object v2

    iget v3, p0, Lcom/cootek/smartinput5/ui/T;->mExtendSurfaceType:I

    invoke-virtual {v2, v3}, Lcom/cootek/smartinput5/ui/r;->e(I)Lcom/cootek/smartinput5/ui/v;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/cootek/smartinput5/ui/v;->f(Lcom/cootek/smartinput5/ui/q$c;)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/ui/o0;->A()Lcom/cootek/smartinput5/ui/r;

    move-result-object v2

    iget v3, p0, Lcom/cootek/smartinput5/ui/T;->mExtendSurfaceType:I

    invoke-virtual {v2, v3}, Lcom/cootek/smartinput5/ui/r;->e(I)Lcom/cootek/smartinput5/ui/v;

    move-result-object v2

    invoke-interface {v2, v1, v0, p1}, Lcom/cootek/smartinput5/ui/v;->e(Landroid/graphics/Rect;[II)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    const/16 v0, 0xe9

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->D0()Lcom/cootek/smartinput5/func/s0;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/cootek/smartinput5/settings/SpaceOnlyVibration;->vibrate(Lcom/cootek/smartinput5/func/s0;ZLcom/cootek/smartinput5/ui/T;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected showPreview(I)V
    .locals 13

    invoke-static {}, Lcom/cootek/smartinput5/engine/HighFreqSettings;->getInstance()Lcom/cootek/smartinput5/engine/HighFreqSettings;

    move-result-object v0

    iget v0, v0, Lcom/cootek/smartinput5/engine/HighFreqSettings;->previewLevel:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->mSupportPreviewPopup:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    iget v0, p0, Lcom/cootek/smartinput5/ui/T;->mCombineFlag:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/W;->L()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mSoftKeyInfo:Lcom/cootek/smartinput5/ui/SoftKeyInfo;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/ui/SoftKeyInfo;->isOperationSupported(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->V()Lcom/cootek/smartinput5/ui/control/A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/control/A;->p()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/cootek/smartinput5/ui/T;->mLastPreviewOperation:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lcom/cootek/smartinput5/ui/T;->mLastPreviewOperation:I

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/ui/T;->getPreviewText(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget-object v2, v2, Lcom/cootek/smartinput5/ui/W;->K:Lcom/cootek/smartinput5/ui/SoftKeyboardView;

    iget v3, p0, Lcom/cootek/smartinput5/ui/T;->x:I

    iget v4, p0, Lcom/cootek/smartinput5/ui/T;->y:I

    iget v5, p0, Lcom/cootek/smartinput5/ui/T;->width:I

    iget v6, p0, Lcom/cootek/smartinput5/ui/T;->height:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/cootek/smartinput5/ui/control/A;->r(Landroid/view/View;IIII)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/ui/T;->getPreviewIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/cootek/smartinput5/ui/T;->altTitlePreviewOnly:Z

    if-eqz v2, :cond_6

    const/4 p1, 0x0

    :cond_6
    move-object v9, p1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/o0;->V()Lcom/cootek/smartinput5/ui/control/A;

    move-result-object v7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    if-nez v9, :cond_8

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/o0;->V()Lcom/cootek/smartinput5/ui/control/A;

    move-result-object p1

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/T;->hasExtendKey()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/cootek/smartinput5/ui/control/A;->t(I)V

    iget p1, p0, Lcom/cootek/smartinput5/ui/T;->backgroundType:I

    const/4 v2, 0x1

    if-eq p1, v2, :cond_7

    const/4 v3, 0x2

    if-eq p1, v3, :cond_7

    const/4 v1, 0x1

    :cond_7
    invoke-virtual {v7, p1}, Lcom/cootek/smartinput5/ui/control/A;->u(I)V

    invoke-virtual {v7, v8, v0, v1}, Lcom/cootek/smartinput5/ui/control/A;->F(Landroid/graphics/Rect;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_8
    if-eqz v9, :cond_a

    iget-boolean p1, p0, Lcom/cootek/smartinput5/ui/T;->iconWithMainTitle:Z

    if-eqz p1, :cond_9

    const-string p1, "\u200c"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/T;->hasExtendKey()Z

    move-result p1

    invoke-virtual {v7, p1}, Lcom/cootek/smartinput5/ui/control/A;->t(I)V

    iget p1, p0, Lcom/cootek/smartinput5/ui/T;->backgroundType:I

    invoke-virtual {v7, p1}, Lcom/cootek/smartinput5/ui/control/A;->u(I)V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->getCurrentDrawableState()[I

    move-result-object p1

    invoke-virtual {v7, v8, v0, v9, p1}, Lcom/cootek/smartinput5/ui/control/A;->E(Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/drawable/Drawable;[I)V

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/T;->hasExtendKey()Z

    move-result p1

    invoke-virtual {v7, p1}, Lcom/cootek/smartinput5/ui/control/A;->t(I)V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->getCurrentDrawableState()[I

    move-result-object v10

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->getPreviewWidth()I

    move-result v11

    invoke-virtual {p0}, Lcom/cootek/smartinput5/ui/T;->getPreviewHeight()I

    move-result v12

    invoke-virtual/range {v7 .. v12}, Lcom/cootek/smartinput5/ui/control/A;->B(Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;[III)V

    :cond_a
    :goto_1
    return-void
.end method

.method public squaredDistanceFrom(II)I
    .locals 2

    iget v0, p0, Lcom/cootek/smartinput5/ui/T;->x:I

    iget v1, p0, Lcom/cootek/smartinput5/ui/T;->width:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    iget p1, p0, Lcom/cootek/smartinput5/ui/T;->y:I

    iget v1, p0, Lcom/cootek/smartinput5/ui/T;->height:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    sub-int/2addr p1, p2

    mul-int v0, v0, v0

    mul-int p1, p1, p1

    add-int/2addr v0, p1

    return v0
.end method

.method protected stopTraceCurveInTime()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/W;->p()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->mTraceCurveInTime:Z

    return-void
.end method

.method protected stopTraceLongPress()V
    .locals 3

    iget-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->mTraceLongPress:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/cootek/smartinput5/ui/T;->mLastPreviewOperation:I

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/W;->p()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/cootek/smartinput5/ui/T;->mLongPressType:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->mTraceLongPress:Z

    iput-boolean v0, p0, Lcom/cootek/smartinput5/ui/T;->mLongPressPendingState:Z

    iget-boolean v1, p0, Lcom/cootek/smartinput5/ui/T;->mLongPressed:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/cootek/smartinput5/ui/T;->mLongPressType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->mSoftKeyInfo:Lcom/cootek/smartinput5/ui/SoftKeyInfo;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/ui/SoftKeyInfo;->isOperationSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->mActionListener:Lcom/cootek/smartinput5/ui/T$b;

    invoke-interface {v1, v2}, Lcom/cootek/smartinput5/ui/T$b;->a(I)V

    :cond_1
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Engine;->getCandidateManager()Lcom/cootek/smartinput5/engine/CandidateManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/engine/CandidateManager;->EnableUpdate(Z)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isLongPressDelete()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    const/16 v2, 0xe9

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/z;->D0()Lcom/cootek/smartinput5/func/s0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/s0;->f()V

    :cond_2
    invoke-static {v0}, Lcom/cootek/smartinput5/engine/Engine;->setLongPressDelete(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoftKey [width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cootek/smartinput5/ui/T;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cootek/smartinput5/ui/T;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cootek/smartinput5/ui/T;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cootek/smartinput5/ui/T;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mainTextPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->mainTextPos:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", altTextPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->altTextPos:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", altTextXAlign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->altTextXAlign:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", altTextYAlign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->altTextYAlign:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", keyName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->keyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateActionListener()V
    .locals 1

    new-instance v0, Lcom/cootek/smartinput5/ui/T$a;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/ui/T$a;-><init>(Lcom/cootek/smartinput5/ui/T;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mActionListener:Lcom/cootek/smartinput5/ui/T$b;

    return-void
.end method

.method updateDisplay()V
    .locals 0

    return-void
.end method

.method protected updateKeyInfo()V
    .locals 4

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/ui/T;->keyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Engine;->getKeyId(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/T;->mSoftKeyInfo:Lcom/cootek/smartinput5/ui/SoftKeyInfo;

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/cootek/smartinput5/engine/Engine;->getKeySupportedOperation(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/cootek/smartinput5/ui/SoftKeyInfo;->setSupportedOperation(I)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v2

    iget-object v3, p0, Lcom/cootek/smartinput5/ui/T;->mSoftKeyInfo:Lcom/cootek/smartinput5/ui/SoftKeyInfo;

    invoke-virtual {v2, v0, v3}, Lcom/cootek/smartinput5/engine/Engine;->updateKey(ILcom/cootek/smartinput5/ui/SoftKeyInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mSoftKeyInfo:Lcom/cootek/smartinput5/ui/SoftKeyInfo;

    iget-boolean v0, v0, Lcom/cootek/smartinput5/ui/SoftKeyInfo;->needUpdate:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget-object v0, v0, Lcom/cootek/smartinput5/ui/W;->K:Lcom/cootek/smartinput5/ui/SoftKeyboardView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Lcom/cootek/smartinput5/ui/SoftKeyboardView;->E(Lcom/cootek/smartinput5/ui/T;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/cootek/smartinput5/ui/T;->mTriType:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/cootek/smartinput5/ui/T;->mBinType:I

    if-eq v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget-object v0, v0, Lcom/cootek/smartinput5/ui/W;->K:Lcom/cootek/smartinput5/ui/SoftKeyboardView;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/cootek/smartinput5/ui/T;->isTriBinStateChanged()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mKeyboard:Lcom/cootek/smartinput5/ui/W;

    iget-object v0, v0, Lcom/cootek/smartinput5/ui/W;->K:Lcom/cootek/smartinput5/ui/SoftKeyboardView;

    invoke-virtual {v0, p0}, Lcom/cootek/smartinput5/ui/SoftKeyboardView;->E(Lcom/cootek/smartinput5/ui/T;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateRendingDrawable()V
    .locals 3

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/i0;->u0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/ui/T;->mRendingMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/cootek/smartinput5/ui/T;->mRendingMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cootek/smartinput5/ui/K;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lcom/cootek/smartinput5/ui/K;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    return-void
.end method
