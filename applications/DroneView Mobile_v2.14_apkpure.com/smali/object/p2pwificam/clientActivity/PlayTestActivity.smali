.class public Lobject/p2pwificam/clientActivity/PlayTestActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "PlayTestActivity.java"

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
        Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnClickListener;,
        Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnPageChangeListener;,
        Lobject/p2pwificam/clientActivity/PlayTestActivity$MyPagerAdapter;,
        Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;,
        Lobject/p2pwificam/clientActivity/PlayTestActivity$surfaceCallback;
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

.field private buttonpre1:Landroid/widget/Button;

.field private buttonpre10:Landroid/widget/Button;

.field private buttonpre11:Landroid/widget/Button;

.field private buttonpre12:Landroid/widget/Button;

.field private buttonpre13:Landroid/widget/Button;

.field private buttonpre14:Landroid/widget/Button;

.field private buttonpre15:Landroid/widget/Button;

.field private buttonpre2:Landroid/widget/Button;

.field private buttonpre3:Landroid/widget/Button;

.field private buttonpre4:Landroid/widget/Button;

.field private buttonpre5:Landroid/widget/Button;

.field private buttonpre6:Landroid/widget/Button;

.field private buttonpre7:Landroid/widget/Button;

.field private buttonpre8:Landroid/widget/Button;

.field private buttonpre9:Landroid/widget/Button;

.field private buttonprec1:Landroid/widget/Button;

.field private buttonprec10:Landroid/widget/Button;

.field private buttonprec11:Landroid/widget/Button;

.field private buttonprec12:Landroid/widget/Button;

.field private buttonprec13:Landroid/widget/Button;

.field private buttonprec14:Landroid/widget/Button;

.field private buttonprec15:Landroid/widget/Button;

.field private buttonprec2:Landroid/widget/Button;

.field private buttonprec3:Landroid/widget/Button;

.field private buttonprec4:Landroid/widget/Button;

.field private buttonprec5:Landroid/widget/Button;

.field private buttonprec6:Landroid/widget/Button;

.field private buttonprec7:Landroid/widget/Button;

.field private buttonprec8:Landroid/widget/Button;

.field private buttonprec9:Landroid/widget/Button;

.field private cameraName:Landroid/widget/TextView;

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

.field private textViewTitle:Landroid/widget/TextView;

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

.field private videoCallback:Lobject/p2pwificam/clientActivity/PlayTestActivity$surfaceCallback;

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
    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->playmode:I

    .line 104
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->playSurface:Landroid/view/SurfaceView;

    .line 105
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->playHolder:Landroid/view/SurfaceHolder;

    .line 106
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->videodata:[B

    .line 107
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->videoDataLen:I

    .line 108
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoWidth:I

    .line 109
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoHeight:I

    .line 111
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->progressView:Landroid/view/View;

    .line 112
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bProgress:Z

    .line 114
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->gt:Landroid/view/GestureDetector;

    .line 115
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nResolution:I

    .line 116
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nBrightness:I

    .line 117
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nContrast:I

    .line 118
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bInitCameraParam:Z

    .line 119
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bManualExit:Z

    .line 121
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->textosd:Landroid/widget/TextView;

    .line 122
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->text_bps:Landroid/widget/TextView;

    .line 123
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->textTimeStamp:Landroid/widget/TextView;

    .line 124
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strName:Ljava/lang/String;

    .line 125
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    .line 126
    const/4 v0, 0x3

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->streamType:I

    .line 128
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->osdView:Landroid/view/View;

    .line 130
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bDisplayFinished:Z

    .line 131
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayTestActivity$surfaceCallback;

    invoke-direct {v0, p0, v2}, Lobject/p2pwificam/clientActivity/PlayTestActivity$surfaceCallback;-><init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;Lobject/p2pwificam/clientActivity/PlayTestActivity$surfaceCallback;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->videoCallback:Lobject/p2pwificam/clientActivity/PlayTestActivity$surfaceCallback;

    .line 133
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nPlayCount:I

    .line 135
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->AudioBuffer:Lcom/easyview/talkutils/CustomBuffer;

    .line 136
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->audioPlayer:Lcom/easyview/talkutils/AudioPlayer;

    .line 137
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bAudioStart:Z

    .line 138
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->customAudioRecorder:Lcom/easyview/talkutils/CustomAudioRecorder;

    .line 139
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bAudioRecordStart:Z

    .line 141
    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nP2PMode:I

    .line 143
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->playType:I

    .line 144
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bTimeoutStarted:Z

    .line 145
    const/16 v0, 0xb4

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nTimeoutRemain:I

    .line 147
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isTakeVideo:Z

    .line 148
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isLeftRight:Z

    .line 149
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isUpDown:Z

    .line 151
    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->BRIGHT:I

    .line 152
    const/4 v0, 0x2

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->CONTRAST:I

    .line 153
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isUpDownPressed:Z

    .line 154
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isShowtoping:Z

    .line 164
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isTakepic:Z

    .line 165
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isExit:Z

    .line 171
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isH264:Z

    .line 174
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->textViewVideoing:Landroid/widget/TextView;

    .line 175
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->video_i:I

    .line 176
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->st:Z

    .line 177
    const/16 v0, 0x2710

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->TAKEVIDEO:I

    .line 178
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isTypeI:I

    .line 179
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isT:Z

    .line 180
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isstart:Z

    .line 181
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->datebyte:[B

    .line 182
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->iORp:I

    .line 183
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bH:Z

    .line 184
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isPictSave:Z

    .line 185
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->checkBoxHS:Landroid/widget/ImageButton;

    .line 187
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->imgBtnRecord:Landroid/widget/ImageButton;

    .line 188
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->imgBtnSnap:Landroid/widget/ImageButton;

    .line 189
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->imgBtnOpenLock:Landroid/widget/ImageButton;

    .line 190
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->imgBtnCallStop:Landroid/widget/ImageButton;

    .line 191
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->imgBtnCallOff:Landroid/widget/ImageButton;

    .line 192
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->imgBtnCallStart:Landroid/widget/ImageButton;

    .line 194
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->imgViewRecord:Landroid/widget/ImageView;

    .line 195
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->imgViewSnap:Landroid/widget/ImageView;

    .line 196
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->imgViewOpenLock:Landroid/widget/ImageView;

    .line 198
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->h264JpegVideoDate:Ljava/util/LinkedList;

    .line 199
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->IorP:Ljava/util/LinkedList;

    .line 200
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->status:Ljava/lang/String;

    .line 205
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->sdSize:Ljava/lang/String;

    .line 206
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->sdAvail:Ljava/lang/String;

    .line 207
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->textView_sdsize:Landroid/widget/TextView;

    .line 208
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->path:Ljava/io/File;

    .line 209
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->layout_videoing:Landroid/widget/LinearLayout;

    .line 210
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->layout_show_Info:Landroid/widget/LinearLayout;

    .line 211
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->div:Ljava/io/File;

    .line 212
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->delFile:Ljava/io/File;

    .line 213
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->name:Ljava/lang/String;

    .line 214
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->allVideoSize:J

    .line 215
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->button_back:Landroid/widget/ImageButton;

    .line 216
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->widthV:I

    .line 217
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->heightV:I

    .line 218
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->talkAudio:I

    .line 219
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->tagone:I

    .line 232
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->offset:I

    .line 233
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->currIndex:I

    .line 235
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->edtOpenLockPWD:Landroid/widget/EditText;

    .line 246
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->txtResolution:Landroid/widget/TextView;

    .line 247
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->txtFPS:Landroid/widget/TextView;

    .line 248
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->txtBPS:Landroid/widget/TextView;

    .line 249
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->textViewTitle:Landroid/widget/TextView;

    .line 251
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bgetCameraParamsThreadRuning:Z

    .line 253
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isResolution:Ljava/lang/Boolean;

    .line 254
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isFPS:Ljava/lang/Boolean;

    .line 417
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayTestActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity$1;-><init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->MyTakeVideoHandler:Landroid/os/Handler;

    .line 909
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayTestActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity$2;-><init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->timeoutHandle:Landroid/os/Handler;

    .line 950
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayTestActivity$3;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity$3;-><init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mHandlerFramerate:Landroid/os/Handler;

    .line 965
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayTestActivity$4;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity$4;-><init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mHandlerVideo:Landroid/os/Handler;

    .line 1007
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity$5;-><init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mHandler:Landroid/os/Handler;

    .line 1253
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayTestActivity$6;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity$6;-><init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->msgHandler:Landroid/os/Handler;

    .line 1264
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayTestActivity$7;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity$7;-><init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->msgStreamCodecHandler:Landroid/os/Handler;

    .line 1591
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isDown:Z

    .line 1592
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isSecondDown:Z

    .line 1593
    iput v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->x1:F

    .line 1594
    iput v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->x2:F

    .line 1595
    iput v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->y1:F

    .line 1596
    iput v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->y2:F

    .line 1682
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mode:I

    .line 1684
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->matrix:Landroid/graphics/Matrix;

    .line 1685
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->savedMatrix:Landroid/graphics/Matrix;

    .line 1686
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->start:Landroid/graphics/PointF;

    .line 1687
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mid:Landroid/graphics/PointF;

    .line 1688
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mMaxZoom:F

    .line 1689
    const/high16 v0, 0x3ea00000    # 0.3125f

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mMinZoom:F

    .line 1692
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 1693
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 1694
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 1695
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mMatrixValues:[F

    .line 1756
    const/16 v0, 0x50

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->MINLEN:I

    .line 2597
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayTestActivity$8;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity$8;-><init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->viewHandler:Landroid/os/Handler;

    .line 2834
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    .line 2835
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 2836
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzTakepic:Landroid/widget/ImageButton;

    .line 2969
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->lastTimeStamp:J

    .line 2975
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->VideoFPS:I

    .line 2977
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->Video_fps:I

    .line 2978
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->Video_bps:I

    .line 3099
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->VideoBPS:I

    .line 92
    return-void
.end method

.method private InitImageView()V
    .locals 5

    .prologue
    .line 670
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->popv:Landroid/view/View;

    const v4, 0x7f080127

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->cursorxx:Landroid/widget/ImageView;

    .line 671
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f020000

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 672
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 671
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bmpW:I

    .line 673
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 674
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 675
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 676
    .local v2, "screenW":I
    div-int/lit8 v3, v2, 0x2

    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bmpW:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->offset:I

    .line 677
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 678
    .local v1, "matrix":Landroid/graphics/Matrix;
    iget v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->offset:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 679
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->cursorxx:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 680
    return-void
.end method

.method private InitParams()V
    .locals 3

    .prologue
    .line 1396
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1397
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1398
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->textosd:Landroid/widget/TextView;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1399
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->cameraName:Landroid/widget/TextView;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1400
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->textViewTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1402
    return-void
.end method

.method private InitTextView()V
    .locals 3

    .prologue
    .line 585
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->popv:Landroid/view/View;

    const v1, 0x7f080125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->t1:Landroid/widget/TextView;

    .line 586
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->popv:Landroid/view/View;

    const v1, 0x7f080126

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->t2:Landroid/widget/TextView;

    .line 591
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->t1:Landroid/widget/TextView;

    new-instance v1, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnClickListener;-><init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->t2:Landroid/widget/TextView;

    new-instance v1, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnClickListener;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnClickListener;-><init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    return-void
.end method

.method private InitViewPager()V
    .locals 10

    .prologue
    const v9, 0x7f0801e9

    const v8, 0x7f0801e8

    const v7, 0x7f0801e7

    const v6, 0x7f0801e6

    const v5, 0x7f030047

    .line 596
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->popv:Landroid/view/View;

    const v4, 0x7f080128

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 597
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->listViews:Ljava/util/List;

    .line 598
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 599
    .local v0, "mInflater":Landroid/view/LayoutInflater;
    const/4 v3, 0x0

    invoke-virtual {v0, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 600
    .local v1, "view1":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v0, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 601
    .local v2, "view2":Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonpre1:Landroid/widget/Button;

    .line 602
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonprec1:Landroid/widget/Button;

    .line 603
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonpre2:Landroid/widget/Button;

    .line 604
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonprec2:Landroid/widget/Button;

    .line 605
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonpre3:Landroid/widget/Button;

    .line 606
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonprec3:Landroid/widget/Button;

    .line 607
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonpre4:Landroid/widget/Button;

    .line 608
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonprec4:Landroid/widget/Button;

    .line 609
    const v3, 0x7f0801ea

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonpre5:Landroid/widget/Button;

    .line 610
    const v3, 0x7f0801ea

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonprec5:Landroid/widget/Button;

    .line 611
    const v3, 0x7f0801eb

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonpre6:Landroid/widget/Button;

    .line 612
    const v3, 0x7f0801eb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonprec6:Landroid/widget/Button;

    .line 613
    const v3, 0x7f0801ec

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonpre7:Landroid/widget/Button;

    .line 614
    const v3, 0x7f0801ec

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonprec7:Landroid/widget/Button;

    .line 615
    const v3, 0x7f0801ed

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonpre8:Landroid/widget/Button;

    .line 616
    const v3, 0x7f0801ed

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonprec8:Landroid/widget/Button;

    .line 617
    const v3, 0x7f0801ee

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonpre9:Landroid/widget/Button;

    .line 618
    const v3, 0x7f0801ee

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonprec9:Landroid/widget/Button;

    .line 619
    const v3, 0x7f0801ef

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonpre10:Landroid/widget/Button;

    .line 620
    const v3, 0x7f0801ef

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonprec10:Landroid/widget/Button;

    .line 621
    const v3, 0x7f0801f0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonpre11:Landroid/widget/Button;

    .line 622
    const v3, 0x7f0801f0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonprec11:Landroid/widget/Button;

    .line 623
    const v3, 0x7f0801f1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonpre12:Landroid/widget/Button;

    .line 624
    const v3, 0x7f0801f1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonprec12:Landroid/widget/Button;

    .line 625
    const v3, 0x7f0801f2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonpre13:Landroid/widget/Button;

    .line 626
    const v3, 0x7f0801f2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonprec13:Landroid/widget/Button;

    .line 627
    const v3, 0x7f0801f3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonpre14:Landroid/widget/Button;

    .line 628
    const v3, 0x7f0801f3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonprec14:Landroid/widget/Button;

    .line 629
    const v3, 0x7f0801f4

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonpre15:Landroid/widget/Button;

    .line 630
    const v3, 0x7f0801f4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonprec15:Landroid/widget/Button;

    .line 631
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->listViews:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->listViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyPagerAdapter;

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->listViews:Ljava/util/List;

    invoke-direct {v4, p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyPagerAdapter;-><init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 634
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 635
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnPageChangeListener;

    invoke-direct {v4, p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnPageChangeListener;-><init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 636
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonpre1:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonprec1:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 638
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonpre2:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 639
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonprec2:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonpre3:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonprec3:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonpre4:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonprec4:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonpre5:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonprec5:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 646
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonpre6:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonprec6:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonpre7:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 649
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonprec7:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 650
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonpre8:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonprec8:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 652
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonpre9:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonprec9:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonpre10:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonprec10:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 656
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonpre11:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 657
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonprec11:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonpre12:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 659
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonprec12:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 660
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonpre13:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 661
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonprec13:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonpre14:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 663
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonprec14:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 664
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonpre15:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonprec15:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 667
    return-void
.end method

.method private StartAudio()V
    .locals 1

    .prologue
    .line 1405
    monitor-enter p0

    .line 1406
    :try_start_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->AudioBuffer:Lcom/easyview/talkutils/CustomBuffer;

    invoke-virtual {v0}, Lcom/easyview/talkutils/CustomBuffer;->ClearAll()V

    .line 1407
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->audioPlayer:Lcom/easyview/talkutils/AudioPlayer;

    invoke-virtual {v0}, Lcom/easyview/talkutils/AudioPlayer;->AudioPlayStart()Z

    .line 1408
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    invoke-static {v0}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPStartAudio(Ljava/lang/String;)I

    .line 1405
    monitor-exit p0

    .line 1410
    return-void

    .line 1405
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
    .line 1421
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->customAudioRecorder:Lcom/easyview/talkutils/CustomAudioRecorder;

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->customAudioRecorder:Lcom/easyview/talkutils/CustomAudioRecorder;

    invoke-virtual {v0}, Lcom/easyview/talkutils/CustomAudioRecorder;->StartRecord()V

    .line 1423
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    invoke-static {v0}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPStartTalk(Ljava/lang/String;)I

    .line 1425
    :cond_0
    return-void
.end method

.method private StopAudio()V
    .locals 1

    .prologue
    .line 1413
    monitor-enter p0

    .line 1414
    :try_start_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->audioPlayer:Lcom/easyview/talkutils/AudioPlayer;

    invoke-virtual {v0}, Lcom/easyview/talkutils/AudioPlayer;->AudioPlayStop()V

    .line 1415
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->AudioBuffer:Lcom/easyview/talkutils/CustomBuffer;

    invoke-virtual {v0}, Lcom/easyview/talkutils/CustomBuffer;->ClearAll()V

    .line 1416
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    invoke-static {v0}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPStopAudio(Ljava/lang/String;)I

    .line 1413
    monitor-exit p0

    .line 1418
    return-void

    .line 1413
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
    .line 1432
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->customAudioRecorder:Lcom/easyview/talkutils/CustomAudioRecorder;

    if-eqz v0, :cond_0

    .line 1433
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->customAudioRecorder:Lcom/easyview/talkutils/CustomAudioRecorder;

    invoke-virtual {v0}, Lcom/easyview/talkutils/CustomAudioRecorder;->StopRecord()V

    .line 1434
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    invoke-static {v0}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPStopTalk(Ljava/lang/String;)I

    .line 1436
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->textViewVideoing:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->textView_sdsize:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Z
    .locals 1

    .prologue
    .line 1765
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isPTZPrompt:Z

    return v0
.end method

.method static synthetic access$100(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nBrightness:I

    return v0
.end method

.method static synthetic access$101(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V
    .locals 0

    .prologue
    .line 117
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nContrast:I

    return-void
.end method

.method static synthetic access$102(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nContrast:I

    return v0
.end method

.method static synthetic access$11(Lobject/p2pwificam/clientActivity/PlayTestActivity;Z)V
    .locals 0

    .prologue
    .line 1765
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isPTZPrompt:Z

    return-void
.end method

.method static synthetic access$12(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->vidoeView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$13(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoHeight:I

    return v0
.end method

.method static synthetic access$14(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoWidth:I

    return v0
.end method

.method static synthetic access$15(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isResolution:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$16(Lobject/p2pwificam/clientActivity/PlayTestActivity;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isResolution:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$17(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->txtResolution:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$18(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isFPS:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$19(Lobject/p2pwificam/clientActivity/PlayTestActivity;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isFPS:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->sdSize:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$20(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->text_bps:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$21(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/opengl/GLSurfaceView;
    .locals 1

    .prologue
    .line 2835
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method static synthetic access$22(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Lobject/p2pwificam/clientActivity/MyRender;
    .locals 1

    .prologue
    .line 2834
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    return-object v0
.end method

.method static synthetic access$23(Lobject/p2pwificam/clientActivity/PlayTestActivity;)[B
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->videodata:[B

    return-object v0
.end method

.method static synthetic access$24(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->videoViewStandard:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$25(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 2836
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzTakepic:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$26(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 1766
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzTakeVideo:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$27(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->videoDataLen:I

    return v0
.end method

.method static synthetic access$28(Lobject/p2pwificam/clientActivity/PlayTestActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1006
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mBmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$29(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nTimeoutRemain:I

    return v0
.end method

.method static synthetic access$30(Lobject/p2pwificam/clientActivity/PlayTestActivity;Z)V
    .locals 0

    .prologue
    .line 130
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bDisplayFinished:Z

    return-void
.end method

.method static synthetic access$31(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V
    .locals 0

    .prologue
    .line 108
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoWidth:I

    return-void
.end method

.method static synthetic access$32(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V
    .locals 0

    .prologue
    .line 109
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoHeight:I

    return-void
.end method

.method static synthetic access$33(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isTakepic:Z

    return v0
.end method

.method static synthetic access$34(Lobject/p2pwificam/clientActivity/PlayTestActivity;Z)V
    .locals 0

    .prologue
    .line 164
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isTakepic:Z

    return-void
.end method

.method static synthetic access$35(Lobject/p2pwificam/clientActivity/PlayTestActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1119
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->takePicture(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$36(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nPlayCount:I

    return v0
.end method

.method static synthetic access$37(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V
    .locals 0

    .prologue
    .line 133
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nPlayCount:I

    return-void
.end method

.method static synthetic access$38(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nStreamCodecType:I

    return v0
.end method

.method static synthetic access$39(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->imgViewSnap:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V
    .locals 0

    .prologue
    .line 145
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nTimeoutRemain:I

    return-void
.end method

.method static synthetic access$40(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->imgViewRecord:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$41(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->imgViewOpenLock:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$42(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->st:Z

    return v0
.end method

.method static synthetic access$43(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->video_i:I

    return v0
.end method

.method static synthetic access$44(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V
    .locals 0

    .prologue
    .line 175
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->video_i:I

    return-void
.end method

.method static synthetic access$45(Lobject/p2pwificam/clientActivity/PlayTestActivity;J)V
    .locals 0

    .prologue
    .line 214
    iput-wide p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->allVideoSize:J

    return-void
.end method

.method static synthetic access$46(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2754
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getDateTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$47(Lobject/p2pwificam/clientActivity/PlayTestActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$48(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isH264:Z

    return v0
.end method

.method static synthetic access$49(Lobject/p2pwificam/clientActivity/PlayTestActivity;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->div:Ljava/io/File;

    return-void
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->timeoutHandle:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$50(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/io/File;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->div:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$51(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$52(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V
    .locals 0

    .prologue
    .line 216
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->widthV:I

    return-void
.end method

.method static synthetic access$53(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V
    .locals 0

    .prologue
    .line 217
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->heightV:I

    return-void
.end method

.method static synthetic access$54(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->widthV:I

    return v0
.end method

.method static synthetic access$55(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->heightV:I

    return v0
.end method

.method static synthetic access$56(Lobject/p2pwificam/clientActivity/PlayTestActivity;Z)V
    .locals 0

    .prologue
    .line 179
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isT:Z

    return-void
.end method

.method static synthetic access$57(Lobject/p2pwificam/clientActivity/PlayTestActivity;Ljava/util/LinkedList;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->h264JpegVideoDate:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$58(Lobject/p2pwificam/clientActivity/PlayTestActivity;Ljava/util/LinkedList;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->IorP:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$59(Lobject/p2pwificam/clientActivity/PlayTestActivity;)J
    .locals 2

    .prologue
    .line 214
    iget-wide v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->allVideoSize:J

    return-wide v0
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isExit:Z

    return v0
.end method

.method static synthetic access$60(Lobject/p2pwificam/clientActivity/PlayTestActivity;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->delFile:Ljava/io/File;

    return-void
.end method

.method static synthetic access$61(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/io/File;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->delFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$62(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->h264JpegVideoDate:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$63(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bH:Z

    return v0
.end method

.method static synthetic access$64(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->IorP:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$65(Lobject/p2pwificam/clientActivity/PlayTestActivity;Z)V
    .locals 0

    .prologue
    .line 183
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bH:Z

    return-void
.end method

.method static synthetic access$66(Lobject/p2pwificam/clientActivity/PlayTestActivity;[B)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->datebyte:[B

    return-void
.end method

.method static synthetic access$67(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V
    .locals 0

    .prologue
    .line 182
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->iORp:I

    return-void
.end method

.method static synthetic access$68(Lobject/p2pwificam/clientActivity/PlayTestActivity;)[B
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->datebyte:[B

    return-object v0
.end method

.method static synthetic access$69(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->iORp:I

    return v0
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V
    .locals 0

    .prologue
    .line 1244
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getCameraParams()V

    return-void
.end method

.method static synthetic access$70(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->MyTakeVideoHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$71(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/io/File;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->path:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$72(Lobject/p2pwificam/clientActivity/PlayTestActivity;Landroid/os/StatFs;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->stat:Landroid/os/StatFs;

    return-void
.end method

.method static synthetic access$73(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/os/StatFs;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->stat:Landroid/os/StatFs;

    return-object v0
.end method

.method static synthetic access$74(Lobject/p2pwificam/clientActivity/PlayTestActivity;J)V
    .locals 0

    .prologue
    .line 204
    iput-wide p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->availableBlocks:J

    return-void
.end method

.method static synthetic access$75(Lobject/p2pwificam/clientActivity/PlayTestActivity;)J
    .locals 2

    .prologue
    .line 204
    iget-wide v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->availableBlocks:J

    return-wide v0
.end method

.method static synthetic access$76(Lobject/p2pwificam/clientActivity/PlayTestActivity;)J
    .locals 2

    .prologue
    .line 202
    iget-wide v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->blockSize:J

    return-wide v0
.end method

.method static synthetic access$77(Lobject/p2pwificam/clientActivity/PlayTestActivity;J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    invoke-direct {p0, p1, p2}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->formatSize(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$78(Lobject/p2pwificam/clientActivity/PlayTestActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->sdAvail:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$79(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->sdAvail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$80(Lobject/p2pwificam/clientActivity/PlayTestActivity;Z)V
    .locals 0

    .prologue
    .line 147
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isTakeVideo:Z

    return-void
.end method

.method static synthetic access$81(Lobject/p2pwificam/clientActivity/PlayTestActivity;Z)V
    .locals 0

    .prologue
    .line 180
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isstart:Z

    return-void
.end method

.method static synthetic access$82(Lobject/p2pwificam/clientActivity/PlayTestActivity;Z)V
    .locals 0

    .prologue
    .line 176
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->st:Z

    return-void
.end method

.method static synthetic access$83(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->layout_videoing:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$84(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->playHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$85(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->streamType:I

    return-void
.end method

.method static synthetic access$86(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->streamType:I

    return v0
.end method

.method static synthetic access$87(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$88(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->offset:I

    return v0
.end method

.method static synthetic access$89(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bmpW:I

    return v0
.end method

.method static synthetic access$9(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V
    .locals 0

    .prologue
    .line 936
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->setViewVisible()V

    return-void
.end method

.method static synthetic access$90(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->currIndex:I

    return v0
.end method

.method static synthetic access$91(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V
    .locals 0

    .prologue
    .line 233
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->currIndex:I

    return-void
.end method

.method static synthetic access$92(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->t1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$93(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->t2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$94(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->cursorxx:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$95(Lobject/p2pwificam/clientActivity/PlayTestActivity;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 484
    invoke-direct {p0, p1, p2}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->saveBmpToSDcard(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$96(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$97(Lobject/p2pwificam/clientActivity/PlayTestActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1133
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->savePicToSDcard(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$98(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bgetCameraParamsThreadRuning:Z

    return v0
.end method

.method static synthetic access$99(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V
    .locals 0

    .prologue
    .line 116
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nBrightness:I

    return-void
.end method

.method private defaultVideoParams()V
    .locals 4

    .prologue
    const/16 v3, 0x80

    const/4 v2, 0x1

    .line 573
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nBrightness:I

    .line 574
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nContrast:I

    .line 575
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 576
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 577
    const v0, 0x7f0601a1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->showToast(I)V

    .line 578
    return-void
.end method

.method private dismissBrightAndContrastProgress()V
    .locals 1

    .prologue
    .line 2648
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2649
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2650
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    .line 2652
    :cond_0
    return-void
.end method

.method private existSdcard()Z
    .locals 2

    .prologue
    .line 1583
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1584
    const-string v1, "mounted"

    .line 1583
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1584
    if-eqz v0, :cond_0

    .line 1585
    const/4 v0, 0x1

    .line 1587
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findView()V
    .locals 7

    .prologue
    .line 1448
    const v5, 0x7f080185

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->txtResolution:Landroid/widget/TextView;

    .line 1449
    const v5, 0x7f080186

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->txtFPS:Landroid/widget/TextView;

    .line 1450
    const v5, 0x7f080187

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->txtBPS:Landroid/widget/TextView;

    .line 1451
    const v5, 0x7f080080

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->textViewTitle:Landroid/widget/TextView;

    .line 1453
    const v5, 0x7f080192

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->textView_sdsize:Landroid/widget/TextView;

    .line 1454
    const v5, 0x7f080191

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->layout_videoing:Landroid/widget/LinearLayout;

    .line 1455
    const v5, 0x7f0801b2

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->checkBoxHS:Landroid/widget/ImageButton;

    .line 1457
    const v5, 0x7f0801cd

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->imgBtnRecord:Landroid/widget/ImageButton;

    .line 1458
    const v5, 0x7f0801cf

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->imgBtnSnap:Landroid/widget/ImageButton;

    .line 1459
    const v5, 0x7f0801d1

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->imgBtnOpenLock:Landroid/widget/ImageButton;

    .line 1460
    const v5, 0x7f0801d3

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->imgBtnCallStop:Landroid/widget/ImageButton;

    .line 1461
    const v5, 0x7f0801d5

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->imgBtnCallOff:Landroid/widget/ImageButton;

    .line 1462
    const v5, 0x7f0801d7

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->imgBtnCallStart:Landroid/widget/ImageButton;

    .line 1464
    const v5, 0x7f0801c7

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->imgViewRecord:Landroid/widget/ImageView;

    .line 1465
    const v5, 0x7f0801c8

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->imgViewSnap:Landroid/widget/ImageView;

    .line 1466
    const v5, 0x7f0801c9

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->imgViewOpenLock:Landroid/widget/ImageView;

    .line 1469
    const v5, 0x7f08007b

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->playSurface:Landroid/view/SurfaceView;

    .line 1470
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->playSurface:Landroid/view/SurfaceView;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 1471
    const v5, 0x7f080197

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->button_back:Landroid/widget/ImageButton;

    .line 1472
    const v5, 0x7f08007c

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/opengl/GLSurfaceView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 1473
    new-instance v5, Lobject/p2pwificam/clientActivity/MyRender;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-direct {v5, v6}, Lobject/p2pwificam/clientActivity/MyRender;-><init>(Landroid/opengl/GLSurfaceView;)V

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    .line 1474
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    invoke-virtual {v5, v6}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 1475
    const v5, 0x7f080198

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonPreset:Landroid/widget/Button;

    .line 1480
    const v5, 0x7f080193

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->textViewVideoing:Landroid/widget/TextView;

    .line 1481
    const v5, 0x7f0801bf

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->led_open:Landroid/widget/ImageButton;

    .line 1482
    const v5, 0x7f0801c0

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->led_close:Landroid/widget/ImageButton;

    .line 1483
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->led_close:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1484
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->led_open:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1489
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->buttonPreset:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1490
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->checkBoxHS:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1491
    const v5, 0x7f0800aa

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->vidoeView:Landroid/widget/ImageView;

    .line 1492
    const v5, 0x7f0800ab

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->videoViewStandard:Landroid/widget/ImageView;

    .line 1493
    const v5, 0x7f08007d

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->progressView:Landroid/view/View;

    .line 1494
    const v5, 0x7f08018f

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->textosd:Landroid/widget/TextView;

    .line 1495
    const v5, 0x7f0801c5

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->text_bps:Landroid/widget/TextView;

    .line 1496
    const v5, 0x7f080190

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->textTimeStamp:Landroid/widget/TextView;

    .line 1498
    const v5, 0x7f080196

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->cameraName:Landroid/widget/TextView;

    .line 1501
    const v5, 0x7f08007f

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->osdView:Landroid/view/View;

    .line 1503
    const v5, 0x7f080199

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzHoriMirror2:Landroid/widget/ImageButton;

    .line 1504
    const v5, 0x7f08019a

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzVertMirror2:Landroid/widget/ImageButton;

    .line 1505
    const v5, 0x7f08019b

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzHoriTour2:Landroid/widget/ImageButton;

    .line 1506
    const v5, 0x7f08019c

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzVertTour2:Landroid/widget/ImageButton;

    .line 1508
    const v5, 0x7f0801b3

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzAudio:Landroid/widget/Button;

    .line 1509
    const v5, 0x7f0801d8

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzMicrophone:Landroid/widget/ImageButton;

    .line 1510
    const v5, 0x7f0801b8

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzTakepic:Landroid/widget/ImageButton;

    .line 1511
    const v5, 0x7f0801b9

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzTakeVideo:Landroid/widget/ImageButton;

    .line 1512
    const v5, 0x7f0801bb

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 1513
    .local v2, "ptzBrightness":Landroid/widget/ImageButton;
    const v5, 0x7f0801bc

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 1514
    .local v3, "ptzContrast":Landroid/widget/ImageButton;
    const v5, 0x7f0801ba

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    .line 1515
    const v5, 0x7f0801be

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzPlayMode:Landroid/widget/ImageButton;

    .line 1516
    const v5, 0x7f0801b0

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzOtherSetView:Landroid/view/View;

    .line 1517
    const v5, 0x7f0801af

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzOtherSetAnimView:Landroid/view/View;

    .line 1518
    const v5, 0x7f0801b1

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzPlatform:Landroid/widget/LinearLayout;

    .line 1519
    const v5, 0x7f0801bd

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 1520
    .local v4, "ptzDefaultSet":Landroid/widget/ImageButton;
    const v5, 0x7f080184

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->layout_show_Info:Landroid/widget/LinearLayout;

    .line 1522
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzHoriMirror2:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1523
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzVertMirror2:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1524
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzHoriTour2:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1525
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzVertTour2:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1528
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->imgBtnRecord:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1529
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->imgBtnSnap:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1530
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->imgBtnOpenLock:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1531
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->imgBtnCallStop:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1532
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->imgBtnCallOff:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1533
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->imgBtnCallStart:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1536
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzAudio:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1537
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzMicrophone:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1538
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzTakepic:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1539
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzTakeVideo:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1540
    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1541
    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1542
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1543
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzPlayMode:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1544
    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1545
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->button_back:Landroid/widget/ImageButton;

    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1546
    const v5, 0x7f080195

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->topbg:Landroid/widget/RelativeLayout;

    .line 1547
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1548
    const v6, 0x7f02015e

    .line 1547
    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1549
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1550
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 1551
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 1553
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->topbg:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1554
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzOtherSetAnimView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1556
    return-void
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 414
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCameraParams()V
    .locals 3

    .prologue
    .line 1246
    const-string v0, "playactivitytest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "strDID  === "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    .line 1250
    const/4 v1, 0x2

    .line 1249
    invoke-static {v0, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPGetSystemParams(Ljava/lang/String;I)I

    .line 1251
    return-void
.end method

.method private getDataFromOther()V
    .locals 4

    .prologue
    .line 1378
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1379
    .local v0, "in":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1380
    const-string v1, "stream_type"

    .line 1381
    const/4 v2, 0x3

    .line 1380
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->streamType:I

    .line 1382
    const-string v1, "camera_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strName:Ljava/lang/String;

    .line 1383
    const-string v1, "cameraid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    .line 1384
    const-string v1, "camera_type"

    .line 1385
    const/4 v2, 0x1

    .line 1384
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nP2PMode:I

    .line 1387
    const-string v1, "play_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->playType:I

    .line 1390
    const-string v1, "PlayTestActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "strDID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    const-string v1, "strDIDtag"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "strName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "strDID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "streamType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->streamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "nP2PMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nP2PMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    :cond_0
    return-void
.end method

.method private getDateTime()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2755
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2756
    .local v0, "d":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2757
    .local v1, "f":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 2758
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

    .line 2759
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

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
    .line 1192
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1193
    .local v0, "d":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd_HH_mm"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1194
    .local v1, "f":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1195
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

    .line 1743
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float v0, v2, v3

    .line 1744
    .local v0, "x":F
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float v1, v2, v3

    .line 1745
    .local v1, "y":F
    div-float v2, v0, v4

    div-float v3, v1, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 1746
    return-void
.end method

.method private releaseTalk()V
    .locals 1

    .prologue
    .line 1428
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->customAudioRecorder:Lcom/easyview/talkutils/CustomAudioRecorder;

    invoke-virtual {v0}, Lcom/easyview/talkutils/CustomAudioRecorder;->releaseRecord()V

    .line 1429
    return-void
.end method

.method private returnLastBmp2Home()V
    .locals 1

    .prologue
    .line 454
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayTestActivity$9;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity$9;-><init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V

    .line 481
    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/PlayTestActivity$9;->start()V

    .line 482
    return-void
.end method

.method private saveBmpToSDcard(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 485
    const/4 v4, 0x0

    .line 486
    .local v4, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 487
    const-string v8, "IPcamer/picid"

    .line 486
    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 488
    .local v1, "div":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 489
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 492
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

    .line 493
    .local v3, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x50

    invoke-virtual {p2, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 495
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 496
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    invoke-virtual {v7, p1}, Lobject/p2pipcam/utils/DataBaseHelper;->queryFirstpic(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 497
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-gtz v7, :cond_1

    .line 498
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 499
    .local v6, "path":Ljava/lang/String;
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    invoke-virtual {v7, p1, v6}, Lobject/p2pipcam/utils/DataBaseHelper;->addFirstpic(Ljava/lang/String;Ljava/lang/String;)Z

    .line 501
    .end local v6    # "path":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 502
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 508
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 505
    :catch_0
    move-exception v2

    .line 506
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 505
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
    .line 1134
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getStrDate()Ljava/lang/String;

    move-result-object v7

    .line 1135
    .local v7, "strDate":Ljava/lang/String;
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    .line 1136
    const-string v10, "picture"

    .line 1135
    invoke-virtual {v8, v9, v7, v10}, Lobject/p2pipcam/utils/DataBaseHelper;->queryVideoOrPictureByDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1137
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    add-int/lit8 v6, v8, 0x1

    .line 1138
    .local v6, "seri":I
    const/4 v4, 0x0

    .line 1140
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    .line 1141
    const-string v9, "IPcamer/pic"

    .line 1140
    invoke-direct {v1, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1142
    .local v1, "div":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1143
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1145
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

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1146
    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1145
    invoke-direct {v3, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1147
    .local v3, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1148
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {p1, v8, v9, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1149
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 1150
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 1151
    const-string v11, "picture"

    .line 1150
    invoke-virtual {v8, v9, v10, v11, v7}, Lobject/p2pipcam/utils/DataBaseHelper;->createVideoOrPic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 1152
    new-instance v8, Lobject/p2pwificam/clientActivity/PlayTestActivity$14;

    invoke-direct {v8, p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity$14;-><init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1178
    :cond_1
    const/4 v8, 0x0

    :try_start_3
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isPictSave:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1179
    if-eqz v5, :cond_4

    .line 1181
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1185
    :goto_0
    const/4 v4, 0x0

    .line 1189
    .end local v1    # "div":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 1164
    :catch_0
    move-exception v2

    .line 1165
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    new-instance v8, Lobject/p2pwificam/clientActivity/PlayTestActivity$15;

    invoke-direct {v8, p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity$15;-><init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1175
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

    .line 1176
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1178
    const/4 v8, 0x0

    :try_start_6
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isPictSave:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1179
    if-eqz v4, :cond_2

    .line 1181
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1185
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    const/4 v4, 0x0

    goto :goto_1

    .line 1182
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1183
    .local v2, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 1134
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "seri":I
    .end local v7    # "strDate":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1177
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "seri":I
    .restart local v7    # "strDate":Ljava/lang/String;
    :catchall_1
    move-exception v8

    .line 1178
    :goto_4
    const/4 v9, 0x0

    :try_start_9
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isPictSave:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1179
    if-eqz v4, :cond_3

    .line 1181
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1185
    :goto_5
    const/4 v4, 0x0

    .line 1187
    :cond_3
    :try_start_b
    throw v8

    .line 1182
    :catch_2
    move-exception v2

    .line 1183
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1182
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "div":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    .line 1183
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_0

    .line 1177
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 1164
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
    .line 2763
    const-string v3, "PlayTestActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "type:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  bInitCameraParam:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2764
    iget-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bInitCameraParam:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2763
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    iget-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bInitCameraParam:Z

    if-nez v3, :cond_0

    .line 2817
    :goto_0
    return-void

    .line 2768
    :cond_0
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 2769
    .local v2, "width":I
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 2770
    const v4, 0x7f030012

    const/4 v5, 0x0

    .line 2769
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2771
    .local v0, "layout":Landroid/widget/LinearLayout;
    const v3, 0x7f080076

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 2772
    .local v1, "seekBar":Landroid/widget/SeekBar;
    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 2773
    packed-switch p1, :pswitch_data_0

    .line 2783
    :goto_1
    new-instance v3, Lobject/p2pwificam/clientActivity/PlayTestActivity$17;

    invoke-direct {v3, p0, p1}, Lobject/p2pwificam/clientActivity/PlayTestActivity$17;-><init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 2814
    new-instance v3, Landroid/widget/PopupWindow;

    div-int/lit8 v4, v2, 0x2

    const/16 v5, 0x3c

    invoke-direct {v3, v0, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    .line 2815
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    const v4, 0x7f08016c

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2816
    const/16 v5, 0x30

    const/4 v6, 0x0

    const/16 v7, 0x50

    .line 2815
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 2775
    :pswitch_0
    iget v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nBrightness:I

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 2778
    :pswitch_1
    iget v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nContrast:I

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 2773
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

    .line 937
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bProgress:Z

    if-eqz v0, :cond_0

    .line 938
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bProgress:Z

    .line 939
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->progressView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 940
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->osdView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 946
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getCameraParams()V

    .line 948
    :cond_0
    return-void
.end method

.method private showBottom()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, -0x1

    .line 2655
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2656
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2659
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2660
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzPlatform:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2662
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isUpDownPressed:Z

    if-eqz v1, :cond_1

    .line 2663
    const/4 v1, 0x0

    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isUpDownPressed:Z

    .line 2664
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzOtherSetAnimView:Landroid/view/View;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->dismissAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2665
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzOtherSetAnimView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2673
    :goto_0
    return-void

    .line 2667
    :cond_1
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->showResolution()V

    .line 2668
    const/4 v1, 0x1

    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isUpDownPressed:Z

    .line 2671
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzOtherSetAnimView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showResolution()V
    .locals 3

    .prologue
    .line 2719
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nStreamCodecType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2720
    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "jpeg resolution:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nResolution:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2722
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nResolution:I

    packed-switch v0, :pswitch_data_0

    .line 2752
    :goto_0
    return-void

    .line 2724
    :pswitch_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    const v1, 0x7f02010a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 2727
    :pswitch_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    const v1, 0x7f020109

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 2732
    :cond_0
    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "h264 resolution:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nResolution:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nResolution:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 2736
    :pswitch_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 2739
    :pswitch_3
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    const v1, 0x7f020089

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 2742
    :pswitch_4
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    const v1, 0x7f0200ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 2745
    :pswitch_5
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    const v1, 0x7f0200cb

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 2748
    :pswitch_6
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    const v1, 0x7f0200cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 2722
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2734
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

    .line 2676
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2716
    :goto_0
    return-void

    .line 2679
    :cond_0
    iget v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nStreamCodecType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 2681
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 2682
    const v7, 0x7f03004a

    invoke-virtual {v6, v7, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2681
    check-cast v0, Landroid/widget/LinearLayout;

    .line 2684
    .local v0, "layout":Landroid/widget/LinearLayout;
    const v6, 0x7f0801fa

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2683
    check-cast v4, Landroid/widget/TextView;

    .line 2686
    .local v4, "qvga":Landroid/widget/TextView;
    const v6, 0x7f0801fb

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 2685
    check-cast v5, Landroid/widget/TextView;

    .line 2687
    .local v5, "vga":Landroid/widget/TextView;
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2688
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2689
    new-instance v6, Landroid/widget/PopupWindow;

    const/16 v7, 0x64

    .line 2690
    invoke-direct {v6, v0, v7, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 2689
    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    .line 2691
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v11}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7, v10, v8, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 2695
    .end local v0    # "layout":Landroid/widget/LinearLayout;
    .end local v4    # "qvga":Landroid/widget/TextView;
    .end local v5    # "vga":Landroid/widget/TextView;
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 2696
    const v7, 0x7f030049

    invoke-virtual {v6, v7, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2695
    check-cast v0, Landroid/widget/LinearLayout;

    .line 2698
    .restart local v0    # "layout":Landroid/widget/LinearLayout;
    const v6, 0x7f0801f5

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2697
    check-cast v4, Landroid/widget/TextView;

    .line 2700
    .restart local v4    # "qvga":Landroid/widget/TextView;
    const v6, 0x7f0801f6

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 2699
    check-cast v5, Landroid/widget/TextView;

    .line 2702
    .restart local v5    # "vga":Landroid/widget/TextView;
    const v6, 0x7f0801f7

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2701
    check-cast v3, Landroid/widget/TextView;

    .line 2703
    .local v3, "p720":Landroid/widget/TextView;
    const v6, 0x7f0801f8

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2704
    .local v1, "low":Landroid/widget/TextView;
    const v6, 0x7f0801f9

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2705
    .local v2, "lowest":Landroid/widget/TextView;
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2706
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2707
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2708
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2709
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2710
    new-instance v6, Landroid/widget/PopupWindow;

    const/16 v7, 0x96

    .line 2711
    invoke-direct {v6, v0, v7, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 2710
    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    .line 2712
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v11}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7, v10, v8, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0
.end method

.method private showTop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 560
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isShowtoping:Z

    if-eqz v0, :cond_0

    .line 561
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isShowtoping:Z

    .line 562
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->topbg:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 563
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->topbg:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->dismissTopAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 570
    :goto_0
    return-void

    .line 565
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isShowtoping:Z

    .line 566
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->topbg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->topbg:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->showTopAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private spacing(Landroid/view/MotionEvent;)F
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1734
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 1735
    .local v0, "x":F
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 1736
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

    .line 1739
    .end local v0    # "x":F
    .end local v1    # "y":F
    :goto_0
    return v2

    .line 1737
    :catch_0
    move-exception v2

    .line 1739
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private startTimeout()V
    .locals 4

    .prologue
    .line 929
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bTimeoutStarted:Z

    if-nez v1, :cond_0

    .line 930
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 931
    .local v0, "msgMessage":Landroid/os/Message;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->timeoutHandle:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 932
    const/4 v1, 0x1

    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bTimeoutStarted:Z

    .line 934
    .end local v0    # "msgMessage":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private takePicture(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1120
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isPictSave:Z

    if-nez v0, :cond_0

    .line 1121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isPictSave:Z

    .line 1122
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayTestActivity$13;

    invoke-direct {v0, p0, p1}, Lobject/p2pwificam/clientActivity/PlayTestActivity$13;-><init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;Landroid/graphics/Bitmap;)V

    .line 1126
    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/PlayTestActivity$13;->start()V

    .line 1131
    :cond_0
    return-void
.end method


# virtual methods
.method public AudioRecordData([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    .line 1826
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bAudioRecordStart:Z

    if-eqz v0, :cond_0

    if-lez p2, :cond_0

    .line 1827
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPTalkAudioData(Ljava/lang/String;[BI)I

    .line 1829
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

    .line 2983
    const-string v3, "PlayTestActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Call VideoData...h264Data: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " len: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2984
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

    .line 2983
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    iget-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bDisplayFinished:Z

    if-nez v3, :cond_0

    .line 2986
    const-string v3, "PlayTestActivity"

    const-string v4, "return bDisplayFinished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3040
    :goto_0
    return-void

    .line 2991
    :cond_0
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bDisplayFinished:Z

    .line 2993
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->videodata:[B

    .line 2994
    iput p3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->videoDataLen:I

    .line 2996
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->lastTimeStamp:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 2998
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->lastTimeStamp:J

    .line 2999
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isFPS:Ljava/lang/Boolean;

    .line 3002
    iget v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->Video_bps:I

    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->VideoBPS:I

    .line 3003
    iget v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->Video_fps:I

    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->VideoFPS:I

    .line 3004
    iput v8, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->Video_fps:I

    iput v8, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->Video_bps:I

    .line 3007
    :cond_1
    iget v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->Video_fps:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->Video_fps:I

    .line 3009
    iget v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->Video_bps:I

    add-int/2addr v3, p3

    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->Video_bps:I

    .line 3014
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 3015
    .local v1, "msg":Landroid/os/Message;
    if-ne p2, v7, :cond_4

    .line 3016
    iput p4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoWidth:I

    .line 3017
    iput p5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nVideoHeight:I

    .line 3019
    iget-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isTakepic:Z

    if-eqz v3, :cond_2

    .line 3020
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isTakepic:Z

    .line 3021
    mul-int v3, p4, p5

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [B

    .line 3022
    .local v2, "rgb":[B
    invoke-static {p1, v2, p4, p5}, Lobject/p2pipcam/nativecaller/NativeCaller;->YUV4202RGB565([B[BII)I

    .line 3023
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3025
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p5, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3024
    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mBmp:Landroid/graphics/Bitmap;

    .line 3026
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 3027
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mBmp:Landroid/graphics/Bitmap;

    invoke-direct {p0, v3}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->takePicture(Landroid/graphics/Bitmap;)V

    .line 3029
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "rgb":[B
    :cond_2
    iput-boolean v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isH264:Z

    .line 3030
    iput v7, v1, Landroid/os/Message;->what:I

    .line 3039
    :cond_3
    :goto_1
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 3033
    :cond_4
    const/4 v3, 0x2

    iput v3, v1, Landroid/os/Message;->what:I

    .line 3034
    iget-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isstart:Z

    if-eqz v3, :cond_3

    .line 3035
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->h264JpegVideoDate:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public callBackAudioData([BI)V
    .locals 3
    .param p1, "pcm"    # [B
    .param p2, "len"    # I

    .prologue
    .line 3083
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->audioPlayer:Lcom/easyview/talkutils/AudioPlayer;

    invoke-virtual {v2}, Lcom/easyview/talkutils/AudioPlayer;->isAudioPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3093
    :goto_0
    return-void

    .line 3086
    :cond_0
    new-instance v1, Lcom/easyview/talkutils/CustomBufferHead;

    invoke-direct {v1}, Lcom/easyview/talkutils/CustomBufferHead;-><init>()V

    .line 3087
    .local v1, "head":Lcom/easyview/talkutils/CustomBufferHead;
    new-instance v0, Lcom/easyview/talkutils/CustomBufferData;

    invoke-direct {v0}, Lcom/easyview/talkutils/CustomBufferData;-><init>()V

    .line 3088
    .local v0, "data":Lcom/easyview/talkutils/CustomBufferData;
    iput p2, v1, Lcom/easyview/talkutils/CustomBufferHead;->length:I

    .line 3089
    const v2, 0xff00ff

    iput v2, v1, Lcom/easyview/talkutils/CustomBufferHead;->startcode:I

    .line 3090
    iput-object v1, v0, Lcom/easyview/talkutils/CustomBufferData;->head:Lcom/easyview/talkutils/CustomBufferHead;

    .line 3091
    iput-object p1, v0, Lcom/easyview/talkutils/CustomBufferData;->data:[B

    .line 3092
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->AudioBuffer:Lcom/easyview/talkutils/CustomBuffer;

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
    .line 2885
    const-string v0, "PlayTestActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CameraParamNotify...did:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " brightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2886
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

    .line 2887
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

    .line 2888
    const-string v2, " flip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2885
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2889
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

    .line 2890
    iput p3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nBrightness:I

    .line 2891
    iput p4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nContrast:I

    .line 2892
    iput p2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nResolution:I

    .line 2893
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nResolution:I

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->setResolution(I)V

    .line 2895
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bInitCameraParam:Z

    .line 2968
    return-void
.end method

.method public callBackH264Data([BII)V
    .locals 4
    .param p1, "h264"    # [B
    .param p2, "type"    # I
    .param p3, "size"    # I

    .prologue
    const/4 v3, 0x1

    .line 3106
    :try_start_0
    iput p2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isTypeI:I

    .line 3107
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isstart:Z

    if-eqz v0, :cond_1

    .line 3108
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isT:Z

    if-nez v0, :cond_0

    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isTypeI:I

    if-ne v0, v3, :cond_1

    .line 3109
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->h264JpegVideoDate:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3110
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->IorP:Ljava/util/LinkedList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3111
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isTypeI=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isTypeI:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isTypeI:I

    if-ne v0, v3, :cond_1

    .line 3113
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isT:Z

    if-nez v0, :cond_1

    .line 3114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isT:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3123
    :cond_1
    :goto_0
    return-void

    .line 3119
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
    .line 3048
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

    .line 3049
    const-string v4, " param: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3048
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    iget-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bManualExit:Z

    if-eqz v2, :cond_1

    .line 3074
    :cond_0
    :goto_0
    return-void

    .line 3053
    :cond_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 3054
    iput p3, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nStreamCodecType:I

    .line 3055
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 3056
    .local v1, "msgMessage":Landroid/os/Message;
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->msgStreamCodecHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 3060
    .end local v1    # "msgMessage":Landroid/os/Message;
    :cond_2
    if-nez p2, :cond_0

    .line 3064
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3068
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3069
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3071
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

    .line 3072
    const-string v4, " param: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3071
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3073
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->msgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected displayResolution()V
    .locals 1

    .prologue
    .line 1204
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nResolution:I

    packed-switch v0, :pswitch_data_0

    .line 1220
    :pswitch_0
    return-void

    .line 1204
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
    .line 1714
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1715
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 1716
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected getScale()F
    .locals 1

    .prologue
    .line 1724
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 1720
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "whichValue"    # I

    .prologue
    .line 1728
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1729
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method public initExitPopupWindow2()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 800
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 801
    .local v0, "li":Landroid/view/LayoutInflater;
    const v1, 0x7f03002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->popv:Landroid/view/View;

    .line 802
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->InitImageView()V

    .line 803
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->InitTextView()V

    .line 804
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->InitViewPager()V

    .line 805
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->popv:Landroid/view/View;

    .line 807
    invoke-direct {v1, v2, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 805
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    .line 808
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    const v2, 0x7f07000c

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 809
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 810
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 811
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 813
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    .line 814
    new-instance v2, Lobject/p2pwificam/clientActivity/PlayTestActivity$11;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity$11;-><init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 822
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    new-instance v2, Lobject/p2pwificam/clientActivity/PlayTestActivity$12;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity$12;-><init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 832
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v9, 0xbb8

    const/16 v7, 0x8

    const v8, 0x7f02010c

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1880
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 2594
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1882
    :pswitch_1
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/16 v6, 0xe

    invoke-static {v4, v6, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    goto :goto_0

    .line 1885
    :pswitch_2
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/16 v6, 0xe

    invoke-static {v5, v6, v4}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    goto :goto_0

    .line 1888
    :pswitch_3
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->cameraName:Landroid/widget/TextView;

    const/16 v7, 0x11

    invoke-virtual {v5, v6, v7, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 1891
    :pswitch_4
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->stopMusicService()V

    .line 1892
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->quit()V

    goto :goto_0

    .line 1896
    :pswitch_5
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->stopMusicService()V

    .line 1897
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v5, :cond_1

    .line 1898
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->layout_show_Info:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1900
    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->setRequestedOrientation(I)V

    .line 1901
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->checkBoxHS:Landroid/widget/ImageButton;

    const v5, 0x7f020123

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1902
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->checkBoxHS:Landroid/widget/ImageButton;

    .line 1903
    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 1904
    :cond_1
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    .line 1906
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->layout_show_Info:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1907
    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->setRequestedOrientation(I)V

    .line 1908
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->checkBoxHS:Landroid/widget/ImageButton;

    const v5, 0x7f020122

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1909
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->checkBoxHS:Landroid/widget/ImageButton;

    .line 1910
    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 1933
    :pswitch_6
    iget-boolean v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->m_bLeftRightMirror:Z

    if-eqz v6, :cond_3

    .line 1934
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzHoriMirror2:Landroid/widget/ImageButton;

    const v7, 0xffffff

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 1935
    iget-boolean v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->m_bUpDownMirror:Z

    if-eqz v6, :cond_2

    .line 1936
    const/4 v3, 0x1

    .line 1949
    .local v3, "value1":I
    :goto_1
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/4 v7, 0x5

    invoke-static {v6, v7, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 1950
    iget-boolean v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->m_bLeftRightMirror:Z

    if-eqz v6, :cond_5

    :goto_2
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->m_bLeftRightMirror:Z

    goto/16 :goto_0

    .line 1938
    .end local v3    # "value1":I
    :cond_2
    const/4 v3, 0x0

    .line 1940
    .restart local v3    # "value1":I
    goto :goto_1

    .line 1941
    .end local v3    # "value1":I
    :cond_3
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzHoriMirror2:Landroid/widget/ImageButton;

    const v7, -0xffbb56

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 1942
    iget-boolean v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->m_bUpDownMirror:Z

    if-eqz v6, :cond_4

    .line 1943
    const/4 v3, 0x3

    .line 1944
    .restart local v3    # "value1":I
    goto :goto_1

    .line 1945
    .end local v3    # "value1":I
    :cond_4
    const/4 v3, 0x2

    .restart local v3    # "value1":I
    goto :goto_1

    :cond_5
    move v4, v5

    .line 1950
    goto :goto_2

    .line 1953
    .end local v3    # "value1":I
    :pswitch_7
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->stopMusicService()V

    .line 1955
    iget-boolean v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->m_bUpDownMirror:Z

    if-eqz v6, :cond_7

    .line 1956
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzVertMirror2:Landroid/widget/ImageButton;

    const v7, 0xffffff

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 1957
    iget-boolean v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->m_bLeftRightMirror:Z

    if-eqz v6, :cond_6

    .line 1958
    const/4 v2, 0x2

    .line 1970
    .local v2, "value":I
    :goto_3
    const-string v6, "tttt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/4 v7, 0x5

    invoke-static {v6, v7, v2}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 1972
    iget-boolean v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->m_bUpDownMirror:Z

    if-eqz v6, :cond_9

    :goto_4
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->m_bUpDownMirror:Z

    goto/16 :goto_0

    .line 1960
    .end local v2    # "value":I
    :cond_6
    const/4 v2, 0x0

    .line 1962
    .restart local v2    # "value":I
    goto :goto_3

    .line 1963
    .end local v2    # "value":I
    :cond_7
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzVertMirror2:Landroid/widget/ImageButton;

    const v7, -0xffbb56

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 1964
    iget-boolean v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->m_bLeftRightMirror:Z

    if-eqz v6, :cond_8

    .line 1965
    const/4 v2, 0x3

    .line 1966
    .restart local v2    # "value":I
    goto :goto_3

    .line 1967
    .end local v2    # "value":I
    :cond_8
    const/4 v2, 0x1

    .restart local v2    # "value":I
    goto :goto_3

    :cond_9
    move v4, v5

    .line 1972
    goto :goto_4

    .line 1976
    .end local v2    # "value":I
    :pswitch_8
    iget-boolean v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isLeftRight:Z

    if-eqz v6, :cond_a

    .line 1977
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzHoriTour2:Landroid/widget/ImageButton;

    const/16 v6, 0x44aa

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 1978
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isLeftRight:Z

    .line 1979
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    .line 1980
    const/16 v5, 0x1d

    .line 1979
    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 1982
    :cond_a
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzHoriTour2:Landroid/widget/ImageButton;

    const v6, -0xffbb56

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 1983
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isLeftRight:Z

    .line 1984
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    .line 1985
    const/16 v5, 0x1c

    .line 1984
    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 1989
    :pswitch_9
    iget-boolean v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isUpDown:Z

    if-eqz v6, :cond_b

    .line 1990
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzVertTour2:Landroid/widget/ImageButton;

    const/16 v6, 0x44aa

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 1991
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isUpDown:Z

    .line 1992
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    .line 1993
    const/16 v5, 0x1b

    .line 1992
    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 1995
    :cond_b
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzVertTour2:Landroid/widget/ImageButton;

    const v6, -0xffbb56

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 1996
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isUpDown:Z

    .line 1997
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    .line 1998
    const/16 v5, 0x1a

    .line 1997
    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 2003
    :pswitch_a
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->dismissBrightAndContrastProgress()V

    .line 2004
    iget v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->tagone:I

    if-nez v6, :cond_e

    .line 2005
    iget v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->talkAudio:I

    if-ne v6, v5, :cond_d

    .line 2006
    iget-boolean v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bAudioRecordStart:Z

    if-eqz v6, :cond_c

    .line 2007
    const-string v6, "tag"

    const-string v7, "\u505c\u6b62\u8bf4\u8bdd"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bAudioRecordStart:Z

    .line 2010
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzMicrophone:Landroid/widget/ImageButton;

    .line 2011
    const v6, 0x7f020103

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2012
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzMicrophone:Landroid/widget/ImageButton;

    .line 2013
    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2014
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->StopTalk()V

    .line 2027
    :cond_c
    :goto_5
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzAudio:Landroid/widget/Button;

    const-string v6, "OFF"

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2028
    iput v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->tagone:I

    goto/16 :goto_0

    .line 2016
    :cond_d
    iget v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->talkAudio:I

    if-nez v6, :cond_c

    .line 2017
    iget-boolean v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bAudioStart:Z

    if-eqz v6, :cond_c

    .line 2018
    const-string v6, "tag"

    const-string v7, "\u6ca1\u6709\u58f0\u97f3"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bAudioStart:Z

    .line 2021
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzMicrophone:Landroid/widget/ImageButton;

    .line 2022
    const v6, 0x7f0200fa

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2023
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzAudio:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 2024
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->StopAudio()V

    goto :goto_5

    .line 2029
    :cond_e
    iget v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->tagone:I

    if-ne v6, v5, :cond_0

    .line 2031
    iget v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->talkAudio:I

    if-ne v6, v5, :cond_10

    .line 2032
    iget-boolean v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bAudioRecordStart:Z

    if-nez v6, :cond_f

    .line 2033
    const-string v6, "tag"

    const-string v7, "\u5f00\u59cb\u8bf4\u8bdd"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bAudioRecordStart:Z

    .line 2036
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzMicrophone:Landroid/widget/ImageButton;

    .line 2037
    const v6, 0x7f020104

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2038
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzMicrophone:Landroid/widget/ImageButton;

    .line 2039
    invoke-virtual {v5, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2040
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->StartTalk()V

    .line 2052
    :cond_f
    :goto_6
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzAudio:Landroid/widget/Button;

    const-string v6, "ON"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2053
    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->tagone:I

    goto/16 :goto_0

    .line 2042
    :cond_10
    iget v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->talkAudio:I

    if-nez v6, :cond_f

    .line 2043
    iget-boolean v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bAudioStart:Z

    if-nez v6, :cond_f

    .line 2044
    const-string v6, "tag"

    const-string v7, "\u6709\u58f0\u97f3"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bAudioStart:Z

    .line 2047
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzMicrophone:Landroid/widget/ImageButton;

    const v6, 0x7f0200fb

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2048
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzAudio:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 2049
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->StartAudio()V

    goto :goto_6

    .line 2059
    :pswitch_b
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->dismissBrightAndContrastProgress()V

    .line 2060
    iget v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->tagone:I

    if-nez v6, :cond_12

    .line 2061
    iget v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->talkAudio:I

    if-nez v6, :cond_11

    .line 2062
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->StopAudio()V

    .line 2063
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzMicrophone:Landroid/widget/ImageButton;

    .line 2064
    const v6, 0x7f020104

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2065
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzMicrophone:Landroid/widget/ImageButton;

    .line 2066
    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2067
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->StartTalk()V

    .line 2068
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bAudioRecordStart:Z

    .line 2069
    iput v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->talkAudio:I

    goto/16 :goto_0

    .line 2070
    :cond_11
    iget v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->talkAudio:I

    if-ne v6, v5, :cond_0

    .line 2071
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->StopTalk()V

    .line 2072
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzMicrophone:Landroid/widget/ImageButton;

    const v7, 0x7f0200fb

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2073
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzMicrophone:Landroid/widget/ImageButton;

    .line 2074
    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2075
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->StartAudio()V

    .line 2076
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bAudioStart:Z

    .line 2077
    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->talkAudio:I

    goto/16 :goto_0

    .line 2080
    :cond_12
    const v4, 0x7f06001f

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->showToast(I)V

    goto/16 :goto_0

    .line 2085
    :pswitch_c
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->stopMusicService()V

    .line 2086
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->dismissBrightAndContrastProgress()V

    .line 2087
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->existSdcard()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2088
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isTakepic:Z

    goto/16 :goto_0

    .line 2090
    :cond_13
    const v4, 0x7f0601a3

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->showToast(I)V

    goto/16 :goto_0

    .line 2094
    :pswitch_d
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->stopMusicService()V

    .line 2095
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->dismissBrightAndContrastProgress()V

    .line 2096
    const-string v6, "ViewRecord"

    const-string v7, "55555555555555555555555555555555"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->existSdcard()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 2098
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isTakepic:Z

    .line 2099
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->imgViewSnap:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2100
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->viewHandler:Landroid/os/Handler;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2102
    :cond_14
    const v4, 0x7f0601a3

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->showToast(I)V

    goto/16 :goto_0

    .line 2106
    :pswitch_e
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->stopMusicService()V

    .line 2107
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->dismissBrightAndContrastProgress()V

    .line 2108
    iget-boolean v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isTakeVideo:Z

    if-eqz v6, :cond_16

    .line 2109
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->CloseAvi()I

    .line 2110
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isTakeVideo:Z

    .line 2111
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isstart:Z

    .line 2114
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->viewHandler:Landroid/os/Handler;

    const/16 v6, 0x16

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2115
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->st:Z

    .line 2116
    iget-wide v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->allVideoSize:J

    const-wide/16 v7, 0x400

    div-long/2addr v5, v7

    const-wide/16 v7, 0x80

    cmp-long v5, v5, v7

    if-gez v5, :cond_15

    .line 2117
    new-instance v5, Ljava/io/File;

    .line 2118
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2119
    const-string v7, "/IPcamer/video/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".avi"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2118
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2117
    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->delFile:Ljava/io/File;

    .line 2120
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->delFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    .line 2121
    .local v0, "b":Z
    const-string v5, "tagdel"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "if delect===="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    .end local v0    # "b":Z
    :cond_15
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isT:Z

    goto/16 :goto_0

    .line 2125
    :cond_16
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_17

    .line 2126
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 2127
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2129
    :cond_17
    new-instance v6, Landroid/os/StatFs;

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->path:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->stat:Landroid/os/StatFs;

    .line 2130
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->stat:Landroid/os/StatFs;

    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->availableBlocks:J

    .line 2131
    iget-wide v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->availableBlocks:J

    iget-wide v8, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->blockSize:J

    mul-long/2addr v6, v8

    invoke-direct {p0, v6, v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->formatSize(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->sdAvail:Ljava/lang/String;

    .line 2132
    iget-wide v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->availableBlocks:J

    iget-wide v8, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->blockSize:J

    mul-long/2addr v6, v8

    const-wide/32 v8, 0x100000

    div-long/2addr v6, v8

    const-wide/16 v8, 0x32

    cmp-long v6, v6, v8

    if-gez v6, :cond_18

    .line 2133
    const v4, 0x7f0601a9

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->showToastLong(I)V

    goto/16 :goto_0

    .line 2136
    :cond_18
    sput v5, Lobject/p2pipcam/system/SystemValue;->checkSDStatu:I

    .line 2137
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->allVideoSize:J

    .line 2138
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isTakeVideo:Z

    .line 2139
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isstart:Z

    .line 2141
    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->video_i:I

    .line 2142
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->st:Z

    .line 2145
    const-string v5, "ViewRecord"

    const-string v6, "1111111111111111111111111111111111111111111111111111"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->viewHandler:Landroid/os/Handler;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2151
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isT:Z

    .line 2152
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->h264JpegVideoDate:Ljava/util/LinkedList;

    .line 2153
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->IorP:Ljava/util/LinkedList;

    .line 2155
    new-instance v4, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;

    invoke-direct {v4, p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;-><init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V

    invoke-virtual {v4}, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->start()V

    goto/16 :goto_0

    .line 2159
    :pswitch_f
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->stopMusicService()V

    .line 2160
    const-string v4, "ViewRecord"

    const-string v5, "3333333333333333333333333333333333333333333"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->quit()V

    goto/16 :goto_0

    .line 2166
    :pswitch_10
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->stopMusicService()V

    .line 2168
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->quit()V

    goto/16 :goto_0

    .line 2172
    :pswitch_11
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->stopMusicService()V

    .line 2174
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->imgBtnCallOff:Landroid/widget/ImageButton;

    invoke-virtual {v6, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2175
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->imgBtnCallStart:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2176
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->imgBtnCallStop:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2177
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bAudioRecordStart:Z

    .line 2178
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bAudioStart:Z

    .line 2179
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->StartTalk()V

    .line 2180
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->StartAudio()V

    goto/16 :goto_0

    .line 2185
    :pswitch_12
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->stopMusicService()V

    .line 2186
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->fragment_dialog:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->cameraName:Landroid/widget/TextView;

    const/16 v7, 0x11

    invoke-virtual {v5, v6, v7, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0

    .line 2191
    :pswitch_13
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->stopMusicService()V

    .line 2192
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->dismissBrightAndContrastProgress()V

    .line 2193
    iget-boolean v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isTakeVideo:Z

    if-eqz v6, :cond_1a

    .line 2194
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->CloseAvi()I

    .line 2195
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isTakeVideo:Z

    .line 2196
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isstart:Z

    .line 2197
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzTakeVideo:Landroid/widget/ImageButton;

    const v6, 0x7f02010d

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2198
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->layout_videoing:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2199
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->st:Z

    .line 2200
    iget-wide v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->allVideoSize:J

    const-wide/16 v7, 0x400

    div-long/2addr v5, v7

    const-wide/16 v7, 0x80

    cmp-long v5, v5, v7

    if-gez v5, :cond_19

    .line 2201
    new-instance v5, Ljava/io/File;

    .line 2202
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2203
    const-string v7, "/IPcamer/video/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".avi"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2202
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2201
    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->delFile:Ljava/io/File;

    .line 2204
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->delFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    .line 2205
    .restart local v0    # "b":Z
    const-string v5, "tagdel"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "if delect===="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    .end local v0    # "b":Z
    :cond_19
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isT:Z

    goto/16 :goto_0

    .line 2209
    :cond_1a
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_1b

    .line 2210
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 2211
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2213
    :cond_1b
    new-instance v6, Landroid/os/StatFs;

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->path:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->stat:Landroid/os/StatFs;

    .line 2214
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->stat:Landroid/os/StatFs;

    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->availableBlocks:J

    .line 2215
    iget-wide v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->availableBlocks:J

    iget-wide v8, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->blockSize:J

    mul-long/2addr v6, v8

    invoke-direct {p0, v6, v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->formatSize(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->sdAvail:Ljava/lang/String;

    .line 2216
    iget-wide v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->availableBlocks:J

    iget-wide v8, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->blockSize:J

    mul-long/2addr v6, v8

    const-wide/32 v8, 0x100000

    div-long/2addr v6, v8

    const-wide/16 v8, 0x32

    cmp-long v6, v6, v8

    if-gez v6, :cond_1c

    .line 2217
    const v4, 0x7f0601a9

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->showToastLong(I)V

    goto/16 :goto_0

    .line 2220
    :cond_1c
    sput v5, Lobject/p2pipcam/system/SystemValue;->checkSDStatu:I

    .line 2221
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->allVideoSize:J

    .line 2222
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isTakeVideo:Z

    .line 2223
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isstart:Z

    .line 2224
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzTakeVideo:Landroid/widget/ImageButton;

    const v7, 0x7f02010e

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2225
    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->video_i:I

    .line 2226
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->st:Z

    .line 2227
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->layout_videoing:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2228
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isT:Z

    .line 2229
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->h264JpegVideoDate:Ljava/util/LinkedList;

    .line 2230
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->IorP:Ljava/util/LinkedList;

    .line 2260
    new-instance v4, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;

    invoke-direct {v4, p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;-><init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V

    invoke-virtual {v4}, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyTakeVideoThread;->start()V

    goto/16 :goto_0

    .line 2264
    :pswitch_14
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_1d

    .line 2265
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 2266
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2267
    const/4 v4, 0x0

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    .line 2269
    :cond_1d
    invoke-direct {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->setBrightOrContrast(I)V

    goto/16 :goto_0

    .line 2272
    :pswitch_15
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_1e

    .line 2273
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 2274
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2275
    const/4 v4, 0x0

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    .line 2277
    :cond_1e
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->setBrightOrContrast(I)V

    goto/16 :goto_0

    .line 2280
    :pswitch_16
    iget-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isTakeVideo:Z

    if-eqz v4, :cond_1f

    .line 2281
    const v4, 0x7f0601b2

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->showToast(I)V

    goto/16 :goto_0

    .line 2283
    :cond_1f
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->showResolutionPopWindow()V

    goto/16 :goto_0

    .line 2304
    :pswitch_17
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->dismissBrightAndContrastProgress()V

    .line 2305
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2306
    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nResolution:I

    .line 2307
    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nResolution:I

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->setResolution(I)V

    .line 2308
    const-string v4, "tag"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "h264 resolution:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nResolution:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " qvga"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    const v5, 0x7f02008a

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2312
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2315
    .local v1, "msgMessage":Landroid/os/Message;
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mHandlerFramerate:Landroid/os/Handler;

    invoke-virtual {v4, v1, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2320
    .end local v1    # "msgMessage":Landroid/os/Message;
    :pswitch_18
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->dismissBrightAndContrastProgress()V

    .line 2321
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2322
    iput v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nResolution:I

    .line 2323
    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nResolution:I

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->setResolution(I)V

    .line 2324
    const-string v4, "tag"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "h264 resolution:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nResolution:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " vga"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    const v5, 0x7f020089

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2327
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2330
    .restart local v1    # "msgMessage":Landroid/os/Message;
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mHandlerFramerate:Landroid/os/Handler;

    invoke-virtual {v4, v1, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2336
    .end local v1    # "msgMessage":Landroid/os/Message;
    :pswitch_19
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->dismissBrightAndContrastProgress()V

    .line 2337
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2338
    const/4 v4, 0x2

    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nResolution:I

    .line 2339
    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nResolution:I

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->setResolution(I)V

    .line 2340
    const-string v4, "tag"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "h264 resolution:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nResolution:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " 720p"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    const v5, 0x7f0200ea

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2343
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2346
    .restart local v1    # "msgMessage":Landroid/os/Message;
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mHandlerFramerate:Landroid/os/Handler;

    invoke-virtual {v4, v1, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2351
    .end local v1    # "msgMessage":Landroid/os/Message;
    :pswitch_1a
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->dismissBrightAndContrastProgress()V

    .line 2352
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2353
    const/4 v4, 0x3

    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nResolution:I

    .line 2354
    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nResolution:I

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->setResolution(I)V

    .line 2355
    const-string v4, "tag"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "h264 resolution:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nResolution:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " 720p"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    const v5, 0x7f0200cb

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2358
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2361
    .restart local v1    # "msgMessage":Landroid/os/Message;
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mHandlerFramerate:Landroid/os/Handler;

    invoke-virtual {v4, v1, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2366
    .end local v1    # "msgMessage":Landroid/os/Message;
    :pswitch_1b
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->dismissBrightAndContrastProgress()V

    .line 2367
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2368
    const/4 v4, 0x4

    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nResolution:I

    .line 2369
    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->nResolution:I

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->setResolution(I)V

    .line 2370
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    const v5, 0x7f0200cc

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2372
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2375
    .restart local v1    # "msgMessage":Landroid/os/Message;
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mHandlerFramerate:Landroid/os/Handler;

    invoke-virtual {v4, v1, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2379
    .end local v1    # "msgMessage":Landroid/os/Message;
    :pswitch_1c
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->dismissBrightAndContrastProgress()V

    .line 2380
    iget v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->playmode:I

    packed-switch v6, :pswitch_data_1

    goto/16 :goto_0

    .line 2382
    :pswitch_1d
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzPlayMode:Landroid/widget/ImageButton;

    const v6, 0x7f020105

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2383
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzPlayMode:Landroid/widget/ImageButton;

    .line 2384
    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2385
    const-string v4, "tg"

    const-string v6, "magnify 1"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    iput v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->playmode:I

    goto/16 :goto_0

    .line 2389
    :pswitch_1e
    const-string v5, "tg"

    const-string v6, "STANDARD 2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->playmode:I

    .line 2391
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzPlayMode:Landroid/widget/ImageButton;

    const v5, 0x7f020107

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2392
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzPlayMode:Landroid/widget/ImageButton;

    .line 2393
    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2396
    :pswitch_1f
    const-string v4, "tg"

    const-string v5, "FULLSCREEN 3"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    const/4 v4, 0x2

    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->playmode:I

    .line 2398
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzPlayMode:Landroid/widget/ImageButton;

    .line 2399
    const v5, 0x7f020106

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2400
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzPlayMode:Landroid/widget/ImageButton;

    .line 2401
    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2409
    :pswitch_20
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->dismissBrightAndContrastProgress()V

    .line 2410
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->defaultVideoParams()V

    goto/16 :goto_0

    .line 2474
    :pswitch_21
    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->currIndex:I

    if-nez v4, :cond_20

    .line 2475
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/16 v5, 0x1f

    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 2479
    :goto_7
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2477
    :cond_20
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/16 v5, 0x1e

    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_7

    .line 2482
    :pswitch_22
    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->currIndex:I

    if-nez v4, :cond_21

    .line 2483
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/16 v5, 0x21

    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 2487
    :goto_8
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2485
    :cond_21
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/16 v5, 0x20

    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_8

    .line 2490
    :pswitch_23
    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->currIndex:I

    if-nez v4, :cond_22

    .line 2491
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/16 v5, 0x23

    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 2495
    :goto_9
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2493
    :cond_22
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/16 v5, 0x22

    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_9

    .line 2498
    :pswitch_24
    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->currIndex:I

    if-nez v4, :cond_23

    .line 2499
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/16 v5, 0x25

    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 2503
    :goto_a
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2501
    :cond_23
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/16 v5, 0x24

    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_a

    .line 2506
    :pswitch_25
    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->currIndex:I

    if-nez v4, :cond_24

    .line 2507
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/16 v5, 0x27

    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 2511
    :goto_b
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2509
    :cond_24
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/16 v5, 0x26

    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_b

    .line 2514
    :pswitch_26
    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->currIndex:I

    if-nez v4, :cond_25

    .line 2515
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/16 v5, 0x29

    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 2519
    :goto_c
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2517
    :cond_25
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/16 v5, 0x28

    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_c

    .line 2522
    :pswitch_27
    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->currIndex:I

    if-nez v4, :cond_26

    .line 2523
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/16 v5, 0x2b

    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 2527
    :goto_d
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2525
    :cond_26
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/16 v5, 0x2a

    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_d

    .line 2530
    :pswitch_28
    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->currIndex:I

    if-nez v4, :cond_27

    .line 2531
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/16 v5, 0x2d

    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 2535
    :goto_e
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2533
    :cond_27
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/16 v5, 0x2c

    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_e

    .line 2538
    :pswitch_29
    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->currIndex:I

    if-nez v4, :cond_28

    .line 2539
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/16 v5, 0x2f

    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 2543
    :goto_f
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2541
    :cond_28
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/16 v5, 0x2e

    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_f

    .line 2546
    :pswitch_2a
    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->currIndex:I

    if-nez v4, :cond_29

    .line 2547
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/16 v5, 0x31

    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 2551
    :goto_10
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2549
    :cond_29
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/16 v5, 0x30

    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_10

    .line 2554
    :pswitch_2b
    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->currIndex:I

    if-nez v4, :cond_2a

    .line 2555
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/16 v5, 0x33

    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 2559
    :goto_11
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2557
    :cond_2a
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/16 v5, 0x32

    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_11

    .line 2562
    :pswitch_2c
    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->currIndex:I

    if-nez v4, :cond_2b

    .line 2563
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/16 v5, 0x35

    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 2567
    :goto_12
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2565
    :cond_2b
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/16 v5, 0x34

    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_12

    .line 2570
    :pswitch_2d
    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->currIndex:I

    if-nez v4, :cond_2c

    .line 2571
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/16 v5, 0x37

    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 2575
    :goto_13
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2573
    :cond_2c
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/16 v5, 0x36

    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_13

    .line 2578
    :pswitch_2e
    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->currIndex:I

    if-nez v4, :cond_2d

    .line 2579
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/16 v5, 0x39

    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 2583
    :goto_14
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2581
    :cond_2d
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/16 v5, 0x38

    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_14

    .line 2586
    :pswitch_2f
    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->currIndex:I

    if-nez v4, :cond_2e

    .line 2587
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/16 v5, 0x3b

    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 2591
    :goto_15
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 2589
    :cond_2e
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/16 v5, 0x3a

    invoke-static {v4, v5}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_15

    .line 1880
    nop

    :pswitch_data_0
    .packed-switch 0x7f080197
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_13
        :pswitch_16
        :pswitch_14
        :pswitch_15
        :pswitch_20
        :pswitch_1c
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch

    .line 2380
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1f
        :pswitch_1e
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, -0x1

    .line 1561
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1562
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1563
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1566
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1567
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzPlatform:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1576
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 1577
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 1578
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 1579
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->videoViewStandard:Landroid/widget/ImageView;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1580
    return-void

    .line 1568
    :cond_1
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1569
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1572
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1573
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzPlatform:Landroid/widget/LinearLayout;

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

    .line 1276
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1277
    const-string v5, "isFirst"

    invoke-virtual {p0, v5, v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->preference:Landroid/content/SharedPreferences;

    .line 1278
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->preference:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1279
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "activity"

    invoke-interface {v2, v5, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1280
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1282
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getDataFromOther()V

    .line 1283
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 1285
    invoke-virtual {p0, v9}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->requestWindowFeature(I)Z

    .line 1286
    const v5, 0x7f030041

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->setContentView(I)V

    .line 1287
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->findView()V

    .line 1288
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->InitParams()V

    .line 1289
    invoke-static {p0}, Lobject/p2pipcam/utils/DataBaseHelper;->getInstance(Landroid/content/Context;)Lobject/p2pipcam/utils/DataBaseHelper;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 1290
    new-instance v5, Lcom/easyview/talkutils/CustomBuffer;

    invoke-direct {v5}, Lcom/easyview/talkutils/CustomBuffer;-><init>()V

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->AudioBuffer:Lcom/easyview/talkutils/CustomBuffer;

    .line 1291
    new-instance v5, Lcom/easyview/talkutils/AudioPlayer;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->AudioBuffer:Lcom/easyview/talkutils/CustomBuffer;

    invoke-direct {v5, p0, v6}, Lcom/easyview/talkutils/AudioPlayer;-><init>(Landroid/content/Context;Lcom/easyview/talkutils/CustomBuffer;)V

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->audioPlayer:Lcom/easyview/talkutils/AudioPlayer;

    .line 1292
    new-instance v5, Lcom/easyview/talkutils/CustomAudioRecorder;

    invoke-direct {v5, p0, p0}, Lcom/easyview/talkutils/CustomAudioRecorder;-><init>(Landroid/content/Context;Lcom/easyview/talkutils/CustomAudioRecorder$AudioRecordResult;)V

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->customAudioRecorder:Lcom/easyview/talkutils/CustomAudioRecorder;

    .line 1293
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->setPlayInterface(Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;)V

    .line 1294
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->playSurface:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->playHolder:Landroid/view/SurfaceHolder;

    .line 1295
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->playHolder:Landroid/view/SurfaceHolder;

    const/4 v6, 0x4

    invoke-interface {v5, v6}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 1296
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->playHolder:Landroid/view/SurfaceHolder;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->videoCallback:Lobject/p2pwificam/clientActivity/PlayTestActivity$surfaceCallback;

    invoke-interface {v5, v6}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1298
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->playSurface:Landroid/view/SurfaceView;

    invoke-virtual {v5, p0}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1299
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->playSurface:Landroid/view/SurfaceView;

    invoke-virtual {v5, v9}, Landroid/view/SurfaceView;->setLongClickable(Z)V

    .line 1301
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getCameraParams()V

    .line 1303
    const v5, 0x7f04000b

    .line 1302
    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->dismissTopAnim:Landroid/view/animation/Animation;

    .line 1305
    const v5, 0x7f04000c

    .line 1304
    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->showTopAnim:Landroid/view/animation/Animation;

    .line 1307
    const v5, 0x7f04000a

    .line 1306
    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->showAnim:Landroid/view/animation/Animation;

    .line 1309
    const v5, 0x7f040009

    .line 1308
    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->dismissAnim:Landroid/view/animation/Animation;

    .line 1312
    const-string v5, "ptzcontrol"

    invoke-virtual {p0, v5, v7}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1314
    .local v4, "sharePreferences":Landroid/content/SharedPreferences;
    const-string v5, "ptzcontrol"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isPTZPrompt:Z

    .line 1315
    iget-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isPTZPrompt:Z

    if-nez v5, :cond_0

    .line 1316
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1317
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v5, "ptzcontrol"

    invoke-interface {v1, v5, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1318
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1320
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->status:Ljava/lang/String;

    .line 1321
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->status:Ljava/lang/String;

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1323
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->path:Ljava/io/File;

    .line 1324
    new-instance v5, Landroid/os/StatFs;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->path:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->stat:Landroid/os/StatFs;

    .line 1325
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->stat:Landroid/os/StatFs;

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->blockSize:J

    .line 1326
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->stat:Landroid/os/StatFs;

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->totalBlocks:J

    .line 1327
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->stat:Landroid/os/StatFs;

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->availableBlocks:J

    .line 1328
    iget-wide v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->totalBlocks:J

    iget-wide v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->blockSize:J

    mul-long/2addr v5, v7

    invoke-direct {p0, v5, v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->formatSize(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->sdSize:Ljava/lang/String;

    .line 1329
    iget-wide v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->availableBlocks:J

    iget-wide v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->blockSize:J

    mul-long/2addr v5, v7

    invoke-direct {p0, v5, v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->formatSize(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->sdAvail:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1339
    :cond_1
    :goto_0
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bAudioStart:Z

    .line 1340
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzMicrophone:Landroid/widget/ImageButton;

    const v6, 0x7f0200fb

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1341
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->ptzMicrophone:Landroid/widget/ImageButton;

    const v6, 0x7f02010c

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1344
    const-string v5, "ViewRecord"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "playType  === "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->playType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    iget v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->playType:I

    if-ne v5, v9, :cond_2

    .line 1350
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lobject/p2pwificam/clientActivity/DoorBellMusicService;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1351
    .local v3, "service":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1357
    .end local v3    # "service":Landroid/content/Intent;
    :cond_2
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bgetCameraParamsThreadRuning:Z

    .line 1358
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lobject/p2pwificam/clientActivity/PlayTestActivity$16;

    invoke-direct {v6, p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity$16;-><init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1374
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 1375
    return-void

    .line 1330
    :catch_0
    move-exception v0

    .line 1331
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "removed"

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->status:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2847
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->CloseAvi()I

    .line 2848
    iput v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->talkAudio:I

    .line 2849
    iput v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->tagone:I

    .line 2850
    iput-boolean v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isTakeVideo:Z

    .line 2851
    iput-boolean v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isstart:Z

    .line 2852
    iput-boolean v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->st:Z

    .line 2853
    iget-wide v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->allVideoSize:J

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    const-wide/16 v4, 0x80

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 2854
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2855
    const-string v4, "/IPcamer/video/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".avi"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2854
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->delFile:Ljava/io/File;

    .line 2856
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->delFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 2857
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

    .line 2859
    .end local v0    # "b":Z
    :cond_0
    iput-boolean v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isT:Z

    .line 2860
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    invoke-static {v2}, Lobject/p2pipcam/nativecaller/NativeCaller;->StopPPPPLivestream(Ljava/lang/String;)I

    .line 2861
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->StopAudio()V

    .line 2862
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->StopTalk()V

    .line 2863
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->releaseTalk()V

    .line 2864
    iput-boolean v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bAudioRecordStart:Z

    .line 2865
    iput-boolean v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bgetCameraParamsThreadRuning:Z

    .line 2867
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    if-eqz v2, :cond_1

    .line 2868
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/MyRender;->destroyShaders()J

    .line 2870
    :cond_1
    const-string v2, "isFirst"

    invoke-virtual {p0, v2, v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->preference:Landroid/content/SharedPreferences;

    .line 2871
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->preference:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2872
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "activity"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2873
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2874
    const-string v2, "tag"

    const-string v3, "PlayTestActivity onDestroy"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 2876
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2821
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2826
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1752
    const-string v0, "tag"

    const-string v1, "onDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
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

    .line 1776
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1777
    .local v0, "x1":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1778
    .local v1, "x2":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1779
    .local v3, "y1":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 1781
    .local v4, "y2":F
    cmpl-float v6, v0, v1

    if-lez v6, :cond_1

    sub-float v2, v0, v1

    .line 1782
    .local v2, "xx":F
    :goto_0
    cmpl-float v6, v3, v4

    if-lez v6, :cond_2

    sub-float v5, v3, v4

    .line 1784
    .local v5, "yy":F
    :goto_1
    cmpl-float v6, v2, v5

    if-lez v6, :cond_4

    .line 1785
    cmpl-float v6, v0, v1

    if-lez v6, :cond_3

    cmpl-float v6, v2, v7

    if-lez v6, :cond_3

    .line 1787
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/4 v7, 0x6

    invoke-static {v6, v7}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    .line 1801
    :cond_0
    :goto_2
    return v8

    .line 1781
    .end local v2    # "xx":F
    .end local v5    # "yy":F
    :cond_1
    sub-float v2, v1, v0

    goto :goto_0

    .line 1782
    .restart local v2    # "xx":F
    :cond_2
    sub-float v5, v4, v3

    goto :goto_1

    .line 1788
    .restart local v5    # "yy":F
    :cond_3
    cmpg-float v6, v0, v1

    if-gez v6, :cond_0

    cmpl-float v6, v2, v7

    if-lez v6, :cond_0

    .line 1789
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_2

    .line 1793
    :cond_4
    cmpl-float v6, v3, v4

    if-lez v6, :cond_5

    cmpl-float v6, v5, v7

    if-lez v6, :cond_5

    .line 1794
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_2

    .line 1795
    :cond_5
    cmpg-float v6, v3, v4

    if-gez v6, :cond_0

    cmpl-float v6, v5, v7

    if-lez v6, :cond_0

    .line 1796
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    invoke-static {v6, v8}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPPTZControl(Ljava/lang/String;I)I

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 531
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 532
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 535
    :cond_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 536
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 538
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 539
    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bManualExit:Z

    .line 540
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bProgress:Z

    if-nez v1, :cond_3

    .line 541
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isTakeVideo:Z

    if-eqz v1, :cond_2

    .line 542
    const v1, 0x7f0601a6

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->showToast(I)V

    .line 556
    :goto_0
    return v0

    .line 544
    :cond_2
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->returnLastBmp2Home()V

    .line 545
    invoke-virtual {p0, p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->showSureDialogPlay(Landroid/content/Context;)V

    goto :goto_0

    .line 550
    :cond_3
    const/16 v0, 0x52

    if-ne p1, v0, :cond_4

    .line 551
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bProgress:Z

    if-nez v0, :cond_4

    .line 552
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->showTop()V

    .line 553
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->showBottom()V

    .line 556
    :cond_4
    invoke-super {p0, p1, p2}, Lobject/p2pwificam/clientActivity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1806
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 1811
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1817
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2831
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1821
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

    .line 1605
    iget-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isDown:Z

    if-nez v4, :cond_0

    .line 1606
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->x1:F

    .line 1607
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->y1:F

    .line 1608
    iput-boolean v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isDown:Z

    .line 1610
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    packed-switch v4, :pswitch_data_0

    .line 1675
    :cond_1
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->gt:Landroid/view/GestureDetector;

    invoke-virtual {v4, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 1612
    :pswitch_1
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1613
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->start:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 1614
    iput v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mode:I

    .line 1615
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getScale()F

    move-result v4

    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->originalScale:F

    goto :goto_0

    .line 1621
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->x2:F

    .line 1622
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->y2:F

    .line 1623
    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->x1:F

    iget v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->x2:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v8

    if-gez v4, :cond_5

    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->y1:F

    iget v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->y2:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v8

    if-gez v4, :cond_5

    .line 1624
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_2

    .line 1625
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1626
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1628
    :cond_2
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_3

    .line 1629
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1630
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1632
    :cond_3
    iget-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isSecondDown:Z

    if-nez v4, :cond_4

    .line 1633
    iget-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bProgress:Z

    if-nez v4, :cond_4

    .line 1634
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->showTop()V

    .line 1635
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->showBottom()V

    .line 1638
    :cond_4
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isSecondDown:Z

    .line 1641
    :cond_5
    iput v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->x1:F

    .line 1642
    iput v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->x2:F

    .line 1643
    iput v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->y1:F

    .line 1644
    iput v6, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->y2:F

    .line 1645
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isDown:Z

    goto/16 :goto_0

    .line 1648
    :pswitch_3
    iput-boolean v7, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isSecondDown:Z

    .line 1649
    invoke-direct {p0, p2}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->spacing(Landroid/view/MotionEvent;)F

    move-result v4

    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->oldDist:F

    .line 1650
    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->oldDist:F

    const/high16 v5, 0x41200000    # 10.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 1651
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1652
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mid:Landroid/graphics/PointF;

    invoke-direct {p0, v4, p2}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 1653
    iput v10, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mode:I

    goto/16 :goto_0

    .line 1658
    :pswitch_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->x2:F

    .line 1659
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->y2:F

    .line 1661
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    div-int/lit8 v0, v4, 0x2

    .line 1662
    .local v0, "midx":I
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 1663
    .local v1, "midy":I
    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mode:I

    if-ne v4, v10, :cond_1

    .line 1664
    invoke-direct {p0, p2}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->spacing(Landroid/view/MotionEvent;)F

    move-result v2

    .line 1665
    .local v2, "newDist":F
    cmpl-float v4, v2, v6

    if-lez v4, :cond_1

    .line 1666
    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->oldDist:F

    div-float v3, v2, v4

    .line 1667
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

    .line 1668
    const/high16 v4, 0x40000000    # 2.0f

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_1

    const v4, 0x3e4ccccd    # 0.2f

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_1

    .line 1669
    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->originalScale:F

    mul-float/2addr v4, v3

    int-to-float v5, v0

    int-to-float v6, v1

    invoke-virtual {p0, v4, v5, v6}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->zoomTo(FFF)V

    goto/16 :goto_0

    .line 1610
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
    .line 1833
    const-string v0, "ViewRecord"

    const-string v1, "555555555555555555555555555555555555555555555"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bManualExit:Z

    .line 1839
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->bProgress:Z

    if-nez v0, :cond_0

    .line 1840
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isTakeVideo:Z

    if-eqz v0, :cond_1

    .line 1841
    const v0, 0x7f0601a6

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->showToast(I)V

    .line 1863
    :cond_0
    :goto_0
    return-void

    .line 1843
    :cond_1
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->returnLastBmp2Home()V

    .line 1845
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->lockFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1846
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_2

    .line 1848
    const-string v0, "ViewRecord"

    const-string v1, "55555555555522222222222222222222222222222"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    sget-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 1851
    const/4 v0, 0x0

    sput-object v0, Lobject/p2pwificam/clientActivity/BridgeService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 1856
    :cond_2
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->finish()V

    .line 1857
    const v0, 0x7f040006

    .line 1858
    const/high16 v1, 0x7f040000

    .line 1857
    invoke-virtual {p0, v0, v1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method protected setResolution(I)V
    .locals 4
    .param p1, "Resolution"    # I

    .prologue
    const/4 v0, 0x0

    .line 1440
    const-string v1, "tag"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setResolution resolution:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->strDID:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 1442
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isResolution:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->isResolution:Ljava/lang/Boolean;

    .line 1443
    return-void

    .line 1442
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public showSureDialogPlay(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 511
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 514
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0601b8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 515
    const v1, 0x7f06000c

    .line 516
    new-instance v2, Lobject/p2pwificam/clientActivity/PlayTestActivity$10;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity$10;-><init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V

    .line 515
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 525
    const v1, 0x7f06000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 526
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 527
    return-void
.end method

.method protected showTimeStamp()V
    .locals 15

    .prologue
    .line 1223
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1224
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 1225
    .local v12, "year":I
    const/4 v13, 0x2

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/lit8 v4, v13, 0x1

    .line 1226
    .local v4, "month":I
    const/4 v13, 0x5

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1227
    .local v1, "day":I
    const/16 v13, 0xb

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1228
    .local v2, "hour":I
    const/16 v13, 0xc

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1229
    .local v3, "minute":I
    const/16 v13, 0xd

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1231
    .local v5, "second":I
    const/16 v13, 0xa

    if-lt v4, v13, :cond_0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 1232
    .local v9, "strMonth":Ljava/lang/String;
    :goto_0
    const/16 v13, 0xa

    if-lt v1, v13, :cond_1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 1233
    .local v6, "strDay":Ljava/lang/String;
    :goto_1
    const/16 v13, 0xa

    if-lt v2, v13, :cond_2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 1234
    .local v7, "strHour":Ljava/lang/String;
    :goto_2
    const/16 v13, 0xa

    if-lt v3, v13, :cond_3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 1236
    .local v8, "strMinite":Ljava/lang/String;
    :goto_3
    const/16 v13, 0xa

    if-lt v5, v13, :cond_4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 1239
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

    .line 1240
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

    .line 1239
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1241
    .local v11, "strTimeStamp":Ljava/lang/String;
    iget-object v13, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->textTimeStamp:Landroid/widget/TextView;

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1242
    return-void

    .line 1231
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

    .line 1232
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

    .line 1233
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

    .line 1234
    .restart local v7    # "strHour":Ljava/lang/String;
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "0"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1235
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 1236
    .restart local v8    # "strMinite":Ljava/lang/String;
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "0"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1237
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_4
.end method

.method public stopMusicService()V
    .locals 3

    .prologue
    .line 1868
    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->playType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1871
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lobject/p2pwificam/clientActivity/DoorBellMusicService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1872
    .local v0, "service":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->stopService(Landroid/content/Intent;)Z

    .line 1876
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
    .line 1698
    const-string v2, "zoomTo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "zoomTo scale:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    iget v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mMaxZoom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 1700
    iget p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mMaxZoom:F

    .line 1705
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getScale()F

    move-result v1

    .line 1706
    .local v1, "oldScale":F
    div-float v0, p1, v1

    .line 1707
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

    .line 1708
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1709
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->videoViewStandard:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1710
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->videoViewStandard:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1711
    return-void

    .line 1701
    .end local v0    # "deltaScale":F
    .end local v1    # "oldScale":F
    :cond_1
    iget v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mMinZoom:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 1702
    iget p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity;->mMinZoom:F

    goto :goto_0
.end method
