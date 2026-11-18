.class public Lcom/cootek/smartinput5/engine/Engine;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartinput5/engine/Engine$ShowStartupDialogAsyncTask;,
        Lcom/cootek/smartinput5/engine/Engine$Operation;,
        Lcom/cootek/smartinput5/engine/Engine$ISelectionListener;
    }
.end annotation


# static fields
.field public static final CHANGE_ACCESSIBILITY:I = 0x200000

.field public static final CHANGE_ACTIVE_CORRECT:I = 0x8000

.field public static final CHANGE_ACTIVE_FILTER:I = 0x80

.field public static final CHANGE_CANDIDATE:I = 0x10

.field public static final CHANGE_CLOUD_CANDIDATE:I = 0x40000

.field public static final CHANGE_CLOUD_FEEDBACK:I = 0x80000

.field public static final CHANGE_CLOUD_SEARCH:I = 0x100000

.field public static final CHANGE_COMMIT:I = 0x400

.field public static final CHANGE_CONFIRMEDTEXT:I = 0x1000000

.field public static final CHANGE_DEFAULT_CANDIDATE:I = 0x20

.field public static final CHANGE_DIALECT_LIST:I = 0x2000

.field public static final CHANGE_EXPLICITTEXT:I = 0x200

.field public static final CHANGE_FILTER_LIST:I = 0x40

.field public static final CHANGE_FINISH_COMPOSING:I = 0x10000

.field public static final CHANGE_HANDWRITE_MASK:I = 0x20000

.field public static final CHANGE_INLINETEXT:I = 0x100

.field private static final CHANGE_INPUT_CONNECTION:I = 0x10500

.field public static final CHANGE_LOCAL_CLOUD_RESULT:I = 0x2000000

.field public static final CHANGE_LOCAL_CLOUD_SEARCH:I = 0x4000000

.field public static final CHANGE_MISTYPE_CORRECT:I = 0x4000

.field public static final CHANGE_NEXTPHRASE_CANDIDATE:I = 0x800000

.field public static final CHANGE_NEXTWORD_CANDIDATE:I = 0x400000

.field public static final CHANGE_SURFACE:I = 0x1

.field public static final CHANGE_SURFACE_DISPLAY:I = 0x2

.field public static final CHANGE_SURFACE_OPERATION:I = 0x8

.field public static final CHANGE_SURFACE_POPUP:I = 0x4

.field public static final CHANGE_TAB_LIST:I = 0x800

.field public static final CHANGE_USERWORD_LIST:I = 0x1000

.field public static final COMMIT_TYPE_KEYCODE:I = 0x2

.field public static final COMMIT_TYPE_TEXT:I = 0x1

.field private static final DAY_OF_VALENTINES_DAY:I = 0xe

.field private static final DELETE_TYPE_AROUND:I = 0x0

.field private static final DELETE_TYPE_DEL_AFTER_ONLY:I = 0x2

.field private static final DELETE_TYPE_DEL_BEFORE_ONLY:I = 0x1

.field public static final DICT_TYPE_CHINESEBIHUA:I = 0x2

.field public static final DICT_TYPE_CHINESEPINYIN:I = 0x1

.field public static final DICT_TYPE_CHINESEZHUYIN:I = 0x3

.field public static final DICT_TYPE_JAPANESE:I = 0x4

.field public static final DICT_TYPE_UNDEFINED:I = -0x1

.field public static final DICT_TYPE_WESTERN:I = 0x0

.field public static final EXCEPTION_ERROR:I = 0x10000000

.field public static final EXCEPTION_WARN:I = 0x8000000

.field private static final HARD_KEY_MODE:I = 0x1

.field public static final IMAGE_TYPE_RAM:I = 0x2

.field public static final IMAGE_TYPE_ROM:I = 0x1

.field public static final IMAGE_TYPE_UNDEFINED:I = -0x1

.field public static final IMAGE_TYPE_USR:I = 0x3

.field public static final KEYCODE_BACKSPACE:I = 0x20008

.field public static final KEYCODE_BACKSPACE_HANDWRITE:I = 0x300039

.field public static final KEYCODE_COPY:I = 0x20090

.field public static final KEYCODE_DEL:I = 0x20081

.field public static final KEYCODE_EDIT_ADD_NEW_WORD:I = 0x310011

.field public static final KEYCODE_EDIT_CLIPBOARD:I = 0x310013

.field public static final KEYCODE_EDIT_COPY:I = 0x310001

.field public static final KEYCODE_EDIT_CUT:I = 0x310003

.field public static final KEYCODE_EDIT_DEL:I = 0x31000d

.field public static final KEYCODE_EDIT_DONE:I = 0x310010

.field public static final KEYCODE_EDIT_DOWN:I = 0x310005

.field public static final KEYCODE_EDIT_END:I = 0x31000b

.field public static final KEYCODE_EDIT_HOME:I = 0x31000a

.field public static final KEYCODE_EDIT_KEY_BEGIN:I = 0x310001

.field public static final KEYCODE_EDIT_KEY_END:I = 0x310012

.field public static final KEYCODE_EDIT_LEFT:I = 0x310006

.field public static final KEYCODE_EDIT_OPEN_OPERATION:I = 0x310012

.field public static final KEYCODE_EDIT_PASTE:I = 0x310002

.field public static final KEYCODE_EDIT_PDOWN:I = 0x310008

.field public static final KEYCODE_EDIT_PUP:I = 0x310009

.field public static final KEYCODE_EDIT_RIGHT:I = 0x310007

.field public static final KEYCODE_EDIT_SELECT:I = 0x31000c

.field public static final KEYCODE_EDIT_SELECTALL:I = 0x31000e

.field public static final KEYCODE_EDIT_SPACE:I = 0x31000f

.field public static final KEYCODE_EDIT_UP:I = 0x310004

.field public static final KEYCODE_ENTER:I = 0x2008d

.field public static final KEYCODE_FUN_BACK:I = 0x300025

.field public static final KEYCODE_FUN_CANCEL_VOICE:I = 0x320002

.field public static final KEYCODE_FUN_CANDIDATE_DOWN:I = 0x300029

.field public static final KEYCODE_FUN_CANDIDATE_LEFT:I = 0x30002a

.field public static final KEYCODE_FUN_CANDIDATE_RIGHT:I = 0x30002b

.field public static final KEYCODE_FUN_CANDIDATE_UP:I = 0x300028

.field public static final KEYCODE_FUN_CLOSE:I = 0x30000c

.field public static final KEYCODE_FUN_CLOSE_SMILEY_PANEL:I = 0x320007

.field public static final KEYCODE_FUN_COPY:I = 0x300007

.field public static final KEYCODE_FUN_CUSTOM_SYMBOL_EN:I = 0x30003d

.field public static final KEYCODE_FUN_CUSTOM_SYMBOL_ZH:I = 0x30003c

.field public static final KEYCODE_FUN_CUT:I = 0x30000a

.field public static final KEYCODE_FUN_DELWORD:I = 0x30003b

.field public static final KEYCODE_FUN_DEL_AROUND_WORD:I = 0x300042

.field public static final KEYCODE_FUN_DICT:I = 0x300001

.field public static final KEYCODE_FUN_DICT_OFF:I = 0x300046

.field public static final KEYCODE_FUN_DICT_ON:I = 0x300045

.field public static final KEYCODE_FUN_DOWN:I = 0x300004

.field public static final KEYCODE_FUN_GUESS_EMOJI:I = 0x32000a
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEYCODE_FUN_HANDWRITE_PAOPAO:I = 0x30003e

.field public static final KEYCODE_FUN_HARD_SHIFT:I = 0x300010

.field public static final KEYCODE_FUN_HARD_SYMBOL_END:I = 0x300037

.field public static final KEYCODE_FUN_HARD_SYMBOL_TAB_LEFT:I = 0x30002c

.field public static final KEYCODE_FUN_HARD_SYMBOL_TAB_MODE:I = 0x30002f

.field public static final KEYCODE_FUN_HARD_SYMBOL_TAB_RIGHT:I = 0x30002d

.field public static final KEYCODE_FUN_LANG:I = 0x300002

.field public static final KEYCODE_FUN_LANG_OPTION:I = 0x300021

.field public static final KEYCODE_FUN_LEFT:I = 0x300005

.field public static final KEYCODE_FUN_NEXT:I = 0x320009

.field public static final KEYCODE_FUN_OPEN_SMILEY_PANEL:I = 0x320006

.field public static final KEYCODE_FUN_OPTION:I = 0x30000f

.field public static final KEYCODE_FUN_PASTE:I = 0x300008

.field public static final KEYCODE_FUN_PINYIN_DISABLED:I = 0x300041

.field public static final KEYCODE_FUN_PREV:I = 0x320008

.field public static final KEYCODE_FUN_QUICK_SWITCHER_NO_SETTING_PROMPT:I = 0x300038

.field public static final KEYCODE_FUN_RIGHT:I = 0x300006

.field public static final KEYCODE_FUN_SELECT:I = 0x300009

.field public static final KEYCODE_FUN_SELECT_ALL:I = 0x30000b

.field public static final KEYCODE_FUN_SHOW_AUTO_SPACE_TIP_DIALOG:I = 0x320004

.field public static final KEYCODE_FUN_SHOW_VOICE_MASK:I = 0x320005

.field public static final KEYCODE_FUN_SPACE_DOUBLE_CLICK:I = 0x300024

.field public static final KEYCODE_FUN_SWITCH_CHS_TO_ENG:I = 0x300044

.field public static final KEYCODE_FUN_SWITCH_ENG_TO_CHS:I = 0x300043

.field public static final KEYCODE_FUN_SWITCH_LAST_LANG:I = 0x30003f

.field public static final KEYCODE_FUN_SWITCH_NEXT_LANG:I = 0x300040

.field public static final KEYCODE_FUN_SYMBOL_EMO:I = 0x300012

.field public static final KEYCODE_FUN_SYMBOL_NUM:I = 0x300011

.field public static final KEYCODE_FUN_SYMBOL_OTH:I = 0x300013

.field public static final KEYCODE_FUN_TRACK:I = 0x30000d

.field public static final KEYCODE_FUN_UP:I = 0x300003

.field public static final KEYCODE_FUN_VOICE:I = 0x320001

.field public static final KEYCODE_FUN_VOICE_STOP:I = 0x320003

.field public static final KEYCODE_PASTE:I = 0x20091

.field public static final KEYCODE_SELECT:I = 0x2008e

.field public static final KEYCODE_SPACE:I = 0x20080

.field public static final KEYCODE_UNSELECT:I = 0x2008f

.field public static final KEY_NAME_CLEAR_SHIFT_STATE:Ljava/lang/String; = "sk_clear_shift_state"

.field public static final KEY_NAME_HARD_CHARACTER_LISTENER:Ljava/lang/String; = "sk_hard_character_listener"

.field public static final KEY_NAME_UPDATE_SELECTION_LISTENER:Ljava/lang/String; = "sk_update_selection_listener"

.field public static final LUA_CALL_BACK_TO_PREVIOUS:Ljava/lang/String; = "back_to_previous"

.field public static final LUA_CALL_CLEAR_CANDIDATE:Ljava/lang/String; = "clear_candidate"

.field public static final LUA_CALL_COMMIT_CANDIDATE:Ljava/lang/String; = "commit_candidate"

.field public static final LUA_CALL_COMMIT_INPUT:Ljava/lang/String; = "commit_input"

.field public static final LUA_CALL_COMPOUND_WORD_INPUT:Ljava/lang/String; = "compound_word_input"

.field public static final LUA_CALL_RESTORE_ALT_TITLE:Ljava/lang/String; = "restore_alt_title"

.field public static final LUA_CALL_REVERSE_ALT_TITLE:Ljava/lang/String; = "reverse_alt_title"

.field public static final LUA_CALL_SYNC_SK_LNG:Ljava/lang/String; = "sync_sk_lng"

.field public static final LUA_CALL_UPDATE_VOICE_SYM_KEY:Ljava/lang/String; = "update_voice_sym_key"

.field public static final LUA_CALL_VOICE_RECOGNIZE_END:Ljava/lang/String; = "voice_recognize_end"

.field public static final LUA_CALL_VOICE_RECOGNIZE_START:Ljava/lang/String; = "voice_recognize_start"

.field private static final MAX_WESTERN_WORD_LENGTH:I = 0x24

.field private static final MONTH_OF_VALENTINES_DAY:I = 0x1

.field private static final MSG_CHECK_PERMISSION:I = 0x5

.field private static final MSG_OPEN_PAOPAO:I = 0x1

.field private static final MSG_POST_CLEAN_UP:I = 0x0

.field private static final MSG_SEND_CLICKED:I = 0x3

.field private static final MSG_SHOW_INCOMPATIBLE_DIALOG:I = 0x2

.field private static final MSG_SHOW_PRIVACY_POLICY_GUIDE:I = 0x6

.field private static final MSG_START_ADS_ANIMATION:I = 0x4

.field public static final OCEAN_CORPUS_VERSION_DEFAULT_VALUE:I = 0x0

.field public static final OKINAWA_MAX_KEYCODE:I = 0x320000

.field public static final OPERATION_COUNT:I = 0x3

.field public static final OPERATION_HANDWRITE:I = 0x1

.field public static final OPERATION_HARDKEY:I = 0x0

.field public static final OPERATION_IMPORTV4:I = 0x2

.field public static final OPERATION_UNKNOWN:I = -0x1

.field public static final PENDING_EDIT_MODE:I = 0x3

.field public static final PENDING_NORMAL_MODE:I = 0x0

.field public static final PENDING_SENTENCE_MODE:I = 0x1

.field public static final REQUEST_CANDIDATE_END:I = -0x80000000

.field private static final SOFT_KEY_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Engine"

.field public static final TRANS_BEGIN:I = 0x1

.field public static final TRANS_END:I = 0x2

.field public static final TRI_STATUS_LOCKED:I = 0x3

.field public static final TRI_STATUS_NORMAL:I = 0x1

.field public static final TRI_STATUS_TOGGLED:I = 0x2

.field public static final TRI_TYPE_HINDISHIFT:I = 0x2

.field public static final TRI_TYPE_SEPERATOR:I = 0x1

.field public static final TRI_TYPE_SHIFT:I = 0x0

.field public static final UPDATE_TYPE_AUTO:I = 0x1

.field public static final UPDATE_TYPE_MANUAL:I = 0x2

.field private static final WORD_ATTR_CHS:I = 0x2

.field private static final WORD_ATTR_NONE:I = 0x1

.field private static final WORD_ATTR_WESTERN:I = 0x3

.field private static isLongPressDelete:Z

.field private static isPreciseMode:Z

.field public static lastWindowShownTime:J

.field private static sContext:Lcom/cootek/smartinput5/TouchPalIME;

.field private static sInstance:Lcom/cootek/smartinput5/engine/Engine;

.field private static sIsBusy:Z

.field private static sTouchPalIMEImpl:Lcom/cootek/smartinput5/h;

.field public static uStartToInput:Z


# instance fields
.field private final FIRST_SHOW_DRAWER_DELAY:I

.field private audioManager:Landroid/media/AudioManager;

.field private candidateManager:Lcom/cootek/smartinput5/engine/CandidateManager;

.field private clokeManager:Lcom/cootek/smartinput5/engine/ClokeManager;

.field private cloudSyncTipChecker:Lcom/cootek/smartinput5/func/component/g;

.field private commitManager:Lcom/cootek/smartinput5/engine/CommitManager;

.field private context:Landroid/content/Context;

.field private curPkg:Ljava/lang/String;

.field private currentKeyMode:I

.field private dialogManager:Lcom/cootek/smartinput5/engine/DialogManager;

.field private editor:Lcom/cootek/smartinput5/engine/Editor;

.field private explicitManager:Lcom/cootek/smartinput5/engine/ExplicitManager;

.field private filterManager:Lcom/cootek/smartinput5/engine/FilterManager;

.field private handWriteMaskManager:Lcom/cootek/smartinput5/engine/HandWriteMaskManager;

.field private ims:Lcom/cootek/smartinput5/TouchPalIME;

.field private imsImpl:Lcom/cootek/smartinput5/h;

.field private inlineManager:Lcom/cootek/smartinput5/engine/InlineManager;

.field private isInputPaused:Z

.field private isMultiTouchPaused:Z

.field public isMultitouch:Z

.field private isNormalKeyboard:Z

.field private isPastedCheckPaused:Z

.field private lastKeyMode:I

.field private mCachedCell:Ljava/lang/String;

.field private mCachedDictOptions:I

.field private mCachedInlineText:Ljava/lang/String;

.field private mCachedInput:Ljava/lang/String;

.field private mCachedInputOp:Ljava/lang/String;

.field private mCachedInputSequence:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cootek/smartinput5/func/userinput/b;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedLayoutAlias:Ljava/lang/String;

.field private mCapsMode:I

.field private mClipboardMgr:Lcom/cootek/smartinput5/func/ClipboardManager;

.field private mConfirmedInfo:Lcom/cootek/smartinput5/engine/ExplicitInfo;

.field private mEnabled:Z

.field private mExplicitInfo:Lcom/cootek/smartinput5/engine/ExplicitInfo;

.field private mHandler:Landroid/os/Handler;

.field private mHardKeyDisabled:Z

.field private mInlineInfo:Lcom/cootek/smartinput5/engine/ExplicitInfo;

.field private mInputType:I

.field private mInternalInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mInvitationDlgShowing:Z

.field private mIsFullHardKeyboard:Z

.field private mLastCommitTime:J

.field private mOldSpellCheckSetting:I

.field private mPreloadedOperation:Lcom/cootek/smartinput5/engine/Engine$Operation;

.field private mRunblaeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldCollectCommitInfo:Z

.field private mStartInput:Z

.field private mStartInputView:Z

.field private mUsrDicChecker:Lcom/cootek/smartinput5/func/component/x;

.field private mVoiceTypingTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

.field private needChangeSymbol:Z

.field private okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

.field private selectionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cootek/smartinput5/engine/Engine$ISelectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private slideSentenceManager:Lcom/cootek/smartinput5/n/b;

.field private surfaceManager:Lcom/cootek/smartinput5/engine/SurfaceManager;

.field private verboseManager:Lcom/cootek/smartinput5/engine/VerboseManager;

.field private voiceProcessor:Lcom/cootek/smartinput5/engine/VoiceProcessor;

.field private warningManager:Lcom/cootek/smartinput5/engine/WarningManager;

.field private widgetManager:Lcom/cootek/smartinput5/ui/o0;

.field private windowLayoutManager:Lcom/cootek/smartinput5/ui/p0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/engine/Engine;->isNormalKeyboard:Z

    new-instance v1, Lcom/cootek/smartinput5/func/component/x;

    invoke-direct {v1}, Lcom/cootek/smartinput5/func/component/x;-><init>()V

    iput-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->mUsrDicChecker:Lcom/cootek/smartinput5/func/component/x;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cootek/smartinput5/engine/Engine;->mShouldCollectCommitInfo:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/cootek/smartinput5/engine/Engine;->mCachedInputOp:Ljava/lang/String;

    iput-object v2, p0, Lcom/cootek/smartinput5/engine/Engine;->mCachedInput:Ljava/lang/String;

    iput v1, p0, Lcom/cootek/smartinput5/engine/Engine;->mCachedDictOptions:I

    iput-object v2, p0, Lcom/cootek/smartinput5/engine/Engine;->mCachedLayoutAlias:Ljava/lang/String;

    iput-object v2, p0, Lcom/cootek/smartinput5/engine/Engine;->mCachedCell:Ljava/lang/String;

    iput-object v2, p0, Lcom/cootek/smartinput5/engine/Engine;->curPkg:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/cootek/smartinput5/engine/Engine;->mCachedInputSequence:Ljava/util/ArrayList;

    const/16 v2, 0x12c

    iput v2, p0, Lcom/cootek/smartinput5/engine/Engine;->FIRST_SHOW_DRAWER_DELAY:I

    iput v1, p0, Lcom/cootek/smartinput5/engine/Engine;->lastKeyMode:I

    iput v1, p0, Lcom/cootek/smartinput5/engine/Engine;->currentKeyMode:I

    iput-boolean v1, p0, Lcom/cootek/smartinput5/engine/Engine;->isPastedCheckPaused:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/cootek/smartinput5/engine/Engine;->mRunblaeList:Ljava/util/ArrayList;

    new-instance v2, Lcom/cootek/smartinput5/engine/Engine$1;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/engine/Engine$1;-><init>(Lcom/cootek/smartinput5/engine/Engine;)V

    iput-object v2, p0, Lcom/cootek/smartinput5/engine/Engine;->mHandler:Landroid/os/Handler;

    iput v1, p0, Lcom/cootek/smartinput5/engine/Engine;->mOldSpellCheckSetting:I

    iput-boolean v1, p0, Lcom/cootek/smartinput5/engine/Engine;->needChangeSymbol:Z

    iput-boolean v1, p0, Lcom/cootek/smartinput5/engine/Engine;->isMultitouch:Z

    iput-boolean v1, p0, Lcom/cootek/smartinput5/engine/Engine;->mInvitationDlgShowing:Z

    sget-object v2, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    iput-object v2, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    sget-object v3, Lcom/cootek/smartinput5/engine/Engine;->sTouchPalIMEImpl:Lcom/cootek/smartinput5/h;

    iput-object v3, p0, Lcom/cootek/smartinput5/engine/Engine;->imsImpl:Lcom/cootek/smartinput5/h;

    iput-object v2, p0, Lcom/cootek/smartinput5/engine/Engine;->context:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/cootek/smartinput5/engine/Engine;->mStartInput:Z

    iput-boolean v1, p0, Lcom/cootek/smartinput5/engine/Engine;->mStartInputView:Z

    iput-boolean v1, p0, Lcom/cootek/smartinput5/engine/Engine;->isMultitouch:Z

    new-instance v1, Lcom/cootek/smartinput5/engine/Editor;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/engine/Editor;-><init>(Lcom/cootek/smartinput5/engine/Engine;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->editor:Lcom/cootek/smartinput5/engine/Editor;

    new-instance v1, Lcom/cootek/smartinput5/ui/o0;

    iget-object v2, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-direct {v1, v2}, Lcom/cootek/smartinput5/ui/o0;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->widgetManager:Lcom/cootek/smartinput5/ui/o0;

    new-instance v1, Lcom/cootek/smartinput5/engine/SurfaceManager;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/engine/SurfaceManager;-><init>(Lcom/cootek/smartinput5/engine/Engine;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->surfaceManager:Lcom/cootek/smartinput5/engine/SurfaceManager;

    new-instance v1, Lcom/cootek/smartinput5/engine/CandidateManager;

    new-instance v2, Lcom/cootek/smartinput5/engine/CandidateProvider;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/engine/CandidateProvider;-><init>(Lcom/cootek/smartinput5/engine/Engine;)V

    new-instance v3, Lcom/cootek/smartinput5/engine/UserwordProvider;

    invoke-direct {v3, p0}, Lcom/cootek/smartinput5/engine/UserwordProvider;-><init>(Lcom/cootek/smartinput5/engine/Engine;)V

    new-instance v4, Lcom/cootek/smartinput5/engine/DialectProvider;

    invoke-direct {v4, p0}, Lcom/cootek/smartinput5/engine/DialectProvider;-><init>(Lcom/cootek/smartinput5/engine/Engine;)V

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/cootek/smartinput5/engine/CandidateManager;-><init>(Lcom/cootek/smartinput5/engine/Engine;Lcom/cootek/smartinput5/engine/CandidateManager$ICandidateProvider;Lcom/cootek/smartinput5/engine/CandidateManager$ICandidateProvider;Lcom/cootek/smartinput5/engine/CandidateManager$ICandidateProvider;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->candidateManager:Lcom/cootek/smartinput5/engine/CandidateManager;

    new-instance v1, Lcom/cootek/smartinput5/ui/p0;

    iget-object v2, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    iget-object v3, p0, Lcom/cootek/smartinput5/engine/Engine;->widgetManager:Lcom/cootek/smartinput5/ui/o0;

    invoke-direct {v1, v2, v3}, Lcom/cootek/smartinput5/ui/p0;-><init>(Landroid/content/Context;Lcom/cootek/smartinput5/ui/o0;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->windowLayoutManager:Lcom/cootek/smartinput5/ui/p0;

    new-instance v1, Lcom/cootek/smartinput5/n/b;

    new-instance v2, Lcom/cootek/smartinput5/engine/NextwordProvider;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/engine/NextwordProvider;-><init>(Lcom/cootek/smartinput5/engine/Engine;)V

    new-instance v3, Lcom/cootek/smartinput5/engine/NextphraseProvider;

    invoke-direct {v3, p0}, Lcom/cootek/smartinput5/engine/NextphraseProvider;-><init>(Lcom/cootek/smartinput5/engine/Engine;)V

    new-instance v4, Lcom/cootek/smartinput5/engine/WavewordProvider;

    invoke-direct {v4, p0}, Lcom/cootek/smartinput5/engine/WavewordProvider;-><init>(Lcom/cootek/smartinput5/engine/Engine;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/cootek/smartinput5/n/b;-><init>(Lcom/cootek/smartinput5/n/b$b;Lcom/cootek/smartinput5/n/b$b;Lcom/cootek/smartinput5/n/b$b;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->slideSentenceManager:Lcom/cootek/smartinput5/n/b;

    new-instance v1, Lcom/cootek/smartinput5/engine/FilterManager;

    new-instance v2, Lcom/cootek/smartinput5/engine/FilterProvider;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/engine/FilterProvider;-><init>(Lcom/cootek/smartinput5/engine/Engine;)V

    invoke-direct {v1, p0, v2}, Lcom/cootek/smartinput5/engine/FilterManager;-><init>(Lcom/cootek/smartinput5/engine/Engine;Lcom/cootek/smartinput5/engine/FilterManager$IFilterProvider;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->filterManager:Lcom/cootek/smartinput5/engine/FilterManager;

    new-instance v1, Lcom/cootek/smartinput5/engine/InlineManager;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/engine/InlineManager;-><init>(Lcom/cootek/smartinput5/engine/Engine;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->inlineManager:Lcom/cootek/smartinput5/engine/InlineManager;

    new-instance v1, Lcom/cootek/smartinput5/engine/ExplicitManager;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/engine/ExplicitManager;-><init>(Lcom/cootek/smartinput5/engine/Engine;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->explicitManager:Lcom/cootek/smartinput5/engine/ExplicitManager;

    new-instance v1, Lcom/cootek/smartinput5/engine/ClokeManager;

    new-instance v2, Lcom/cootek/smartinput5/engine/ClokeProvider;

    invoke-direct {v2, p0}, Lcom/cootek/smartinput5/engine/ClokeProvider;-><init>(Lcom/cootek/smartinput5/engine/Engine;)V

    invoke-direct {v1, p0, v2}, Lcom/cootek/smartinput5/engine/ClokeManager;-><init>(Lcom/cootek/smartinput5/engine/Engine;Lcom/cootek/smartinput5/engine/ClokeManager$IClokeProvider;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->clokeManager:Lcom/cootek/smartinput5/engine/ClokeManager;

    new-instance v1, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;-><init>(Lcom/cootek/smartinput5/engine/Engine;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->handWriteMaskManager:Lcom/cootek/smartinput5/engine/HandWriteMaskManager;

    new-instance v1, Lcom/cootek/smartinput5/engine/WarningManager;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/engine/WarningManager;-><init>(Lcom/cootek/smartinput5/engine/Engine;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->warningManager:Lcom/cootek/smartinput5/engine/WarningManager;

    new-instance v1, Lcom/cootek/smartinput5/engine/CommitManager;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/engine/CommitManager;-><init>(Lcom/cootek/smartinput5/engine/Engine;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->commitManager:Lcom/cootek/smartinput5/engine/CommitManager;

    new-instance v1, Lcom/cootek/smartinput5/engine/DialogManager;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/engine/DialogManager;-><init>(Lcom/cootek/smartinput5/engine/Engine;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->dialogManager:Lcom/cootek/smartinput5/engine/DialogManager;

    :try_start_0
    iget-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->context:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->audioManager:Landroid/media/AudioManager;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    :goto_0
    new-instance v1, Lcom/cootek/smartinput5/engine/VoiceProcessor;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/engine/VoiceProcessor;-><init>(Lcom/cootek/smartinput5/engine/Engine;)V

    iput-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->voiceProcessor:Lcom/cootek/smartinput5/engine/VoiceProcessor;

    new-instance v1, Lcom/cootek/smartinput5/engine/VerboseManager;

    invoke-direct {v1}, Lcom/cootek/smartinput5/engine/VerboseManager;-><init>()V

    iput-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->verboseManager:Lcom/cootek/smartinput5/engine/VerboseManager;

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/z;->m0()Lcom/cootek/smartinput5/engine/Okinawa;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/cootek/smartinput5/engine/Okinawa;->setEngine(Lcom/cootek/smartinput5/engine/Engine;)Lcom/cootek/smartinput5/engine/Okinawa;

    move-result-object v1

    iput-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->selectionListeners:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mEnabled:Z

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->registerListeners()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->initSettings()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->setup()V

    return-void
.end method

.method static synthetic access$000(Lcom/cootek/smartinput5/engine/Engine;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->onPostCleanup()V

    return-void
.end method

.method static synthetic access$100(Lcom/cootek/smartinput5/engine/Engine;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->checkPermission()V

    return-void
.end method

.method static synthetic access$1000(Lcom/cootek/smartinput5/engine/Engine;)Lcom/cootek/smartinput5/TouchPalIME;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/cootek/smartinput5/engine/Engine;)Lcom/cootek/smartinput5/engine/DialogManager;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/engine/Engine;->dialogManager:Lcom/cootek/smartinput5/engine/DialogManager;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/cootek/smartinput5/engine/Engine;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/engine/Engine;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/cootek/smartinput5/engine/Engine;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cootek/smartinput5/engine/Engine;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/cootek/smartinput5/engine/Engine;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->showWindowWidgetTips()V

    return-void
.end method

.method static synthetic access$500()Lcom/cootek/smartinput5/TouchPalIME;
    .locals 1

    sget-object v0, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    return-object v0
.end method

.method static synthetic access$600(Lcom/cootek/smartinput5/engine/Engine;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->checkLocaleLanguageInstalled()V

    return-void
.end method

.method static synthetic access$700(Lcom/cootek/smartinput5/engine/Engine;)V
    .locals 0

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->checkSuperDictReminder()V

    return-void
.end method

.method static synthetic access$800(Lcom/cootek/smartinput5/engine/Engine;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/engine/Engine;->doSwitchCurve(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/cootek/smartinput5/engine/Engine;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/engine/Engine;->removeRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private activateReport()V
    .locals 0

    invoke-static {}, Lcom/cootek/smartinput5/func/RetentionDataCollect;->a()V

    return-void
.end method

.method private activating()V
    .locals 5

    sget-object v0, Lcom/cootek/smartinput5/net/Activator$ActivateChecker;->CHECK_STATE:Lcom/cootek/smartinput5/net/Activator$ActivateChecker;

    sget-object v1, Lcom/cootek/smartinput5/net/cmd/CmdActivate$ActivatePoint;->OWS:Lcom/cootek/smartinput5/net/cmd/CmdActivate$ActivatePoint;

    invoke-static {}, Lcom/cootek/smartinput5/net/Activator;->n()Lcom/cootek/smartinput5/net/Activator;

    move-result-object v2

    sget-object v3, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/cootek/smartinput5/net/Activator;->v(Landroid/content/Context;Lcom/cootek/smartinput5/net/Activator$ActivateChecker;ZLcom/cootek/smartinput5/net/cmd/CmdActivate$ActivatePoint;)I

    invoke-static {}, Lcom/cootek/smartinput5/net/Activator;->n()Lcom/cootek/smartinput5/net/Activator;

    move-result-object v0

    sget-object v1, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/net/Activator;->c(Landroid/content/Context;)V

    return-void
.end method

.method private canCollectInputData()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private canShowCandidateOnStartInput()Z
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mInputType:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mCapsMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x170

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getStringSetting(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "english"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "englishgb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method private canShowIncompatibleLanguageSkinDialog()Z
    .locals 3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v2, 0x165

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private canShowSuperDictDownloadReminder()Z
    .locals 3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x131

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->w0()Lcom/cootek/smartinput5/func/l0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/l0;->u()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    const/16 v2, 0x130

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/l0;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cootek/smartinput5/net/J;->Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canShowSwitchCurveDialog()Z
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x94

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

.method private checkCloudSyncTipShow()V
    .locals 6

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v0}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->q(Landroid/content/Context;)Lcom/cootek/smartinput5/configuration/ConfigurationManager;

    move-result-object v0

    sget-object v1, Lcom/cootek/smartinput5/configuration/ConfigurationType;->CLOUD_SYNC_TIP_SHOW_NOTIFICATION:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->G(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->cloudSyncTipChecker:Lcom/cootek/smartinput5/func/component/g;

    if-nez v0, :cond_1

    new-instance v0, Lcom/cootek/smartinput5/func/component/g;

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-direct {v0, v1}, Lcom/cootek/smartinput5/func/component/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->cloudSyncTipChecker:Lcom/cootek/smartinput5/func/component/g;

    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->cloudSyncTipChecker:Lcom/cootek/smartinput5/func/component/g;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/net/H;->d()Z

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x1c8

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/func/component/g;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/func/component/g;->y()I

    move-result v0

    iget-object v2, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    const v3, 0x7f0f0351

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/cootek/smartinput5/engine/Engine;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/cootek/smartinput5/ui/control/E;->s(Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    :cond_2
    return-void
.end method

.method private checkDynamicSkin()V
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/i0;->X()Lcom/cootek/smartinput5/ui/k;

    move-result-object v0

    iget-boolean v1, v0, Lcom/cootek/smartinput5/ui/k;->a:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/k;->f()V

    :cond_0
    return-void
.end method

.method private checkEnableTouchPalNotification()V
    .locals 3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0xf5

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->Q()Landroid/content/Context;

    move-result-object v0

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    :cond_0
    return-void
.end method

.method private checkLocaleLanguage()V
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->d0()Lcom/cootek/smartinput5/func/N;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/N;->Y0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->showLangaugeAvailableNotification()V

    :cond_0
    return-void
.end method

.method private checkLocaleLanguageInstalled()V
    .locals 5

    invoke-static {}, Lcom/cootek/smartinput5/net/w;->e()Lcom/cootek/smartinput5/net/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/net/w;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    const/16 v2, 0x161

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->getStringSetting(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/cootek/smartinput5/engine/Settings;->setStringSetting(ILjava/lang/String;)V

    :cond_3
    const/16 v0, 0x15f

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    :cond_4
    if-nez v1, :cond_5

    if-eqz v2, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->checkLocaleLanguage()V

    :cond_6
    :goto_0
    return-void
.end method

.method private checkPermission()V
    .locals 3

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->setPermissionListener()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/z;->p0()Lcom/cootek/smartinput5/func/permission/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/cootek/smartinput5/func/permission/a;->g(Ljava/util/ArrayList;Z)Z

    return-void
.end method

.method private checkSuperDictReminder()V
    .locals 5

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->getCurrentLanguageId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chinese_pinyin"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mInputType:I

    if-nez v0, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/net/w;->e()Lcom/cootek/smartinput5/net/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/net/w;->s()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x132

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    const/4 v2, 0x0

    const v3, 0x7f0f08af

    if-eqz v0, :cond_1

    sget-object v0, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    const v4, 0x7f0f08ae

    invoke-static {v0, v4}, Lcom/cootek/smartinput5/engine/Engine;->getResString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v4, v3}, Lcom/cootek/smartinput5/engine/Engine;->getResString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/cootek/smartinput5/engine/Engine;->showSuperDictDownloadReminder(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Settings;->writeBack()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->canShowSuperDictDownloadReminder()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    const v1, 0x7f0f08b0

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/engine/Engine;->getResString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v1, v3}, Lcom/cootek/smartinput5/engine/Engine;->getResString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/engine/Engine;->showSuperDictDownloadReminder(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x131

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Settings;->writeBack()V

    :cond_2
    :goto_0
    return-void
.end method

.method private checkTextPasted(III)V
    .locals 0

    return-void
.end method

.method private collectUsageData()V
    .locals 3

    new-instance v0, Lcom/cootek/smartinput5/oolong/state/d/b;

    invoke-direct {v0}, Lcom/cootek/smartinput5/oolong/state/d/b;-><init>()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->getStringSetting(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cootek/smartinput5/oolong/state/d/b;->a:Ljava/lang/String;

    const/16 v2, 0x18d

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/cootek/smartinput5/oolong/state/d/b;->b:Z

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->Q()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/cootek/smartinput5/oolong/state/StateUsageType;->open_keyboard:Lcom/cootek/smartinput5/oolong/state/StateUsageType;

    invoke-static {v1}, Lcom/cootek/smartinput5/oolong/state/c;->k(Landroid/content/Context;)Lcom/cootek/smartinput5/oolong/state/c;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/cootek/smartinput5/oolong/state/c;->g(Lcom/cootek/smartinput5/oolong/state/StateUsageType;Lcom/cootek/smartinput5/oolong/state/a;)V

    return-void
.end method

.method private deleteCharacter()V
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->editor:Lcom/cootek/smartinput5/engine/Editor;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Editor;->getTextBeforeCursor(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/func/smileypanel/unicode/c;->a(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->imsImpl:Lcom/cootek/smartinput5/h;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->deleteSurroundingText(II)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->imsImpl:Lcom/cootek/smartinput5/h;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object v0

    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->sendDownUpKeyEvents(I)V

    :goto_0
    return-void
.end method

.method private deleteWordAroundCursor(I)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->editor:Lcom/cootek/smartinput5/engine/Editor;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Editor;->getSelection()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    const-string v4, ""

    const/16 v5, 0x43

    if-eq v2, v0, :cond_0

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->imsImpl:Lcom/cootek/smartinput5/h;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->sendDownUpKeyEvents(I)V

    return-object v4

    :cond_0
    const/4 v0, 0x2

    const/16 v2, 0x24

    const/4 v6, 0x0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->editor:Lcom/cootek/smartinput5/engine/Editor;

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/engine/Editor;->getTextBeforeCursor(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/cootek/smartinput5/engine/Engine;->getDeleteWordLength(Ljava/lang/String;Z)I

    move-result v7

    goto :goto_0

    :cond_1
    move-object v0, v6

    const/4 v7, 0x0

    :goto_0
    if-eq p1, v3, :cond_4

    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_2
    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->editor:Lcom/cootek/smartinput5/engine/Editor;

    invoke-virtual {p1, v2}, Lcom/cootek/smartinput5/engine/Editor;->getTextAfterCursor(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v6, p1

    :goto_1
    invoke-direct {p0, v6, v1}, Lcom/cootek/smartinput5/engine/Engine;->getDeleteWordLength(Ljava/lang/String;Z)I

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    if-nez v0, :cond_5

    if-nez v6, :cond_5

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->imsImpl:Lcom/cootek/smartinput5/h;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->sendDownUpKeyEvents(I)V

    return-object v4

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_6
    if-eqz v6, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_7
    add-int v0, v7, p1

    if-gt v0, v3, :cond_8

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->imsImpl:Lcom/cootek/smartinput5/h;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->sendDownUpKeyEvents(I)V

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->G()Lcom/cootek/smartinput5/func/b;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/b;->j()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@string/accessibility_delete&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/b;->o(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->getImsImpl()Lcom/cootek/smartinput5/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object v0

    invoke-virtual {v0, v7, p1}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->deleteSurroundingText(II)Z

    :goto_3
    return-object v4
.end method

.method public static destroy()V
    .locals 2

    sget-object v0, Lcom/cootek/smartinput5/engine/Engine;->sInstance:Lcom/cootek/smartinput5/engine/Engine;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/cootek/smartinput5/engine/Engine;->onCleanup(Z)V

    sget-object v0, Lcom/cootek/smartinput5/engine/Engine;->sInstance:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->release()V

    sget-object v0, Lcom/cootek/smartinput5/engine/Engine;->sInstance:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->cleanWidgetManager()V

    sget-object v0, Lcom/cootek/smartinput5/engine/Engine;->sInstance:Lcom/cootek/smartinput5/engine/Engine;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->cleanImsResource()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/cootek/smartinput5/engine/Engine;->sInstance:Lcom/cootek/smartinput5/engine/Engine;

    sput-object v0, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    sput-object v0, Lcom/cootek/smartinput5/engine/Engine;->sTouchPalIMEImpl:Lcom/cootek/smartinput5/h;

    return-void
.end method

.method private doSwitchCurve(Ljava/lang/String;)V
    .locals 9

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->d0()Lcom/cootek/smartinput5/func/N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/N;->P()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cootek/smartinput5/func/language/a;

    iget-object v4, v4, Lcom/cootek/smartinput5/func/language/a;->a:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v2, :cond_3

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->m0()Lcom/cootek/smartinput5/engine/Okinawa;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/cootek/smartinput5/engine/Okinawa;->getLanguageCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->getCurrentLanguageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/cootek/smartinput5/engine/Settings;->setIntSetting(IIILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;Z)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2, p1, v1}, Lcom/cootek/smartinput5/engine/Settings;->setStringSetting(ILjava/lang/String;Z)V

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/cootek/smartinput5/engine/Settings;->setIntSetting(IIILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method private getCacheType(Z)Lcom/cootek/smartinput5/func/userinput/UserInputRecorder$CacheType;
    .locals 1

    sget-object v0, Lcom/cootek/smartinput5/func/userinput/UserInputRecorder$CacheType;->NONE:Lcom/cootek/smartinput5/func/userinput/UserInputRecorder$CacheType;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/engine/extractedtext/ExtractedStateProcessor;->getInstance()Lcom/cootek/smartinput5/engine/extractedtext/ExtractedStateProcessor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/extractedtext/ExtractedStateProcessor;->getCurrentState()Lcom/cootek/smartinput5/engine/extractedtext/IExtractedState;

    move-result-object p1

    sget-object v0, Lcom/cootek/smartinput5/engine/extractedtext/ExtractedState;->CHAOS:Lcom/cootek/smartinput5/engine/extractedtext/ExtractedState;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/cootek/smartinput5/func/userinput/UserInputRecorder$CacheType;->CHAOS:Lcom/cootek/smartinput5/func/userinput/UserInputRecorder$CacheType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/cootek/smartinput5/func/userinput/UserInputRecorder$CacheType;->ORDERED:Lcom/cootek/smartinput5/func/userinput/UserInputRecorder$CacheType;

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getCollectExtractedText(Z)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/engine/extractedtext/ExtractedStateProcessor;->getInstance()Lcom/cootek/smartinput5/engine/extractedtext/ExtractedStateProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/extractedtext/ExtractedStateProcessor;->getCurrentState()Lcom/cootek/smartinput5/engine/extractedtext/IExtractedState;

    move-result-object v0

    sget-object v1, Lcom/cootek/smartinput5/engine/extractedtext/ExtractedState;->CHAOS:Lcom/cootek/smartinput5/engine/extractedtext/ExtractedState;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/engine/Engine;->getExtractedText(Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->imsImpl:Lcom/cootek/smartinput5/h;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->getCachedExtractedTextString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/engine/Engine;->getExtractedText(Z)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getDeleteWordLength(Ljava/lang/String;Z)I
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v1

    const/4 v2, -0x1

    move v0, p2

    const/4 p2, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_6

    if-ltz v0, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    const/4 v7, 0x3

    if-eqz v6, :cond_2

    if-gtz p2, :cond_6

    const/16 v6, 0x20

    if-eq v5, v6, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-static {v5}, Lcom/cootek/smartinput5/ui/control/t;->e(I)Z

    move-result v5

    if-nez v5, :cond_4

    if-gt v2, v1, :cond_6

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 p2, p2, 0x1

    const/4 v4, 0x3

    :goto_2
    add-int/2addr v0, v3

    goto :goto_1

    :cond_4
    if-gtz v2, :cond_6

    if-ne v4, v7, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v0, p2, 0x1

    move p2, v0

    :cond_6
    :goto_3
    move v0, v2

    goto :goto_4

    :cond_7
    const/4 p2, 0x0

    :goto_4
    add-int/2addr v0, p2

    return v0
.end method

.method private getExtractedText(Z)Ljava/lang/String;
    .locals 2

    iget-boolean p1, p0, Lcom/cootek/smartinput5/engine/Engine;->mShouldCollectCommitInfo:Z

    const-string v0, ""

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->imsImpl:Lcom/cootek/smartinput5/h;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->getExtractedText()Landroid/view/inputmethod/ExtractedText;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v1, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getInstance()Lcom/cootek/smartinput5/engine/Engine;
    .locals 2

    sget-object v0, Lcom/cootek/smartinput5/engine/Engine;->sInstance:Lcom/cootek/smartinput5/engine/Engine;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter InputMethodService is null. Call Engine.initialize(InputMethodService) first. Use Engine.isInitialized() to check if InputMethodService is assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getResString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static varargs getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cootek/smartinput5/func/resource/d;->i(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initOldSpellCheckSetting()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mOldSpellCheckSetting:I

    return-void
.end method

.method private initSettings()V
    .locals 3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartlang/c;->f()Lcom/cootek/smartlang/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartlang/c;->g()V

    invoke-static {}, Lcom/cootek/smartlang/c;->f()Lcom/cootek/smartlang/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartlang/c;->r()V

    :cond_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->getEnabledLanguageCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "english"

    invoke-virtual {v0, v2, v1}, Lcom/cootek/smartinput5/engine/Settings;->setLanguageEnabled(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public static declared-synchronized initialize(Lcom/cootek/smartinput5/TouchPalIME;Lcom/cootek/smartinput5/h;)V
    .locals 2

    const-class v0, Lcom/cootek/smartinput5/engine/Engine;

    monitor-enter v0

    if-eqz p0, :cond_1

    :try_start_0
    sget-object v1, Lcom/cootek/smartinput5/engine/Engine;->sInstance:Lcom/cootek/smartinput5/engine/Engine;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->destroy()V

    :cond_0
    sput-object p0, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    sput-object p1, Lcom/cootek/smartinput5/engine/Engine;->sTouchPalIMEImpl:Lcom/cootek/smartinput5/h;

    new-instance p0, Lcom/cootek/smartinput5/engine/Engine;

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;-><init>()V

    sput-object p0, Lcom/cootek/smartinput5/engine/Engine;->sInstance:Lcom/cootek/smartinput5/engine/Engine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Param InputMethodService is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static isBusy()Z
    .locals 1

    sget-boolean v0, Lcom/cootek/smartinput5/engine/Engine;->sIsBusy:Z

    return v0
.end method

.method private isCurrentPackage(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->J0()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->Q()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public static isInitialized()Z
    .locals 1

    sget-object v0, Lcom/cootek/smartinput5/engine/Engine;->sInstance:Lcom/cootek/smartinput5/engine/Engine;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/cootek/smartinput5/engine/Engine;->mEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLongPressDelete()Z
    .locals 1

    sget-boolean v0, Lcom/cootek/smartinput5/engine/Engine;->isLongPressDelete:Z

    return v0
.end method

.method public static isPreciseMode()Z
    .locals 1

    sget-boolean v0, Lcom/cootek/smartinput5/engine/Engine;->isPreciseMode:Z

    return v0
.end method

.method private isRestarting(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->editor:Lcom/cootek/smartinput5/engine/Editor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Editor;->getEditorPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/engine/Engine;->isCurrentPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    return p1
.end method

.method private onCleanup(Z)V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->onPostCleanup()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->fireCleanupOperation()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->processEvent()V

    return-void
.end method

.method private declared-synchronized onPostCleanup()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->d0()Lcom/cootek/smartinput5/func/N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/N;->w()V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->j0()Lcom/cootek/smartinput5/func/S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/S;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onSpaceDoubleClick()V
    .locals 8

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->editor:Lcom/cootek/smartinput5/engine/Editor;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Editor;->getTextBeforeCursor(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x20

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-ne v3, v6, :cond_0

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_3

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v3, v1, :cond_1

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v3, v1, :cond_2

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_2

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_2

    const/4 v5, 0x2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :cond_3
    :goto_0
    if-lez v5, :cond_4

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->getImsImpl()Lcom/cootek/smartinput5/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->beginBatchEdit()Z

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->getImsImpl()Lcom/cootek/smartinput5/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object v0

    invoke-virtual {v0, v5, v7}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->deleteSurroundingText(II)Z

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->getImsImpl()Lcom/cootek/smartinput5/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->endBatchEdit()Z

    :cond_4
    if-lez v5, :cond_5

    const-string v0, "."

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/engine/Engine;->fireCommitOperation(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/cootek/smartinput5/engine/Engine;->fireCommitOperation(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v2}, Lcom/cootek/smartinput5/engine/Engine;->fireCommitOperation(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v2}, Lcom/cootek/smartinput5/engine/Engine;->fireCommitOperation(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->processEvent()V

    return-void
.end method

.method private postRunnableDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mRunblaeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static recordDailyUsage(Landroid/content/Context;ILjava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Settings;->getLongSetting(I)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v4, 0x2932e00

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3}, Lcom/cootek/smartinput5/engine/Settings;->setLongSetting(IJ)V

    invoke-static {p0}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object p0

    const-string p1, "OCCURRED"

    const-string v0, "/STATISTIC/"

    invoke-virtual {p0, p2, p1, v0}, Lcom/cootek/smartinput5/l/g;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private registerListeners()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->commitManager:Lcom/cootek/smartinput5/engine/CommitManager;

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->imsImpl:Lcom/cootek/smartinput5/h;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/CommitManager;->setImsObserver(Lcom/cootek/smartinput5/engine/CommitManager$ICommitTextListener;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->inlineManager:Lcom/cootek/smartinput5/engine/InlineManager;

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->imsImpl:Lcom/cootek/smartinput5/h;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/InlineManager;->registerUniqueInlineListener(Lcom/cootek/smartinput5/engine/InlineManager$IInlineListener;)V

    return-void
.end method

.method private removeAllRunnables()V
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mRunblaeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/cootek/smartinput5/engine/Engine;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mRunblaeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private removeRunnable(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mRunblaeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setBusyState(Z)V
    .locals 0

    sput-boolean p0, Lcom/cootek/smartinput5/engine/Engine;->sIsBusy:Z

    return-void
.end method

.method public static setLongPressDelete(Z)V
    .locals 0

    sput-boolean p0, Lcom/cootek/smartinput5/engine/Engine;->isLongPressDelete:Z

    return-void
.end method

.method private setPermissionListener()V
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->p0()Lcom/cootek/smartinput5/func/permission/a;

    move-result-object v0

    new-instance v1, Lcom/cootek/smartinput5/engine/Engine$8;

    invoke-direct {v1, p0}, Lcom/cootek/smartinput5/engine/Engine$8;-><init>(Lcom/cootek/smartinput5/engine/Engine;)V

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/permission/a;->y(Lcom/cootek/smartinput5/func/permission/a$b;)V

    return-void
.end method

.method public static setPreciseMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/cootek/smartinput5/engine/Engine;->isPreciseMode:Z

    return-void
.end method

.method private setup()V
    .locals 1

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->T()Lcom/cootek/smartinput5/func/CurveManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/CurveManager;->n()V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->w0()Lcom/cootek/smartinput5/func/l0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/l0;->o()V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->Y()Lcom/cootek/smartinput5/func/HandWriteManager;

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cootek/smartinput5/engine/ClipboardBackend;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private shouldCollectCommitInfo(Lcom/cootek/smartinput5/engine/Editor;)Z
    .locals 2

    iget v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mInputType:I

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Editor;->getEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/cootek/smartinput5/func/l;->u(Landroid/view/inputmethod/EditorInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private showBuyThemePopup(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/cootek/smartinput5/func/skin/purchase/b;

    sget-object v1, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-direct {v0, v1, p1}, Lcom/cootek/smartinput5/func/skin/purchase/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/cootek/smartinput5/engine/Engine$15;

    invoke-direct {v1, p0, v0, p1}, Lcom/cootek/smartinput5/engine/Engine$15;-><init>(Lcom/cootek/smartinput5/engine/Engine;Lcom/cootek/smartinput5/func/skin/purchase/b;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/engine/Engine;->showTip(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showInvitationDlg()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    const-class v2, Lcom/cootek/smartinput5/ui/settings/InvitationDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v1, v0}, Lcom/cootek/smartinput5/settings/Offline163;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private showLangaugeAvailableNotification()V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cootek.smartinputv5.INTERNAL_ACTION.download_locale_langauge"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cootek/smartinput5/func/LocaleLanguageDownloadReceiver;->ACTION_LOCALE_LANGUAGE_DOWNLOAD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    const v2, 0x7f0f000a

    invoke-static {v1, v2}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cootek/smartinput5/func/language/Language;->getLanguageById(Ljava/lang/String;)Lcom/cootek/smartinput5/func/language/Language;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v2, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v2}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->q(Landroid/content/Context;)Lcom/cootek/smartinput5/configuration/ConfigurationManager;

    move-result-object v2

    sget-object v3, Lcom/cootek/smartinput5/configuration/ConfigurationType;->DOWNLOAD_LAN_ON_CHANGE_LOACAL_AUTO_DOWNLOAD:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->j(Lcom/cootek/smartinput5/configuration/ConfigurationType;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/smartinput5/func/z;->p0()Lcom/cootek/smartinput5/func/permission/a;

    move-result-object v3

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v3, v4}, Lcom/cootek/smartinput5/func/permission/a;->q(Ljava/lang/String;)Z

    move-result v3

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    sget-object v1, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/InputMethodService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1
    sget-object v2, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/func/language/Language;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v2}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->q(Landroid/content/Context;)Lcom/cootek/smartinput5/configuration/ConfigurationManager;

    move-result-object v2

    sget-object v3, Lcom/cootek/smartinput5/configuration/ConfigurationType;->ENABLE_NOTIFICATIONS:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->j(Lcom/cootek/smartinput5/configuration/ConfigurationType;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    sget-object v3, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    const v4, 0x7f0f02c6

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sget-object v3, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    const v4, 0x7f0f076b

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v3, v4, v6}, Lcom/cootek/smartinput5/func/resource/d;->i(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    const v4, 0x7f0f08af

    invoke-static {v3, v4}, Lcom/cootek/smartinput5/func/resource/d;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v4}, Lcom/cootek/smartinput5/func/W;->a(Landroid/content/Context;)Landroid/app/Notification$Builder;

    move-result-object v4

    const v6, 0x7f080257

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const v1, 0x40000010    # 2.0000038f

    :try_start_0
    invoke-virtual {v2, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    invoke-static {}, Lcom/cootek/smartinput5/actionflow/a;->f()Lcom/cootek/smartinput5/actionflow/a;

    move-result-object v0

    sget-object v1, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    const-string v2, "SETTING_LOCALE_LANGUAGE_SHOW"

    invoke-virtual {v0, v2, v1}, Lcom/cootek/smartinput5/actionflow/a;->i(Ljava/lang/String;Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private showPaidThemePopup()Z
    .locals 8

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getStringSetting(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v1}, Lcom/cootek/smartinput5/func/skin/purchase/a;->l(Landroid/content/Context;)Lcom/cootek/smartinput5/func/skin/purchase/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/func/skin/purchase/a;->o(Ljava/lang/String;)Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeStatus;

    move-result-object v1

    sget-object v2, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeStatus;->EXPIRED:Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeStatus;

    const/4 v3, 0x0

    const/16 v4, 0x21

    const/4 v5, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v2

    const/16 v6, 0x197

    invoke-virtual {v2, v6, v4, v0, v3}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(IILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/engine/Engine;->showBuyThemePopup(Ljava/lang/String;)V

    return v5

    :cond_0
    sget-object v2, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeStatus;->ACTIVATE_BY_VIP:Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeStatus;

    const/4 v6, 0x0

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v2

    const/16 v7, 0x196

    invoke-virtual {v2, v7, v4, v0, v3}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(IILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v1, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v1}, Lcom/cootek/smartinput5/func/skin/purchase/a;->l(Landroid/content/Context;)Lcom/cootek/smartinput5/func/skin/purchase/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cootek/smartinput5/func/skin/purchase/a;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v0}, Lcom/cootek/smartinput5/func/skin/purchase/a;->l(Landroid/content/Context;)Lcom/cootek/smartinput5/func/skin/purchase/a;

    move-result-object v0

    const-string v1, "update_paid_theme_for_vip"

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/skin/purchase/a;->x(Ljava/lang/String;)V

    return v6

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/engine/Engine;->showVIPCongratulation(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_2
    sget-object v2, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeStatus;->IN_TRIAL:Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeStatus;

    if-ne v1, v2, :cond_3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    const/16 v2, 0x195

    invoke-virtual {v1, v2, v4, v0, v3}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(IILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v1}, Lcom/cootek/smartinput5/func/skin/purchase/a;->l(Landroid/content/Context;)Lcom/cootek/smartinput5/func/skin/purchase/a;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Lcom/cootek/smartinput5/func/skin/purchase/a;->n(Ljava/lang/String;Z)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/cootek/smartinput5/engine/Engine;->showThemeTrialTime(Ljava/lang/String;I)V

    return v5

    :cond_3
    return v6
.end method

.method public static showPinyinCurveTutorial(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/cootek/smartinput5/ui/c$a;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/ui/c$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0766

    invoke-static {p0, v2}, Lcom/cootek/smartinput5/engine/Engine;->getResString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/ui/c$a;->m0(Ljava/lang/CharSequence;)Lcom/cootek/smartinput5/ui/c$a;

    const v2, 0x7f0f0769

    invoke-static {p0, v2}, Lcom/cootek/smartinput5/engine/Engine;->getResString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cootek/smartinput5/engine/Engine$11;

    invoke-direct {v3, p0}, Lcom/cootek/smartinput5/engine/Engine$11;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Lcom/cootek/smartinput5/ui/c$a;->t0(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/cootek/smartinput5/ui/c$a;

    const v2, 0x7f0f0768

    invoke-static {p0, v2}, Lcom/cootek/smartinput5/engine/Engine;->getResString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lcom/cootek/smartinput5/ui/c$a;->o0(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/cootek/smartinput5/ui/c$a;

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/cootek/smartinput5/ui/c$a;->A0(Z)V

    :cond_0
    return-void
.end method

.method private showSuperDictDownloadReminder(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 5

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->q(Landroid/content/Context;)Lcom/cootek/smartinput5/configuration/ConfigurationManager;

    move-result-object v0

    sget-object v1, Lcom/cootek/smartinput5/configuration/ConfigurationType;->ENABLE_NOTIFICATIONS:Lcom/cootek/smartinput5/configuration/ConfigurationType;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/configuration/ConfigurationManager;->j(Lcom/cootek/smartinput5/configuration/ConfigurationType;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.cootek.smartinputv5.INTERNAL_ACTION.superdict_download"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    const v3, 0x7f0f02c6

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    sget-object v2, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v2}, Lcom/cootek/smartinput5/func/W;->a(Landroid/content/Context;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x7f080257

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object p1

    const/16 p2, 0x131

    invoke-virtual {v0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method private showSwitchCurveDialog()V
    .locals 6

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->m0()Lcom/cootek/smartinput5/engine/Okinawa;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->getCurrentLanguageId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/engine/Okinawa;->getLanguageCategory(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    const/16 v3, 0xf0

    invoke-virtual {v1, v3}, Lcom/cootek/smartinput5/engine/Settings;->getStringSetting(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v0, v5}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(IILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;)I

    move-result v0

    const-string v2, "chinese_pinyin"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8c

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v0}, Lcom/cootek/smartinput5/engine/Engine;->showPinyinCurveTutorial(Landroid/content/Context;)V

    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/engine/Engine;->doSwitchCurve(Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->getCurrentLanguageId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->getCurrentLanguageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lcom/cootek/smartinput5/ui/c$a;

    iget-object v2, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-direct {v0, v2}, Lcom/cootek/smartinput5/ui/c$a;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/x0;->d()Lcom/cootek/smartinput5/func/x0;

    move-result-object v2

    iget-object v3, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Lcom/cootek/smartinput5/func/x0;->h(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/ui/c$a;->v0(I)Lcom/cootek/smartinput5/ui/c$a;

    iget-object v2, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    const v3, 0x7f0f07ce

    invoke-static {v2, v3}, Lcom/cootek/smartinput5/engine/Engine;->getResString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/ui/c$a;->m0(Ljava/lang/CharSequence;)Lcom/cootek/smartinput5/ui/c$a;

    iget-object v2, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    const v3, 0x1040013

    invoke-static {v2, v3}, Lcom/cootek/smartinput5/engine/Engine;->getResString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cootek/smartinput5/engine/Engine$9;

    invoke-direct {v3, p0, v1}, Lcom/cootek/smartinput5/engine/Engine$9;-><init>(Lcom/cootek/smartinput5/engine/Engine;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/cootek/smartinput5/ui/c$a;->t0(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/cootek/smartinput5/ui/c$a;

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    const v2, 0x1040009

    invoke-static {v1, v2}, Lcom/cootek/smartinput5/engine/Engine;->getResString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/cootek/smartinput5/ui/c$a;->o0(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/cootek/smartinput5/ui/c$a;

    new-instance v1, Lcom/cootek/smartinput5/engine/Engine$10;

    invoke-direct {v1, p0, v0}, Lcom/cootek/smartinput5/engine/Engine$10;-><init>(Lcom/cootek/smartinput5/engine/Engine;Lcom/cootek/smartinput5/ui/c$a;)V

    const-wide/16 v2, 0x3c

    invoke-direct {p0, v1, v2, v3}, Lcom/cootek/smartinput5/engine/Engine;->postRunnableDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    :goto_0
    return-void
.end method

.method private showSwitchLanguageDialog()Z
    .locals 9

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getStringSetting(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/func/z;->d0()Lcom/cootek/smartinput5/func/N;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/cootek/smartinput5/func/N;->X(Ljava/lang/String;)Lcom/cootek/smartinput5/func/language/a;

    move-result-object v0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v2

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Lcom/cootek/smartinput5/engine/Settings;->getStringSetting(I)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v4

    const/16 v5, 0x95

    const/16 v6, 0x14

    iget-object v7, v0, Lcom/cootek/smartinput5/func/language/a;->a:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(IILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;)I

    move-result v4

    iget-object v5, v0, Lcom/cootek/smartinput5/func/language/a;->a:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/language/a;->j()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->getEditor()Lcom/cootek/smartinput5/engine/Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/engine/Editor;->isSpecialMode()Z

    move-result v2

    if-nez v2, :cond_3

    if-lez v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/cootek/smartinput5/engine/Engine$12;

    invoke-direct {v1, p0, v0}, Lcom/cootek/smartinput5/engine/Engine$12;-><init>(Lcom/cootek/smartinput5/engine/Engine;Lcom/cootek/smartinput5/func/language/a;)V

    const-wide/16 v2, 0x96

    invoke-direct {p0, v1, v2, v3}, Lcom/cootek/smartinput5/engine/Engine;->postRunnableDelayed(Ljava/lang/Runnable;J)V

    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->setStringSetting(ILjava/lang/String;)V

    return v3
.end method

.method private showThemeTrialTime(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Lcom/cootek/smartinput5/func/skin/purchase/f;

    sget-object v1, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-direct {v0, v1, p2}, Lcom/cootek/smartinput5/func/skin/purchase/f;-><init>(Landroid/content/Context;I)V

    new-instance p2, Lcom/cootek/smartinput5/engine/Engine$13;

    invoke-direct {p2, p0, v0, p1}, Lcom/cootek/smartinput5/engine/Engine$13;-><init>(Lcom/cootek/smartinput5/engine/Engine;Lcom/cootek/smartinput5/func/skin/purchase/f;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/cootek/smartinput5/engine/Engine;->showTip(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showTip(Ljava/lang/Runnable;)V
    .locals 3

    new-instance v0, Lcom/cootek/smartinput5/engine/Engine$16;

    invoke-direct {v0, p0, p1}, Lcom/cootek/smartinput5/engine/Engine$16;-><init>(Lcom/cootek/smartinput5/engine/Engine;Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/cootek/smartinput5/engine/Engine;->postRunnableDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private showVIPCongratulation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/cootek/smartinput5/func/skin/purchase/g;

    sget-object v1, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-direct {v0, v1, p2}, Lcom/cootek/smartinput5/func/skin/purchase/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Lcom/cootek/smartinput5/engine/Engine$14;

    invoke-direct {p2, p0, v0, p1}, Lcom/cootek/smartinput5/engine/Engine$14;-><init>(Lcom/cootek/smartinput5/engine/Engine;Lcom/cootek/smartinput5/func/skin/purchase/g;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/cootek/smartinput5/engine/Engine;->showTip(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showWaveGuide(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/cootek/smartinput5/func/x0;->d()Lcom/cootek/smartinput5/func/x0;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, p0, v1}, Lcom/cootek/smartinput5/func/x0;->h(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/cootek/smartinput5/engine/Engine;->getResString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cootek/smartinput5/net/J;->F(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-static {p0, v1, v0}, Lcom/cootek/smartinput5/func/w0;->d0(Landroid/content/Context;Landroid/content/Intent;I)V

    return-void
.end method

.method private showWindowWidgetTips()V
    .locals 9

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x193

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object v0

    iget-object v2, p0, Lcom/cootek/smartinput5/engine/Engine;->context:Landroid/content/Context;

    const v3, 0x7f0f02e0

    invoke-static {v2, v3}, Lcom/cootek/smartinput5/engine/Engine;->getResString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/cootek/smartinput5/ui/control/E;->w(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v3}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->canShowTips()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    sget-object v1, Lcom/cootek/smartinput5/wizard/WizardTipsType;->IMPORT_V4_USRDICT:Lcom/cootek/smartinput5/wizard/WizardTipsType;

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/wizard/a;->j(Landroid/content/Context;Lcom/cootek/smartinput5/wizard/WizardTipsType;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/cootek/smartinput5/engine/Engine$2;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/engine/Engine$2;-><init>(Lcom/cootek/smartinput5/engine/Engine;)V

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/engine/Engine;->showTip(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x136

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(I)I

    move-result v0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    const/16 v2, 0x135

    invoke-virtual {v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(I)I

    move-result v1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mInputType:I

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->showWrongUpdateDialog()V

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    sget-object v1, Lcom/cootek/smartinput5/wizard/WizardTipsType;->SPACE_LONG_PRESS:Lcom/cootek/smartinput5/wizard/WizardTipsType;

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/wizard/a;->j(Landroid/content/Context;Lcom/cootek/smartinput5/wizard/WizardTipsType;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/cootek/smartinput5/engine/Engine$3;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/engine/Engine$3;-><init>(Lcom/cootek/smartinput5/engine/Engine;)V

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/engine/Engine;->showTip(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    sget-object v1, Lcom/cootek/smartinput5/wizard/WizardTipsType;->SWITCH_LANGUAGE:Lcom/cootek/smartinput5/wizard/WizardTipsType;

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/wizard/a;->j(Landroid/content/Context;Lcom/cootek/smartinput5/wizard/WizardTipsType;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/cootek/smartinput5/engine/Engine$4;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/engine/Engine$4;-><init>(Lcom/cootek/smartinput5/engine/Engine;)V

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/engine/Engine;->showTip(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    sget-object v1, Lcom/cootek/smartinput5/wizard/WizardTipsType;->OPEN_EMOJI:Lcom/cootek/smartinput5/wizard/WizardTipsType;

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/wizard/a;->j(Landroid/content/Context;Lcom/cootek/smartinput5/wizard/WizardTipsType;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/cootek/smartinput5/engine/Engine$5;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/engine/Engine$5;-><init>(Lcom/cootek/smartinput5/engine/Engine;)V

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/engine/Engine;->showTip(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    sget-object v1, Lcom/cootek/smartinput5/wizard/WizardTipsType;->ADD_MORE_LANGUAGE:Lcom/cootek/smartinput5/wizard/WizardTipsType;

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/wizard/a;->j(Landroid/content/Context;Lcom/cootek/smartinput5/wizard/WizardTipsType;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/cootek/smartinput5/engine/Engine$6;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/engine/Engine$6;-><init>(Lcom/cootek/smartinput5/engine/Engine;)V

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/engine/Engine;->showTip(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    sget-object v1, Lcom/cootek/smartinput5/wizard/WizardTipsType;->SWITCH_LANGUAGE_CHINESE:Lcom/cootek/smartinput5/wizard/WizardTipsType;

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/wizard/a;->j(Landroid/content/Context;Lcom/cootek/smartinput5/wizard/WizardTipsType;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/cootek/smartinput5/engine/Engine$7;

    invoke-direct {v0, p0}, Lcom/cootek/smartinput5/engine/Engine$7;-><init>(Lcom/cootek/smartinput5/engine/Engine;)V

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/engine/Engine;->showTip(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->showSwitchLanguageDialog()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->canShowSwitchCurveDialog()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->showSwitchCurveDialog()V

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/cootek/smartinput5/func/v0;->D()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/cootek/smartinput5/func/v0;->A()V

    :cond_9
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_a

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->checkLocaleLanguageInstalled()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->checkSuperDictReminder()V

    goto :goto_1

    :cond_a
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->checkLocaleLanguageInstalled()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->checkSuperDictReminder()V

    :cond_b
    :goto_1
    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->checkCloudSyncTipShow()V

    iget v3, p0, Lcom/cootek/smartinput5/engine/Engine;->mInputType:I

    if-nez v3, :cond_c

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v3

    const/16 v4, 0x125

    invoke-virtual {v3, v4}, Lcom/cootek/smartinput5/engine/Settings;->getLongSetting(I)J

    move-result-wide v5

    sget-wide v7, Lcom/cootek/smartinput5/engine/Engine;->lastWindowShownTime:J

    cmp-long v3, v5, v7

    if-gez v3, :cond_c

    const-wide/32 v5, 0x5265c00

    add-long/2addr v7, v5

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v3

    invoke-virtual {v3, v4, v7, v8}, Lcom/cootek/smartinput5/engine/Settings;->setLongSetting(IJ)V

    :cond_c
    if-lt v0, v2, :cond_d

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_d
    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Lcom/cootek/smartinput5/actionflow/a;->f()Lcom/cootek/smartinput5/actionflow/a;

    move-result-object v0

    sget-object v1, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    const-string v2, "KEYBOARD_SHOW_END"

    invoke-virtual {v0, v2, v1}, Lcom/cootek/smartinput5/actionflow/a;->i(Ljava/lang/String;Landroid/content/Context;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/cootek/smartinput5/engine/Engine;->uStartToInput:Z

    return-void
.end method

.method private showWrongUpdateDialog()V
    .locals 4

    new-instance v0, Lcom/cootek/smartinput5/ui/c$a;

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-direct {v0, v1}, Lcom/cootek/smartinput5/ui/c$a;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/x0;->d()Lcom/cootek/smartinput5/func/x0;

    move-result-object v1

    iget-object v2, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    const/16 v3, 0x15

    invoke-virtual {v1, v2, v3}, Lcom/cootek/smartinput5/func/x0;->h(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/c$a;->l0(I)Lcom/cootek/smartinput5/ui/c$a;

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    const v2, 0x7f0f05ae

    invoke-static {v1, v2}, Lcom/cootek/smartinput5/engine/Engine;->getResString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/ui/c$a;->t0(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/cootek/smartinput5/ui/c$a;

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    const/16 v2, 0x136

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/c$a;->A0(Z)V

    return-void
.end method

.method private switchNextDynamicSkin()V
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/i0;->X()Lcom/cootek/smartinput5/ui/k;

    move-result-object v0

    iget-boolean v1, v0, Lcom/cootek/smartinput5/ui/k;->a:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/k;->d()V

    :cond_0
    return-void
.end method

.method public static switchToLanguage(Ljava/lang/String;)V
    .locals 5

    invoke-static {p0}, Lcom/cootek/smartinput5/func/N;->A0(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v2, 0x157

    invoke-virtual {v0, v2, p0, v1}, Lcom/cootek/smartinput5/engine/Settings;->setStringSetting(ILjava/lang/String;Z)V

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/cootek/smartinput5/engine/Settings;->isLanguageEnabled(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/cootek/smartinput5/engine/Settings;->setLanguageEnabled(Ljava/lang/String;Z)V

    :cond_1
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/engine/Settings;->getStringSetting(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v0}, Lcom/cootek/smartinput5/engine/Settings;->setStringSetting(ILjava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v3

    invoke-virtual {v3, v2, p0}, Lcom/cootek/smartinput5/engine/Settings;->setStringSetting(ILjava/lang/String;)V

    const-string v2, "vietnam"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->fireSettingChange(I)V

    :cond_3
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Settings;->writeBack()V

    invoke-static {}, Lcom/cootek/smartinput5/actionflow/StatesCollector;->g()Lcom/cootek/smartinput5/actionflow/StatesCollector;

    move-result-object v0

    const-string v1, "CURRENT_LANGUAGE"

    invoke-virtual {v0, v1, p0}, Lcom/cootek/smartinput5/actionflow/StatesCollector;->j(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/cootek/smartinput5/actionflow/a;->f()Lcom/cootek/smartinput5/actionflow/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SETTING_SWITCH_LANGUAGE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v0, p0, v1}, Lcom/cootek/smartinput5/actionflow/a;->i(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private switchToNextLanguage()V
    .locals 5

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->d0()Lcom/cootek/smartinput5/func/N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/N;->P()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cootek/smartinput5/func/language/a;

    iget-object v3, v3, Lcom/cootek/smartinput5/func/language/a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->getCurrentLanguageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    const/4 v3, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v3, v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cootek/smartinput5/func/language/a;

    iget-boolean v4, v4, Lcom/cootek/smartinput5/func/language/a;->g:Z

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cootek/smartinput5/func/language/a;

    iget-object v0, v0, Lcom/cootek/smartinput5/func/language/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/cootek/smartinput5/engine/Engine;->switchToLanguage(Ljava/lang/String;)V

    return-void
.end method

.method private takeKeyboardScreenshot()V
    .locals 2

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->y()Lcom/cootek/smartinput5/ui/SoftKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string v1, "keyboard_screenshot"

    invoke-static {v1, v0}, Lcom/cootek/smartinput5/func/w0;->X(Ljava/lang/String;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private updateDisplayCount()V
    .locals 0

    return-void
.end method

.method private updateDynamicSpellCheckState()V
    .locals 3

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->isInDynamicSpellCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->getInlineText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->getExplicitText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x21

    iget v2, p0, Lcom/cootek/smartinput5/engine/Engine;->mOldSpellCheckSetting:I

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->setIntSetting(II)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->initOldSpellCheckSetting()V

    :cond_0
    return-void
.end method

.method private updateLocaleLanguage()V
    .locals 7

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->editor:Lcom/cootek/smartinput5/engine/Editor;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Editor;->isSpecialMode()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x261

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v0}, Lcom/cootek/smartinput5/engine/LocaleSettings;->getCurrentLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/cootek/smartinput5/engine/Settings;->getStringSetting(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v2

    const/16 v5, 0x251

    invoke-virtual {v2, v5}, Lcom/cootek/smartinput5/engine/Settings;->getStringSetting(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v6

    invoke-virtual {v6, v2, v4, v4}, Lcom/cootek/smartinput5/engine/Settings;->setLanguageEnabled(Ljava/lang/String;ZZ)V

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Lcom/cootek/smartinput5/engine/Settings;->isLanguageEnabled(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lcom/cootek/smartinput5/engine/Settings;->setLanguageEnabled(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v2

    invoke-virtual {v2, v5, v0, v4}, Lcom/cootek/smartinput5/engine/Settings;->setStringSetting(ILjava/lang/String;Z)V

    :cond_1
    invoke-static {v0}, Lcom/cootek/smartinput5/engine/Engine;->switchToLanguage(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v4}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZZ)V

    :cond_3
    return-void
.end method


# virtual methods
.method public addInputAction(Lcom/cootek/smartinput5/func/userinput/b;)V
    .locals 1

    iget-boolean v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mShouldCollectCommitInfo:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mCachedInputSequence:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canShowTips()Z
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/ui/settings/KeyboardCustomizeActivity;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->showInstallIncompatibleLanguageSkinDialogDelayed()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->showPaidThemePopup()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-static {}, Lcom/cootek/smartinput5/ui/skinappshop/StoreActivity;->n0()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v0}, Lcom/cootek/smartinput5/func/L;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public cleanImsResource()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->imsImpl:Lcom/cootek/smartinput5/h;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/h;->S()V

    :cond_0
    return-void
.end method

.method public cleanWidgetManager()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->widgetManager:Lcom/cootek/smartinput5/ui/o0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->l()V

    :cond_0
    return-void
.end method

.method public clearShiftState()V
    .locals 2

    const-string v0, "sk_clear_shift_state"

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/engine/Engine;->getKeyId(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cootek/smartinput5/engine/Engine;->fireKeyOperation(II)V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->processEvent()V

    :cond_0
    return-void
.end method

.method public cloudHandwriteUpdate()Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->cloudHandwriteUpdate()Z

    move-result v0

    return v0
.end method

.method public collectInputData(Ljava/lang/String;IZ)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct/range {p0 .. p0}, Lcom/cootek/smartinput5/engine/Engine;->canCollectInputData()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v2}, Lcom/cootek/smartinput5/func/l;->c(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, v2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v4, 0x400000ff    # 2.0000608f

    and-int/2addr v3, v4

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/engine/Engine;->getCurrentLanguageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/engine/Engine;->getOceanCorpusVersion()I

    move-result v5

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    move/from16 v5, p2

    :goto_0
    const/4 v6, 0x0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->J0()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cootek/smartinput5/func/z;->d0()Lcom/cootek/smartinput5/func/N;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/cootek/smartinput5/func/N;->e0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_1
    move-object v13, v6

    invoke-direct {v0, v1}, Lcom/cootek/smartinput5/engine/Engine;->getCollectExtractedText(Z)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v1}, Lcom/cootek/smartinput5/engine/Engine;->getCacheType(Z)Lcom/cootek/smartinput5/func/userinput/UserInputRecorder$CacheType;

    move-result-object v1

    iget-object v6, v0, Lcom/cootek/smartinput5/engine/Engine;->mCachedInputSequence:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/engine/Engine;->hasCandidate()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v8}, Lcom/cootek/smartinput5/func/j0;->c(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/cootek/smartinput5/func/userinput/UserInputRecorder;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget v2, v0, Lcom/cootek/smartinput5/engine/Engine;->mInputType:I

    invoke-static {v2}, Lcom/cootek/smartinput5/func/userinput/UserInputRecorder;->c(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v3}, Lcom/cootek/smartinput5/func/userinput/UserInputRecorder;->a(I)Ljava/lang/String;

    move-result-object v11

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const/16 v16, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    move/from16 v16, v1

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static {}, Lcom/cootek/smartinput5/func/userinput/UserInputRecorder;->g()J

    move-result-wide v20

    new-instance v1, Lcom/cootek/smartinput5/func/userinput/d/a;

    move-object v6, v1

    iget-object v9, v0, Lcom/cootek/smartinput5/engine/Engine;->mCachedInputOp:Ljava/lang/String;

    iget v14, v0, Lcom/cootek/smartinput5/engine/Engine;->mCachedDictOptions:I

    iget-object v15, v0, Lcom/cootek/smartinput5/engine/Engine;->mCachedLayoutAlias:Ljava/lang/String;

    iget-object v3, v0, Lcom/cootek/smartinput5/engine/Engine;->mCachedCell:Ljava/lang/String;

    move-object/from16 v17, v3

    iget-object v3, v0, Lcom/cootek/smartinput5/engine/Engine;->mCachedInputSequence:Ljava/util/ArrayList;

    move-object/from16 v22, v3

    move-object v12, v4

    invoke-direct/range {v6 .. v22}, Lcom/cootek/smartinput5/func/userinput/d/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JJLjava/util/ArrayList;)V

    iget-object v3, v0, Lcom/cootek/smartinput5/engine/Engine;->mCachedLayoutAlias:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/cootek/smartinput5/func/userinput/UserInputRecorder;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/cootek/smartinput5/func/userinput/d/c;

    iget-object v6, v0, Lcom/cootek/smartinput5/engine/Engine;->mCachedLayoutAlias:Ljava/lang/String;

    invoke-direct {v4, v6, v3}, Lcom/cootek/smartinput5/func/userinput/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/cootek/smartinput5/func/userinput/a;

    aput-object v1, v3, v2

    const/4 v1, 0x1

    aput-object v4, v3, v1

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v1

    invoke-static {v1, v3, v5}, Lcom/cootek/smartinput5/func/userinput/UserInputRecorder;->h(Landroid/content/Context;[Lcom/cootek/smartinput5/func/userinput/a;I)V

    :cond_4
    const-string v1, ""

    iput-object v1, v0, Lcom/cootek/smartinput5/engine/Engine;->mCachedInputOp:Ljava/lang/String;

    iget-object v1, v0, Lcom/cootek/smartinput5/engine/Engine;->mCachedInputSequence:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/engine/Engine;->getDictOptions()I

    move-result v1

    iput v1, v0, Lcom/cootek/smartinput5/engine/Engine;->mCachedDictOptions:I

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/engine/Engine;->getLayoutAlias()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cootek/smartinput5/engine/Engine;->mCachedLayoutAlias:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/engine/Engine;->getCurrentCell()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cootek/smartinput5/engine/Engine;->mCachedCell:Ljava/lang/String;

    return-void
.end method

.method public commitInput()V
    .locals 1

    const-string v0, "commit_input"

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/engine/Engine;->fireLuaCallOperation(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->processEvent()V

    return-void
.end method

.method public commitKeyEvent(I)V
    .locals 9

    const v0, 0x310001    # 4.499941E-39f

    if-lt p1, v0, :cond_0

    const v0, 0x310012    # 4.499965E-39f

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->editor:Lcom/cootek/smartinput5/engine/Editor;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Editor;->onKeyClick(I)V

    goto/16 :goto_6

    :cond_0
    const v0, 0x20008

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->G()Lcom/cootek/smartinput5/func/b;

    move-result-object p1

    const v0, 0x7f0f01e8

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/func/b;->n(I)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->deleteCharacter()V

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->editor:Lcom/cootek/smartinput5/engine/Editor;

    invoke-virtual {p1, v1}, Lcom/cootek/smartinput5/engine/Editor;->changeSelect(Z)V

    new-instance p1, Lcom/cootek/smartinput5/func/userinput/c/b;

    const-string v0, ""

    invoke-direct {p1, v0}, Lcom/cootek/smartinput5/func/userinput/c/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/engine/Engine;->addInputAction(Lcom/cootek/smartinput5/func/userinput/b;)V

    goto/16 :goto_6

    :cond_1
    const v0, 0x310013    # 4.499966E-39f

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->widgetManager:Lcom/cootek/smartinput5/ui/o0;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/o0;->v()Lcom/cootek/smartinput5/ui/ClipboardView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    :cond_2
    const v0, 0x30003b

    const/4 v2, 0x1

    if-ne p1, v0, :cond_3

    invoke-direct {p0, v2}, Lcom/cootek/smartinput5/engine/Engine;->deleteWordAroundCursor(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/cootek/smartinput5/func/userinput/c/b;

    invoke-direct {v0, p1}, Lcom/cootek/smartinput5/func/userinput/c/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/engine/Engine;->addInputAction(Lcom/cootek/smartinput5/func/userinput/b;)V

    goto/16 :goto_6

    :cond_3
    const v0, 0x300042

    if-ne p1, v0, :cond_4

    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/engine/Engine;->deleteWordAroundCursor(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/cootek/smartinput5/func/userinput/c/b;

    invoke-direct {v0, p1}, Lcom/cootek/smartinput5/func/userinput/c/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/engine/Engine;->addInputAction(Lcom/cootek/smartinput5/func/userinput/b;)V

    goto/16 :goto_6

    :cond_4
    const v0, 0x300039

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->imsImpl:Lcom/cootek/smartinput5/h;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->deleteSurroundingText(II)Z

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->editor:Lcom/cootek/smartinput5/engine/Editor;

    invoke-virtual {p1, v1}, Lcom/cootek/smartinput5/engine/Editor;->changeSelect(Z)V

    goto/16 :goto_6

    :cond_5
    const v0, 0x20080

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->imsImpl:Lcom/cootek/smartinput5/h;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->sendKeyChar(C)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->G()Lcom/cootek/smartinput5/func/b;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/func/b;->o(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_6
    const v0, 0x2008d

    if-ne p1, v0, :cond_e

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->imsImpl:Lcom/cootek/smartinput5/h;

    if-nez v0, :cond_7

    goto/16 :goto_6

    :cond_7
    invoke-virtual {v0}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object v0

    if-nez v0, :cond_8

    goto/16 :goto_6

    :cond_8
    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->beginBatchEdit()Z

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->finishComposingText()Z

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->endBatchEdit()Z

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    if-eqz v1, :cond_9

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/InputMethodService;->sendDefaultEditorAction(Z)Z

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_6

    :cond_9
    iget-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->editor:Lcom/cootek/smartinput5/engine/Editor;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Editor;->getEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    goto :goto_0

    :cond_a
    move-object v1, v2

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v1, :cond_b

    iget v5, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget v6, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget v7, v1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    if-nez v7, :cond_b

    and-int/lit16 v7, v6, 0xff

    :cond_b
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v6

    if-nez v1, :cond_c

    const/4 v1, 0x1

    if-le v7, v1, :cond_c

    invoke-virtual {v0, v7}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->performEditorAction(I)Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_6

    :cond_c
    const v1, 0x20000

    and-int/2addr v1, v5

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->beginBatchEdit()Z

    const-string v1, "\n"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->endBatchEdit()Z

    goto/16 :goto_6

    :cond_d
    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->beginBatchEdit()Z

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->sendKeyChar(C)V

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->endBatchEdit()Z

    goto/16 :goto_6

    :cond_e
    const v0, 0x300001

    const-string v4, "ON"

    const-string v5, "OFF"

    const v6, 0x7f0f07ad

    const-string v7, "/STATISTIC/"

    const-string v8, "prediction"

    if-ne p1, v0, :cond_13

    invoke-static {}, Lcom/cootek/smartinput5/func/N;->D0()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object p1

    sget-object v0, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v0, v6}, Lcom/cootek/smartinput5/engine/Engine;->getResString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/cootek/smartinput5/ui/control/E;->w(Ljava/lang/String;Z)V

    goto/16 :goto_6

    :cond_f
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->y()Lcom/cootek/smartinput5/ui/SoftKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->y()Lcom/cootek/smartinput5/ui/SoftKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/SoftKeyboardView;->C()V

    :cond_10
    sget-object v0, Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;->PLUGIN_PREDICTION:Lcom/cootek/smartinput5/ui/guidepoint/GuidePointLocalConstId;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/pluginwidget/PluginWidgetItem;->getPluginWidgetItemById(Ljava/lang/String;)Lcom/cootek/smartinput5/pluginwidget/d;

    if-eqz p1, :cond_11

    goto :goto_1

    :cond_11
    move-object v4, v5

    :goto_1
    sget-object v0, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v0}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object v0

    invoke-virtual {v0, v8, v4, v7}, Lcom/cootek/smartinput5/l/g;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object v0

    if-eqz p1, :cond_12

    sget-object p1, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    const v1, 0x7f0f07af

    goto :goto_2

    :cond_12
    sget-object p1, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    const v1, 0x7f0f07ae

    :goto_2
    invoke-static {p1, v1}, Lcom/cootek/smartinput5/engine/Engine;->getResString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/ui/control/E;->s(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_13
    const v0, 0x300045

    if-ne p1, v0, :cond_15

    invoke-static {}, Lcom/cootek/smartinput5/func/N;->D0()Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object p1

    sget-object v0, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v0, v6}, Landroid/inputmethodservice/InputMethodService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/cootek/smartinput5/ui/control/E;->w(Ljava/lang/String;Z)V

    goto/16 :goto_6

    :cond_14
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result p1

    if-nez p1, :cond_33

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    sget-object p1, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {p1}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object p1

    invoke-virtual {p1, v8, v4, v7}, Lcom/cootek/smartinput5/l/g;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_15
    const v0, 0x300046

    if-ne p1, v0, :cond_16

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result p1

    if-eqz p1, :cond_33

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    sget-object p1, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {p1}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object p1

    invoke-virtual {p1, v8, v5, v7}, Lcom/cootek/smartinput5/l/g;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_16
    const v0, 0x30003f

    const-string v2, "space"

    if-ne p1, v0, :cond_17

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->d0()Lcom/cootek/smartinput5/func/N;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/N;->u1()V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->Q()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/cootek/smartinput5/func/N;->y(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartlang/c;->f()Lcom/cootek/smartlang/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartlang/c;->p()V

    goto/16 :goto_6

    :cond_17
    const v0, 0x300040

    if-ne p1, v0, :cond_19

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->d0()Lcom/cootek/smartinput5/func/N;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/N;->v1()V

    invoke-static {}, Lcom/cootek/smartlang/c;->f()Lcom/cootek/smartlang/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartlang/c;->p()V

    invoke-static {}, Lcom/cootek/smartinput5/ui/SpaceKey;->canApplySwitchLanguageMode()Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_3

    :cond_18
    const-string v2, "btn"

    :goto_3
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->Q()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/cootek/smartinput5/func/N;->y(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_19
    const v0, 0x300041

    if-ne p1, v0, :cond_1a

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object p1

    sget-object v0, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    const v2, 0x7f0f043a

    invoke-static {v0, v2}, Lcom/cootek/smartinput5/engine/Engine;->getResString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x11

    invoke-virtual {p1, v0, v2, v1, v1}, Lcom/cootek/smartinput5/ui/control/E;->u(Ljava/lang/String;III)V

    goto/16 :goto_6

    :cond_1a
    const v0, 0x30000c

    if-ne p1, v0, :cond_1b

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {p1, v1}, Lcom/cootek/smartinput5/TouchPalIME;->requestHideSelf(I)V

    goto/16 :goto_6

    :cond_1b
    const v0, 0x30000d

    if-ne p1, v0, :cond_1c

    goto/16 :goto_6

    :cond_1c
    const v0, 0x30000f

    const/high16 v2, 0x10000000

    if-ne p1, v0, :cond_1d

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    const-class v1, Lcom/cootek/smartinput5/TouchPalOption;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    :cond_1d
    const v0, 0x30003c

    if-ne p1, v0, :cond_1e

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    const-class v1, Lcom/cootek/smartinput5/cust/CustomizeSettings;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "cn"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    :cond_1e
    const v0, 0x30003d

    if-ne p1, v0, :cond_1f

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    const-class v1, Lcom/cootek/smartinput5/cust/CustomizeSettings;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "en"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    :cond_1f
    const v0, 0x300010

    if-ne p1, v0, :cond_20

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->imsImpl:Lcom/cootek/smartinput5/h;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object p1

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->sendDownUpKeyEvents(I)V

    goto/16 :goto_6

    :cond_20
    const v0, 0x300011

    if-lt p1, v0, :cond_21

    const v0, 0x300013

    if-gt p1, v0, :cond_21

    goto/16 :goto_6

    :cond_21
    const v0, 0x300002

    if-ne p1, v0, :cond_22

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->switchToNextLanguage()V

    goto/16 :goto_6

    :cond_22
    const v0, 0x300021

    if-ne p1, v0, :cond_23

    goto/16 :goto_5

    :cond_23
    const v0, 0x320004

    if-ne p1, v0, :cond_24

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->dialogManager:Lcom/cootek/smartinput5/engine/DialogManager;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/DialogManager;->onKeycode(I)V

    goto/16 :goto_6

    :cond_24
    const v0, 0x320008

    if-eq p1, v0, :cond_32

    const v0, 0x320009

    if-ne p1, v0, :cond_25

    goto/16 :goto_4

    :cond_25
    const v0, 0x300024

    if-ne p1, v0, :cond_26

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->onSpaceDoubleClick()V

    goto/16 :goto_6

    :cond_26
    const v0, 0x300025

    if-ne p1, v0, :cond_28

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->windowLayoutManager:Lcom/cootek/smartinput5/ui/p0;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/p0;->S()Z

    move-result p1

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->windowLayoutManager:Lcom/cootek/smartinput5/ui/p0;

    invoke-virtual {p1, v1}, Lcom/cootek/smartinput5/ui/p0;->p(Z)V

    goto/16 :goto_6

    :cond_27
    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->imsImpl:Lcom/cootek/smartinput5/h;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->sendDownUpKeyEvents(I)V

    goto/16 :goto_6

    :cond_28
    const v0, 0x320001

    if-ne p1, v0, :cond_29

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->voiceProcessor:Lcom/cootek/smartinput5/engine/VoiceProcessor;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/VoiceProcessor;->startInputVoice()V

    goto/16 :goto_6

    :cond_29
    const v0, 0x320002

    if-ne p1, v0, :cond_2a

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->voiceProcessor:Lcom/cootek/smartinput5/engine/VoiceProcessor;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/VoiceProcessor;->cancelInputVoice()V

    goto/16 :goto_6

    :cond_2a
    const v0, 0x320003

    if-ne p1, v0, :cond_2b

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->voiceProcessor:Lcom/cootek/smartinput5/engine/VoiceProcessor;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/VoiceProcessor;->stopInputVoice()V

    goto/16 :goto_6

    :cond_2b
    const v0, 0x300028

    if-lt p1, v0, :cond_2c

    const v0, 0x30002b

    if-gt p1, v0, :cond_2c

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->widgetManager:Lcom/cootek/smartinput5/ui/o0;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/ui/o0;->s0(I)V

    goto :goto_6

    :cond_2c
    const v0, 0x30002c

    if-lt p1, v0, :cond_2d

    const v0, 0x300037

    if-gt p1, v0, :cond_2d

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->widgetManager:Lcom/cootek/smartinput5/ui/o0;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/ui/o0;->s0(I)V

    goto :goto_6

    :cond_2d
    const v0, 0x300038

    if-ne p1, v0, :cond_2e

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object p1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->context:Landroid/content/Context;

    const v2, 0x7f0f07d7

    invoke-static {v0, v2}, Lcom/cootek/smartinput5/engine/Engine;->getResString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/cootek/smartinput5/ui/control/E;->w(Ljava/lang/String;Z)V

    goto :goto_6

    :cond_2e
    const v0, 0x320005

    if-ne p1, v0, :cond_2f

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->widgetManager:Lcom/cootek/smartinput5/ui/o0;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/o0;->P0()V

    goto :goto_6

    :cond_2f
    const v0, 0x320006

    if-ne p1, v0, :cond_30

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->widgetManager:Lcom/cootek/smartinput5/ui/o0;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/o0;->b0()Lcom/cootek/smartinput5/func/smileypanel/widget/SmileyDrawer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/smileypanel/widget/SmileyDrawer;->n()V

    goto :goto_6

    :cond_30
    const v0, 0x320007

    if-ne p1, v0, :cond_31

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->widgetManager:Lcom/cootek/smartinput5/ui/o0;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/o0;->b0()Lcom/cootek/smartinput5/func/smileypanel/widget/SmileyDrawer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/smileypanel/widget/SmileyDrawer;->f()V

    goto :goto_6

    :cond_31
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    goto :goto_6

    :cond_32
    :goto_4
    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->surfaceManager:Lcom/cootek/smartinput5/engine/SurfaceManager;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/SurfaceManager;->onKeycode(I)V

    goto :goto_6

    :goto_5
    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->widgetManager:Lcom/cootek/smartinput5/ui/o0;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/o0;->L0()V

    :cond_33
    :goto_6
    return-void
.end method

.method public doFeedback(Z)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->D0()Lcom/cootek/smartinput5/func/s0;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/func/s0;->e(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/HighFreqSettings;->getInstance()Lcom/cootek/smartinput5/engine/HighFreqSettings;

    move-result-object p1

    iget p1, p1, Lcom/cootek/smartinput5/engine/HighFreqSettings;->vibrate:I

    if-nez p1, :cond_1

    invoke-static {}, Lcom/cootek/smartinput5/engine/HighFreqSettings;->getInstance()Lcom/cootek/smartinput5/engine/HighFreqSettings;

    move-result-object p1

    iget-boolean p1, p1, Lcom/cootek/smartinput5/engine/HighFreqSettings;->applySystemVibrate:Z

    if-eqz p1, :cond_2

    :cond_1
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->D0()Lcom/cootek/smartinput5/func/s0;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/cootek/smartinput5/func/s0;->e(Z)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->audioManager:Landroid/media/AudioManager;

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/cootek/smartinput5/engine/HighFreqSettings;->getInstance()Lcom/cootek/smartinput5/engine/HighFreqSettings;

    move-result-object p1

    iget-boolean p1, p1, Lcom/cootek/smartinput5/engine/HighFreqSettings;->applySystemVolume:Z

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    iget-object v2, p0, Lcom/cootek/smartinput5/engine/Engine;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/cootek/smartinput5/engine/Engine;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v2, p1

    cmpl-float p1, v2, v1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v0, v2}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/cootek/smartinput5/engine/HighFreqSettings;->getInstance()Lcom/cootek/smartinput5/engine/HighFreqSettings;

    move-result-object p1

    iget p1, p1, Lcom/cootek/smartinput5/engine/HighFreqSettings;->sound:I

    if-eqz p1, :cond_5

    int-to-float p1, p1

    invoke-static {}, Lcom/cootek/smartinput5/engine/HighFreqSettings;->getInstance()Lcom/cootek/smartinput5/engine/HighFreqSettings;

    move-result-object v2

    iget v2, v2, Lcom/cootek/smartinput5/engine/HighFreqSettings;->MAX_SOUND_VOLUME:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->audioManager:Landroid/media/AudioManager;

    mul-float p1, p1, p1

    invoke-virtual {v1, v0, p1}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    :cond_5
    :goto_1
    return-void
.end method

.method public feedback()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/engine/Engine;->feedback(Z)V

    return-void
.end method

.method public feedback(Z)V
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput/utilities/y;->c()Lcom/cootek/smartinput/utilities/y;

    move-result-object v0

    new-instance v1, Lcom/cootek/smartinput5/engine/Engine$17;

    invoke-direct {v1, p0, p1}, Lcom/cootek/smartinput5/engine/Engine$17;-><init>(Lcom/cootek/smartinput5/engine/Engine;Z)V

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput/utilities/y;->g(Lcom/cootek/smartinput/utilities/w;)V

    return-void
.end method

.method public fireAddCandidateEndOperation()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->fireAddCandidateEndOperation()V

    return-void
.end method

.method public fireAddCandidateOperation(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->fireAddCandidateOperation(Ljava/lang/String;)V

    return-void
.end method

.method public fireAddUserwordOperation(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cootek/smartinput5/engine/Okinawa;->fireAddUserwordOperation(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public fireAdjustWordpriorityOperation(III)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cootek/smartinput5/engine/Okinawa;->fireAdjustWordpriorityOperation(III)V

    return-void
.end method

.method public fireCandidateEndOperation(I)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->fireCandidateEndOperation(I)V

    return-void
.end method

.method public fireCheckImageOperation(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cootek/smartinput5/engine/Okinawa;->fireCheckImageOperation(Ljava/lang/String;II)V

    return-void
.end method

.method public fireCleanupOperation()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->fireCleanupOperation()V

    return-void
.end method

.method public fireClearNextwordOperation()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->fireClearNextwordOperation()V

    return-void
.end method

.method public fireCloudCandidateOperation(II)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2}, Lcom/cootek/smartinput5/engine/Okinawa;->fireCloudCandidateOperation(II)V

    return-void
.end method

.method public fireCloudResultOperation(Ljava/lang/String;Ljava/lang/String;[Lcom/cootek/smartinput5/engine/cloke/CloudResultList;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cootek/smartinput5/engine/Okinawa;->fireCloudResultOperation(Ljava/lang/String;Ljava/lang/String;[Lcom/cootek/smartinput5/engine/cloke/CloudResultList;)V

    return-void
.end method

.method public fireCommitOperation(I)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->fireCommitOperation(I)V

    return-void
.end method

.method public fireCommitOperation(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->fireCommitOperation(Ljava/lang/String;)V

    return-void
.end method

.method public fireCommitOperation(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cootek/smartinput5/engine/Okinawa;->fireCommitOperation(Ljava/lang/String;II)V

    return-void
.end method

.method public fireConfigChangeOperation()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->fireConfigChangeOperation()V

    return-void
.end method

.method public fireConfirmCandidateOperation(I)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->fireConfirmCandidateOperation(I)V

    return-void
.end method

.method public fireConfirmNextphraseOperation(I)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->fireConfirmNextphraseOperation(I)V

    return-void
.end method

.method public fireConfirmNextwordOperation(I)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->fireConfirmNextwordOperation(I)V

    return-void
.end method

.method public fireDeleteAdOperation(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->fireDeleteAdOperation(Ljava/lang/String;)V

    return-void
.end method

.method public fireDeleteUserWordOperation(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2}, Lcom/cootek/smartinput5/engine/Okinawa;->fireDeleteUserWordOperation(IZ)V

    return-void
.end method

.method public fireDeleteUserWordOperation(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cootek/smartinput5/engine/Okinawa;->fireDeleteUserWordOperation(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public fireExportUserDictionaryOperation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2}, Lcom/cootek/smartinput5/engine/Okinawa;->fireExportUserDictionaryOperation(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public fireFinishInputOperation()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->fireFinishInputOperation()V

    return-void
.end method

.method public fireFinishInputViewOperation()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->fireFinishInputViewOperation()V

    return-void
.end method

.method public fireHandwriteOperation(Lcom/cootek/smartinput5/engine/MoveContrail;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->fireHandwriteOperation(Lcom/cootek/smartinput5/engine/MoveContrail;)V

    return-void
.end method

.method public fireHardKeyOperation(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/cootek/smartinput5/engine/Engine;->fireHardKeyOperation(III)V

    return-void
.end method

.method public fireHardKeyOperation(III)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cootek/smartinput5/engine/Okinawa;->fireHardKeyOperation(III)V

    return-void
.end method

.method public fireImportUserDictOperation()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->fireImportUserDataOperation()V

    return-void
.end method

.method public fireImportUserDictionaryOperation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2}, Lcom/cootek/smartinput5/engine/Okinawa;->fireImportUserDictionaryOperation(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public fireInputMultiOperation(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2}, Lcom/cootek/smartinput5/engine/Okinawa;->fireInputMultiOperation(Ljava/lang/String;Z)V

    return-void
.end method

.method public fireInputTextOperation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cootek/smartinput5/engine/Okinawa;->fireInputTextOperation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public fireKeyOperation(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/cootek/smartinput5/engine/Engine;->fireKeyOperation(III)V

    return-void
.end method

.method public fireKeyOperation(III)V
    .locals 1

    new-instance v0, Lcom/cootek/smartinput5/ui/V;

    invoke-direct {v0, p1}, Lcom/cootek/smartinput5/ui/V;-><init>(I)V

    new-instance p1, Lcom/cootek/smartinput5/ui/SoftKeyActionInfo;

    invoke-direct {p1, v0}, Lcom/cootek/smartinput5/ui/SoftKeyActionInfo;-><init>(Lcom/cootek/smartinput5/ui/V;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/cootek/smartinput5/engine/Engine;->fireKeyOperation(Lcom/cootek/smartinput5/ui/SoftKeyActionInfo;II)V

    return-void
.end method

.method public fireKeyOperation(Lcom/cootek/smartinput5/ui/SoftKeyActionInfo;II)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cootek/smartinput5/engine/Okinawa;->fireKeyOperation(Lcom/cootek/smartinput5/ui/SoftKeyActionInfo;II)V

    return-void
.end method

.method public fireLearnTextOperation(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cootek/smartinput5/engine/Okinawa;->fireLearnTextOperation(Ljava/lang/String;II)V

    return-void
.end method

.method public fireLocalCloudResultOperation()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->fireLocalCloudResultOperation()V

    return-void
.end method

.method public fireLocalCloudSearchOperation()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->fireLocalCloudSearchOperation()V

    return-void
.end method

.method public fireLuaCallOperation(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->fireLuaCallOperation(Ljava/lang/String;)V

    return-void
.end method

.method public fireRetrieveNextwordOperation()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->fireRetrieveNextwordOperation()V

    return-void
.end method

.method public fireSelectCandidateOperation(I)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->fireSelectCandidateOperation(I)V

    return-void
.end method

.method public fireSelectDialectOperation(I)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->fireSelectDialectOperation(I)V

    return-void
.end method

.method public fireSelectFilterOperation(I)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->fireSelectFilterOperation(I)V

    return-void
.end method

.method public fireSelectMistypeCorrectOperation(I)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->fireSelectMistypeCorrectOperation(I)V

    return-void
.end method

.method public fireSelectUserwordOperation(I)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->fireSelectUserwordOperation(I)V

    return-void
.end method

.method public fireSetDefaultCandidateOperation(I)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->fireSetDefaultCandidateOperation(I)V

    return-void
.end method

.method public fireSettingsChangedOperation(I)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->fireSettingsChangedOperation(I)V

    return-void
.end method

.method public fireSlipOperation(I)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->fireSlipOperation(I)V

    return-void
.end method

.method public fireStartInputOperation(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cootek/smartinput5/engine/Okinawa;->fireStartInputOperation(IIZ)V

    return-void
.end method

.method public fireStartInputViewOperation(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cootek/smartinput5/engine/Okinawa;->fireStartInputViewOperation(IIZ)V

    return-void
.end method

.method public fireTimeOperation(II)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2}, Lcom/cootek/smartinput5/engine/Okinawa;->fireTimeOperation(II)V

    return-void
.end method

.method public fireTransactionOperation(I)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->fireTransactionOperation(I)V

    return-void
.end method

.method public fireUpdateSelectionOperation(IIIIIII)V
    .locals 8

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/cootek/smartinput5/engine/Okinawa;->fireUpdateSelectionOperation(IIIIIII)V

    return-void
.end method

.method public getAccessibilityString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getAccessibilityString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllKeyId()[I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getAllKeyId()[I

    move-result-object v0

    return-object v0
.end method

.method public getCandidateFirstIndex()I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getCandidateFirstIndex()I

    move-result v0

    return v0
.end method

.method public getCandidateItem(ILcom/cootek/smartinput5/engine/CandidateItem;)Lcom/cootek/smartinput5/engine/CandidateItem;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2}, Lcom/cootek/smartinput5/engine/Okinawa;->getCandidateItem(ILcom/cootek/smartinput5/engine/CandidateItem;)Lcom/cootek/smartinput5/engine/CandidateItem;

    move-result-object p1

    return-object p1
.end method

.method public getCandidateItemPredictText(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getCandidateItemPredictText(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCandidateItemPriority(I)I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getCandidateItemPriority(I)I

    move-result p1

    return p1
.end method

.method public getCandidateItemSource(I)I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getCandidateItemSource(I)I

    move-result p1

    return p1
.end method

.method public getCandidateManager()Lcom/cootek/smartinput5/engine/CandidateManager;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->candidateManager:Lcom/cootek/smartinput5/engine/CandidateManager;

    return-object v0
.end method

.method public getClipboardManager()Lcom/cootek/smartinput5/func/ClipboardManager;
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mClipboardMgr:Lcom/cootek/smartinput5/func/ClipboardManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/func/o;->a()Lcom/cootek/smartinput5/func/ClipboardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mClipboardMgr:Lcom/cootek/smartinput5/func/ClipboardManager;

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/ClipboardManager;->setUpMultiClipboardEnv(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mClipboardMgr:Lcom/cootek/smartinput5/func/ClipboardManager;

    return-object v0
.end method

.method public getClokeManager()Lcom/cootek/smartinput5/engine/ClokeManager;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->clokeManager:Lcom/cootek/smartinput5/engine/ClokeManager;

    return-object v0
.end method

.method public getCloudCandidateItem(ILcom/cootek/smartinput5/engine/CandidateItem;I)Lcom/cootek/smartinput5/engine/CandidateItem;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cootek/smartinput5/engine/Okinawa;->getCloudCandidateItem(ILcom/cootek/smartinput5/engine/CandidateItem;I)Lcom/cootek/smartinput5/engine/CandidateItem;

    move-result-object p1

    return-object p1
.end method

.method public getCloudCandidateItemPredictText(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getCloudCandidateItemPredictText(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCloudFeedback(Lcom/cootek/smartinput5/engine/cloke/CloudFeedback;)Lcom/cootek/smartinput5/engine/cloke/CloudFeedback;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getCloudFeedback(Lcom/cootek/smartinput5/engine/cloke/CloudFeedback;)Lcom/cootek/smartinput5/engine/cloke/CloudFeedback;

    move-result-object p1

    return-object p1
.end method

.method public getCloudInputType()I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getCloudInputType()I

    move-result v0

    return v0
.end method

.method public getCloudParameters(Ljava/lang/String;Lcom/cootek/smartinput5/engine/cloke/CloudParameters;)Lcom/cootek/smartinput5/engine/cloke/CloudParameters;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2}, Lcom/cootek/smartinput5/engine/Okinawa;->getCloudParameters(Ljava/lang/String;Lcom/cootek/smartinput5/engine/cloke/CloudParameters;)Lcom/cootek/smartinput5/engine/cloke/CloudParameters;

    move-result-object p1

    return-object p1
.end method

.method public getCommitCorrectionCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getCommitCorrectionCount(I)I

    move-result p1

    return p1
.end method

.method public getCommitCount()I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getCommitCount()I

    move-result v0

    return v0
.end method

.method public getCommitDefaultItemText(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getCommitDefaultItemText(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCommitDictTag(I)I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getCommitDictTag(I)I

    move-result p1

    return p1
.end method

.method public getCommitEffectiveCurveInputContext(ILcom/cootek/smartinput5/engine/CurveInputContext;[Lcom/cootek/smartinput5/engine/CurveInputPoint;)Lcom/cootek/smartinput5/engine/CurveInputContext;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cootek/smartinput5/engine/Okinawa;->getCommitEffectiveCurveInputContext(ILcom/cootek/smartinput5/engine/CurveInputContext;[Lcom/cootek/smartinput5/engine/CurveInputPoint;)Lcom/cootek/smartinput5/engine/CurveInputContext;

    move-result-object p1

    return-object p1
.end method

.method public getCommitEffectiveCurveInputPointsSize(I)I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getCommitEffectiveCurveInputPointsSize(I)I

    move-result p1

    return p1
.end method

.method public getCommitEffectiveInputType(I)I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getCommitEffectiveInputType(I)I

    move-result p1

    return p1
.end method

.method public getCommitEffectiveTouchInputCodesSize(I)I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getCommitEffectiveTouchInputCodesSize(I)I

    move-result p1

    return p1
.end method

.method public getCommitEffectiveTouchInputContext(ILcom/cootek/smartinput5/engine/TouchInputContext;[Lcom/cootek/smartinput5/engine/TouchInputCode;)Lcom/cootek/smartinput5/engine/TouchInputContext;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cootek/smartinput5/engine/Okinawa;->getCommitEffectiveTouchInputContext(ILcom/cootek/smartinput5/engine/TouchInputContext;[Lcom/cootek/smartinput5/engine/TouchInputCode;)Lcom/cootek/smartinput5/engine/TouchInputContext;

    move-result-object p1

    return-object p1
.end method

.method public getCommitEvidence(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getCommitEvidence(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCommitHistory(I)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getCommitHistory(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCommitInternalSource(I)I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getCommitSource(I)I

    move-result p1

    return p1
.end method

.method public getCommitKeyEvent(I)I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getCommitKeyEvent(I)I

    move-result p1

    return p1
.end method

.method public getCommitLangId(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getCommitLangId(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCommitLastWrongCurveInputContext(ILcom/cootek/smartinput5/engine/CurveInputContext;[Lcom/cootek/smartinput5/engine/CurveInputPoint;)Lcom/cootek/smartinput5/engine/CurveInputContext;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cootek/smartinput5/engine/Okinawa;->getCommitLastWrongCurveInputContext(ILcom/cootek/smartinput5/engine/CurveInputContext;[Lcom/cootek/smartinput5/engine/CurveInputPoint;)Lcom/cootek/smartinput5/engine/CurveInputContext;

    move-result-object p1

    return-object p1
.end method

.method public getCommitLastWrongCurveInputPointsSize(I)I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getCommitLastWrongCurveInputPointsSize(I)I

    move-result p1

    return p1
.end method

.method public getCommitLastWrongInputType(I)I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getCommitLastWrongInputType(I)I

    move-result p1

    return p1
.end method

.method public getCommitLastWrongTouchInputCodesSize(I)I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getCommitLastWrongTouchInputCodesSize(I)I

    move-result p1

    return p1
.end method

.method public getCommitLastWrongTouchInputContext(ILcom/cootek/smartinput5/engine/TouchInputContext;[Lcom/cootek/smartinput5/engine/TouchInputCode;)Lcom/cootek/smartinput5/engine/TouchInputContext;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cootek/smartinput5/engine/Okinawa;->getCommitLastWrongTouchInputContext(ILcom/cootek/smartinput5/engine/TouchInputContext;[Lcom/cootek/smartinput5/engine/TouchInputCode;)Lcom/cootek/smartinput5/engine/TouchInputContext;

    move-result-object p1

    return-object p1
.end method

.method public getCommitManager()Lcom/cootek/smartinput5/engine/CommitManager;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->commitManager:Lcom/cootek/smartinput5/engine/CommitManager;

    return-object v0
.end method

.method public getCommitSibCandidateItems(I[Lcom/cootek/smartinput5/engine/SibCandidateItem;)[Lcom/cootek/smartinput5/engine/SibCandidateItem;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2}, Lcom/cootek/smartinput5/engine/Okinawa;->getCommitSibCandidateItems(I[Lcom/cootek/smartinput5/engine/SibCandidateItem;)[Lcom/cootek/smartinput5/engine/SibCandidateItem;

    move-result-object p1

    return-object p1
.end method

.method public getCommitSibCandidateItemsSize(I)I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getCommitSibCandidateItemsSize(I)I

    move-result p1

    return p1
.end method

.method public getCommitText(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getCommitText(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCommitType(I)I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getCommitType(I)I

    move-result p1

    return p1
.end method

.method public getCommitWrongInputTimes(I)I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getCommitWrongInputTimes(I)I

    move-result p1

    return p1
.end method

.method public getConfirmedInfo()Lcom/cootek/smartinput5/engine/ExplicitInfo;
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mConfirmedInfo:Lcom/cootek/smartinput5/engine/ExplicitInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cootek/smartinput5/engine/ExplicitInfo;

    invoke-direct {v0}, Lcom/cootek/smartinput5/engine/ExplicitInfo;-><init>()V

    iput-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mConfirmedInfo:Lcom/cootek/smartinput5/engine/ExplicitInfo;

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->mConfirmedInfo:Lcom/cootek/smartinput5/engine/ExplicitInfo;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Okinawa;->getConfirmedInfo(Lcom/cootek/smartinput5/engine/ExplicitInfo;)Lcom/cootek/smartinput5/engine/ExplicitInfo;

    move-result-object v0

    return-object v0
.end method

.method public getConfirmedText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getConfirmedText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurPkg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->curPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentCell()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getCurrentCell()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLanguageId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getCurrentLanguageId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLanguageShortName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getCurrentLanguageShortName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPendingInputMode()I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getCurrentPendingInputMode()I

    move-result v0

    return v0
.end method

.method public getDefaultCandidateItemIndex()I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getDefaultCandidateItemIndex()I

    move-result v0

    return v0
.end method

.method public getDefaultKeyId()I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getDefaultKeyId()I

    move-result v0

    return v0
.end method

.method public getDialectItem(ILcom/cootek/smartinput5/engine/CandidateItem;)Lcom/cootek/smartinput5/engine/CandidateItem;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2}, Lcom/cootek/smartinput5/engine/Okinawa;->getDialectItem(ILcom/cootek/smartinput5/engine/CandidateItem;)Lcom/cootek/smartinput5/engine/CandidateItem;

    move-result-object p1

    return-object p1
.end method

.method public getDialogManager()Lcom/cootek/smartinput5/engine/DialogManager;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->dialogManager:Lcom/cootek/smartinput5/engine/DialogManager;

    return-object v0
.end method

.method public getDictOptions()I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getDictOptions()I

    move-result v0

    return v0
.end method

.method public getEditor()Lcom/cootek/smartinput5/engine/Editor;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->editor:Lcom/cootek/smartinput5/engine/Editor;

    return-object v0
.end method

.method public getEditorCurrentCursor()I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getEditorCurrentCursor()I

    move-result v0

    return v0
.end method

.method public getEnabledLanguageCount()I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getEnabledLanguageCount()I

    move-result v0

    return v0
.end method

.method public getEnabledLanguageFullName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getEnabledLanguageFullName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEnabledLanguageId(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getEnabledLanguageId(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEraseCountAfterCursor()I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getEraseCountAfterCursor()I

    move-result v0

    return v0
.end method

.method public getEraseCountBeforeCursor()I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getEraseCountBeforeCursor()I

    move-result v0

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public getErrorLanguageId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getErrorLanguageId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExplicitHighlight()Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getExplicitHighlight()Z

    move-result v0

    return v0
.end method

.method public getExplicitInfo()Lcom/cootek/smartinput5/engine/ExplicitInfo;
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mExplicitInfo:Lcom/cootek/smartinput5/engine/ExplicitInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cootek/smartinput5/engine/ExplicitInfo;

    invoke-direct {v0}, Lcom/cootek/smartinput5/engine/ExplicitInfo;-><init>()V

    iput-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mExplicitInfo:Lcom/cootek/smartinput5/engine/ExplicitInfo;

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->mExplicitInfo:Lcom/cootek/smartinput5/engine/ExplicitInfo;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Okinawa;->getExplicitInfo(Lcom/cootek/smartinput5/engine/ExplicitInfo;)Lcom/cootek/smartinput5/engine/ExplicitInfo;

    move-result-object v0

    return-object v0
.end method

.method public getExplicitManager()Lcom/cootek/smartinput5/engine/ExplicitManager;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->explicitManager:Lcom/cootek/smartinput5/engine/ExplicitManager;

    return-object v0
.end method

.method public getExplicitText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getExplicitText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilterItem(ILcom/cootek/smartinput5/engine/FilterItem;)Lcom/cootek/smartinput5/engine/FilterItem;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2}, Lcom/cootek/smartinput5/engine/Okinawa;->getFilterItem(ILcom/cootek/smartinput5/engine/FilterItem;)Lcom/cootek/smartinput5/engine/FilterItem;

    move-result-object p1

    return-object p1
.end method

.method public getFilterManager()Lcom/cootek/smartinput5/engine/FilterManager;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->filterManager:Lcom/cootek/smartinput5/engine/FilterManager;

    return-object v0
.end method

.method public getFilterSize()I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getFilterSize()I

    move-result v0

    return v0
.end method

.method public getFilterType()I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getFilterType()I

    move-result v0

    return v0
.end method

.method public getHandWriteMaskManager()Lcom/cootek/smartinput5/engine/HandWriteMaskManager;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->handWriteMaskManager:Lcom/cootek/smartinput5/engine/HandWriteMaskManager;

    return-object v0
.end method

.method public getIms()Lcom/cootek/smartinput5/TouchPalIME;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    return-object v0
.end method

.method public getImsImpl()Lcom/cootek/smartinput5/h;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->imsImpl:Lcom/cootek/smartinput5/h;

    return-object v0
.end method

.method public getInlineInfo()Lcom/cootek/smartinput5/engine/ExplicitInfo;
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mInlineInfo:Lcom/cootek/smartinput5/engine/ExplicitInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cootek/smartinput5/engine/ExplicitInfo;

    invoke-direct {v0}, Lcom/cootek/smartinput5/engine/ExplicitInfo;-><init>()V

    iput-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mInlineInfo:Lcom/cootek/smartinput5/engine/ExplicitInfo;

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->mInlineInfo:Lcom/cootek/smartinput5/engine/ExplicitInfo;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Okinawa;->getInlineInfo(Lcom/cootek/smartinput5/engine/ExplicitInfo;)Lcom/cootek/smartinput5/engine/ExplicitInfo;

    move-result-object v0

    return-object v0
.end method

.method public getInlineManager()Lcom/cootek/smartinput5/engine/InlineManager;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->inlineManager:Lcom/cootek/smartinput5/engine/InlineManager;

    return-object v0
.end method

.method public getInlineText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cootek/smartinput5/engine/Engine;->getInlineText(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInlineText(Z)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mCachedInlineText:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getInlineText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->mCachedInlineText:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->mCachedInlineText:Ljava/lang/String;

    return-object p1
.end method

.method public getInternalErrorCode()I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getInternalErrorCode()I

    move-result v0

    return v0
.end method

.method public getInternalInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mInternalInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public getKeyId(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getKeyId(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getKeySupportedOperation(I)I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getKeySupportedOperation(I)I

    move-result p1

    return p1
.end method

.method public getLanguageSupportLayout(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getLanguageSupportLayout(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getLanguageSupportSubType(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getLanguageSupportSubType(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getLayoutAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getLayoutAlias()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLearnedSentence()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getLearnedSentence()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextphraseItemDirectly(ILcom/cootek/smartinput5/engine/CandidateItem;)Lcom/cootek/smartinput5/engine/CandidateItem;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2}, Lcom/cootek/smartinput5/engine/Okinawa;->getNextphraseItemDirectly(ILcom/cootek/smartinput5/engine/CandidateItem;)Lcom/cootek/smartinput5/engine/CandidateItem;

    move-result-object p1

    return-object p1
.end method

.method public getNextwordItemDirectly(ILcom/cootek/smartinput5/engine/CandidateItem;)Lcom/cootek/smartinput5/engine/CandidateItem;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2}, Lcom/cootek/smartinput5/engine/Okinawa;->getNextwordItemDirectly(ILcom/cootek/smartinput5/engine/CandidateItem;)Lcom/cootek/smartinput5/engine/CandidateItem;

    move-result-object p1

    return-object p1
.end method

.method public getOceanCorpusVersion()I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getOceanCorpusVersion()I

    move-result v0

    return v0
.end method

.method public getOldSpellCheckSetting()I
    .locals 1

    iget v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mOldSpellCheckSetting:I

    return v0
.end method

.method public getOriginalLetters(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getOriginalLetters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPreUsedLanguageShortName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getPreUsedLanguageShortName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewText(II)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->u0()Lcom/cootek/smartinput5/func/f0;

    move-result-object v0

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v1, p1, p2}, Lcom/cootek/smartinput5/engine/Okinawa;->getPreviewText(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/func/f0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getShortcutList()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getShortcutList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSlideSentenceManager()Lcom/cootek/smartinput5/n/b;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->slideSentenceManager:Lcom/cootek/smartinput5/n/b;

    return-object v0
.end method

.method public getStatisticDataCount()I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getStatisticDataCount()I

    move-result v0

    return v0
.end method

.method public getStatisticDataPath(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getStatisticDataPath(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStatisticDataValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getStatisticDataValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSurfaceAttribute()I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getSurfaceAttribute()I

    move-result v0

    return v0
.end method

.method public getSurfaceExtraElement(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getSurfaceExtraElement(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSurfaceExtraElementsCount()I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getSurfaceExtraElementsCount()I

    move-result v0

    return v0
.end method

.method public getSurfaceManager()Lcom/cootek/smartinput5/engine/SurfaceManager;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->surfaceManager:Lcom/cootek/smartinput5/engine/SurfaceManager;

    return-object v0
.end method

.method public getSurfaceSubType()I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getSurfaceSubType()I

    move-result v0

    return v0
.end method

.method public getSurfaceSupportedMode()I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getSurfaceSupportedMode()I

    move-result v0

    return v0
.end method

.method public getSurfaceSupportedOperation()I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getSurfaceSupportedOperation()I

    move-result v0

    return v0
.end method

.method public getSurfaceTemplate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getSurfaceTemplate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceType()I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getSurfaceType()I

    move-result v0

    return v0
.end method

.method public getTriStatus(I)I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->getTriStatus(I)I

    move-result p1

    return p1
.end method

.method public getUserWordItem(ILcom/cootek/smartinput5/engine/CandidateItem;)Lcom/cootek/smartinput5/engine/CandidateItem;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2}, Lcom/cootek/smartinput5/engine/Okinawa;->getUserWordItem(ILcom/cootek/smartinput5/engine/CandidateItem;)Lcom/cootek/smartinput5/engine/CandidateItem;

    move-result-object p1

    return-object p1
.end method

.method public getUsrDicChecker()Lcom/cootek/smartinput5/func/component/x;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mUsrDicChecker:Lcom/cootek/smartinput5/func/component/x;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cootek/smartinput5/func/component/x;

    invoke-direct {v0}, Lcom/cootek/smartinput5/func/component/x;-><init>()V

    iput-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mUsrDicChecker:Lcom/cootek/smartinput5/func/component/x;

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mUsrDicChecker:Lcom/cootek/smartinput5/func/component/x;

    return-object v0
.end method

.method public getVerboseManager()Lcom/cootek/smartinput5/engine/VerboseManager;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->verboseManager:Lcom/cootek/smartinput5/engine/VerboseManager;

    return-object v0
.end method

.method public getVoiceProcessor()Lcom/cootek/smartinput5/engine/VoiceProcessor;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->voiceProcessor:Lcom/cootek/smartinput5/engine/VoiceProcessor;

    return-object v0
.end method

.method public getVoiceTypingTrigger()Lcom/google/android/voiceime/VoiceRecognitionTrigger;
    .locals 3

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mVoiceTypingTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    sget-object v1, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    sget-object v2, Lcom/cootek/smartinput5/engine/Engine;->sTouchPalIMEImpl:Lcom/cootek/smartinput5/h;

    invoke-direct {v0, v1, v2}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;-><init>(Lcom/cootek/smartinput5/TouchPalIME;Lcom/cootek/smartinput5/h;)V

    iput-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mVoiceTypingTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mVoiceTypingTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    return-object v0
.end method

.method public getWarningManager()Lcom/cootek/smartinput5/engine/WarningManager;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->warningManager:Lcom/cootek/smartinput5/engine/WarningManager;

    return-object v0
.end method

.method public getWidgetManager()Lcom/cootek/smartinput5/ui/o0;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->widgetManager:Lcom/cootek/smartinput5/ui/o0;

    return-object v0
.end method

.method public getWindowLayoutManager()Lcom/cootek/smartinput5/ui/p0;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->windowLayoutManager:Lcom/cootek/smartinput5/ui/p0;

    return-object v0
.end method

.method public getWordFilter()I
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->getWordFilter()I

    move-result v0

    return v0
.end method

.method public hasCandidate()Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->hasCandidate()Z

    move-result v0

    return v0
.end method

.method public hasCloudCandidate(I)Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->hasCloudCandidate(I)Z

    move-result p1

    return p1
.end method

.method public hasDialect()Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->hasDialect()Z

    move-result v0

    return v0
.end method

.method public hasNextphrase()Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->hasNextphrase()Z

    move-result v0

    return v0
.end method

.method public hasNextword()Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->hasNextword()Z

    move-result v0

    return v0
.end method

.method public hasUserword()Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->hasUserword()Z

    move-result v0

    return v0
.end method

.method public isBopomofoTone(I)Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->isBopomofoTone(I)Z

    move-result p1

    return p1
.end method

.method public isClickTransMode()Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->isClickTransMode()Z

    move-result v0

    return v0
.end method

.method public isCommitActive(I)Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->isCommitActive(I)Z

    move-result p1

    return p1
.end method

.method public isCurrentLanguageSupportCurve()Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->isCurrentLanguageSupportCurve()Z

    move-result v0

    return v0
.end method

.method public isHandWriteMaskForbidden()Z
    .locals 1

    iget v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mInputType:I

    and-int/lit8 v0, v0, 0x3

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHandwriteMaskVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->isHandwriteMaskVisible()Z

    move-result v0

    return v0
.end method

.method public isHardKeyDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mHardKeyDisabled:Z

    return v0
.end method

.method public isHardKeyMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mStartInput:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mStartInputView:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInDynamicSpellCheck()Z
    .locals 1

    iget v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mOldSpellCheckSetting:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInputPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cootek/smartinput5/engine/Engine;->isInputPaused:Z

    return v0
.end method

.method public isMutiTouchPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cootek/smartinput5/engine/Engine;->isMultiTouchPaused:Z

    return v0
.end method

.method public isNormalModeKeyboard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cootek/smartinput5/engine/Engine;->isNormalKeyboard:Z

    return v0
.end method

.method public isSoftKeyMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mStartInputView:Z

    return v0
.end method

.method public isTransactionMode()Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->isTransactionMode()Z

    move-result v0

    return v0
.end method

.method public isUserWordMode()Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->isUserWordMode()Z

    move-result v0

    return v0
.end method

.method public isWordContact(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2}, Lcom/cootek/smartinput5/engine/Okinawa;->isWordContact(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onConfigurationChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->widgetManager:Lcom/cootek/smartinput5/ui/o0;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->z0()V

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->windowLayoutManager:Lcom/cootek/smartinput5/ui/p0;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/p0;->j0()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Settings;->onConfigurationChanged()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->O()Lcom/cootek/smartinput5/ui/control/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/control/r;->Y()V

    if-eq p1, p2, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Settings;->updateOrientation()V

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->dialogManager:Lcom/cootek/smartinput5/engine/DialogManager;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/DialogManager;->onOrientationChanged()V

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->y0()Lcom/cootek/smartinput5/teaching/k/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/teaching/k/b;->e()V

    invoke-static {}, Lcom/cootek/commercial/b;->a()Lcom/cootek/commercial/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cootek/commercial/b;->c(II)V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->onFinishInputView()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->onFinishInput()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->fireConfigChangeOperation()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->processEvent()V

    return-void
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->windowLayoutManager:Lcom/cootek/smartinput5/ui/p0;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/p0;->E()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onFinishInput()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->editor:Lcom/cootek/smartinput5/engine/Editor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Editor;->updateInputInfo(Landroid/view/inputmethod/EditorInfo;)V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->fireFinishInputOperation()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mStartInput:Z

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->processEvent()V

    return-void
.end method

.method public onFinishInputView()V
    .locals 4

    iget-boolean v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mStartInputView:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->widgetManager:Lcom/cootek/smartinput5/ui/o0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/ui/o0;->I0(Z)V

    invoke-direct {p0, v1}, Lcom/cootek/smartinput5/engine/Engine;->getExtractedText(Z)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/cootek/smartinput5/func/learnmanager/b;->d:I

    sget v3, Lcom/cootek/smartinput5/func/learnmanager/b;->j:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/cootek/smartinput5/engine/Engine;->fireLearnTextOperation(Ljava/lang/String;II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/cootek/smartinput5/engine/Engine;->collectInputData(Ljava/lang/String;IZ)V

    iput-boolean v1, p0, Lcom/cootek/smartinput5/engine/Engine;->mShouldCollectCommitInfo:Z

    iget-object v2, p0, Lcom/cootek/smartinput5/engine/Engine;->surfaceManager:Lcom/cootek/smartinput5/engine/SurfaceManager;

    invoke-virtual {v2}, Lcom/cootek/smartinput5/engine/SurfaceManager;->runRecordedRunnables()V

    iget-object v2, p0, Lcom/cootek/smartinput5/engine/Engine;->editor:Lcom/cootek/smartinput5/engine/Editor;

    invoke-virtual {v2, v0}, Lcom/cootek/smartinput5/engine/Editor;->updateInputInfo(Landroid/view/inputmethod/EditorInfo;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->surfaceManager:Lcom/cootek/smartinput5/engine/SurfaceManager;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/SurfaceManager;->onHide()V

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->dialogManager:Lcom/cootek/smartinput5/engine/DialogManager;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/DialogManager;->onHide()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->fireFinishInputViewOperation()V

    iget-boolean v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mStartInput:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->onFinishInput()V

    :cond_1
    iput-boolean v1, p0, Lcom/cootek/smartinput5/engine/Engine;->needChangeSymbol:Z

    iput-boolean v1, p0, Lcom/cootek/smartinput5/engine/Engine;->mStartInputView:Z

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->processEvent()V

    return-void
.end method

.method public onInvitationDialogHidden()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mInvitationDlgShowing:Z

    return-void
.end method

.method public onInvitationDialogShown()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mInvitationDlgShowing:Z

    return-void
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mStartInputView:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->onFinishInputView()V

    :cond_0
    iget-boolean v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mStartInput:Z

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->onFinishInput()V

    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->editor:Lcom/cootek/smartinput5/engine/Editor;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Editor;->updateInputInfo(Landroid/view/inputmethod/EditorInfo;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->editor:Lcom/cootek/smartinput5/engine/Editor;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Editor;->getInputType()I

    move-result p1

    iput p1, p0, Lcom/cootek/smartinput5/engine/Engine;->mInputType:I

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->editor:Lcom/cootek/smartinput5/engine/Editor;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Editor;->getCapsMode()I

    move-result p1

    iput p1, p0, Lcom/cootek/smartinput5/engine/Engine;->mCapsMode:I

    invoke-static {}, Lcom/cootek/smartinput5/engine/TempExcludeSettingsManager;->checkTempExcludeSettings()V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->C0()Lcom/cootek/smartinput5/func/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/v0;->b()V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->V()Lcom/cootek/smartinput5/func/u;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/u;->j0()V

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->editor:Lcom/cootek/smartinput5/engine/Editor;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Editor;->getCapsMode()I

    move-result p1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->editor:Lcom/cootek/smartinput5/engine/Editor;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Editor;->getInputType()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/cootek/smartinput5/engine/Engine;->fireStartInputOperation(IIZ)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cootek/smartinput5/engine/Engine;->mStartInput:Z

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->processEvent()V

    iget p2, p0, Lcom/cootek/smartinput5/engine/Engine;->currentKeyMode:I

    iput p2, p0, Lcom/cootek/smartinput5/engine/Engine;->lastKeyMode:I

    iput p1, p0, Lcom/cootek/smartinput5/engine/Engine;->currentKeyMode:I

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p2

    const/16 v0, 0xbb

    invoke-virtual {p2, v0}, Lcom/cootek/smartinput5/engine/Settings;->getIntSetting(I)I

    move-result p2

    iget v1, p0, Lcom/cootek/smartinput5/engine/Engine;->lastKeyMode:I

    if-nez v1, :cond_3

    const/4 v1, 0x3

    if-gt p2, v1, :cond_3

    iget-boolean v1, p0, Lcom/cootek/smartinput5/engine/Engine;->mIsFullHardKeyboard:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/E;->o()Lcom/cootek/smartinput5/ui/control/E;

    move-result-object v1

    sget-object v2, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    const v3, 0x7f0f048d

    invoke-static {v2, v3}, Lcom/cootek/smartinput5/engine/Engine;->getResString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/cootek/smartinput5/ui/control/E;->w(Ljava/lang/String;Z)V

    :cond_2
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v1

    add-int/2addr p2, p1

    invoke-virtual {v1, v0, p2}, Lcom/cootek/smartinput5/engine/Settings;->setIntSetting(II)V

    :cond_3
    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 13

    iget-boolean v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mStartInputView:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->onFinishInputView()V

    :cond_0
    iget-boolean v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mStartInput:Z

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->onFinishInput()V

    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->imsImpl:Lcom/cootek/smartinput5/h;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/h;->d0()Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/inputconnection/AdvancedInputConnection;->clearCachedExtractedTextInfo()V

    :cond_2
    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->widgetManager:Lcom/cootek/smartinput5/ui/o0;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/ui/o0;->I0(Z)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->C0()Lcom/cootek/smartinput5/func/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/v0;->b()V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->d0()Lcom/cootek/smartinput5/func/N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/N;->u()V

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->editor:Lcom/cootek/smartinput5/engine/Editor;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Editor;->updateInputInfo(Landroid/view/inputmethod/EditorInfo;)V

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->editor:Lcom/cootek/smartinput5/engine/Editor;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Editor;->getInputType()I

    move-result p1

    iput p1, p0, Lcom/cootek/smartinput5/engine/Engine;->mInputType:I

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->editor:Lcom/cootek/smartinput5/engine/Editor;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/Editor;->getCapsMode()I

    move-result p1

    iput p1, p0, Lcom/cootek/smartinput5/engine/Engine;->mCapsMode:I

    invoke-static {}, Lcom/cootek/smartinput5/engine/TempExcludeSettingsManager;->checkTempExcludeSettings()V

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->clokeManager:Lcom/cootek/smartinput5/engine/ClokeManager;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/ClokeManager;->updateCloudSearchStrategy()V

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->clokeManager:Lcom/cootek/smartinput5/engine/ClokeManager;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/ClokeManager;->getCloudSearchStrategy()I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v3, 0x3d

    invoke-virtual {v0, v3, p1}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->canShowCandidateOnStartInput()Z

    move-result p1

    const/16 v0, 0x41

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    sget-object v3, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v3}, Lcom/cootek/smartinput5/l/g;->a(Landroid/content/Context;)Lcom/cootek/smartinput5/l/g;

    move-result-object v3

    const-string v4, "SHOW_CANDIDATE_ON_STARTINPUT"

    const-string v5, "SHOW"

    const-string v6, "/STATISTIC/"

    invoke-virtual {v3, v4, v5, v6}, Lcom/cootek/smartinput5/l/g;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/smartinput5/func/z;->d0()Lcom/cootek/smartinput5/func/N;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/smartinput5/func/N;->y0()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/smartinput5/func/i0;->r0()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    invoke-static {}, Lcom/cootek/smartinput5/net/i;->E()Lcom/cootek/smartinput5/net/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/smartinput5/net/i;->T()V

    :cond_6
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v3

    const/16 v4, 0x54

    invoke-virtual {v3, v4}, Lcom/cootek/smartinput5/engine/Settings;->getStringSetting(I)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v5}, Lcom/cootek/smartinput5/func/skin/purchase/a;->l(Landroid/content/Context;)Lcom/cootek/smartinput5/func/skin/purchase/a;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/cootek/smartinput5/func/skin/purchase/a;->o(Ljava/lang/String;)Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeStatus;

    move-result-object v5

    sget-object v6, Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeStatus;->EXPIRED:Lcom/cootek/smartinput5/func/skin/purchase/PaidThemeStatus;

    const/4 v12, 0x0

    if-ne v5, v6, :cond_7

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v5

    const/16 v6, 0x197

    const/16 v7, 0x21

    invoke-virtual {v5, v6, v7, v3, v12}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(IILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->Q()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/cootek/smartinput5/l/e;->g(Landroid/content/Context;)Lcom/cootek/smartinput5/l/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cootek/smartinput5/l/e;->c()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v5

    sget-object v6, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v6}, Landroid/inputmethodservice/InputMethodService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/cootek/smartinput5/engine/Settings;->setStringSetting(ILjava/lang/String;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v4

    sget-object v5, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v5}, Landroid/inputmethodservice/InputMethodService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1, v2}, Lcom/cootek/smartinput5/func/i0;->W0(Ljava/lang/String;ZZ)Z

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v5

    const/16 v6, 0x197

    const/4 v7, 0x0

    const/16 v8, 0x21

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v9, v3

    invoke-virtual/range {v5 .. v11}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZILjava/lang/String;Lcom/cootek/smartinput5/engine/Config;Z)V

    :cond_7
    invoke-static {}, Lcom/cootek/smartinput5/ui/control/F;->n()Lcom/cootek/smartinput5/ui/control/F;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cootek/smartinput5/ui/control/F;->s()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/cootek/smartinput5/ui/control/F;->n()Lcom/cootek/smartinput5/ui/control/F;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/cootek/smartinput5/ui/control/F;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v4

    const/16 v5, 0x264

    invoke-virtual {v4, v5}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/smartinput5/func/i0;->Q()Lcom/cootek/smartinput5/func/E;

    move-result-object v3

    invoke-interface {v3}, Lcom/cootek/smartinput5/func/E;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :cond_9
    invoke-static {}, Lcom/cootek/smartinput5/ui/control/F;->n()Lcom/cootek/smartinput5/ui/control/F;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/cootek/smartinput5/ui/control/F;->b(Ljava/lang/String;)V

    :cond_a
    :goto_1
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v3

    const/16 v4, 0x7b

    invoke-virtual {v3, v4}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/smartinput5/func/z;->d0()Lcom/cootek/smartinput5/func/N;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cootek/smartinput5/func/N;->v()V

    :cond_b
    iget-object v3, p0, Lcom/cootek/smartinput5/engine/Engine;->editor:Lcom/cootek/smartinput5/engine/Editor;

    invoke-virtual {v3}, Lcom/cootek/smartinput5/engine/Editor;->getCapsMode()I

    move-result v3

    iget-object v4, p0, Lcom/cootek/smartinput5/engine/Engine;->editor:Lcom/cootek/smartinput5/engine/Editor;

    invoke-virtual {v4}, Lcom/cootek/smartinput5/engine/Editor;->getInputType()I

    move-result v4

    invoke-virtual {p0, v3, v4, p2}, Lcom/cootek/smartinput5/engine/Engine;->fireStartInputViewOperation(IIZ)V

    iput-boolean v2, p0, Lcom/cootek/smartinput5/engine/Engine;->mStartInputView:Z

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->processEvent()V

    if-eqz p1, :cond_c

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object p1

    const/16 v0, 0x170

    invoke-virtual {p1, v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    :cond_c
    iget p1, p0, Lcom/cootek/smartinput5/engine/Engine;->currentKeyMode:I

    iput p1, p0, Lcom/cootek/smartinput5/engine/Engine;->lastKeyMode:I

    iput v1, p0, Lcom/cootek/smartinput5/engine/Engine;->currentKeyMode:I

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->editor:Lcom/cootek/smartinput5/engine/Editor;

    invoke-direct {p0, p1}, Lcom/cootek/smartinput5/engine/Engine;->shouldCollectCommitInfo(Lcom/cootek/smartinput5/engine/Editor;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cootek/smartinput5/engine/Engine;->mShouldCollectCommitInfo:Z

    const-string p1, ""

    iput-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->mCachedInputOp:Ljava/lang/String;

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->mCachedInputSequence:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->getDictOptions()I

    move-result p1

    iput p1, p0, Lcom/cootek/smartinput5/engine/Engine;->mCachedDictOptions:I

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->getLayoutAlias()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->mCachedLayoutAlias:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->getCurrentCell()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->mCachedCell:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/cootek/smartinput5/engine/Engine;->needChangeSymbol:Z

    if-eqz p1, :cond_d

    const-string p1, "sk_sym"

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/engine/Engine;->getKeyId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, v1, v1}, Lcom/cootek/smartinput5/engine/Engine;->fireKeyOperation(III)V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->processEvent()V

    :cond_d
    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->mPreloadedOperation:Lcom/cootek/smartinput5/engine/Engine$Operation;

    if-eqz p1, :cond_e

    iget-object p1, p1, Lcom/cootek/smartinput5/engine/Engine$Operation;->keyName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cootek/smartinput5/engine/Engine;->getKeyId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/cootek/smartinput5/engine/Engine;->fireKeyOperation(II)V

    iput-object v12, p0, Lcom/cootek/smartinput5/engine/Engine;->mPreloadedOperation:Lcom/cootek/smartinput5/engine/Engine$Operation;

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->processEvent()V

    :cond_e
    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->surfaceManager:Lcom/cootek/smartinput5/engine/SurfaceManager;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/engine/SurfaceManager;->updateAnimation()V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->V()Lcom/cootek/smartinput5/func/u;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/u;->j0()V

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->mVoiceTypingTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->onStartInputView()V

    :cond_f
    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->isHandWriteMaskForbidden()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->widgetManager:Lcom/cootek/smartinput5/ui/o0;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/o0;->G()Lcom/cootek/smartinput5/ui/HandWriteMask;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1, v1}, Lcom/cootek/smartinput5/ui/HandWriteMask;->setVisible(Z)V

    :cond_10
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/i0;->m()V

    invoke-direct {p0, p2}, Lcom/cootek/smartinput5/engine/Engine;->isRestarting(Z)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_11
    return-void
.end method

.method public onUpdateSelection(IIIIIII)V
    .locals 0

    invoke-virtual/range {p0 .. p7}, Lcom/cootek/smartinput5/engine/Engine;->fireUpdateSelectionOperation(IIIIIII)V

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->processEvent()V

    iget-object p3, p0, Lcom/cootek/smartinput5/engine/Engine;->selectionListeners:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/cootek/smartinput5/engine/Engine$ISelectionListener;

    invoke-interface {p5}, Lcom/cootek/smartinput5/engine/Engine$ISelectionListener;->onUpdateSelection()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcom/cootek/smartinput5/engine/Engine;->checkTextPasted(III)V

    return-void
.end method

.method public onUpdateSelection(I)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    return v0

    :cond_0
    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object v3, p0

    move v10, p1

    invoke-virtual/range {v3 .. v10}, Lcom/cootek/smartinput5/engine/Engine;->onUpdateSelection(IIIIIII)V

    return v1

    :cond_1
    iget-object v2, p0, Lcom/cootek/smartinput5/engine/Engine;->editor:Lcom/cootek/smartinput5/engine/Editor;

    invoke-virtual {v2}, Lcom/cootek/smartinput5/engine/Editor;->getSelection()[I

    move-result-object v2

    aget v6, v2, v0

    aget v7, v2, v1

    const/4 v2, -0x1

    if-eq v6, v2, :cond_2

    if-eq v7, v2, :cond_2

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object v3, p0

    move v10, p1

    invoke-virtual/range {v3 .. v10}, Lcom/cootek/smartinput5/engine/Engine;->onUpdateSelection(IIIIIII)V

    return v1

    :cond_2
    return v0
.end method

.method public onWindowHidden()V
    .locals 2

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->updateDisplayCount()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->switchNextDynamicSkin()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->activateReport()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->N()Lcom/cootek/smartinput5/ui/settings/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/settings/f;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Engine;->getWidgetManager()Lcom/cootek/smartinput5/ui/o0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->N()Lcom/cootek/smartinput5/ui/settings/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/settings/f;->dismiss()V

    :cond_0
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->Q()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cootek/smartinput5/oolong/state/c;->k(Landroid/content/Context;)Lcom/cootek/smartinput5/oolong/state/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/oolong/state/c;->n()V

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->surfaceManager:Lcom/cootek/smartinput5/engine/SurfaceManager;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/SurfaceManager;->resetFunctionBarAnimation()V

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->surfaceManager:Lcom/cootek/smartinput5/engine/SurfaceManager;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/SurfaceManager;->onHide()V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->V()Lcom/cootek/smartinput5/func/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/u;->cleanUp()V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->y0()Lcom/cootek/smartinput5/teaching/k/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/teaching/k/b;->e()V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->G()Lcom/cootek/smartinput5/func/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/b;->d()V

    invoke-static {}, Lcom/cootek/presentation/sdk/PresentationManager;->hostAppClosed()V

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->widgetManager:Lcom/cootek/smartinput5/ui/o0;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->C()Lcom/cootek/smartinput5/ui/FunctionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->widgetManager:Lcom/cootek/smartinput5/ui/o0;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->C()Lcom/cootek/smartinput5/ui/FunctionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/FunctionBar;->T()V

    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->widgetManager:Lcom/cootek/smartinput5/ui/o0;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->S()Lcom/cootek/e/b/c/a/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/cootek/e/b/c/a/e;->e()V

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->widgetManager:Lcom/cootek/smartinput5/ui/o0;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->D()Lcom/cootek/e/b/c/a/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/cootek/e/b/c/a/e;->e()V

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->widgetManager:Lcom/cootek/smartinput5/ui/o0;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->Z()Lcom/cootek/e/b/c/a/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/cootek/e/b/c/a/e;->e()V

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->windowLayoutManager:Lcom/cootek/smartinput5/ui/p0;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/p0;->f0()V

    sget-object v0, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-static {v0}, Lcom/cootek/smartinput5/func/share/a;->r(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->removeAllRunnables()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->isBusy()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mStartInput:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mStartInputView:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cootek/smartinput5/engine/Engine;->onCleanup(Z)V

    :cond_2
    invoke-static {}, Lcom/cootek/smartinput5/net/C;->c()Lcom/cootek/smartinput5/net/C;

    move-result-object v0

    sget-object v1, Lcom/cootek/smartinput5/engine/Engine;->sContext:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/net/C;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/cootek/smartinput5/monitor/b;->l()Lcom/cootek/smartinput5/monitor/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/monitor/b;->v()V

    invoke-static {}, Lcom/cootek/smartinput5/monitor/b;->l()Lcom/cootek/smartinput5/monitor/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/monitor/b;->f()V

    invoke-static {}, Lcom/cootek/commercial/b;->a()Lcom/cootek/commercial/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/commercial/b;->j()V

    return-void
.end method

.method public onWindowShown()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/cootek/smartinput5/engine/Engine;->lastWindowShownTime:J

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->collectUsageData()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->checkDynamicSkin()V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->V()Lcom/cootek/smartinput5/func/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/u;->h()V

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->widgetManager:Lcom/cootek/smartinput5/ui/o0;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->M()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->widgetManager:Lcom/cootek/smartinput5/ui/o0;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->S()Lcom/cootek/e/b/c/a/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/cootek/e/b/c/a/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->widgetManager:Lcom/cootek/smartinput5/ui/o0;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->S()Lcom/cootek/e/b/c/a/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/cootek/e/b/c/a/e;->d()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->widgetManager:Lcom/cootek/smartinput5/ui/o0;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->D()Lcom/cootek/e/b/c/a/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/cootek/e/b/c/a/e;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->widgetManager:Lcom/cootek/smartinput5/ui/o0;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->D()Lcom/cootek/e/b/c/a/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/cootek/e/b/c/a/e;->d()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->widgetManager:Lcom/cootek/smartinput5/ui/o0;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->Z()Lcom/cootek/e/b/c/a/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/cootek/e/b/c/a/e;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->widgetManager:Lcom/cootek/smartinput5/ui/o0;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/ui/o0;->Z()Lcom/cootek/e/b/c/a/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/cootek/e/b/c/a/e;->d()V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->activating()V

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->checkEnableTouchPalNotification()V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->G()Lcom/cootek/smartinput5/func/b;

    move-result-object v0

    const v1, 0x7f0f01f8

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/b;->n(I)V

    iget-boolean v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mInvitationDlgShowing:Z

    if-nez v0, :cond_4

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0xad

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/cootek/smartinput5/ui/settings/InvitationDialog;->v:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->showInvitationDlg()V

    :cond_3
    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mInvitationDlgShowing:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Settings;->setDisableSpecial(Z)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->o0()Lcom/cootek/smartinput5/func/paopao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/paopao/b;->w()V

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/cootek/smartinput5/engine/Settings;->setDisableSpecial(Z)V

    invoke-virtual {p0, v2}, Lcom/cootek/smartinput5/engine/Engine;->setInputPaused(Z)V

    iget-boolean v0, p0, Lcom/cootek/smartinput5/engine/Engine;->isNormalKeyboard:Z

    if-nez v0, :cond_6

    return-void

    :cond_6
    invoke-static {}, Lcom/cootek/smartinput5/teaching/k/c;->q()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->J0()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/func/z;->y0()Lcom/cootek/smartinput5/teaching/k/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/smartinput5/teaching/k/b;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->updateLocaleLanguage()V

    const/4 v0, 0x3

    invoke-static {v0, v1}, Lcom/cootek/smartinput5/ui/r0/c;->l(IZ)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v0

    const/16 v1, 0x26d

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/cootek/smartinput5/presentations/i;->x()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/cootek/smartinput5/engine/Engine$ShowStartupDialogAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cootek/smartinput5/engine/Engine$ShowStartupDialogAsyncTask;-><init>(Lcom/cootek/smartinput5/engine/Engine;Lcom/cootek/smartinput5/engine/Engine$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/func/m0;->executeInThreadPool([Ljava/lang/Object;)V

    :cond_9
    :goto_1
    invoke-static {}, Lcom/cootek/commercial/b;->a()Lcom/cootek/commercial/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cootek/commercial/b;->k()V

    :cond_a
    :goto_2
    return-void
.end method

.method public postProcessEvent()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->postProcessEvent()V

    return-void
.end method

.method public processEvent()V
    .locals 2

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v0

    sget-object v1, Lcom/cootek/tool/perf/PerfActionType;->PROCESS_EVENT:Lcom/cootek/tool/perf/PerfActionType;

    invoke-virtual {v0, v1}, Lcom/cootek/tool/perf/d;->B(Lcom/cootek/tool/perf/PerfActionType;)V

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0}, Lcom/cootek/smartinput5/engine/Okinawa;->doProcessEvent()V

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cootek/tool/perf/d;->G(Lcom/cootek/tool/perf/PerfActionType;)Z

    return-void
.end method

.method public recordOldSpellCheckSetting(I)V
    .locals 0

    iput p1, p0, Lcom/cootek/smartinput5/engine/Engine;->mOldSpellCheckSetting:I

    return-void
.end method

.method public registerSelectionListener(Lcom/cootek/smartinput5/engine/Engine$ISelectionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->selectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/cootek/smartinput5/engine/Engine$ISelectionListener;->onUpdateSelection()V

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cootek/smartinput5/engine/Okinawa;->setEngine(Lcom/cootek/smartinput5/engine/Engine;)Lcom/cootek/smartinput5/engine/Okinawa;

    return-void
.end method

.method public removeAllSelectionListener()V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->selectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public setClickTransMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1}, Lcom/cootek/smartinput5/engine/Okinawa;->setClickTransMode(Z)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cootek/smartinput5/engine/Engine;->mEnabled:Z

    return-void
.end method

.method public setInputPaused(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cootek/smartinput5/engine/Engine;->isInputPaused:Z

    return-void
.end method

.method public setInternalInputConection(Landroid/view/inputmethod/InputConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->mInternalInputConnection:Landroid/view/inputmethod/InputConnection;

    return-void
.end method

.method public setIsFullHardKeyboard(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cootek/smartinput5/engine/Engine;->mIsFullHardKeyboard:Z

    return-void
.end method

.method public setKeyboardMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cootek/smartinput5/engine/Engine;->isNormalKeyboard:Z

    return-void
.end method

.method public setLastCommitTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cootek/smartinput5/engine/Engine;->mLastCommitTime:J

    return-void
.end method

.method public setMutiTouchPaused(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cootek/smartinput5/engine/Engine;->isMultiTouchPaused:Z

    return-void
.end method

.method public setNeedChangeSymbol(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cootek/smartinput5/engine/Engine;->needChangeSymbol:Z

    return-void
.end method

.method public setPastedCheckPause(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cootek/smartinput5/engine/Engine;->isPastedCheckPaused:Z

    return-void
.end method

.method public setPreloadedOperation(Lcom/cootek/smartinput5/engine/Engine$Operation;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->mPreloadedOperation:Lcom/cootek/smartinput5/engine/Engine$Operation;

    return-void
.end method

.method public settingChanged(I)V
    .locals 1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/16 v0, 0x1f

    if-eq p1, v0, :cond_5

    const/16 v0, 0x35

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x55

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->getIms()Lcom/cootek/smartinput5/TouchPalIME;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->widgetManager:Lcom/cootek/smartinput5/ui/o0;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/o0;->z0()V

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->windowLayoutManager:Lcom/cootek/smartinput5/ui/p0;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/p0;->j0()V

    goto :goto_3

    :cond_2
    const/16 v0, 0x153

    if-eq p1, v0, :cond_4

    const/16 v0, 0xe

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x16e

    if-ne p1, v0, :cond_7

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/func/i0;->N0()V

    goto :goto_3

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->widgetManager:Lcom/cootek/smartinput5/ui/o0;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/o0;->h()V

    goto :goto_3

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->widgetManager:Lcom/cootek/smartinput5/ui/o0;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/o0;->t()Lcom/cootek/smartinput5/ui/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/f;->c()V

    goto :goto_3

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->widgetManager:Lcom/cootek/smartinput5/ui/o0;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/o0;->z0()V

    iget-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->windowLayoutManager:Lcom/cootek/smartinput5/ui/p0;

    invoke-virtual {p1}, Lcom/cootek/smartinput5/ui/p0;->j0()V

    :cond_7
    :goto_3
    invoke-static {}, Lcom/cootek/smartinput5/engine/HighFreqSettings;->reset()V

    return-void
.end method

.method public showInstallIncompatibleLanguageSkinDialog()Z
    .locals 3

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->canShowIncompatibleLanguageSkinDialog()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Lcom/cootek/smartinput5/ui/x;

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-direct {v0, v1}, Lcom/cootek/smartinput5/ui/x;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/z;->d0()Lcom/cootek/smartinput5/func/N;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/func/N;->G()[Lcom/cootek/smartinput5/func/language/a;

    move-result-object v1

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/func/z;->v0()Lcom/cootek/smartinput5/func/i0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/func/i0;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cootek/smartinput5/ui/x;->I0([Lcom/cootek/smartinput5/func/language/a;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public showInstallIncompatibleLanguageSkinDialogDelayed()Z
    .locals 4

    invoke-direct {p0}, Lcom/cootek/smartinput5/engine/Engine;->canShowIncompatibleLanguageSkinDialog()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x1

    return v0
.end method

.method public updateCachedLayoutAlias()V
    .locals 1

    invoke-virtual {p0}, Lcom/cootek/smartinput5/engine/Engine;->getLayoutAlias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mCachedLayoutAlias:Ljava/lang/String;

    return-void
.end method

.method public updateCurPkg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->curPkg:Ljava/lang/String;

    return-void
.end method

.method public updateInputOp(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/cootek/smartinput5/engine/Engine;->mShouldCollectCommitInfo:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cootek/smartinput5/engine/Engine;->mCachedInputOp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cootek/smartinput5/engine/Engine;->mCachedInputOp:Ljava/lang/String;

    return-void
.end method

.method public updateKey(ILcom/cootek/smartinput5/ui/SoftKeyInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/cootek/smartinput5/engine/Engine;->okinawa:Lcom/cootek/smartinput5/engine/Okinawa;

    invoke-virtual {v0, p1, p2}, Lcom/cootek/smartinput5/engine/Okinawa;->updateKey(ILcom/cootek/smartinput5/ui/SoftKeyInfo;)V

    return-void
.end method

.method public updateResult(II)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v3

    sget-object v4, Lcom/cootek/tool/perf/PerfActionType;->UPDATE_RESULT:Lcom/cootek/tool/perf/PerfActionType;

    invoke-virtual {v3, v4}, Lcom/cootek/tool/perf/d;->B(Lcom/cootek/tool/perf/PerfActionType;)V

    const/high16 v3, 0x8000000

    and-int/2addr v3, v1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/engine/Engine;->getErrorCode()I

    move-result v8

    const/4 v9, 0x5

    if-eq v8, v9, :cond_0

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v7}, Lcom/cootek/smartinput5/func/component/r;->k(Z)V

    goto :goto_0

    :pswitch_1
    invoke-static {v7}, Lcom/cootek/smartinput5/func/component/r;->l(Z)V

    goto :goto_0

    :pswitch_2
    new-instance v8, Lcom/cootek/smartinput5/func/userinput/c/e;

    invoke-direct {v8}, Lcom/cootek/smartinput5/func/userinput/c/e;-><init>()V

    invoke-virtual {v0, v8}, Lcom/cootek/smartinput5/engine/Engine;->addInputAction(Lcom/cootek/smartinput5/func/userinput/b;)V

    goto :goto_0

    :pswitch_3
    sput v5, Lcom/cootek/smartinput5/ui/settings/UsrWordManageActivity;->B:I

    goto :goto_0

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/engine/Engine;->getErrorMsg()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v9

    invoke-virtual {v9}, Lcom/cootek/smartinput5/func/z;->C0()Lcom/cootek/smartinput5/func/v0;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/cootek/smartinput5/func/v0;->p(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/engine/Engine;->getErrorLanguageId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/cootek/smartinput5/func/N;->K0(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    sput-boolean v7, Lcom/cootek/smartinput5/engine/Engine;->isPreciseMode:Z

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v8

    invoke-virtual {v8, v7, v6}, Lcom/cootek/smartinput5/engine/Settings;->setBoolSetting(IZ)V

    goto :goto_0

    :pswitch_6
    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cootek/smartinput5/func/z;->D0()Lcom/cootek/smartinput5/func/s0;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/cootek/smartinput5/func/s0;->e(Z)V

    goto :goto_0

    :cond_0
    sput v7, Lcom/cootek/smartinput5/ui/settings/UsrWordManageActivity;->B:I

    :cond_1
    :goto_0
    const/high16 v8, 0x10000000

    and-int/2addr v8, v1

    if-eqz v8, :cond_2

    iget-object v1, v0, Lcom/cootek/smartinput5/engine/Engine;->ims:Lcom/cootek/smartinput5/TouchPalIME;

    invoke-virtual {v1, v6}, Lcom/cootek/smartinput5/TouchPalIME;->requestHideSelf(I)V

    return-void

    :cond_2
    const v8, 0x10500

    and-int/2addr v8, v1

    if-eqz v8, :cond_d

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v9

    sget-object v10, Lcom/cootek/tool/perf/PerfActionType;->CHANGE_INPUT_CONN:Lcom/cootek/tool/perf/PerfActionType;

    invoke-virtual {v9, v10}, Lcom/cootek/tool/perf/d;->B(Lcom/cootek/tool/perf/PerfActionType;)V

    const/high16 v9, 0x10000

    and-int/2addr v9, v1

    if-eqz v9, :cond_3

    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    :goto_1
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    :goto_2
    and-int/lit16 v13, v1, 0x100

    if-eqz v13, :cond_5

    const/4 v13, 0x1

    goto :goto_3

    :cond_5
    const/4 v13, 0x0

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/engine/Engine;->getInlineText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v7}, Lcom/cootek/smartinput5/engine/Engine;->getInlineText(Z)Ljava/lang/String;

    move-result-object v16

    if-eqz v11, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_6

    new-instance v15, Lcom/cootek/smartinput5/func/userinput/c/f;

    invoke-direct {v15, v14}, Lcom/cootek/smartinput5/func/userinput/c/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Lcom/cootek/smartinput5/engine/Engine;->addInputAction(Lcom/cootek/smartinput5/func/userinput/b;)V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/engine/Engine;->getImsImpl()Lcom/cootek/smartinput5/h;

    move-result-object v14

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v15

    invoke-virtual {v15}, Lcom/cootek/smartinput5/func/z;->L()Lcom/cootek/smartinput5/func/l;

    move-result-object v15

    invoke-virtual {v15}, Lcom/cootek/smartinput5/func/l;->b()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-virtual {v14}, Lcom/cootek/smartinput5/h;->L()V

    :cond_7
    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/cootek/smartinput5/engine/Engine;->inlineManager:Lcom/cootek/smartinput5/engine/InlineManager;

    invoke-virtual {v11}, Lcom/cootek/smartinput5/engine/InlineManager;->finishComposing()V

    :cond_8
    if-eqz v12, :cond_9

    iget-object v11, v0, Lcom/cootek/smartinput5/engine/Engine;->commitManager:Lcom/cootek/smartinput5/engine/CommitManager;

    invoke-virtual {v11}, Lcom/cootek/smartinput5/engine/CommitManager;->updateCommit()V

    :cond_9
    if-eqz v13, :cond_b

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v11

    sget-object v12, Lcom/cootek/tool/perf/PerfActionType;->CHANGE_INLINE:Lcom/cootek/tool/perf/PerfActionType;

    invoke-virtual {v11, v12}, Lcom/cootek/tool/perf/d;->B(Lcom/cootek/tool/perf/PerfActionType;)V

    iget-object v15, v0, Lcom/cootek/smartinput5/engine/Engine;->inlineManager:Lcom/cootek/smartinput5/engine/InlineManager;

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/engine/Engine;->getInlineInfo()Lcom/cootek/smartinput5/engine/ExplicitInfo;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/engine/Engine;->getEraseCountBeforeCursor()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/engine/Engine;->getEraseCountAfterCursor()I

    move-result v19

    if-eqz v9, :cond_a

    const/16 v20, 0x1

    goto :goto_4

    :cond_a
    const/16 v20, 0x0

    :goto_4
    invoke-virtual/range {v15 .. v20}, Lcom/cootek/smartinput5/engine/InlineManager;->updateText(Ljava/lang/String;Lcom/cootek/smartinput5/engine/ExplicitInfo;IIZ)V

    invoke-direct/range {p0 .. p0}, Lcom/cootek/smartinput5/engine/Engine;->updateDynamicSpellCheckState()V

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/cootek/tool/perf/d;->G(Lcom/cootek/tool/perf/PerfActionType;)Z

    :cond_b
    if-eqz v21, :cond_c

    invoke-virtual {v14}, Lcom/cootek/smartinput5/h;->b0()V

    :cond_c
    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v9

    invoke-virtual {v9, v10}, Lcom/cootek/tool/perf/d;->G(Lcom/cootek/tool/perf/PerfActionType;)Z

    :cond_d
    and-int/lit16 v9, v1, 0x2000

    if-eqz v9, :cond_e

    iget-object v9, v0, Lcom/cootek/smartinput5/engine/Engine;->candidateManager:Lcom/cootek/smartinput5/engine/CandidateManager;

    invoke-virtual {v9, v5}, Lcom/cootek/smartinput5/engine/CandidateManager;->updateCandidate(I)V

    :cond_e
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_f

    iget-object v9, v0, Lcom/cootek/smartinput5/engine/Engine;->candidateManager:Lcom/cootek/smartinput5/engine/CandidateManager;

    invoke-virtual {v9, v6, v6}, Lcom/cootek/smartinput5/engine/CandidateManager;->updateCandidate(IZ)V

    goto :goto_5

    :cond_f
    and-int/lit16 v9, v1, 0x1000

    if-eqz v9, :cond_10

    iget-object v9, v0, Lcom/cootek/smartinput5/engine/Engine;->candidateManager:Lcom/cootek/smartinput5/engine/CandidateManager;

    invoke-virtual {v9, v7}, Lcom/cootek/smartinput5/engine/CandidateManager;->updateCandidate(I)V

    goto :goto_5

    :cond_10
    and-int/lit8 v9, v1, 0x10

    if-eqz v9, :cond_11

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v9

    sget-object v10, Lcom/cootek/tool/perf/PerfActionType;->CHANGE_CANDIDATE:Lcom/cootek/tool/perf/PerfActionType;

    invoke-virtual {v9, v10}, Lcom/cootek/tool/perf/d;->B(Lcom/cootek/tool/perf/PerfActionType;)V

    iget-object v9, v0, Lcom/cootek/smartinput5/engine/Engine;->candidateManager:Lcom/cootek/smartinput5/engine/CandidateManager;

    invoke-virtual {v9, v6}, Lcom/cootek/smartinput5/engine/CandidateManager;->updateCandidate(I)V

    iget-object v9, v0, Lcom/cootek/smartinput5/engine/Engine;->clokeManager:Lcom/cootek/smartinput5/engine/ClokeManager;

    invoke-virtual {v9}, Lcom/cootek/smartinput5/engine/ClokeManager;->onClokeStateRefresh()V

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v9

    invoke-virtual {v9, v10}, Lcom/cootek/tool/perf/d;->G(Lcom/cootek/tool/perf/PerfActionType;)Z

    :cond_11
    :goto_5
    const/high16 v9, 0x400000

    and-int/2addr v9, v1

    const/4 v10, -0x1

    if-eqz v9, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/engine/Engine;->hasNextword()Z

    move-result v11

    if-eqz v11, :cond_12

    iget-object v9, v0, Lcom/cootek/smartinput5/engine/Engine;->slideSentenceManager:Lcom/cootek/smartinput5/n/b;

    invoke-virtual {v9, v6}, Lcom/cootek/smartinput5/n/b;->h(I)V

    goto :goto_a

    :cond_12
    const/high16 v11, 0x800000

    and-int/2addr v11, v1

    if-eqz v11, :cond_13

    sget-boolean v11, Lcom/cootek/smartinput5/n/b;->o:Z

    if-eqz v11, :cond_13

    iget-object v9, v0, Lcom/cootek/smartinput5/engine/Engine;->slideSentenceManager:Lcom/cootek/smartinput5/n/b;

    invoke-virtual {v9, v7}, Lcom/cootek/smartinput5/n/b;->h(I)V

    goto :goto_a

    :cond_13
    and-int/lit8 v11, v1, 0x10

    if-eqz v11, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/engine/Engine;->hasCandidate()Z

    move-result v9

    if-eqz v9, :cond_19

    invoke-static {}, Lcom/cootek/smartinput5/engine/Settings;->getInstance()Lcom/cootek/smartinput5/engine/Settings;

    move-result-object v9

    const/16 v11, 0xe6

    invoke-virtual {v9, v11}, Lcom/cootek/smartinput5/engine/Settings;->getBoolSetting(I)Z

    move-result v9

    const/16 v11, 0xa

    if-eqz v9, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/engine/Engine;->getDefaultCandidateItemIndex()I

    move-result v9

    if-eq v9, v10, :cond_14

    const/4 v9, -0x1

    goto :goto_6

    :cond_14
    const/4 v9, -0x1

    goto :goto_7

    :cond_15
    invoke-virtual {v0, v6}, Lcom/cootek/smartinput5/engine/Engine;->getCandidateItemSource(I)I

    move-result v9

    if-eq v9, v11, :cond_16

    :goto_6
    const/4 v12, 0x1

    goto :goto_8

    :cond_16
    :goto_7
    const/4 v12, 0x0

    :goto_8
    if-ne v9, v10, :cond_17

    invoke-virtual {v0, v6}, Lcom/cootek/smartinput5/engine/Engine;->getCandidateItemSource(I)I

    move-result v9

    :cond_17
    if-ne v9, v11, :cond_18

    const/4 v9, 0x1

    goto :goto_9

    :cond_18
    const/4 v9, 0x0

    goto :goto_9

    :cond_19
    const/4 v9, 0x1

    const/4 v12, 0x0

    :goto_9
    if-eqz v12, :cond_1a

    iget-object v11, v0, Lcom/cootek/smartinput5/engine/Engine;->slideSentenceManager:Lcom/cootek/smartinput5/n/b;

    invoke-virtual {v11, v5}, Lcom/cootek/smartinput5/n/b;->h(I)V

    :cond_1a
    if-eqz v9, :cond_1c

    iget-object v9, v0, Lcom/cootek/smartinput5/engine/Engine;->slideSentenceManager:Lcom/cootek/smartinput5/n/b;

    invoke-virtual {v9, v5, v6}, Lcom/cootek/smartinput5/n/b;->i(IZ)V

    goto :goto_a

    :cond_1b
    if-eqz v9, :cond_1c

    iget-object v9, v0, Lcom/cootek/smartinput5/engine/Engine;->slideSentenceManager:Lcom/cootek/smartinput5/n/b;

    invoke-virtual {v9, v6, v6}, Lcom/cootek/smartinput5/n/b;->i(IZ)V

    :cond_1c
    :goto_a
    const/high16 v9, 0x1000000

    and-int/2addr v9, v1

    if-eqz v9, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/engine/Engine;->getConfirmedText()Ljava/lang/String;

    move-result-object v9

    iget-object v11, v0, Lcom/cootek/smartinput5/engine/Engine;->slideSentenceManager:Lcom/cootek/smartinput5/n/b;

    invoke-virtual {v11, v9}, Lcom/cootek/smartinput5/n/b;->g(Ljava/lang/String;)V

    :cond_1d
    and-int/lit16 v9, v1, 0x200

    if-eqz v9, :cond_1e

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v9

    sget-object v11, Lcom/cootek/tool/perf/PerfActionType;->CHANGE_EXPLICIT:Lcom/cootek/tool/perf/PerfActionType;

    invoke-virtual {v9, v11}, Lcom/cootek/tool/perf/d;->B(Lcom/cootek/tool/perf/PerfActionType;)V

    iget-object v9, v0, Lcom/cootek/smartinput5/engine/Engine;->explicitManager:Lcom/cootek/smartinput5/engine/ExplicitManager;

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/engine/Engine;->getExplicitText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/engine/Engine;->getExplicitInfo()Lcom/cootek/smartinput5/engine/ExplicitInfo;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lcom/cootek/smartinput5/engine/ExplicitManager;->updateText(Ljava/lang/String;Lcom/cootek/smartinput5/engine/ExplicitInfo;)V

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v9

    invoke-virtual {v9}, Lcom/cootek/smartinput5/func/z;->N()Lcom/cootek/smartinput5/net/g;

    move-result-object v9

    invoke-virtual {v9}, Lcom/cootek/smartinput5/net/g;->l()V

    invoke-direct/range {p0 .. p0}, Lcom/cootek/smartinput5/engine/Engine;->updateDynamicSpellCheckState()V

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/cootek/tool/perf/d;->G(Lcom/cootek/tool/perf/PerfActionType;)Z

    :cond_1e
    and-int/lit8 v9, v1, 0x1

    if-eqz v9, :cond_1f

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v9

    sget-object v11, Lcom/cootek/tool/perf/PerfActionType;->CHANGE_SURFACE:Lcom/cootek/tool/perf/PerfActionType;

    invoke-virtual {v9, v11}, Lcom/cootek/tool/perf/d;->B(Lcom/cootek/tool/perf/PerfActionType;)V

    iget-object v9, v0, Lcom/cootek/smartinput5/engine/Engine;->surfaceManager:Lcom/cootek/smartinput5/engine/SurfaceManager;

    invoke-virtual {v9}, Lcom/cootek/smartinput5/engine/SurfaceManager;->updateSurface()V

    iget-object v9, v0, Lcom/cootek/smartinput5/engine/Engine;->surfaceManager:Lcom/cootek/smartinput5/engine/SurfaceManager;

    invoke-virtual {v9}, Lcom/cootek/smartinput5/engine/SurfaceManager;->updateSurfaceOperation()V

    iget-object v9, v0, Lcom/cootek/smartinput5/engine/Engine;->imsImpl:Lcom/cootek/smartinput5/h;

    invoke-virtual {v9}, Lcom/cootek/smartinput5/h;->M0()V

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/cootek/tool/perf/d;->G(Lcom/cootek/tool/perf/PerfActionType;)Z

    goto :goto_b

    :cond_1f
    and-int/lit8 v9, v1, 0x2

    if-eqz v9, :cond_20

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v9

    sget-object v11, Lcom/cootek/tool/perf/PerfActionType;->CHANGE_SURFACE_DISPLAY:Lcom/cootek/tool/perf/PerfActionType;

    invoke-virtual {v9, v11}, Lcom/cootek/tool/perf/d;->B(Lcom/cootek/tool/perf/PerfActionType;)V

    iget-object v9, v0, Lcom/cootek/smartinput5/engine/Engine;->surfaceManager:Lcom/cootek/smartinput5/engine/SurfaceManager;

    invoke-virtual {v9}, Lcom/cootek/smartinput5/engine/SurfaceManager;->updateSurfaceDisplay()V

    iget-object v9, v0, Lcom/cootek/smartinput5/engine/Engine;->imsImpl:Lcom/cootek/smartinput5/h;

    invoke-virtual {v9}, Lcom/cootek/smartinput5/h;->M0()V

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/cootek/tool/perf/d;->G(Lcom/cootek/tool/perf/PerfActionType;)Z

    :cond_20
    :goto_b
    and-int/lit8 v9, v1, 0x8

    if-eqz v9, :cond_21

    iget-object v9, v0, Lcom/cootek/smartinput5/engine/Engine;->surfaceManager:Lcom/cootek/smartinput5/engine/SurfaceManager;

    invoke-virtual {v9}, Lcom/cootek/smartinput5/engine/SurfaceManager;->updateSurfaceOperation()V

    :cond_21
    and-int/lit8 v9, v1, 0x4

    if-eqz v9, :cond_22

    iget-object v9, v0, Lcom/cootek/smartinput5/engine/Engine;->surfaceManager:Lcom/cootek/smartinput5/engine/SurfaceManager;

    invoke-virtual {v9}, Lcom/cootek/smartinput5/engine/SurfaceManager;->updatePopupSurface()V

    :cond_22
    const/high16 v9, 0x20000

    and-int/2addr v9, v1

    if-eqz v9, :cond_23

    iget-object v9, v0, Lcom/cootek/smartinput5/engine/Engine;->handWriteMaskManager:Lcom/cootek/smartinput5/engine/HandWriteMaskManager;

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/engine/Engine;->isHandwriteMaskVisible()Z

    move-result v11

    invoke-virtual {v9, v11}, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->updateHandWriteMask(Z)V

    :cond_23
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_24

    iget-object v9, v0, Lcom/cootek/smartinput5/engine/Engine;->filterManager:Lcom/cootek/smartinput5/engine/FilterManager;

    invoke-virtual {v9}, Lcom/cootek/smartinput5/engine/FilterManager;->updateFilter()V

    goto :goto_c

    :cond_24
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_25

    iget-object v9, v0, Lcom/cootek/smartinput5/engine/Engine;->filterManager:Lcom/cootek/smartinput5/engine/FilterManager;

    invoke-virtual {v9}, Lcom/cootek/smartinput5/engine/FilterManager;->updateActiveFilter()V

    :cond_25
    :goto_c
    if-eqz v3, :cond_28

    if-eq v2, v10, :cond_27

    iget-object v9, v0, Lcom/cootek/smartinput5/engine/Engine;->warningManager:Lcom/cootek/smartinput5/engine/WarningManager;

    if-eqz v3, :cond_26

    const/4 v3, 0x1

    goto :goto_d

    :cond_26
    const/4 v3, 0x0

    :goto_d
    invoke-virtual {v9, v2, v3}, Lcom/cootek/smartinput5/engine/WarningManager;->processWarn(IZ)V

    goto :goto_e

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/engine/Engine;->getErrorCode()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_28

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/func/z;->Y()Lcom/cootek/smartinput5/func/HandWriteManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/func/HandWriteManager;->c()V

    iget-object v2, v0, Lcom/cootek/smartinput5/engine/Engine;->handWriteMaskManager:Lcom/cootek/smartinput5/engine/HandWriteMaskManager;

    invoke-virtual {v2}, Lcom/cootek/smartinput5/engine/HandWriteMaskManager;->showDownloadInfo()V

    :cond_28
    :goto_e
    if-eqz v8, :cond_29

    iget-object v2, v0, Lcom/cootek/smartinput5/engine/Engine;->editor:Lcom/cootek/smartinput5/engine/Editor;

    invoke-virtual/range {p0 .. p0}, Lcom/cootek/smartinput5/engine/Engine;->getInlineText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/cootek/smartinput5/engine/Editor;->needUpdateSelection(I)V

    :cond_29
    const/high16 v2, 0x100000

    and-int/2addr v2, v1

    if-eqz v2, :cond_2a

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/func/z;->N()Lcom/cootek/smartinput5/net/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/net/g;->r()V

    :cond_2a
    const/high16 v2, 0x4000000

    and-int/2addr v2, v1

    if-eqz v2, :cond_2b

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/func/z;->N()Lcom/cootek/smartinput5/net/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/net/g;->t()V

    :cond_2b
    const/high16 v2, 0x40000

    and-int/2addr v2, v1

    if-eqz v2, :cond_2c

    iget-object v2, v0, Lcom/cootek/smartinput5/engine/Engine;->clokeManager:Lcom/cootek/smartinput5/engine/ClokeManager;

    invoke-virtual {v2, v6}, Lcom/cootek/smartinput5/engine/ClokeManager;->updateCloke(I)V

    :cond_2c
    const/high16 v2, 0x2000000

    and-int/2addr v2, v1

    if-eqz v2, :cond_2d

    iget-object v2, v0, Lcom/cootek/smartinput5/engine/Engine;->clokeManager:Lcom/cootek/smartinput5/engine/ClokeManager;

    invoke-virtual {v2}, Lcom/cootek/smartinput5/engine/ClokeManager;->getCloudSearchStrategy()I

    move-result v2

    and-int/2addr v2, v5

    if-eqz v2, :cond_2d

    iget-object v2, v0, Lcom/cootek/smartinput5/engine/Engine;->clokeManager:Lcom/cootek/smartinput5/engine/ClokeManager;

    invoke-virtual {v2, v7}, Lcom/cootek/smartinput5/engine/ClokeManager;->updateCloke(I)V

    :cond_2d
    const/high16 v2, 0x80000

    and-int/2addr v2, v1

    if-eqz v2, :cond_2e

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/func/z;->N()Lcom/cootek/smartinput5/net/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/net/g;->n()V

    :cond_2e
    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2f

    invoke-static {}, Lcom/cootek/smartinput5/engine/Engine;->getInstance()Lcom/cootek/smartinput5/engine/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/Engine;->getAccessibilityString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cootek/smartinput5/func/z;->b0()Lcom/cootek/smartinput5/func/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cootek/smartinput5/func/z;->G()Lcom/cootek/smartinput5/func/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/cootek/smartinput5/func/b;->o(Ljava/lang/String;)V

    :cond_2f
    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v1

    sget-object v2, Lcom/cootek/tool/perf/PerfActionType;->CHANGE_VERBOSE:Lcom/cootek/tool/perf/PerfActionType;

    invoke-virtual {v1, v2}, Lcom/cootek/tool/perf/d;->B(Lcom/cootek/tool/perf/PerfActionType;)V

    iget-object v1, v0, Lcom/cootek/smartinput5/engine/Engine;->verboseManager:Lcom/cootek/smartinput5/engine/VerboseManager;

    invoke-virtual {v1}, Lcom/cootek/smartinput5/engine/VerboseManager;->update()V

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/cootek/tool/perf/d;->G(Lcom/cootek/tool/perf/PerfActionType;)Z

    invoke-static {}, Lcom/cootek/tool/perf/d;->n()Lcom/cootek/tool/perf/d;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/cootek/tool/perf/d;->G(Lcom/cootek/tool/perf/PerfActionType;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
