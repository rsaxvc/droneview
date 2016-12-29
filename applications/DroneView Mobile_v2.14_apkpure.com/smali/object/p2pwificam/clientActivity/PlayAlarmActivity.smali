.class public Lobject/p2pwificam/clientActivity/PlayAlarmActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "PlayAlarmActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/easyview/talkutils/CustomAudioRecorder$AudioRecordResult;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnClickListener;,
        Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnPageChangeListener;,
        Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyPagerAdapter;,
        Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;,
        Lobject/p2pwificam/clientActivity/PlayAlarmActivity$surfaceCallback;
    }
.end annotation


# static fields
.field private static final AUDIO_BUFFER_START_CODE:I = 0xff00ff

.field private static final DRAG:I = 0x1

.field private static final FULLSCREEN:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "PlayTestActivity"

.field private static final MAGNIFY:I = 0x2

.field private static final NONE:I = 0x0

.field private static final STANDARD:I = 0x1

.field private static final ZOOM:I = 0x2


# instance fields
.field private AudioBuffer:Lcom/easyview/talkutils/CustomBuffer;

.field private final BRIGHT:I

.field private final CONTRAST:I

.field private IorP:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final MINLEN:I

.field private MyTakeVideoHandler:Landroid/os/Handler;

.field private final TAKEVIDEO:I

.field VideoBPS:I

.field VideoFPS:I

.field Video_bps:I

.field Video_fps:I

.field private allVideoSize:J

.field private audioPlayer:Lcom/easyview/talkutils/AudioPlayer;

.field private availableBlocks:J

.field private bAudioRecordStart:Z

.field private bAudioStart:Z

.field private bDisplayFinished:Z

.field private bH:Z

.field private bInitCameraParam:Z

.field private bManualExit:Z

.field private bProgress:Z

.field private bTimeoutStarted:Z

.field baseValue:F

.field private bgetCameraParamsThreadRuning:Z

.field private blockSize:J

.field private bmpW:I

.field private buttonPreset:Landroid/widget/Button;

.field private button_back:Landroid/widget/ImageButton;

.field private cameraName:Landroid/widget/TextView;

.field private cancelButton:Landroid/widget/Button;

.field private checkBoxHS:Landroid/widget/ImageButton;

.field private currIndex:I

.field private cursorxx:Landroid/widget/ImageView;

.field private customAudioRecorder:Lcom/easyview/talkutils/CustomAudioRecorder;

.field private datebyte:[B

.field private delFile:Ljava/io/File;

.field private dismissAnim:Landroid/view/animation/Animation;

.field private dismissTopAnim:Landroid/view/animation/Animation;

.field private div:Ljava/io/File;

.field private edtOpenLockPWD:Landroid/widget/EditText;

.field private fragment_dialog:Landroid/widget/PopupWindow;

.field private gt:Landroid/view/GestureDetector;

.field private h264JpegVideoDate:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation
.end field

.field private heightV:I

.field private helper:Lobject/p2pipcam/utils/DataBaseHelper;

.field private iORp:I

.field private imgBtnCallOff:Landroid/widget/ImageButton;

.field private imgBtnCallStart:Landroid/widget/ImageButton;

.field private imgBtnCallStop:Landroid/widget/ImageButton;

.field private imgBtnOpenLock:Landroid/widget/ImageButton;

.field private imgBtnRecord:Landroid/widget/ImageButton;

.field private imgBtnSnap:Landroid/widget/ImageButton;

.field private imgButton1:Landroid/widget/ImageButton;

.field private imgButton2:Landroid/widget/ImageButton;

.field private imgButton3:Landroid/widget/ImageButton;

.field private imgButton4:Landroid/widget/ImageButton;

.field private imgButton5:Landroid/widget/ImageButton;

.field private imgButton6:Landroid/widget/ImageButton;

.field private imgButton7:Landroid/widget/ImageButton;

.field private imgButton8:Landroid/widget/ImageButton;

.field private imgButton9:Landroid/widget/ImageButton;

.field private imgViewOpenLock:Landroid/widget/ImageView;

.field private imgViewRecord:Landroid/widget/ImageView;

.field private imgViewSnap:Landroid/widget/ImageView;

.field private isDown:Z

.field private isExit:Z

.field private isFPS:Ljava/lang/Boolean;

.field private isH264:Z

.field private isLeftRight:Z

.field private isPTZPrompt:Z

.field private isPictSave:Z

.field private isResolution:Ljava/lang/Boolean;

.field private isSecondDown:Z

.field private isShowtoping:Z

.field private isT:Z

.field private isTakeVideo:Z

.field private isTakepic:Z

.field private isTypeI:I

.field private isUpDown:Z

.field private isUpDownPressed:Z

.field private isstart:Z

.field lastTimeStamp:J

.field private layout_show_Info:Landroid/widget/LinearLayout;

.field private layout_videoing:Landroid/widget/LinearLayout;

.field private led_close:Landroid/widget/ImageButton;

.field private led_open:Landroid/widget/ImageButton;

.field private listViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mBaseMatrix:Landroid/graphics/Matrix;

.field private mBmp:Landroid/graphics/Bitmap;

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerFramerate:Landroid/os/Handler;

.field private mHandlerVideo:Landroid/os/Handler;

.field private final mMatrixValues:[F

.field mMaxZoom:F

.field mMinZoom:F

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mPopupWindowProgress:Landroid/widget/PopupWindow;

.field protected mSuppMatrix:Landroid/graphics/Matrix;

.field private m_bLeftRightMirror:Z

.field private m_bUpDownMirror:Z

.field private matrix:Landroid/graphics/Matrix;

.field private mid:Landroid/graphics/PointF;

.field private mode:I

.field private msgHandler:Landroid/os/Handler;

.field private msgStreamCodecHandler:Landroid/os/Handler;

.field private myGlSurfaceView:Landroid/opengl/GLSurfaceView;

.field private myRender:Lobject/p2pwificam/clientActivity/MyRender;

.field private nBrightness:I

.field private nContrast:I

.field private nP2PMode:I

.field private nPlayCount:I

.field private nResolution:I

.field private nStreamCodecType:I

.field private nTimeoutRemain:I

.field private nVideoHeight:I

.field private nVideoWidth:I

.field private name:Ljava/lang/String;

.field private offset:I

.field private okButton:Landroid/widget/Button;

.field private oldDist:F

.field originalScale:F

.field private osdView:Landroid/view/View;

.field private path:Ljava/io/File;

.field private playHolder:Landroid/view/SurfaceHolder;

.field private playSurface:Landroid/view/SurfaceView;

.field private playType:I

.field private playmode:I

.field private popupWindow_about:Landroid/widget/PopupWindow;

.field private popv:Landroid/view/View;

.field private preference:Landroid/content/SharedPreferences;

.field private progressView:Landroid/view/View;

.field private ptzAudio:Landroid/widget/Button;

.field private ptzHoriMirror2:Landroid/widget/ImageButton;

.field private ptzHoriTour2:Landroid/widget/ImageButton;

.field private ptzMicrophone:Landroid/widget/ImageButton;

.field private ptzOtherSetAnimView:Landroid/view/View;

.field private ptzOtherSetView:Landroid/view/View;

.field private ptzPlatform:Landroid/widget/LinearLayout;

.field private ptzPlayMode:Landroid/widget/ImageButton;

.field private ptzResolutoin:Landroid/widget/ImageButton;

.field private ptzTakeVideo:Landroid/widget/ImageButton;

.field private ptzTakepic:Landroid/widget/ImageButton;

.field private ptzVertMirror2:Landroid/widget/ImageButton;

.field private ptzVertTour2:Landroid/widget/ImageButton;

.field private resolutionPopWindow:Landroid/widget/PopupWindow;

.field private savedMatrix:Landroid/graphics/Matrix;

.field private sdAvail:Ljava/lang/String;

.field private sdSize:Ljava/lang/String;

.field private showAnim:Landroid/view/animation/Animation;

.field private showTopAnim:Landroid/view/animation/Animation;

.field private st:Z

.field private start:Landroid/graphics/PointF;

.field private stat:Landroid/os/StatFs;

.field private status:Ljava/lang/String;

.field private strDID:Ljava/lang/String;

.field private strName:Ljava/lang/String;

.field private streamType:I

.field private t1:Landroid/widget/TextView;

.field private t2:Landroid/widget/TextView;

.field private tagone:I

.field private talkAudio:I

.field private textTimeStamp:Landroid/widget/TextView;

.field private textViewVideoing:Landroid/widget/TextView;

.field private textView_sdsize:Landroid/widget/TextView;

.field private text_bps:Landroid/widget/TextView;

.field private textosd:Landroid/widget/TextView;

.field private timeoutHandle:Landroid/os/Handler;

.field private topbg:Landroid/widget/RelativeLayout;

.field private totalBlocks:J

.field private txtBPS:Landroid/widget/TextView;

.field private txtFPS:Landroid/widget/TextView;

.field private txtResolution:Landroid/widget/TextView;

.field private videoCallback:Lobject/p2pwificam/clientActivity/PlayAlarmActivity$surfaceCallback;

.field private videoDataLen:I

.field private videoViewStandard:Landroid/widget/ImageView;

.field private video_i:I

.field private videodata:[B

.field private vidoeView:Landroid/widget/ImageView;

.field private viewHandler:Landroid/os/Handler;

.field private widthV:I

.field private x1:F

.field private x2:F

.field private y1:F

.field private y2:F


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 100
    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->playmode:I

    .line 104
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->playSurface:Landroid/view/SurfaceView;

    .line 105
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->playHolder:Landroid/view/SurfaceHolder;

    .line 106
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->videodata:[B

    .line 107
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->videoDataLen:I

    .line 108
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nVideoWidth:I

    .line 109
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nVideoHeight:I

    .line 111
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->progressView:Landroid/view/View;

    .line 112
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bProgress:Z

    .line 114
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->gt:Landroid/view/GestureDetector;

    .line 115
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nResolution:I

    .line 116
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nBrightness:I

    .line 117
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nContrast:I

    .line 118
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bInitCameraParam:Z

    .line 119
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bManualExit:Z

    .line 121
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->textosd:Landroid/widget/TextView;

    .line 122
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->text_bps:Landroid/widget/TextView;

    .line 123
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->textTimeStamp:Landroid/widget/TextView;

    .line 124
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strName:Ljava/lang/String;

    .line 125
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    .line 126
    const/4 v0, 0x3

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->streamType:I

    .line 128
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->osdView:Landroid/view/View;

    .line 130
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bDisplayFinished:Z

    .line 131
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$surfaceCallback;

    invoke-direct {v0, p0, v2}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$surfaceCallback;-><init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Lobject/p2pwificam/clientActivity/PlayAlarmActivity$surfaceCallback;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->videoCallback:Lobject/p2pwificam/clientActivity/PlayAlarmActivity$surfaceCallback;

    .line 133
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nPlayCount:I

    .line 135
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->AudioBuffer:Lcom/easyview/talkutils/CustomBuffer;

    .line 136
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->audioPlayer:Lcom/easyview/talkutils/AudioPlayer;

    .line 137
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bAudioStart:Z

    .line 138
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->customAudioRecorder:Lcom/easyview/talkutils/CustomAudioRecorder;

    .line 139
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bAudioRecordStart:Z

    .line 141
    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nP2PMode:I

    .line 143
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->playType:I

    .line 144
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bTimeoutStarted:Z

    .line 145
    const/16 v0, 0xb4

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nTimeoutRemain:I

    .line 147
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isTakeVideo:Z

    .line 148
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isLeftRight:Z

    .line 149
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isUpDown:Z

    .line 151
    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->BRIGHT:I

    .line 152
    const/4 v0, 0x2

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->CONTRAST:I

    .line 153
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isUpDownPressed:Z

    .line 154
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isShowtoping:Z

    .line 164
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isTakepic:Z

    .line 165
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isExit:Z

    .line 171
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isH264:Z

    .line 174
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->textViewVideoing:Landroid/widget/TextView;

    .line 175
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->video_i:I

    .line 176
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->st:Z

    .line 177
    const/16 v0, 0x2710

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->TAKEVIDEO:I

    .line 178
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isTypeI:I

    .line 179
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isT:Z

    .line 180
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isstart:Z

    .line 181
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->datebyte:[B

    .line 182
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->iORp:I

    .line 183
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bH:Z

    .line 184
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isPictSave:Z

    .line 185
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->checkBoxHS:Landroid/widget/ImageButton;

    .line 187
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgBtnRecord:Landroid/widget/ImageButton;

    .line 188
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgBtnSnap:Landroid/widget/ImageButton;

    .line 189
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgBtnOpenLock:Landroid/widget/ImageButton;

    .line 190
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgBtnCallStop:Landroid/widget/ImageButton;

    .line 191
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgBtnCallOff:Landroid/widget/ImageButton;

    .line 192
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgBtnCallStart:Landroid/widget/ImageButton;

    .line 194
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgViewRecord:Landroid/widget/ImageView;

    .line 195
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgViewSnap:Landroid/widget/ImageView;

    .line 196
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgViewOpenLock:Landroid/widget/ImageView;

    .line 198
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->h264JpegVideoDate:Ljava/util/LinkedList;

    .line 199
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->IorP:Ljava/util/LinkedList;

    .line 200
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->status:Ljava/lang/String;

    .line 205
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->sdSize:Ljava/lang/String;

    .line 206
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->sdAvail:Ljava/lang/String;

    .line 207
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->textView_sdsize:Landroid/widget/TextView;

    .line 208
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->path:Ljava/io/File;

    .line 209
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->layout_videoing:Landroid/widget/LinearLayout;

    .line 210
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->layout_show_Info:Landroid/widget/LinearLayout;

    .line 211
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->div:Ljava/io/File;

    .line 212
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->delFile:Ljava/io/File;

    .line 213
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->name:Ljava/lang/String;

    .line 214
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->allVideoSize:J

    .line 215
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->button_back:Landroid/widget/ImageButton;

    .line 216
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->widthV:I

    .line 217
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->heightV:I

    .line 218
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->talkAudio:I

    .line 219
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->tagone:I

    .line 232
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->offset:I

    .line 233
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->currIndex:I

    .line 235
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->edtOpenLockPWD:Landroid/widget/EditText;

    .line 240
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->txtResolution:Landroid/widget/TextView;

    .line 241
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->txtFPS:Landroid/widget/TextView;

    .line 242
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->txtBPS:Landroid/widget/TextView;

    .line 244
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bgetCameraParamsThreadRuning:Z

    .line 246
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isResolution:Ljava/lang/Boolean;

    .line 247
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isFPS:Ljava/lang/Boolean;

    .line 409
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$1;-><init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->MyTakeVideoHandler:Landroid/os/Handler;

    .line 795
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$2;-><init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->timeoutHandle:Landroid/os/Handler;

    .line 836
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$3;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$3;-><init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mHandlerFramerate:Landroid/os/Handler;

    .line 851
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$4;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$4;-><init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mHandlerVideo:Landroid/os/Handler;

    .line 893
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$5;-><init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mHandler:Landroid/os/Handler;

    .line 1139
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$6;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$6;-><init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->msgHandler:Landroid/os/Handler;

    .line 1150
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$7;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$7;-><init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->msgStreamCodecHandler:Landroid/os/Handler;

    .line 1568
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isDown:Z

    .line 1569
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isSecondDown:Z

    .line 1570
    iput v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->x1:F

    .line 1571
    iput v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->x2:F

    .line 1572
    iput v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->y1:F

    .line 1573
    iput v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->y2:F

    .line 1659
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mode:I

    .line 1661
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->matrix:Landroid/graphics/Matrix;

    .line 1662
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->savedMatrix:Landroid/graphics/Matrix;

    .line 1663
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->start:Landroid/graphics/PointF;

    .line 1664
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mid:Landroid/graphics/PointF;

    .line 1665
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mMaxZoom:F

    .line 1666
    const/high16 v0, 0x3ea00000    # 0.3125f

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mMinZoom:F

    .line 1669
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 1670
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 1671
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 1672
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mMatrixValues:[F

    .line 1733
    const/16 v0, 0x50

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->MINLEN:I

    .line 2601
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$8;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$8;-><init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->viewHandler:Landroid/os/Handler;

    .line 2838
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    .line 2839
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 2840
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzTakepic:Landroid/widget/ImageButton;

    .line 2973
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->lastTimeStamp:J

    .line 2979
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->VideoFPS:I

    .line 2981
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->Video_fps:I

    .line 2982
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->Video_bps:I

    .line 3103
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->VideoBPS:I

    .line 92
    return-void
.end method

.method private InitButtonView()V
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popv:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popv:Landroid/view/View;

    const v1, 0x7f080112

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->edtOpenLockPWD:Landroid/widget/EditText;

    .line 764
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popv:Landroid/view/View;

    const v1, 0x7f080114

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgButton1:Landroid/widget/ImageButton;

    .line 765
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popv:Landroid/view/View;

    const v1, 0x7f080115

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgButton2:Landroid/widget/ImageButton;

    .line 766
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popv:Landroid/view/View;

    const v1, 0x7f080116

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgButton3:Landroid/widget/ImageButton;

    .line 767
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popv:Landroid/view/View;

    const v1, 0x7f080118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgButton4:Landroid/widget/ImageButton;

    .line 768
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popv:Landroid/view/View;

    const v1, 0x7f080119

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgButton5:Landroid/widget/ImageButton;

    .line 769
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popv:Landroid/view/View;

    const v1, 0x7f08011a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgButton6:Landroid/widget/ImageButton;

    .line 770
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popv:Landroid/view/View;

    const v1, 0x7f08011c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgButton7:Landroid/widget/ImageButton;

    .line 771
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popv:Landroid/view/View;

    const v1, 0x7f08011d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgButton8:Landroid/widget/ImageButton;

    .line 772
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popv:Landroid/view/View;

    const v1, 0x7f08011e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgButton9:Landroid/widget/ImageButton;

    .line 773
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popv:Landroid/view/View;

    const v1, 0x7f08011f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->okButton:Landroid/widget/Button;

    .line 774
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popv:Landroid/view/View;

    const v1, 0x7f080120

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->cancelButton:Landroid/widget/Button;

    .line 775
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgButton1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 776
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgButton2:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 777
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgButton3:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 778
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgButton4:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 779
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgButton5:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 780
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgButton6:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 781
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgButton7:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 782
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgButton8:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 783
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgButton9:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 784
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->okButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 785
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 792
    :cond_0
    return-void
.end method

.method private InitImageView()V
    .locals 5

    .prologue
    .line 590
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popv:Landroid/view/View;

    const v4, 0x7f080127

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->cursorxx:Landroid/widget/ImageView;

    .line 591
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f020000

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 592
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 591
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bmpW:I

    .line 593
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 594
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 595
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 596
    .local v2, "screenW":I
    div-int/lit8 v3, v2, 0x2

    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bmpW:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->offset:I

    .line 597
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 598
    .local v1, "matrix":Landroid/graphics/Matrix;
    iget v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->offset:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 599
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->cursorxx:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 600
    return-void
.end method

.method private InitParams()V
    .locals 3

    .prologue
    .line 1369
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1370
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1371
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->textosd:Landroid/widget/TextView;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1372
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->cameraName:Landroid/widget/TextView;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1373
    return-void
.end method

.method private InitTextView()V
    .locals 3

    .prologue
    .line 577
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popv:Landroid/view/View;

    const v1, 0x7f080125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->t1:Landroid/widget/TextView;

    .line 578
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popv:Landroid/view/View;

    const v1, 0x7f080126

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->t2:Landroid/widget/TextView;

    .line 583
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->t1:Landroid/widget/TextView;

    new-instance v1, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnClickListener;-><init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 584
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->t2:Landroid/widget/TextView;

    new-instance v1, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnClickListener;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnClickListener;-><init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    return-void
.end method

.method private StartAudio()V
    .locals 1

    .prologue
    .line 1376
    monitor-enter p0

    .line 1377
    :try_start_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->AudioBuffer:Lcom/easyview/talkutils/CustomBuffer;

    invoke-virtual {v0}, Lcom/easyview/talkutils/CustomBuffer;->ClearAll()V

    .line 1378
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->audioPlayer:Lcom/easyview/talkutils/AudioPlayer;

    invoke-virtual {v0}, Lcom/easyview/talkutils/AudioPlayer;->AudioPlayStart()Z

    .line 1379
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    invoke-static {v0}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPStartAudio(Ljava/lang/String;)I

    .line 1376
    monitor-exit p0

    .line 1381
    return-void

    .line 1376
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private StartTalk()V
    .locals 1

    .prologue
    .line 1392
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->customAudioRecorder:Lcom/easyview/talkutils/CustomAudioRecorder;

    if-eqz v0, :cond_0

    .line 1393
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->customAudioRecorder:Lcom/easyview/talkutils/CustomAudioRecorder;

    invoke-virtual {v0}, Lcom/easyview/talkutils/CustomAudioRecorder;->StartRecord()V

    .line 1394
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    invoke-static {v0}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPStartTalk(Ljava/lang/String;)I

    .line 1396
    :cond_0
    return-void
.end method

.method private StopAudio()V
    .locals 1

    .prologue
    .line 1384
    monitor-enter p0

    .line 1385
    :try_start_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->audioPlayer:Lcom/easyview/talkutils/AudioPlayer;

    invoke-virtual {v0}, Lcom/easyview/talkutils/AudioPlayer;->AudioPlayStop()V

    .line 1386
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->AudioBuffer:Lcom/easyview/talkutils/CustomBuffer;

    invoke-virtual {v0}, Lcom/easyview/talkutils/CustomBuffer;->ClearAll()V

    .line 1387
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    invoke-static {v0}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPStopAudio(Ljava/lang/String;)I

    .line 1384
    monitor-exit p0

    .line 1389
    return-void

    .line 1384
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private StopTalk()V
    .locals 1

    .prologue
    .line 1403
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->customAudioRecorder:Lcom/easyview/talkutils/CustomAudioRecorder;

    if-eqz v0, :cond_0

    .line 1404
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->customAudioRecorder:Lcom/easyview/talkutils/CustomAudioRecorder;

    invoke-virtual {v0}, Lcom/easyview/talkutils/CustomAudioRecorder;->StopRecord()V

    .line 1405
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    invoke-static {v0}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPStopTalk(Ljava/lang/String;)I

    .line 1407
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->textViewVideoing:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->textView_sdsize:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Z
    .locals 1

    .prologue
    .line 1742
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isPTZPrompt:Z

    return v0
.end method

.method static synthetic access$100(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V
    .locals 0

    .prologue
    .line 116
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nBrightness:I

    return-void
.end method

.method static synthetic access$101(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nBrightness:I

    return v0
.end method

.method static synthetic access$102(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V
    .locals 0

    .prologue
    .line 117
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nContrast:I

    return-void
.end method

.method static synthetic access$103(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nContrast:I

    return v0
.end method

.method static synthetic access$11(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Z)V
    .locals 0

    .prologue
    .line 1742
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isPTZPrompt:Z

    return-void
.end method

.method static synthetic access$12(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->vidoeView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$13(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nVideoHeight:I

    return v0
.end method

.method static synthetic access$14(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nVideoWidth:I

    return v0
.end method

.method static synthetic access$15(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isResolution:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$16(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isResolution:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$17(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->txtResolution:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$18(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isFPS:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$19(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isFPS:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->sdSize:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$20(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->text_bps:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$21(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/opengl/GLSurfaceView;
    .locals 1

    .prologue
    .line 2839
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method static synthetic access$22(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Lobject/p2pwificam/clientActivity/MyRender;
    .locals 1

    .prologue
    .line 2838
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    return-object v0
.end method

.method static synthetic access$23(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)[B
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->videodata:[B

    return-object v0
.end method

.method static synthetic access$24(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->videoViewStandard:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$25(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 2840
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzTakepic:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$26(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 1743
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzTakeVideo:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$27(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->videoDataLen:I

    return v0
.end method

.method static synthetic access$28(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 892
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mBmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$29(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nTimeoutRemain:I

    return v0
.end method

.method static synthetic access$30(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Z)V
    .locals 0

    .prologue
    .line 130
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bDisplayFinished:Z

    return-void
.end method

.method static synthetic access$31(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V
    .locals 0

    .prologue
    .line 108
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nVideoWidth:I

    return-void
.end method

.method static synthetic access$32(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V
    .locals 0

    .prologue
    .line 109
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nVideoHeight:I

    return-void
.end method

.method static synthetic access$33(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isTakepic:Z

    return v0
.end method

.method static synthetic access$34(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Z)V
    .locals 0

    .prologue
    .line 164
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isTakepic:Z

    return-void
.end method

.method static synthetic access$35(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1005
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->takePicture(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$36(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nPlayCount:I

    return v0
.end method

.method static synthetic access$37(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V
    .locals 0

    .prologue
    .line 133
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nPlayCount:I

    return-void
.end method

.method static synthetic access$38(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nStreamCodecType:I

    return v0
.end method

.method static synthetic access$39(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgViewSnap:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V
    .locals 0

    .prologue
    .line 145
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nTimeoutRemain:I

    return-void
.end method

.method static synthetic access$40(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgViewRecord:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$41(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgViewOpenLock:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$42(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->st:Z

    return v0
.end method

.method static synthetic access$43(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->video_i:I

    return v0
.end method

.method static synthetic access$44(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V
    .locals 0

    .prologue
    .line 175
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->video_i:I

    return-void
.end method

.method static synthetic access$45(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;J)V
    .locals 0

    .prologue
    .line 214
    iput-wide p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->allVideoSize:J

    return-void
.end method

.method static synthetic access$46(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2758
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getDateTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$47(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$48(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isH264:Z

    return v0
.end method

.method static synthetic access$49(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->div:Ljava/io/File;

    return-void
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->timeoutHandle:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$50(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/io/File;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->div:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$51(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$52(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V
    .locals 0

    .prologue
    .line 216
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->widthV:I

    return-void
.end method

.method static synthetic access$53(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V
    .locals 0

    .prologue
    .line 217
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->heightV:I

    return-void
.end method

.method static synthetic access$54(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->widthV:I

    return v0
.end method

.method static synthetic access$55(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->heightV:I

    return v0
.end method

.method static synthetic access$56(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Z)V
    .locals 0

    .prologue
    .line 179
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isT:Z

    return-void
.end method

.method static synthetic access$57(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Ljava/util/LinkedList;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->h264JpegVideoDate:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$58(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Ljava/util/LinkedList;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->IorP:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$59(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)J
    .locals 2

    .prologue
    .line 214
    iget-wide v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->allVideoSize:J

    return-wide v0
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isExit:Z

    return v0
.end method

.method static synthetic access$60(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->delFile:Ljava/io/File;

    return-void
.end method

.method static synthetic access$61(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/io/File;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->delFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$62(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->h264JpegVideoDate:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$63(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bH:Z

    return v0
.end method

.method static synthetic access$64(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->IorP:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$65(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Z)V
    .locals 0

    .prologue
    .line 183
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bH:Z

    return-void
.end method

.method static synthetic access$66(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;[B)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->datebyte:[B

    return-void
.end method

.method static synthetic access$67(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V
    .locals 0

    .prologue
    .line 182
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->iORp:I

    return-void
.end method

.method static synthetic access$68(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)[B
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->datebyte:[B

    return-object v0
.end method

.method static synthetic access$69(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->iORp:I

    return v0
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V
    .locals 0

    .prologue
    .line 1130
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getCameraParams()V

    return-void
.end method

.method static synthetic access$70(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->MyTakeVideoHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$71(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/io/File;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->path:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$72(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Landroid/os/StatFs;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->stat:Landroid/os/StatFs;

    return-void
.end method

.method static synthetic access$73(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/os/StatFs;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->stat:Landroid/os/StatFs;

    return-object v0
.end method

.method static synthetic access$74(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;J)V
    .locals 0

    .prologue
    .line 204
    iput-wide p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->availableBlocks:J

    return-void
.end method

.method static synthetic access$75(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)J
    .locals 2

    .prologue
    .line 204
    iget-wide v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->availableBlocks:J

    return-wide v0
.end method

.method static synthetic access$76(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)J
    .locals 2

    .prologue
    .line 202
    iget-wide v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->blockSize:J

    return-wide v0
.end method

.method static synthetic access$77(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    invoke-direct {p0, p1, p2}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->formatSize(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$78(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->sdAvail:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$79(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->sdAvail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$80(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Z)V
    .locals 0

    .prologue
    .line 147
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isTakeVideo:Z

    return-void
.end method

.method static synthetic access$81(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Z)V
    .locals 0

    .prologue
    .line 180
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isstart:Z

    return-void
.end method

.method static synthetic access$82(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Z)V
    .locals 0

    .prologue
    .line 176
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->st:Z

    return-void
.end method

.method static synthetic access$83(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->layout_videoing:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$84(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->playHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$85(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->streamType:I

    return-void
.end method

.method static synthetic access$86(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->streamType:I

    return v0
.end method

.method static synthetic access$87(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$88(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->offset:I

    return v0
.end method

.method static synthetic access$89(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bmpW:I

    return v0
.end method

.method static synthetic access$9(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V
    .locals 0

    .prologue
    .line 822
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->setViewVisible()V

    return-void
.end method

.method static synthetic access$90(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->currIndex:I

    return v0
.end method

.method static synthetic access$91(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V
    .locals 0

    .prologue
    .line 233
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->currIndex:I

    return-void
.end method

.method static synthetic access$92(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->t1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$93(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->t2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$94(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->cursorxx:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$95(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 476
    invoke-direct {p0, p1, p2}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->saveBmpToSDcard(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$96(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->fragment_dialog:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$97(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1019
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->savePicToSDcard(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$98(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bgetCameraParamsThreadRuning:Z

    return v0
.end method

.method static synthetic access$99(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V
    .locals 0

    .prologue
    .line 1285
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->startingRecord()V

    return-void
.end method

.method private defaultVideoParams()V
    .locals 4

    .prologue
    const/16 v3, 0x80

    const/4 v2, 0x1

    .line 565
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nBrightness:I

    .line 566
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nContrast:I

    .line 567
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 568
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 569
    const v0, 0x7f0601a1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->showToast(I)V

    .line 570
    return-void
.end method

.method private dismissBrightAndContrastProgress()V
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2653
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2654
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    .line 2656
    :cond_0
    return-void
.end method

.method private existSdcard()Z
    .locals 2

    .prologue
    .line 1560
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1561
    const-string v1, "mounted"

    .line 1560
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1561
    if-eqz v0, :cond_0

    .line 1562
    const/4 v0, 0x1

    .line 1564
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findView()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 1419
    const v5, 0x7f080185

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->txtResolution:Landroid/widget/TextView;

    .line 1420
    const v5, 0x7f080186

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->txtFPS:Landroid/widget/TextView;

    .line 1421
    const v5, 0x7f080187

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->txtBPS:Landroid/widget/TextView;

    .line 1423
    const v5, 0x7f080192

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->textView_sdsize:Landroid/widget/TextView;

    .line 1424
    const v5, 0x7f080191

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->layout_videoing:Landroid/widget/LinearLayout;

    .line 1425
    const v5, 0x7f0801b2

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->checkBoxHS:Landroid/widget/ImageButton;

    .line 1427
    const v5, 0x7f0801cd

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgBtnRecord:Landroid/widget/ImageButton;

    .line 1428
    const v5, 0x7f0801cf

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgBtnSnap:Landroid/widget/ImageButton;

    .line 1429
    const v5, 0x7f0801d1

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgBtnOpenLock:Landroid/widget/ImageButton;

    .line 1431
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgBtnRecord:Landroid/widget/ImageButton;

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1432
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgBtnSnap:Landroid/widget/ImageButton;

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1433
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgBtnOpenLock:Landroid/widget/ImageButton;

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1437
    const v5, 0x7f0801d3

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgBtnCallStop:Landroid/widget/ImageButton;

    .line 1438
    const v5, 0x7f0801d5

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgBtnCallOff:Landroid/widget/ImageButton;

    .line 1439
    const v5, 0x7f0801d7

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgBtnCallStart:Landroid/widget/ImageButton;

    .line 1441
    const v5, 0x7f0801c7

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgViewRecord:Landroid/widget/ImageView;

    .line 1442
    const v5, 0x7f0801c8

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgViewSnap:Landroid/widget/ImageView;

    .line 1443
    const v5, 0x7f0801c9

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgViewOpenLock:Landroid/widget/ImageView;

    .line 1446
    const v5, 0x7f08007b

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->playSurface:Landroid/view/SurfaceView;

    .line 1447
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->playSurface:Landroid/view/SurfaceView;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 1448
    const v5, 0x7f080197

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->button_back:Landroid/widget/ImageButton;

    .line 1449
    const v5, 0x7f08007c

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/opengl/GLSurfaceView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 1450
    new-instance v5, Lobject/p2pwificam/clientActivity/MyRender;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-direct {v5, v6}, Lobject/p2pwificam/clientActivity/MyRender;-><init>(Landroid/opengl/GLSurfaceView;)V

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    .line 1451
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    invoke-virtual {v5, v6}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 1452
    const v5, 0x7f080198

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->buttonPreset:Landroid/widget/Button;

    .line 1457
    const v5, 0x7f080193

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->textViewVideoing:Landroid/widget/TextView;

    .line 1458
    const v5, 0x7f0801bf

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->led_open:Landroid/widget/ImageButton;

    .line 1459
    const v5, 0x7f0801c0

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->led_close:Landroid/widget/ImageButton;

    .line 1460
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->led_close:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1461
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->led_open:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1466
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->buttonPreset:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1467
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->checkBoxHS:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1468
    const v5, 0x7f0800aa

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->vidoeView:Landroid/widget/ImageView;

    .line 1469
    const v5, 0x7f0800ab

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->videoViewStandard:Landroid/widget/ImageView;

    .line 1470
    const v5, 0x7f08007d

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->progressView:Landroid/view/View;

    .line 1471
    const v5, 0x7f08018f

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->textosd:Landroid/widget/TextView;

    .line 1472
    const v5, 0x7f0801c5

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->text_bps:Landroid/widget/TextView;

    .line 1473
    const v5, 0x7f080190

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->textTimeStamp:Landroid/widget/TextView;

    .line 1475
    const v5, 0x7f080196

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->cameraName:Landroid/widget/TextView;

    .line 1478
    const v5, 0x7f08007f

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->osdView:Landroid/view/View;

    .line 1480
    const v5, 0x7f080199

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzHoriMirror2:Landroid/widget/ImageButton;

    .line 1481
    const v5, 0x7f08019a

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzVertMirror2:Landroid/widget/ImageButton;

    .line 1482
    const v5, 0x7f08019b

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzHoriTour2:Landroid/widget/ImageButton;

    .line 1483
    const v5, 0x7f08019c

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzVertTour2:Landroid/widget/ImageButton;

    .line 1485
    const v5, 0x7f0801b3

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzAudio:Landroid/widget/Button;

    .line 1486
    const v5, 0x7f0801d8

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzMicrophone:Landroid/widget/ImageButton;

    .line 1487
    const v5, 0x7f0801b8

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzTakepic:Landroid/widget/ImageButton;

    .line 1488
    const v5, 0x7f0801b9

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzTakeVideo:Landroid/widget/ImageButton;

    .line 1489
    const v5, 0x7f0801bb

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 1490
    .local v2, "ptzBrightness":Landroid/widget/ImageButton;
    const v5, 0x7f0801bc

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 1491
    .local v3, "ptzContrast":Landroid/widget/ImageButton;
    const v5, 0x7f0801ba

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    .line 1492
    const v5, 0x7f0801be

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzPlayMode:Landroid/widget/ImageButton;

    .line 1493
    const v5, 0x7f0801b0

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzOtherSetView:Landroid/view/View;

    .line 1494
    const v5, 0x7f0801af

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzOtherSetAnimView:Landroid/view/View;

    .line 1495
    const v5, 0x7f0801b1

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzPlatform:Landroid/widget/LinearLayout;

    .line 1496
    const v5, 0x7f0801bd

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 1497
    .local v4, "ptzDefaultSet":Landroid/widget/ImageButton;
    const v5, 0x7f080184

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->layout_show_Info:Landroid/widget/LinearLayout;

    .line 1499
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzHoriMirror2:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1500
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzVertMirror2:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1501
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzHoriTour2:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1502
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzVertTour2:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1505
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgBtnRecord:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1506
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgBtnSnap:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1507
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgBtnOpenLock:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1508
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgBtnCallStop:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1509
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgBtnCallOff:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1510
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgBtnCallStart:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1513
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzAudio:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1514
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzMicrophone:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1515
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzTakepic:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1516
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzTakeVideo:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1517
    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1518
    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1519
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1520
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzPlayMode:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1521
    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1522
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->button_back:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1523
    const v5, 0x7f080195

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->topbg:Landroid/widget/RelativeLayout;

    .line 1524
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1525
    const v6, 0x7f02015e

    .line 1524
    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1526
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1527
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 1528
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 1530
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->topbg:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1531
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzOtherSetAnimView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1533
    return-void
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 406
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCameraParams()V
    .locals 3

    .prologue
    .line 1132
    const-string v0, "playactivitytest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "strDID  === "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    .line 1136
    const/4 v1, 0x2

    .line 1135
    invoke-static {v0, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPGetSystemParams(Ljava/lang/String;I)I

    .line 1137
    return-void
.end method

.method private getDataFromOther()V
    .locals 4

    .prologue
    .line 1351
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1352
    .local v0, "in":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1353
    const-string v1, "stream_type"

    .line 1354
    const/4 v2, 0x3

    .line 1353
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->streamType:I

    .line 1355
    const-string v1, "camera_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strName:Ljava/lang/String;

    .line 1356
    const-string v1, "cameraid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    .line 1357
    const-string v1, "camera_type"

    .line 1358
    const/4 v2, 0x1

    .line 1357
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nP2PMode:I

    .line 1360
    const-string v1, "play_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->playType:I

    .line 1363
    const-string v1, "PlayTestActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "strDID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    const-string v1, "strDIDtag"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "strName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "strDID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "streamType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->streamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "nP2PMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nP2PMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    :cond_0
    return-void
.end method

.method private getDateTime()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2759
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2760
    .local v0, "d":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2761
    .local v1, "f":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 2762
    .local v2, "strDate":Ljava/lang/String;
    const-string v3, "tag"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "record strDate:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "LOD_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getStrDate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1078
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1079
    .local v0, "d":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd_HH_mm"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1080
    .local v1, "f":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1081
    .local v2, "strDate":Ljava/lang/String;
    return-object v2
.end method

.method private midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "point"    # Landroid/graphics/PointF;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 1720
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float v0, v2, v3

    .line 1721
    .local v0, "x":F
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float v1, v2, v3

    .line 1722
    .local v1, "y":F
    div-float v2, v0, v4

    div-float v3, v1, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 1723
    return-void
.end method

.method private releaseTalk()V
    .locals 1

    .prologue
    .line 1399
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->customAudioRecorder:Lcom/easyview/talkutils/CustomAudioRecorder;

    invoke-virtual {v0}, Lcom/easyview/talkutils/CustomAudioRecorder;->releaseRecord()V

    .line 1400
    return-void
.end method

.method private returnLastBmp2Home()V
    .locals 1

    .prologue
    .line 446
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$9;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$9;-><init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V

    .line 473
    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$9;->start()V

    .line 474
    return-void
.end method

.method private saveBmpToSDcard(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 477
    const/4 v4, 0x0

    .line 478
    .local v4, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 479
    const-string v8, "IPcamer/picid"

    .line 478
    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 480
    .local v1, "div":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 481
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 484
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 485
    .local v3, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x50

    invoke-virtual {p2, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 487
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 488
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    invoke-virtual {v7, p1}, Lobject/p2pipcam/utils/DataBaseHelper;->queryFirstpic(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 489
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-gtz v7, :cond_1

    .line 490
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 491
    .local v6, "path":Ljava/lang/String;
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    invoke-virtual {v7, p1, v6}, Lobject/p2pipcam/utils/DataBaseHelper;->addFirstpic(Ljava/lang/String;Ljava/lang/String;)Z

    .line 493
    .end local v6    # "path":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 494
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 500
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 497
    :catch_0
    move-exception v2

    .line 498
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 497
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method private declared-synchronized savePicToSDcard(Landroid/graphics/Bitmap;)V
    .locals 12
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1020
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getStrDate()Ljava/lang/String;

    move-result-object v7

    .line 1021
    .local v7, "strDate":Ljava/lang/String;
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    .line 1022
    const-string v10, "picture"

    .line 1021
    invoke-virtual {v8, v9, v7, v10}, Lobject/p2pipcam/utils/DataBaseHelper;->queryVideoOrPictureByDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1023
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    add-int/lit8 v6, v8, 0x1

    .line 1024
    .local v6, "seri":I
    const/4 v4, 0x0

    .line 1026
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    .line 1027
    const-string v9, "IPcamer/pic"

    .line 1026
    invoke-direct {v1, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1028
    .local v1, "div":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1029
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1031
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1032
    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1031
    invoke-direct {v3, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1033
    .local v3, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1034
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {p1, v8, v9, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1035
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 1036
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 1037
    const-string v11, "picture"

    .line 1036
    invoke-virtual {v8, v9, v10, v11, v7}, Lobject/p2pipcam/utils/DataBaseHelper;->createVideoOrPic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 1038
    new-instance v8, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$14;

    invoke-direct {v8, p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$14;-><init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1064
    :cond_1
    const/4 v8, 0x0

    :try_start_3
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isPictSave:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1065
    if-eqz v5, :cond_4

    .line 1067
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1071
    :goto_0
    const/4 v4, 0x0

    .line 1075
    .end local v1    # "div":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 1050
    :catch_0
    move-exception v2

    .line 1051
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    new-instance v8, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$15;

    invoke-direct {v8, p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$15;-><init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1061
    const-string v8, "tag"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "exception:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1064
    const/4 v8, 0x0

    :try_start_6
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isPictSave:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1065
    if-eqz v4, :cond_2

    .line 1067
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1071
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    const/4 v4, 0x0

    goto :goto_1

    .line 1068
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1069
    .local v2, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 1020
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "seri":I
    .end local v7    # "strDate":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1063
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "seri":I
    .restart local v7    # "strDate":Ljava/lang/String;
    :catchall_1
    move-exception v8

    .line 1064
    :goto_4
    const/4 v9, 0x0

    :try_start_9
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isPictSave:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1065
    if-eqz v4, :cond_3

    .line 1067
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1071
    :goto_5
    const/4 v4, 0x0

    .line 1073
    :cond_3
    :try_start_b
    throw v8

    .line 1068
    :catch_2
    move-exception v2

    .line 1069
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1068
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "div":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    .line 1069
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_0

    .line 1063
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 1050
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :cond_4
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private setBrightOrContrast(I)V
    .locals 8
    .param p1, "type"    # I

    .prologue
    .line 2767
    const-string v3, "PlayTestActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "type:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  bInitCameraParam:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2768
    iget-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bInitCameraParam:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2767
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    iget-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bInitCameraParam:Z

    if-nez v3, :cond_0

    .line 2821
    :goto_0
    return-void

    .line 2772
    :cond_0
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 2773
    .local v2, "width":I
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 2774
    const v4, 0x7f030012

    const/4 v5, 0x0

    .line 2773
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2775
    .local v0, "layout":Landroid/widget/LinearLayout;
    const v3, 0x7f080076

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 2776
    .local v1, "seekBar":Landroid/widget/SeekBar;
    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 2777
    packed-switch p1, :pswitch_data_0

    .line 2787
    :goto_1
    new-instance v3, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$18;

    invoke-direct {v3, p0, p1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$18;-><init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 2818
    new-instance v3, Landroid/widget/PopupWindow;

    div-int/lit8 v4, v2, 0x2

    const/16 v5, 0x3c

    invoke-direct {v3, v0, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    .line 2819
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    const v4, 0x7f08016c

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2820
    const/16 v5, 0x30

    const/4 v6, 0x0

    const/16 v7, 0x50

    .line 2819
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 2779
    :pswitch_0
    iget v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nBrightness:I

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 2782
    :pswitch_1
    iget v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nContrast:I

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 2777
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setViewVisible()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 823
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bProgress:Z

    if-eqz v0, :cond_0

    .line 824
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bProgress:Z

    .line 825
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->progressView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 826
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->osdView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 832
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getCameraParams()V

    .line 834
    :cond_0
    return-void
.end method

.method private showBottom()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, -0x1

    .line 2659
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2660
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2663
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2664
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzPlatform:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2666
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isUpDownPressed:Z

    if-eqz v1, :cond_1

    .line 2667
    const/4 v1, 0x0

    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isUpDownPressed:Z

    .line 2668
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzOtherSetAnimView:Landroid/view/View;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->dismissAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2669
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzOtherSetAnimView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2677
    :goto_0
    return-void

    .line 2671
    :cond_1
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->showResolution()V

    .line 2672
    const/4 v1, 0x1

    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isUpDownPressed:Z

    .line 2675
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzOtherSetAnimView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showResolution()V
    .locals 3

    .prologue
    .line 2723
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nStreamCodecType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2724
    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "jpeg resolution:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nResolution:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nResolution:I

    packed-switch v0, :pswitch_data_0

    .line 2756
    :goto_0
    return-void

    .line 2728
    :pswitch_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    const v1, 0x7f02010a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 2731
    :pswitch_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    const v1, 0x7f020109

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 2736
    :cond_0
    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "h264 resolution:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nResolution:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nResolution:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 2740
    :pswitch_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 2743
    :pswitch_3
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    const v1, 0x7f020089

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 2746
    :pswitch_4
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    const v1, 0x7f0200ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 2749
    :pswitch_5
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    const v1, 0x7f0200cb

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 2752
    :pswitch_6
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    const v1, 0x7f0200cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 2726
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2738
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private showResolutionPopWindow()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f08016c

    const/16 v10, 0x11

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 2680
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2720
    :goto_0
    return-void

    .line 2683
    :cond_0
    iget v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nStreamCodecType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 2685
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 2686
    const v7, 0x7f03004a

    invoke-virtual {v6, v7, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2685
    check-cast v0, Landroid/widget/LinearLayout;

    .line 2688
    .local v0, "layout":Landroid/widget/LinearLayout;
    const v6, 0x7f0801fa

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2687
    check-cast v4, Landroid/widget/TextView;

    .line 2690
    .local v4, "qvga":Landroid/widget/TextView;
    const v6, 0x7f0801fb

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 2689
    check-cast v5, Landroid/widget/TextView;

    .line 2691
    .local v5, "vga":Landroid/widget/TextView;
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2692
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2693
    new-instance v6, Landroid/widget/PopupWindow;

    const/16 v7, 0x64

    .line 2694
    invoke-direct {v6, v0, v7, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 2693
    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    .line 2695
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v11}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7, v10, v8, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 2699
    .end local v0    # "layout":Landroid/widget/LinearLayout;
    .end local v4    # "qvga":Landroid/widget/TextView;
    .end local v5    # "vga":Landroid/widget/TextView;
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 2700
    const v7, 0x7f030049

    invoke-virtual {v6, v7, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2699
    check-cast v0, Landroid/widget/LinearLayout;

    .line 2702
    .restart local v0    # "layout":Landroid/widget/LinearLayout;
    const v6, 0x7f0801f5

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2701
    check-cast v4, Landroid/widget/TextView;

    .line 2704
    .restart local v4    # "qvga":Landroid/widget/TextView;
    const v6, 0x7f0801f6

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 2703
    check-cast v5, Landroid/widget/TextView;

    .line 2706
    .restart local v5    # "vga":Landroid/widget/TextView;
    const v6, 0x7f0801f7

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2705
    check-cast v3, Landroid/widget/TextView;

    .line 2707
    .local v3, "p720":Landroid/widget/TextView;
    const v6, 0x7f0801f8

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2708
    .local v1, "low":Landroid/widget/TextView;
    const v6, 0x7f0801f9

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2709
    .local v2, "lowest":Landroid/widget/TextView;
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2710
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2711
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2712
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2713
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2714
    new-instance v6, Landroid/widget/PopupWindow;

    const/16 v7, 0x96

    .line 2715
    invoke-direct {v6, v0, v7, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 2714
    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    .line 2716
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v11}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7, v10, v8, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0
.end method

.method private showTop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 552
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isShowtoping:Z

    if-eqz v0, :cond_0

    .line 553
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isShowtoping:Z

    .line 554
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->topbg:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->topbg:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->dismissTopAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 562
    :goto_0
    return-void

    .line 557
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isShowtoping:Z

    .line 558
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->topbg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 560
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->topbg:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->showTopAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private spacing(Landroid/view/MotionEvent;)F
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1711
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 1712
    .local v0, "x":F
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 1713
    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    double-to-float v2, v2

    .line 1716
    .end local v0    # "x":F
    .end local v1    # "y":F
    :goto_0
    return v2

    .line 1714
    :catch_0
    move-exception v2

    .line 1716
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private startTimeout()V
    .locals 4

    .prologue
    .line 815
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bTimeoutStarted:Z

    if-nez v1, :cond_0

    .line 816
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 817
    .local v0, "msgMessage":Landroid/os/Message;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->timeoutHandle:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 818
    const/4 v1, 0x1

    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bTimeoutStarted:Z

    .line 820
    .end local v0    # "msgMessage":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private startingRecord()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1288
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->path:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->stat:Landroid/os/StatFs;

    .line 1289
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->stat:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->availableBlocks:J

    .line 1290
    iget-wide v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->availableBlocks:J

    iget-wide v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->blockSize:J

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->formatSize(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->sdAvail:Ljava/lang/String;

    .line 1291
    iget-wide v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->availableBlocks:J

    iget-wide v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->blockSize:J

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    const-wide/16 v2, 0x32

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1292
    const v0, 0x7f0601a9

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->showToastLong(I)V

    .line 1319
    :goto_0
    return-void

    .line 1295
    :cond_0
    sput v4, Lobject/p2pipcam/system/SystemValue;->checkSDStatu:I

    .line 1296
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->allVideoSize:J

    .line 1297
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isTakeVideo:Z

    .line 1298
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isstart:Z

    .line 1300
    iput v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->video_i:I

    .line 1301
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->st:Z

    .line 1304
    const-string v0, "ViewRecord"

    const-string v1, "1111111111111111111111111111111111111111111111111111"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->viewHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1310
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isT:Z

    .line 1311
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->h264JpegVideoDate:Ljava/util/LinkedList;

    .line 1312
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->IorP:Ljava/util/LinkedList;

    .line 1314
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;-><init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->start()V

    goto :goto_0
.end method

.method private stopRecord()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1324
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isTakeVideo:Z

    if-eqz v1, :cond_1

    .line 1325
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->CloseAvi()I

    .line 1326
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isTakeVideo:Z

    .line 1327
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isstart:Z

    .line 1330
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->viewHandler:Landroid/os/Handler;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1331
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->st:Z

    .line 1332
    iget-wide v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->allVideoSize:J

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    const-wide/16 v3, 0x80

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 1333
    new-instance v1, Ljava/io/File;

    .line 1334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1335
    const-string v3, "/IPcamer/video/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".avi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1334
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1333
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->delFile:Ljava/io/File;

    .line 1336
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->delFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 1337
    .local v0, "b":Z
    const-string v1, "tagdel"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "if delect===="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    .end local v0    # "b":Z
    :cond_0
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isT:Z

    .line 1345
    :cond_1
    return-void
.end method

.method private takePicture(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1006
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isPictSave:Z

    if-nez v0, :cond_0

    .line 1007
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isPictSave:Z

    .line 1008
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$13;

    invoke-direct {v0, p0, p1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$13;-><init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;Landroid/graphics/Bitmap;)V

    .line 1012
    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$13;->start()V

    .line 1017
    :cond_0
    return-void
.end method


# virtual methods
.method public AudioRecordData([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    .line 1803
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bAudioRecordStart:Z

    if-eqz v0, :cond_0

    if-lez p2, :cond_0

    .line 1804
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPTalkAudioData(Ljava/lang/String;[BI)I

    .line 1806
    :cond_0
    return-void
.end method

.method public callBaceVideoData([BIIII)V
    .locals 9
    .param p1, "videobuf"    # [B
    .param p2, "h264Data"    # I
    .param p3, "len"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2987
    const-string v3, "PlayTestActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Call VideoData...h264Data: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " len: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2988
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " videobuf len: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "height;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2987
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2989
    iget-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bDisplayFinished:Z

    if-nez v3, :cond_0

    .line 2990
    const-string v3, "PlayTestActivity"

    const-string v4, "return bDisplayFinished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    :goto_0
    return-void

    .line 2995
    :cond_0
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bDisplayFinished:Z

    .line 2997
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->videodata:[B

    .line 2998
    iput p3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->videoDataLen:I

    .line 3000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->lastTimeStamp:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 3002
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->lastTimeStamp:J

    .line 3003
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isFPS:Ljava/lang/Boolean;

    .line 3006
    iget v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->Video_bps:I

    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->VideoBPS:I

    .line 3007
    iget v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->Video_fps:I

    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->VideoFPS:I

    .line 3008
    iput v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->Video_fps:I

    iput v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->Video_bps:I

    .line 3011
    :cond_1
    iget v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->Video_fps:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->Video_fps:I

    .line 3013
    iget v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->Video_bps:I

    add-int/2addr v3, p3

    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->Video_bps:I

    .line 3018
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 3019
    .local v1, "msg":Landroid/os/Message;
    if-ne p2, v7, :cond_4

    .line 3020
    iput p4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nVideoWidth:I

    .line 3021
    iput p5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nVideoHeight:I

    .line 3023
    iget-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isTakepic:Z

    if-eqz v3, :cond_2

    .line 3024
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isTakepic:Z

    .line 3025
    mul-int v3, p4, p5

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [B

    .line 3026
    .local v2, "rgb":[B
    invoke-static {p1, v2, p4, p5}, Lobject/p2pipcam/nativecaller/NativeCaller;->YUV4202RGB565([B[BII)I

    .line 3027
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3029
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p5, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3028
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mBmp:Landroid/graphics/Bitmap;

    .line 3030
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 3031
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mBmp:Landroid/graphics/Bitmap;

    invoke-direct {p0, v3}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->takePicture(Landroid/graphics/Bitmap;)V

    .line 3033
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "rgb":[B
    :cond_2
    iput-boolean v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isH264:Z

    .line 3034
    iput v7, v1, Landroid/os/Message;->what:I

    .line 3043
    :cond_3
    :goto_1
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 3037
    :cond_4
    const/4 v3, 0x2

    iput v3, v1, Landroid/os/Message;->what:I

    .line 3038
    iget-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isstart:Z

    if-eqz v3, :cond_3

    .line 3039
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->h264JpegVideoDate:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public callBackAudioData([BI)V
    .locals 3
    .param p1, "pcm"    # [B
    .param p2, "len"    # I

    .prologue
    .line 3087
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->audioPlayer:Lcom/easyview/talkutils/AudioPlayer;

    invoke-virtual {v2}, Lcom/easyview/talkutils/AudioPlayer;->isAudioPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3097
    :goto_0
    return-void

    .line 3090
    :cond_0
    new-instance v1, Lcom/easyview/talkutils/CustomBufferHead;

    invoke-direct {v1}, Lcom/easyview/talkutils/CustomBufferHead;-><init>()V

    .line 3091
    .local v1, "head":Lcom/easyview/talkutils/CustomBufferHead;
    new-instance v0, Lcom/easyview/talkutils/CustomBufferData;

    invoke-direct {v0}, Lcom/easyview/talkutils/CustomBufferData;-><init>()V

    .line 3092
    .local v0, "data":Lcom/easyview/talkutils/CustomBufferData;
    iput p2, v1, Lcom/easyview/talkutils/CustomBufferHead;->length:I

    .line 3093
    const v2, 0xff00ff

    iput v2, v1, Lcom/easyview/talkutils/CustomBufferHead;->startcode:I

    .line 3094
    iput-object v1, v0, Lcom/easyview/talkutils/CustomBufferData;->head:Lcom/easyview/talkutils/CustomBufferHead;

    .line 3095
    iput-object p1, v0, Lcom/easyview/talkutils/CustomBufferData;->data:[B

    .line 3096
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->AudioBuffer:Lcom/easyview/talkutils/CustomBuffer;

    invoke-virtual {v2, v0}, Lcom/easyview/talkutils/CustomBuffer;->addData(Lcom/easyview/talkutils/CustomBufferData;)Z

    goto :goto_0
.end method

.method public callBackCameraParamNotify(Ljava/lang/String;IIIIII)V
    .locals 3
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "resolution"    # I
    .param p3, "brightness"    # I
    .param p4, "contrast"    # I
    .param p5, "hue"    # I
    .param p6, "saturation"    # I
    .param p7, "flip"    # I

    .prologue
    .line 2889
    const-string v0, "PlayTestActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CameraParamNotify...did:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " brightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2890
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resolution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contrast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2891
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " saturation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2892
    const-string v2, " flip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2889
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "contrast:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " brightness:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    iput p3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nBrightness:I

    .line 2895
    iput p4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nContrast:I

    .line 2896
    iput p2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nResolution:I

    .line 2897
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nResolution:I

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->setResolution(I)V

    .line 2899
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bInitCameraParam:Z

    .line 2972
    return-void
.end method

.method public callBackH264Data([BII)V
    .locals 4
    .param p1, "h264"    # [B
    .param p2, "type"    # I
    .param p3, "size"    # I

    .prologue
    const/4 v3, 0x1

    .line 3110
    :try_start_0
    iput p2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isTypeI:I

    .line 3111
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isstart:Z

    if-eqz v0, :cond_1

    .line 3112
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isT:Z

    if-nez v0, :cond_0

    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isTypeI:I

    if-ne v0, v3, :cond_1

    .line 3113
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->h264JpegVideoDate:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3114
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->IorP:Ljava/util/LinkedList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3115
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isTypeI=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isTypeI:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isTypeI:I

    if-ne v0, v3, :cond_1

    .line 3117
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isT:Z

    if-nez v0, :cond_1

    .line 3118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isT:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3127
    :cond_1
    :goto_0
    return-void

    .line 3123
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public callBackMessageNotify(Ljava/lang/String;II)V
    .locals 5
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "msgType"    # I
    .param p3, "param"    # I

    .prologue
    .line 3052
    const-string v2, "tag123"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MessageNotify did: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msgType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3053
    const-string v4, " param: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3052
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    iget-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bManualExit:Z

    if-eqz v2, :cond_1

    .line 3078
    :cond_0
    :goto_0
    return-void

    .line 3057
    :cond_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 3058
    iput p3, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nStreamCodecType:I

    .line 3059
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 3060
    .local v1, "msgMessage":Landroid/os/Message;
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->msgStreamCodecHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 3064
    .end local v1    # "msgMessage":Landroid/os/Message;
    :cond_2
    if-nez p2, :cond_0

    .line 3068
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3072
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3073
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3075
    const-string v2, "finshh"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MessageNotify did: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msgType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3076
    const-string v4, " param: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3075
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->msgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected displayResolution()V
    .locals 1

    .prologue
    .line 1090
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nResolution:I

    packed-switch v0, :pswitch_data_0

    .line 1106
    :pswitch_0
    return-void

    .line 1090
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 1691
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1692
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1693
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected getScale()F
    .locals 1

    .prologue
    .line 1701
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 1697
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "whichValue"    # I

    .prologue
    .line 1705
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1706
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method public initExitPopupWindow3()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 722
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 723
    .local v0, "li":Landroid/view/LayoutInflater;
    const v1, 0x7f030029

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popv:Landroid/view/View;

    .line 727
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->InitButtonView()V

    .line 728
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popv:Landroid/view/View;

    .line 730
    invoke-direct {v1, v2, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 728
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->fragment_dialog:Landroid/widget/PopupWindow;

    .line 731
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->fragment_dialog:Landroid/widget/PopupWindow;

    const v2, 0x7f07000c

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 732
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->fragment_dialog:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 733
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->fragment_dialog:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 734
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->fragment_dialog:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 735
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->fragment_dialog:Landroid/widget/PopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 737
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->fragment_dialog:Landroid/widget/PopupWindow;

    .line 738
    new-instance v2, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$11;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$11;-><init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 746
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->fragment_dialog:Landroid/widget/PopupWindow;

    new-instance v2, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$12;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$12;-><init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 756
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v13, 0x0

    const/16 v11, 0x8

    const v12, 0x7f02010c

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1856
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 2598
    :cond_0
    :goto_0
    return-void

    .line 1858
    :sswitch_0
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/16 v10, 0xe

    invoke-static {v8, v10, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    goto :goto_0

    .line 1861
    :sswitch_1
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/16 v10, 0xe

    invoke-static {v9, v10, v8}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    goto :goto_0

    .line 1864
    :sswitch_2
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    iget-object v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->cameraName:Landroid/widget/TextView;

    const/16 v11, 0x11

    invoke-virtual {v9, v10, v11, v8, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 1867
    :sswitch_3
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->stopMusicService()V

    .line 1868
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->quit()V

    goto :goto_0

    .line 1872
    :sswitch_4
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->stopMusicService()V

    .line 1873
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    if-ne v10, v9, :cond_1

    .line 1874
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->layout_show_Info:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1876
    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->setRequestedOrientation(I)V

    .line 1877
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->checkBoxHS:Landroid/widget/ImageButton;

    const v9, 0x7f020123

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1878
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->checkBoxHS:Landroid/widget/ImageButton;

    .line 1879
    invoke-virtual {v8, v12}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 1880
    :cond_1
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v8, v10, :cond_0

    .line 1882
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->layout_show_Info:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1883
    invoke-virtual {p0, v9}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->setRequestedOrientation(I)V

    .line 1884
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->checkBoxHS:Landroid/widget/ImageButton;

    const v9, 0x7f020122

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1885
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->checkBoxHS:Landroid/widget/ImageButton;

    .line 1886
    invoke-virtual {v8, v12}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 1909
    :sswitch_5
    iget-boolean v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->m_bLeftRightMirror:Z

    if-eqz v10, :cond_3

    .line 1910
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzHoriMirror2:Landroid/widget/ImageButton;

    const v11, 0xffffff

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 1911
    iget-boolean v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->m_bUpDownMirror:Z

    if-eqz v10, :cond_2

    .line 1912
    const/4 v7, 0x1

    .line 1925
    .local v7, "value1":I
    :goto_1
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/4 v11, 0x5

    invoke-static {v10, v11, v7}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 1926
    iget-boolean v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->m_bLeftRightMirror:Z

    if-eqz v10, :cond_5

    :goto_2
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->m_bLeftRightMirror:Z

    goto/16 :goto_0

    .line 1914
    .end local v7    # "value1":I
    :cond_2
    const/4 v7, 0x0

    .line 1916
    .restart local v7    # "value1":I
    goto :goto_1

    .line 1917
    .end local v7    # "value1":I
    :cond_3
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzHoriMirror2:Landroid/widget/ImageButton;

    const v11, -0xffbb56

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 1918
    iget-boolean v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->m_bUpDownMirror:Z

    if-eqz v10, :cond_4

    .line 1919
    const/4 v7, 0x3

    .line 1920
    .restart local v7    # "value1":I
    goto :goto_1

    .line 1921
    .end local v7    # "value1":I
    :cond_4
    const/4 v7, 0x2

    .restart local v7    # "value1":I
    goto :goto_1

    :cond_5
    move v8, v9

    .line 1926
    goto :goto_2

    .line 1929
    .end local v7    # "value1":I
    :sswitch_6
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->stopMusicService()V

    .line 1931
    iget-boolean v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->m_bUpDownMirror:Z

    if-eqz v10, :cond_7

    .line 1932
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzVertMirror2:Landroid/widget/ImageButton;

    const v11, 0xffffff

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 1933
    iget-boolean v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->m_bLeftRightMirror:Z

    if-eqz v10, :cond_6

    .line 1934
    const/4 v6, 0x2

    .line 1946
    .local v6, "value":I
    :goto_3
    const-string v10, "tttt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/4 v11, 0x5

    invoke-static {v10, v11, v6}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 1948
    iget-boolean v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->m_bUpDownMirror:Z

    if-eqz v10, :cond_9

    :goto_4
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->m_bUpDownMirror:Z

    goto/16 :goto_0

    .line 1936
    .end local v6    # "value":I
    :cond_6
    const/4 v6, 0x0

    .line 1938
    .restart local v6    # "value":I
    goto :goto_3

    .line 1939
    .end local v6    # "value":I
    :cond_7
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzVertMirror2:Landroid/widget/ImageButton;

    const v11, -0xffbb56

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 1940
    iget-boolean v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->m_bLeftRightMirror:Z

    if-eqz v10, :cond_8

    .line 1941
    const/4 v6, 0x3

    .line 1942
    .restart local v6    # "value":I
    goto :goto_3

    .line 1943
    .end local v6    # "value":I
    :cond_8
    const/4 v6, 0x1

    .restart local v6    # "value":I
    goto :goto_3

    :cond_9
    move v8, v9

    .line 1948
    goto :goto_4

    .line 1952
    .end local v6    # "value":I
    :sswitch_7
    iget-boolean v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isLeftRight:Z

    if-eqz v10, :cond_a

    .line 1953
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzHoriTour2:Landroid/widget/ImageButton;

    const/16 v10, 0x44aa

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 1954
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isLeftRight:Z

    .line 1955
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    .line 1956
    const/16 v9, 0x1d

    .line 1955
    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 1958
    :cond_a
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzHoriTour2:Landroid/widget/ImageButton;

    const v10, -0xffbb56

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 1959
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isLeftRight:Z

    .line 1960
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    .line 1961
    const/16 v9, 0x1c

    .line 1960
    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 1965
    :sswitch_8
    iget-boolean v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isUpDown:Z

    if-eqz v10, :cond_b

    .line 1966
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzVertTour2:Landroid/widget/ImageButton;

    const/16 v10, 0x44aa

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 1967
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isUpDown:Z

    .line 1968
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    .line 1969
    const/16 v9, 0x1b

    .line 1968
    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 1971
    :cond_b
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzVertTour2:Landroid/widget/ImageButton;

    const v10, -0xffbb56

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 1972
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isUpDown:Z

    .line 1973
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    .line 1974
    const/16 v9, 0x1a

    .line 1973
    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 1979
    :sswitch_9
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->dismissBrightAndContrastProgress()V

    .line 1980
    iget v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->tagone:I

    if-nez v10, :cond_e

    .line 1981
    iget v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->talkAudio:I

    if-ne v10, v9, :cond_d

    .line 1982
    iget-boolean v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bAudioRecordStart:Z

    if-eqz v10, :cond_c

    .line 1983
    const-string v10, "tag"

    const-string v11, "\u505c\u6b62\u8bf4\u8bdd"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bAudioRecordStart:Z

    .line 1986
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzMicrophone:Landroid/widget/ImageButton;

    .line 1987
    const v10, 0x7f020103

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1988
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzMicrophone:Landroid/widget/ImageButton;

    .line 1989
    invoke-virtual {v8, v12}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1990
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->StopTalk()V

    .line 2003
    :cond_c
    :goto_5
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzAudio:Landroid/widget/Button;

    const-string v10, "OFF"

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2004
    iput v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->tagone:I

    goto/16 :goto_0

    .line 1992
    :cond_d
    iget v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->talkAudio:I

    if-nez v10, :cond_c

    .line 1993
    iget-boolean v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bAudioStart:Z

    if-eqz v10, :cond_c

    .line 1994
    const-string v10, "tag"

    const-string v11, "\u6ca1\u6709\u58f0\u97f3"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bAudioStart:Z

    .line 1997
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzMicrophone:Landroid/widget/ImageButton;

    .line 1998
    const v10, 0x7f0200fa

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1999
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzAudio:Landroid/widget/Button;

    invoke-virtual {v8, v12}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 2000
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->StopAudio()V

    goto :goto_5

    .line 2005
    :cond_e
    iget v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->tagone:I

    if-ne v10, v9, :cond_0

    .line 2007
    iget v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->talkAudio:I

    if-ne v10, v9, :cond_10

    .line 2008
    iget-boolean v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bAudioRecordStart:Z

    if-nez v10, :cond_f

    .line 2009
    const-string v10, "tag"

    const-string v11, "\u5f00\u59cb\u8bf4\u8bdd"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bAudioRecordStart:Z

    .line 2012
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzMicrophone:Landroid/widget/ImageButton;

    .line 2013
    const v10, 0x7f020104

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2014
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzMicrophone:Landroid/widget/ImageButton;

    .line 2015
    invoke-virtual {v9, v12}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2016
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->StartTalk()V

    .line 2028
    :cond_f
    :goto_6
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzAudio:Landroid/widget/Button;

    const-string v10, "ON"

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2029
    iput v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->tagone:I

    goto/16 :goto_0

    .line 2018
    :cond_10
    iget v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->talkAudio:I

    if-nez v10, :cond_f

    .line 2019
    iget-boolean v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bAudioStart:Z

    if-nez v10, :cond_f

    .line 2020
    const-string v10, "tag"

    const-string v11, "\u6709\u58f0\u97f3"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bAudioStart:Z

    .line 2023
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzMicrophone:Landroid/widget/ImageButton;

    const v10, 0x7f0200fb

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2024
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzAudio:Landroid/widget/Button;

    invoke-virtual {v9, v12}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 2025
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->StartAudio()V

    goto :goto_6

    .line 2035
    :sswitch_a
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->dismissBrightAndContrastProgress()V

    .line 2036
    iget v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->tagone:I

    if-nez v10, :cond_12

    .line 2037
    iget v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->talkAudio:I

    if-nez v10, :cond_11

    .line 2038
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->StopAudio()V

    .line 2039
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzMicrophone:Landroid/widget/ImageButton;

    .line 2040
    const v10, 0x7f020104

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2041
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzMicrophone:Landroid/widget/ImageButton;

    .line 2042
    invoke-virtual {v8, v12}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2043
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->StartTalk()V

    .line 2044
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bAudioRecordStart:Z

    .line 2045
    iput v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->talkAudio:I

    goto/16 :goto_0

    .line 2046
    :cond_11
    iget v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->talkAudio:I

    if-ne v10, v9, :cond_0

    .line 2047
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->StopTalk()V

    .line 2048
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzMicrophone:Landroid/widget/ImageButton;

    const v11, 0x7f0200fb

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2049
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzMicrophone:Landroid/widget/ImageButton;

    .line 2050
    invoke-virtual {v10, v12}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2051
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->StartAudio()V

    .line 2052
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bAudioStart:Z

    .line 2053
    iput v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->talkAudio:I

    goto/16 :goto_0

    .line 2056
    :cond_12
    const v8, 0x7f06001f

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->showToast(I)V

    goto/16 :goto_0

    .line 2061
    :sswitch_b
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->stopMusicService()V

    .line 2062
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->dismissBrightAndContrastProgress()V

    .line 2063
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->existSdcard()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 2064
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isTakepic:Z

    goto/16 :goto_0

    .line 2066
    :cond_13
    const v8, 0x7f0601a3

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->showToast(I)V

    goto/16 :goto_0

    .line 2070
    :sswitch_c
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->stopMusicService()V

    .line 2071
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->dismissBrightAndContrastProgress()V

    .line 2072
    const-string v10, "ViewRecord"

    const-string v11, "55555555555555555555555555555555"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->existSdcard()Z

    move-result v10

    if-eqz v10, :cond_14

    .line 2074
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isTakepic:Z

    .line 2075
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgViewSnap:Landroid/widget/ImageView;

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2076
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->viewHandler:Landroid/os/Handler;

    const/16 v9, 0x14

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2078
    :cond_14
    const v8, 0x7f0601a3

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->showToast(I)V

    goto/16 :goto_0

    .line 2082
    :sswitch_d
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->stopMusicService()V

    .line 2083
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->dismissBrightAndContrastProgress()V

    .line 2084
    iget-boolean v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isTakeVideo:Z

    if-eqz v10, :cond_16

    .line 2085
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->CloseAvi()I

    .line 2086
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isTakeVideo:Z

    .line 2087
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isstart:Z

    .line 2090
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->viewHandler:Landroid/os/Handler;

    const/16 v10, 0x16

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2091
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->st:Z

    .line 2092
    iget-wide v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->allVideoSize:J

    const-wide/16 v11, 0x400

    div-long/2addr v9, v11

    const-wide/16 v11, 0x80

    cmp-long v9, v9, v11

    if-gez v9, :cond_15

    .line 2093
    new-instance v9, Ljava/io/File;

    .line 2094
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2095
    const-string v11, "/IPcamer/video/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".avi"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2094
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2093
    iput-object v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->delFile:Ljava/io/File;

    .line 2096
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->delFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v0

    .line 2097
    .local v0, "b":Z
    const-string v9, "tagdel"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "if delect===="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    .end local v0    # "b":Z
    :cond_15
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isT:Z

    goto/16 :goto_0

    .line 2101
    :cond_16
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    if-eqz v10, :cond_17

    .line 2102
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_17

    .line 2103
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2105
    :cond_17
    new-instance v10, Landroid/os/StatFs;

    iget-object v11, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->path:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->stat:Landroid/os/StatFs;

    .line 2106
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->stat:Landroid/os/StatFs;

    invoke-virtual {v10}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v10, v10

    iput-wide v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->availableBlocks:J

    .line 2107
    iget-wide v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->availableBlocks:J

    iget-wide v12, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->blockSize:J

    mul-long/2addr v10, v12

    invoke-direct {p0, v10, v11}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->formatSize(J)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->sdAvail:Ljava/lang/String;

    .line 2108
    iget-wide v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->availableBlocks:J

    iget-wide v12, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->blockSize:J

    mul-long/2addr v10, v12

    const-wide/32 v12, 0x100000

    div-long/2addr v10, v12

    const-wide/16 v12, 0x32

    cmp-long v10, v10, v12

    if-gez v10, :cond_18

    .line 2109
    const v8, 0x7f0601a9

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->showToastLong(I)V

    goto/16 :goto_0

    .line 2112
    :cond_18
    sput v9, Lobject/p2pipcam/system/SystemValue;->checkSDStatu:I

    .line 2113
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->allVideoSize:J

    .line 2114
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isTakeVideo:Z

    .line 2115
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isstart:Z

    .line 2117
    iput v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->video_i:I

    .line 2118
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->st:Z

    .line 2121
    const-string v9, "ViewRecord"

    const-string v10, "1111111111111111111111111111111111111111111111111111"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->viewHandler:Landroid/os/Handler;

    const/16 v10, 0x15

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2127
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isT:Z

    .line 2128
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->h264JpegVideoDate:Ljava/util/LinkedList;

    .line 2129
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->IorP:Ljava/util/LinkedList;

    .line 2131
    new-instance v8, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;

    invoke-direct {v8, p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;-><init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V

    invoke-virtual {v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->start()V

    goto/16 :goto_0

    .line 2135
    :sswitch_e
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->stopMusicService()V

    .line 2136
    const-string v8, "ViewRecord"

    const-string v9, "3333333333333333333333333333333333333333333"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->quit()V

    goto/16 :goto_0

    .line 2142
    :sswitch_f
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->stopMusicService()V

    .line 2144
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->quit()V

    goto/16 :goto_0

    .line 2148
    :sswitch_10
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->stopMusicService()V

    .line 2149
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgBtnCallOff:Landroid/widget/ImageButton;

    invoke-virtual {v10, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2150
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgBtnCallStart:Landroid/widget/ImageButton;

    invoke-virtual {v8, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2151
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->imgBtnCallStop:Landroid/widget/ImageButton;

    invoke-virtual {v8, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2153
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bAudioRecordStart:Z

    .line 2154
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bAudioStart:Z

    .line 2155
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->StartTalk()V

    .line 2156
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->StartAudio()V

    goto/16 :goto_0

    .line 2162
    :sswitch_11
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->stopMusicService()V

    .line 2163
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->fragment_dialog:Landroid/widget/PopupWindow;

    iget-object v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->cameraName:Landroid/widget/TextView;

    const/16 v11, 0x11

    invoke-virtual {v9, v10, v11, v8, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0

    .line 2168
    :sswitch_12
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->stopMusicService()V

    .line 2169
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->dismissBrightAndContrastProgress()V

    .line 2170
    iget-boolean v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isTakeVideo:Z

    if-eqz v10, :cond_1a

    .line 2171
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->CloseAvi()I

    .line 2172
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isTakeVideo:Z

    .line 2173
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isstart:Z

    .line 2174
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzTakeVideo:Landroid/widget/ImageButton;

    const v10, 0x7f02010d

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2175
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->layout_videoing:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2176
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->st:Z

    .line 2177
    iget-wide v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->allVideoSize:J

    const-wide/16 v11, 0x400

    div-long/2addr v9, v11

    const-wide/16 v11, 0x80

    cmp-long v9, v9, v11

    if-gez v9, :cond_19

    .line 2178
    new-instance v9, Ljava/io/File;

    .line 2179
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2180
    const-string v11, "/IPcamer/video/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".avi"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2179
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2178
    iput-object v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->delFile:Ljava/io/File;

    .line 2181
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->delFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v0

    .line 2182
    .restart local v0    # "b":Z
    const-string v9, "tagdel"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "if delect===="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    .end local v0    # "b":Z
    :cond_19
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isT:Z

    goto/16 :goto_0

    .line 2186
    :cond_1a
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    if-eqz v10, :cond_1b

    .line 2187
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 2188
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2190
    :cond_1b
    new-instance v10, Landroid/os/StatFs;

    iget-object v11, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->path:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->stat:Landroid/os/StatFs;

    .line 2191
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->stat:Landroid/os/StatFs;

    invoke-virtual {v10}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v10, v10

    iput-wide v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->availableBlocks:J

    .line 2192
    iget-wide v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->availableBlocks:J

    iget-wide v12, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->blockSize:J

    mul-long/2addr v10, v12

    invoke-direct {p0, v10, v11}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->formatSize(J)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->sdAvail:Ljava/lang/String;

    .line 2193
    iget-wide v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->availableBlocks:J

    iget-wide v12, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->blockSize:J

    mul-long/2addr v10, v12

    const-wide/32 v12, 0x100000

    div-long/2addr v10, v12

    const-wide/16 v12, 0x32

    cmp-long v10, v10, v12

    if-gez v10, :cond_1c

    .line 2194
    const v8, 0x7f0601a9

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->showToastLong(I)V

    goto/16 :goto_0

    .line 2197
    :cond_1c
    sput v9, Lobject/p2pipcam/system/SystemValue;->checkSDStatu:I

    .line 2198
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->allVideoSize:J

    .line 2199
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isTakeVideo:Z

    .line 2200
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isstart:Z

    .line 2201
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzTakeVideo:Landroid/widget/ImageButton;

    const v11, 0x7f02010e

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2202
    iput v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->video_i:I

    .line 2203
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->st:Z

    .line 2204
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->layout_videoing:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2205
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isT:Z

    .line 2206
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->h264JpegVideoDate:Ljava/util/LinkedList;

    .line 2207
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->IorP:Ljava/util/LinkedList;

    .line 2237
    new-instance v8, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;

    invoke-direct {v8, p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;-><init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V

    invoke-virtual {v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyTakeVideoThread;->start()V

    goto/16 :goto_0

    .line 2241
    :sswitch_13
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    if-eqz v8, :cond_1d

    .line 2242
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 2243
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2244
    iput-object v13, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    .line 2246
    :cond_1d
    invoke-direct {p0, v9}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->setBrightOrContrast(I)V

    goto/16 :goto_0

    .line 2249
    :sswitch_14
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    if-eqz v8, :cond_1e

    .line 2250
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 2251
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2252
    iput-object v13, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    .line 2254
    :cond_1e
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->setBrightOrContrast(I)V

    goto/16 :goto_0

    .line 2257
    :sswitch_15
    iget-boolean v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isTakeVideo:Z

    if-eqz v8, :cond_1f

    .line 2258
    const v8, 0x7f0601b2

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->showToast(I)V

    goto/16 :goto_0

    .line 2260
    :cond_1f
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->showResolutionPopWindow()V

    goto/16 :goto_0

    .line 2281
    :sswitch_16
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->dismissBrightAndContrastProgress()V

    .line 2282
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v9}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2283
    iput v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nResolution:I

    .line 2284
    iget v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nResolution:I

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->setResolution(I)V

    .line 2285
    const-string v8, "tag"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "h264 resolution:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nResolution:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " qvga"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    const v9, 0x7f02008a

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2289
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 2292
    .local v4, "msgMessage":Landroid/os/Message;
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mHandlerFramerate:Landroid/os/Handler;

    const-wide/16 v9, 0xbb8

    invoke-virtual {v8, v4, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2297
    .end local v4    # "msgMessage":Landroid/os/Message;
    :sswitch_17
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->dismissBrightAndContrastProgress()V

    .line 2298
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2299
    iput v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nResolution:I

    .line 2300
    iget v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nResolution:I

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->setResolution(I)V

    .line 2301
    const-string v8, "tag"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "h264 resolution:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nResolution:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " vga"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    const v9, 0x7f020089

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2304
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 2307
    .restart local v4    # "msgMessage":Landroid/os/Message;
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mHandlerFramerate:Landroid/os/Handler;

    const-wide/16 v9, 0xbb8

    invoke-virtual {v8, v4, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2313
    .end local v4    # "msgMessage":Landroid/os/Message;
    :sswitch_18
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->dismissBrightAndContrastProgress()V

    .line 2314
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2315
    const/4 v8, 0x2

    iput v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nResolution:I

    .line 2316
    iget v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nResolution:I

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->setResolution(I)V

    .line 2317
    const-string v8, "tag"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "h264 resolution:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nResolution:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " 720p"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    const v9, 0x7f0200ea

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2320
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 2323
    .restart local v4    # "msgMessage":Landroid/os/Message;
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mHandlerFramerate:Landroid/os/Handler;

    const-wide/16 v9, 0xbb8

    invoke-virtual {v8, v4, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2328
    .end local v4    # "msgMessage":Landroid/os/Message;
    :sswitch_19
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->dismissBrightAndContrastProgress()V

    .line 2329
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2330
    const/4 v8, 0x3

    iput v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nResolution:I

    .line 2331
    iget v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nResolution:I

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->setResolution(I)V

    .line 2332
    const-string v8, "tag"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "h264 resolution:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nResolution:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " 720p"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    const v9, 0x7f0200cb

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2335
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 2338
    .restart local v4    # "msgMessage":Landroid/os/Message;
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mHandlerFramerate:Landroid/os/Handler;

    const-wide/16 v9, 0xbb8

    invoke-virtual {v8, v4, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2343
    .end local v4    # "msgMessage":Landroid/os/Message;
    :sswitch_1a
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->dismissBrightAndContrastProgress()V

    .line 2344
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2345
    const/4 v8, 0x4

    iput v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nResolution:I

    .line 2346
    iget v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->nResolution:I

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->setResolution(I)V

    .line 2347
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    const v9, 0x7f0200cc

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2349
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 2352
    .restart local v4    # "msgMessage":Landroid/os/Message;
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mHandlerFramerate:Landroid/os/Handler;

    const-wide/16 v9, 0xbb8

    invoke-virtual {v8, v4, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2356
    .end local v4    # "msgMessage":Landroid/os/Message;
    :sswitch_1b
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->dismissBrightAndContrastProgress()V

    .line 2357
    iget v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->playmode:I

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_0

    .line 2359
    :pswitch_0
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzPlayMode:Landroid/widget/ImageButton;

    const v10, 0x7f020105

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2360
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzPlayMode:Landroid/widget/ImageButton;

    .line 2361
    invoke-virtual {v8, v12}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2362
    const-string v8, "tg"

    const-string v10, "magnify 1"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    iput v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->playmode:I

    goto/16 :goto_0

    .line 2366
    :pswitch_1
    const-string v9, "tg"

    const-string v10, "STANDARD 2"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    iput v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->playmode:I

    .line 2368
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzPlayMode:Landroid/widget/ImageButton;

    const v9, 0x7f020107

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2369
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzPlayMode:Landroid/widget/ImageButton;

    .line 2370
    invoke-virtual {v8, v12}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2373
    :pswitch_2
    const-string v8, "tg"

    const-string v9, "FULLSCREEN 3"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    const/4 v8, 0x2

    iput v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->playmode:I

    .line 2375
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzPlayMode:Landroid/widget/ImageButton;

    .line 2376
    const v9, 0x7f020106

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2377
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzPlayMode:Landroid/widget/ImageButton;

    .line 2378
    invoke-virtual {v8, v12}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2386
    :sswitch_1c
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->dismissBrightAndContrastProgress()V

    .line 2387
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->defaultVideoParams()V

    goto/16 :goto_0

    .line 2391
    :sswitch_1d
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->edtOpenLockPWD:Landroid/widget/EditText;

    const-string v9, "1"

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2394
    :sswitch_1e
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->edtOpenLockPWD:Landroid/widget/EditText;

    const-string v9, "2"

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2397
    :sswitch_1f
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->edtOpenLockPWD:Landroid/widget/EditText;

    const-string v9, "3"

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2400
    :sswitch_20
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->edtOpenLockPWD:Landroid/widget/EditText;

    const-string v9, "4"

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2404
    :sswitch_21
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->edtOpenLockPWD:Landroid/widget/EditText;

    const-string v9, "5"

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2407
    :sswitch_22
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->edtOpenLockPWD:Landroid/widget/EditText;

    const-string v9, "6"

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2410
    :sswitch_23
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->edtOpenLockPWD:Landroid/widget/EditText;

    const-string v9, "7"

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2413
    :sswitch_24
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->edtOpenLockPWD:Landroid/widget/EditText;

    const-string v9, "8"

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2416
    :sswitch_25
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->edtOpenLockPWD:Landroid/widget/EditText;

    const-string v9, "9"

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2419
    :sswitch_26
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->edtOpenLockPWD:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2422
    .local v5, "openLockPWD":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_20

    .line 2424
    const v8, 0x7f060199

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->showToast(I)V

    .line 2425
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->fragment_dialog:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2427
    :cond_20
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v11, :cond_21

    .line 2429
    const v8, 0x7f06019a

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->showToast(I)V

    .line 2430
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->edtOpenLockPWD:Landroid/widget/EditText;

    invoke-virtual {v8, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2431
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->fragment_dialog:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2433
    :cond_21
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v11, :cond_22

    .line 2435
    const v8, 0x7f06019a

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->showToast(I)V

    .line 2436
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->edtOpenLockPWD:Landroid/widget/EditText;

    invoke-virtual {v8, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2437
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->fragment_dialog:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2443
    :cond_22
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_23

    .line 2445
    const-string v8, "ViewRecord"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "openLockPWD = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    new-instance v3, Lobject/p2pipcam/bean/LockBean;

    invoke-direct {v3}, Lobject/p2pipcam/bean/LockBean;-><init>()V

    .line 2447
    .local v3, "lockbean":Lobject/p2pipcam/bean/LockBean;
    invoke-virtual {v3, v5}, Lobject/p2pipcam/bean/LockBean;->setOpenLockPwd(Ljava/lang/String;)V

    .line 2448
    invoke-virtual {v3, v9}, Lobject/p2pipcam/bean/LockBean;->setCmd(I)V

    .line 2450
    const-string v8, "ViewRecord"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "lockbean.toString() 11111111111111= "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lobject/p2pipcam/bean/LockBean;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    invoke-virtual {v3}, Lobject/p2pipcam/bean/LockBean;->arrary()[B

    move-result-object v1

    .line 2453
    .local v1, "data":[B
    array-length v2, v1

    .line 2455
    .local v2, "len":I
    const-string v8, "ViewRecord"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "len= "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    invoke-static {v8, v1, v2}, Lobject/p2pipcam/nativecaller/NativeCaller;->DoorBellCmd(Ljava/lang/String;[BI)I

    .line 2466
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->edtOpenLockPWD:Landroid/widget/EditText;

    invoke-virtual {v8, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2470
    .end local v1    # "data":[B
    .end local v2    # "len":I
    .end local v3    # "lockbean":Lobject/p2pipcam/bean/LockBean;
    :cond_23
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->fragment_dialog:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2474
    .end local v5    # "openLockPWD":Ljava/lang/String;
    :sswitch_27
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->edtOpenLockPWD:Landroid/widget/EditText;

    invoke-virtual {v8, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2478
    :sswitch_28
    iget v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->currIndex:I

    if-nez v8, :cond_24

    .line 2479
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/16 v9, 0x1f

    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 2483
    :goto_7
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2481
    :cond_24
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/16 v9, 0x1e

    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_7

    .line 2486
    :sswitch_29
    iget v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->currIndex:I

    if-nez v8, :cond_25

    .line 2487
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/16 v9, 0x21

    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 2491
    :goto_8
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2489
    :cond_25
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/16 v9, 0x20

    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_8

    .line 2494
    :sswitch_2a
    iget v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->currIndex:I

    if-nez v8, :cond_26

    .line 2495
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/16 v9, 0x23

    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 2499
    :goto_9
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2497
    :cond_26
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/16 v9, 0x22

    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_9

    .line 2502
    :sswitch_2b
    iget v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->currIndex:I

    if-nez v8, :cond_27

    .line 2503
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/16 v9, 0x25

    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 2507
    :goto_a
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2505
    :cond_27
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/16 v9, 0x24

    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_a

    .line 2510
    :sswitch_2c
    iget v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->currIndex:I

    if-nez v8, :cond_28

    .line 2511
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/16 v9, 0x27

    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 2515
    :goto_b
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2513
    :cond_28
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/16 v9, 0x26

    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_b

    .line 2518
    :sswitch_2d
    iget v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->currIndex:I

    if-nez v8, :cond_29

    .line 2519
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/16 v9, 0x29

    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 2523
    :goto_c
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2521
    :cond_29
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/16 v9, 0x28

    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_c

    .line 2526
    :sswitch_2e
    iget v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->currIndex:I

    if-nez v8, :cond_2a

    .line 2527
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/16 v9, 0x2b

    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 2531
    :goto_d
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2529
    :cond_2a
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/16 v9, 0x2a

    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_d

    .line 2534
    :sswitch_2f
    iget v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->currIndex:I

    if-nez v8, :cond_2b

    .line 2535
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/16 v9, 0x2d

    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 2539
    :goto_e
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2537
    :cond_2b
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/16 v9, 0x2c

    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_e

    .line 2542
    :sswitch_30
    iget v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->currIndex:I

    if-nez v8, :cond_2c

    .line 2543
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/16 v9, 0x2f

    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 2547
    :goto_f
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2545
    :cond_2c
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/16 v9, 0x2e

    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_f

    .line 2550
    :sswitch_31
    iget v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->currIndex:I

    if-nez v8, :cond_2d

    .line 2551
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/16 v9, 0x31

    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 2555
    :goto_10
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2553
    :cond_2d
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/16 v9, 0x30

    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_10

    .line 2558
    :sswitch_32
    iget v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->currIndex:I

    if-nez v8, :cond_2e

    .line 2559
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/16 v9, 0x33

    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 2563
    :goto_11
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2561
    :cond_2e
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/16 v9, 0x32

    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_11

    .line 2566
    :sswitch_33
    iget v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->currIndex:I

    if-nez v8, :cond_2f

    .line 2567
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/16 v9, 0x35

    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 2571
    :goto_12
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2569
    :cond_2f
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/16 v9, 0x34

    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_12

    .line 2574
    :sswitch_34
    iget v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->currIndex:I

    if-nez v8, :cond_30

    .line 2575
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/16 v9, 0x37

    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 2579
    :goto_13
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2577
    :cond_30
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/16 v9, 0x36

    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_13

    .line 2582
    :sswitch_35
    iget v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->currIndex:I

    if-nez v8, :cond_31

    .line 2583
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/16 v9, 0x39

    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 2587
    :goto_14
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2585
    :cond_31
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/16 v9, 0x38

    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_14

    .line 2590
    :sswitch_36
    iget v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->currIndex:I

    if-nez v8, :cond_32

    .line 2591
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/16 v9, 0x3b

    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 2595
    :goto_15
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2593
    :cond_32
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/16 v9, 0x3a

    invoke-static {v8, v9}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_15

    .line 1856
    :sswitch_data_0
    .sparse-switch
        0x7f080114 -> :sswitch_1d
        0x7f080115 -> :sswitch_1e
        0x7f080116 -> :sswitch_1f
        0x7f080118 -> :sswitch_20
        0x7f080119 -> :sswitch_21
        0x7f08011a -> :sswitch_22
        0x7f08011c -> :sswitch_23
        0x7f08011d -> :sswitch_24
        0x7f08011e -> :sswitch_25
        0x7f08011f -> :sswitch_26
        0x7f080120 -> :sswitch_27
        0x7f080197 -> :sswitch_3
        0x7f080198 -> :sswitch_2
        0x7f080199 -> :sswitch_5
        0x7f08019a -> :sswitch_6
        0x7f08019b -> :sswitch_7
        0x7f08019c -> :sswitch_8
        0x7f0801b2 -> :sswitch_4
        0x7f0801b3 -> :sswitch_9
        0x7f0801b8 -> :sswitch_b
        0x7f0801b9 -> :sswitch_12
        0x7f0801ba -> :sswitch_15
        0x7f0801bb -> :sswitch_13
        0x7f0801bc -> :sswitch_14
        0x7f0801bd -> :sswitch_1c
        0x7f0801be -> :sswitch_1b
        0x7f0801bf -> :sswitch_0
        0x7f0801c0 -> :sswitch_1
        0x7f0801cd -> :sswitch_d
        0x7f0801cf -> :sswitch_c
        0x7f0801d1 -> :sswitch_11
        0x7f0801d3 -> :sswitch_e
        0x7f0801d5 -> :sswitch_f
        0x7f0801d7 -> :sswitch_10
        0x7f0801d8 -> :sswitch_a
        0x7f0801e6 -> :sswitch_28
        0x7f0801e7 -> :sswitch_29
        0x7f0801e8 -> :sswitch_2a
        0x7f0801e9 -> :sswitch_2b
        0x7f0801ea -> :sswitch_2c
        0x7f0801eb -> :sswitch_2d
        0x7f0801ec -> :sswitch_2e
        0x7f0801ed -> :sswitch_2f
        0x7f0801ee -> :sswitch_30
        0x7f0801ef -> :sswitch_31
        0x7f0801f0 -> :sswitch_32
        0x7f0801f1 -> :sswitch_33
        0x7f0801f2 -> :sswitch_34
        0x7f0801f3 -> :sswitch_35
        0x7f0801f4 -> :sswitch_36
        0x7f0801f5 -> :sswitch_16
        0x7f0801f6 -> :sswitch_17
        0x7f0801f7 -> :sswitch_18
        0x7f0801f8 -> :sswitch_19
        0x7f0801f9 -> :sswitch_1a
    .end sparse-switch

    .line 2357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, -0x1

    .line 1538
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1539
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1540
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1543
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1544
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzPlatform:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1553
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 1554
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 1555
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 1556
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->videoViewStandard:Landroid/widget/ImageView;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1557
    return-void

    .line 1545
    :cond_1
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1546
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1549
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1550
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzPlatform:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x400

    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 1162
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1163
    const-string v5, "isFirst"

    invoke-virtual {p0, v5, v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->preference:Landroid/content/SharedPreferences;

    .line 1164
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->preference:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1165
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "activity"

    invoke-interface {v2, v5, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1166
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1168
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getDataFromOther()V

    .line 1169
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 1171
    invoke-virtual {p0, v9}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->requestWindowFeature(I)Z

    .line 1172
    const v5, 0x7f030041

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->setContentView(I)V

    .line 1173
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->findView()V

    .line 1174
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->InitParams()V

    .line 1175
    invoke-static {p0}, Lobject/p2pipcam/utils/DataBaseHelper;->getInstance(Landroid/content/Context;)Lobject/p2pipcam/utils/DataBaseHelper;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 1176
    new-instance v5, Lcom/easyview/talkutils/CustomBuffer;

    invoke-direct {v5}, Lcom/easyview/talkutils/CustomBuffer;-><init>()V

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->AudioBuffer:Lcom/easyview/talkutils/CustomBuffer;

    .line 1177
    new-instance v5, Lcom/easyview/talkutils/AudioPlayer;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->AudioBuffer:Lcom/easyview/talkutils/CustomBuffer;

    invoke-direct {v5, p0, v6}, Lcom/easyview/talkutils/AudioPlayer;-><init>(Landroid/content/Context;Lcom/easyview/talkutils/CustomBuffer;)V

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->audioPlayer:Lcom/easyview/talkutils/AudioPlayer;

    .line 1178
    new-instance v5, Lcom/easyview/talkutils/CustomAudioRecorder;

    invoke-direct {v5, p0, p0}, Lcom/easyview/talkutils/CustomAudioRecorder;-><init>(Landroid/content/Context;Lcom/easyview/talkutils/CustomAudioRecorder$AudioRecordResult;)V

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->customAudioRecorder:Lcom/easyview/talkutils/CustomAudioRecorder;

    .line 1179
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->setPlayInterface(Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;)V

    .line 1180
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->playSurface:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->playHolder:Landroid/view/SurfaceHolder;

    .line 1181
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->playHolder:Landroid/view/SurfaceHolder;

    const/4 v6, 0x4

    invoke-interface {v5, v6}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 1182
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->playHolder:Landroid/view/SurfaceHolder;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->videoCallback:Lobject/p2pwificam/clientActivity/PlayAlarmActivity$surfaceCallback;

    invoke-interface {v5, v6}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1184
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->playSurface:Landroid/view/SurfaceView;

    invoke-virtual {v5, p0}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1185
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->playSurface:Landroid/view/SurfaceView;

    invoke-virtual {v5, v9}, Landroid/view/SurfaceView;->setLongClickable(Z)V

    .line 1187
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getCameraParams()V

    .line 1189
    const v5, 0x7f04000b

    .line 1188
    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->dismissTopAnim:Landroid/view/animation/Animation;

    .line 1191
    const v5, 0x7f04000c

    .line 1190
    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->showTopAnim:Landroid/view/animation/Animation;

    .line 1193
    const v5, 0x7f04000a

    .line 1192
    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->showAnim:Landroid/view/animation/Animation;

    .line 1195
    const v5, 0x7f040009

    .line 1194
    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->dismissAnim:Landroid/view/animation/Animation;

    .line 1198
    const-string v5, "ptzcontrol"

    invoke-virtual {p0, v5, v7}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1200
    .local v4, "sharePreferences":Landroid/content/SharedPreferences;
    const-string v5, "ptzcontrol"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isPTZPrompt:Z

    .line 1201
    iget-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isPTZPrompt:Z

    if-nez v5, :cond_0

    .line 1202
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1203
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v5, "ptzcontrol"

    invoke-interface {v1, v5, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1204
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1206
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->status:Ljava/lang/String;

    .line 1207
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->status:Ljava/lang/String;

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1209
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->path:Ljava/io/File;

    .line 1210
    new-instance v5, Landroid/os/StatFs;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->path:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->stat:Landroid/os/StatFs;

    .line 1211
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->stat:Landroid/os/StatFs;

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->blockSize:J

    .line 1212
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->stat:Landroid/os/StatFs;

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->totalBlocks:J

    .line 1213
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->stat:Landroid/os/StatFs;

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->availableBlocks:J

    .line 1214
    iget-wide v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->totalBlocks:J

    iget-wide v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->blockSize:J

    mul-long/2addr v5, v7

    invoke-direct {p0, v5, v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->formatSize(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->sdSize:Ljava/lang/String;

    .line 1215
    iget-wide v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->availableBlocks:J

    iget-wide v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->blockSize:J

    mul-long/2addr v5, v7

    invoke-direct {p0, v5, v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->formatSize(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->sdAvail:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1222
    :cond_1
    :goto_0
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bAudioStart:Z

    .line 1223
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzMicrophone:Landroid/widget/ImageButton;

    const v6, 0x7f0200fb

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1224
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->ptzMicrophone:Landroid/widget/ImageButton;

    const v6, 0x7f02010c

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1225
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->initExitPopupWindow3()V

    .line 1227
    const-string v5, "ViewRecord"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "playType  === "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->playType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    iget v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->playType:I

    if-ne v5, v9, :cond_2

    .line 1233
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lobject/p2pwificam/clientActivity/EmergencyAlarm;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1234
    .local v3, "service":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1242
    .end local v3    # "service":Landroid/content/Intent;
    :cond_2
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bgetCameraParamsThreadRuning:Z

    .line 1243
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$16;

    invoke-direct {v6, p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$16;-><init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1259
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 1261
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$17;

    invoke-direct {v6, p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$17;-><init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1274
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 1276
    return-void

    .line 1216
    :catch_0
    move-exception v0

    .line 1217
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "removed"

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->status:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2851
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->CloseAvi()I

    .line 2852
    iput v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->talkAudio:I

    .line 2853
    iput v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->tagone:I

    .line 2854
    iput-boolean v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isTakeVideo:Z

    .line 2855
    iput-boolean v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isstart:Z

    .line 2856
    iput-boolean v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->st:Z

    .line 2857
    iget-wide v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->allVideoSize:J

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    const-wide/16 v4, 0x80

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 2858
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2859
    const-string v4, "/IPcamer/video/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".avi"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2858
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->delFile:Ljava/io/File;

    .line 2860
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->delFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 2861
    .local v0, "b":Z
    const-string v2, "tagdel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "if delect===="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    .end local v0    # "b":Z
    :cond_0
    iput-boolean v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isT:Z

    .line 2864
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    invoke-static {v2}, Lobject/p2pipcam/nativecaller/NativeCaller;->StopPPPPLivestream(Ljava/lang/String;)I

    .line 2865
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->StopAudio()V

    .line 2866
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->StopTalk()V

    .line 2867
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->releaseTalk()V

    .line 2869
    iput-boolean v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bgetCameraParamsThreadRuning:Z

    .line 2871
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    if-eqz v2, :cond_1

    .line 2872
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/MyRender;->destroyShaders()J

    .line 2874
    :cond_1
    const-string v2, "isFirst"

    invoke-virtual {p0, v2, v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->preference:Landroid/content/SharedPreferences;

    .line 2875
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->preference:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2876
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "activity"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2877
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2878
    const-string v2, "tag"

    const-string v3, "PlayTestActivity onDestroy"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 2880
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2825
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2830
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1729
    const-string v0, "tag"

    const-string v1, "onDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x42a00000    # 80.0f

    .line 1753
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1754
    .local v0, "x1":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1755
    .local v1, "x2":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1756
    .local v3, "y1":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 1758
    .local v4, "y2":F
    cmpl-float v6, v0, v1

    if-lez v6, :cond_1

    sub-float v2, v0, v1

    .line 1759
    .local v2, "xx":F
    :goto_0
    cmpl-float v6, v3, v4

    if-lez v6, :cond_2

    sub-float v5, v3, v4

    .line 1761
    .local v5, "yy":F
    :goto_1
    cmpl-float v6, v2, v5

    if-lez v6, :cond_4

    .line 1762
    cmpl-float v6, v0, v1

    if-lez v6, :cond_3

    cmpl-float v6, v2, v7

    if-lez v6, :cond_3

    .line 1764
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/4 v7, 0x6

    invoke-static {v6, v7}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 1778
    :cond_0
    :goto_2
    return v8

    .line 1758
    .end local v2    # "xx":F
    .end local v5    # "yy":F
    :cond_1
    sub-float v2, v1, v0

    goto :goto_0

    .line 1759
    .restart local v2    # "xx":F
    :cond_2
    sub-float v5, v4, v3

    goto :goto_1

    .line 1765
    .restart local v5    # "yy":F
    :cond_3
    cmpg-float v6, v0, v1

    if-gez v6, :cond_0

    cmpl-float v6, v2, v7

    if-lez v6, :cond_0

    .line 1766
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_2

    .line 1770
    :cond_4
    cmpl-float v6, v3, v4

    if-lez v6, :cond_5

    cmpl-float v6, v5, v7

    if-lez v6, :cond_5

    .line 1771
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_2

    .line 1772
    :cond_5
    cmpg-float v6, v3, v4

    if-gez v6, :cond_0

    cmpl-float v6, v5, v7

    if-lez v6, :cond_0

    .line 1773
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    invoke-static {v6, v8}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 523
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 527
    :cond_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 530
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 531
    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bManualExit:Z

    .line 532
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bProgress:Z

    if-nez v1, :cond_3

    .line 533
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isTakeVideo:Z

    if-eqz v1, :cond_2

    .line 534
    const v1, 0x7f0601a6

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->showToast(I)V

    .line 548
    :goto_0
    return v0

    .line 536
    :cond_2
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->returnLastBmp2Home()V

    .line 537
    invoke-virtual {p0, p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->showSureDialogPlay(Landroid/content/Context;)V

    goto :goto_0

    .line 542
    :cond_3
    const/16 v0, 0x52

    if-ne p1, v0, :cond_4

    .line 543
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bProgress:Z

    if-nez v0, :cond_4

    .line 544
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->showTop()V

    .line 545
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->showBottom()V

    .line 548
    :cond_4
    invoke-super {p0, p1, p2}, Lobject/p2pwificam/clientActivity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1783
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 1788
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1794
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2835
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1798
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/high16 v8, 0x41c80000    # 25.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1582
    iget-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isDown:Z

    if-nez v4, :cond_0

    .line 1583
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->x1:F

    .line 1584
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->y1:F

    .line 1585
    iput-boolean v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isDown:Z

    .line 1587
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    packed-switch v4, :pswitch_data_0

    .line 1652
    :cond_1
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->gt:Landroid/view/GestureDetector;

    invoke-virtual {v4, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 1589
    :pswitch_1
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1590
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->start:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 1591
    iput v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mode:I

    .line 1592
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getScale()F

    move-result v4

    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->originalScale:F

    goto :goto_0

    .line 1598
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->x2:F

    .line 1599
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->y2:F

    .line 1600
    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->x1:F

    iget v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->x2:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v8

    if-gez v4, :cond_5

    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->y1:F

    iget v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->y2:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v8

    if-gez v4, :cond_5

    .line 1601
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_2

    .line 1602
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1603
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1605
    :cond_2
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_3

    .line 1606
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1607
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1609
    :cond_3
    iget-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isSecondDown:Z

    if-nez v4, :cond_4

    .line 1610
    iget-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bProgress:Z

    if-nez v4, :cond_4

    .line 1611
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->showTop()V

    .line 1612
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->showBottom()V

    .line 1615
    :cond_4
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isSecondDown:Z

    .line 1618
    :cond_5
    iput v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->x1:F

    .line 1619
    iput v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->x2:F

    .line 1620
    iput v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->y1:F

    .line 1621
    iput v6, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->y2:F

    .line 1622
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isDown:Z

    goto/16 :goto_0

    .line 1625
    :pswitch_3
    iput-boolean v7, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isSecondDown:Z

    .line 1626
    invoke-direct {p0, p2}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->spacing(Landroid/view/MotionEvent;)F

    move-result v4

    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->oldDist:F

    .line 1627
    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->oldDist:F

    const/high16 v5, 0x41200000    # 10.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 1628
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1629
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mid:Landroid/graphics/PointF;

    invoke-direct {p0, v4, p2}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 1630
    iput v10, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mode:I

    goto/16 :goto_0

    .line 1635
    :pswitch_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->x2:F

    .line 1636
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->y2:F

    .line 1638
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    div-int/lit8 v0, v4, 0x2

    .line 1639
    .local v0, "midx":I
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 1640
    .local v1, "midy":I
    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mode:I

    if-ne v4, v10, :cond_1

    .line 1641
    invoke-direct {p0, p2}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->spacing(Landroid/view/MotionEvent;)F

    move-result v2

    .line 1642
    .local v2, "newDist":F
    cmpl-float v4, v2, v6

    if-lez v4, :cond_1

    .line 1643
    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->oldDist:F

    div-float v3, v2, v4

    .line 1644
    .local v3, "scale":F
    const-string v4, "scale"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "scale:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    const/high16 v4, 0x40000000    # 2.0f

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_1

    const v4, 0x3e4ccccd    # 0.2f

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_1

    .line 1646
    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->originalScale:F

    mul-float/2addr v4, v3

    int-to-float v5, v0

    int-to-float v6, v1

    invoke-virtual {p0, v4, v5, v6}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->zoomTo(FFF)V

    goto/16 :goto_0

    .line 1587
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public quit()V
    .locals 2

    .prologue
    .line 1810
    const-string v0, "ViewRecord"

    const-string v1, "555555555555555555555555555555555555555555555"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->stopRecord()V

    .line 1812
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bManualExit:Z

    .line 1813
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bProgress:Z

    if-nez v0, :cond_0

    .line 1814
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isTakeVideo:Z

    if-eqz v0, :cond_1

    .line 1815
    const v0, 0x7f0601a6

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->showToast(I)V

    .line 1836
    :cond_0
    :goto_0
    return-void

    .line 1817
    :cond_1
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->returnLastBmp2Home()V

    .line 1819
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->lockFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1820
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_2

    .line 1822
    const-string v0, "ViewRecord"

    const-string v1, "55555555555522222222222222222222222222222"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 1825
    const/4 v0, 0x0

    sput-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 1830
    :cond_2
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->finish()V

    .line 1831
    const v0, 0x7f040006

    .line 1832
    const/high16 v1, 0x7f040000

    .line 1831
    invoke-virtual {p0, v0, v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method protected setResolution(I)V
    .locals 4
    .param p1, "Resolution"    # I

    .prologue
    const/4 v0, 0x0

    .line 1411
    const-string v1, "tag"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setResolution resolution:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->strDID:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 1413
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isResolution:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->isResolution:Ljava/lang/Boolean;

    .line 1414
    return-void

    .line 1413
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public showSureDialogPlay(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 503
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 506
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0601b8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 507
    const v1, 0x7f06000c

    .line 508
    new-instance v2, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$10;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$10;-><init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V

    .line 507
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 517
    const v1, 0x7f06000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 518
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 519
    return-void
.end method

.method protected showTimeStamp()V
    .locals 15

    .prologue
    .line 1109
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1110
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 1111
    .local v12, "year":I
    const/4 v13, 0x2

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/lit8 v4, v13, 0x1

    .line 1112
    .local v4, "month":I
    const/4 v13, 0x5

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1113
    .local v1, "day":I
    const/16 v13, 0xb

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1114
    .local v2, "hour":I
    const/16 v13, 0xc

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1115
    .local v3, "minute":I
    const/16 v13, 0xd

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1117
    .local v5, "second":I
    const/16 v13, 0xa

    if-lt v4, v13, :cond_0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 1118
    .local v9, "strMonth":Ljava/lang/String;
    :goto_0
    const/16 v13, 0xa

    if-lt v1, v13, :cond_1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 1119
    .local v6, "strDay":Ljava/lang/String;
    :goto_1
    const/16 v13, 0xa

    if-lt v2, v13, :cond_2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 1120
    .local v7, "strHour":Ljava/lang/String;
    :goto_2
    const/16 v13, 0xa

    if-lt v3, v13, :cond_3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 1122
    .local v8, "strMinite":Ljava/lang/String;
    :goto_3
    const/16 v13, 0xa

    if-lt v5, v13, :cond_4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 1125
    .local v10, "strSecond":Ljava/lang/String;
    :goto_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1126
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1125
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1127
    .local v11, "strTimeStamp":Ljava/lang/String;
    iget-object v13, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->textTimeStamp:Landroid/widget/TextView;

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1128
    return-void

    .line 1117
    .end local v6    # "strDay":Ljava/lang/String;
    .end local v7    # "strHour":Ljava/lang/String;
    .end local v8    # "strMinite":Ljava/lang/String;
    .end local v9    # "strMonth":Ljava/lang/String;
    .end local v10    # "strSecond":Ljava/lang/String;
    .end local v11    # "strTimeStamp":Ljava/lang/String;
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "0"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 1118
    .restart local v9    # "strMonth":Ljava/lang/String;
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "0"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 1119
    .restart local v6    # "strDay":Ljava/lang/String;
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "0"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 1120
    .restart local v7    # "strHour":Ljava/lang/String;
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "0"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1121
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 1122
    .restart local v8    # "strMinite":Ljava/lang/String;
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "0"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_4
.end method

.method public stopMusicService()V
    .locals 3

    .prologue
    .line 1841
    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->playType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1844
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lobject/p2pwificam/clientActivity/EmergencyAlarm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1845
    .local v0, "service":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->stopService(Landroid/content/Intent;)Z

    .line 1852
    .end local v0    # "service":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 5
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    .line 1675
    const-string v2, "zoomTo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "zoomTo scale:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    iget v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mMaxZoom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 1677
    iget p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mMaxZoom:F

    .line 1682
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getScale()F

    move-result v1

    .line 1683
    .local v1, "oldScale":F
    div-float v0, p1, v1

    .line 1684
    .local v0, "deltaScale":F
    const-string v2, "deltaScale"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deltaScale:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1686
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->videoViewStandard:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1687
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->videoViewStandard:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1688
    return-void

    .line 1678
    .end local v0    # "deltaScale":F
    .end local v1    # "oldScale":F
    :cond_1
    iget v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mMinZoom:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 1679
    iget p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->mMinZoom:F

    goto :goto_0
.end method
