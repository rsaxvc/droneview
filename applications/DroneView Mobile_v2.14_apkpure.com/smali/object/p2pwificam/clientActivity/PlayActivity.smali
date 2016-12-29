.class public Lobject/p2pwificam/clientActivity/PlayActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "PlayActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/easyview/talkutils/CustomAudioRecorder$AudioRecordResult;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;
.implements Lobject/p2pwificam/clientActivity/BridgeService$OpenLockInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/clientActivity/PlayActivity$MyOnClickListener;,
        Lobject/p2pwificam/clientActivity/PlayActivity$MyOnPageChangeListener;,
        Lobject/p2pwificam/clientActivity/PlayActivity$MyPagerAdapter;,
        Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;,
        Lobject/p2pwificam/clientActivity/PlayActivity$ResolutionThread;,
        Lobject/p2pwificam/clientActivity/PlayActivity$surfaceCallback;
    }
.end annotation


# static fields
.field private static final AUDIO_BUFFER_START_CODE:I = 0xff00ff

.field private static final DRAG:I = 0x1

.field private static final FULLSCREEN:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "PlayActivity"

.field private static final MAGNIFY:I = 0x2

.field private static final MESSAGE_IOSWITCH:I = 0xa

.field private static final MESSAGE_LIGHT:I = 0xb

.field private static final NONE:I = 0x0

.field private static final STANDARD:I = 0x1

.field private static final TakeVideoSizeK:I = 0x10

.field private static final ZOOM:I = 0x2


# instance fields
.field private AudioBuffer:Lcom/easyview/talkutils/CustomBuffer;

.field private final BRIGHT:I

.field private final CONTRAST:I

.field private CustomListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field private final MINLEN:I

.field private MyTakeVideoHandler:Landroid/os/Handler;

.field private final TAKEVIDEO:I

.field VideoBPS:I

.field VideoFPS:I

.field private _camera:Lcom/easyview/basecamera/BaseCamera;

.field private _cameraList:Lcom/easyview/camera/CameraList;

.field private _free_ppcs:Z

.field private _isPlay:Z

.field private _light_white:Landroid/widget/SeekBar;

.field private _light_yellow:Landroid/widget/SeekBar;

.field private _norColor:I

.field private _quaProgress:I

.field private _qualitySeekBar:Landroid/widget/SeekBar;

.field private _renderBuffer:Lobject/p2pipcam/utils/AudioBuffer;

.field private _selColor:I

.field private _soundPool:Landroid/media/SoundPool;

.field private _video_fps:I

.field private allVideoSize:J

.field private audioPlayer:Lcom/easyview/talkutils/AudioPlayer;

.field private audioUtil:Lobject/p2pipcam/utils/AudioUtil;

.field private availableBlocks:J

.field private bAudioRecordStart:Z

.field private bAudioStart:Z

.field private bDisplayFinished:Z

.field private bGetStreamCodecType:Z

.field private bH:Z

.field private bInitCameraParam:Z

.field private bManualExit:Z

.field private bProgress:Z

.field private bStartVideo:Z

.field private bTimeoutStarted:Z

.field baseValue:F

.field private bgetCameraParamsThreadRuning:Z

.field private blockSize:J

.field private bmpW:I

.field private btnCalloff:Landroid/view/View;

.field private btnExpand:Landroid/view/View;

.field private btnLight:Landroid/widget/ImageButton;

.field private btnLightAudio:Landroid/widget/ImageButton;

.field private btnLightRecord:Landroid/widget/ImageButton;

.field private btnLightSnap:Landroid/widget/ImageButton;

.field private btnLightSound:Landroid/widget/ImageButton;

.field private btnMusicPlay:Landroid/widget/ImageButton;

.field private btnSelect:Landroid/widget/ImageButton;

.field private btnUnlock:Landroid/widget/ImageButton;

.field private btnmicrophone:Landroid/widget/ImageButton;

.field private buttonMoreLeft:Landroid/widget/Button;

.field private buttonMoreRight:Landroid/widget/Button;

.field private buttonPreset:Landroid/widget/Button;

.field private buttonSwitch:[Landroid/widget/Button;

.field private button_back:Landroid/widget/ImageButton;

.field private cameraName:Landroid/widget/TextView;

.field private checkBoxHS:Landroid/widget/ImageButton;

.field private controlLayoutLeft:Z

.field private currIndex:I

.field private cursorxx:Landroid/widget/ImageView;

.field private customAudioRecorder:Lcom/easyview/talkutils/CustomAudioRecorder;

.field private databyte:[B

.field private delFile:Ljava/io/File;

.field private dismissAnim:Landroid/view/animation/Animation;

.field private dismissTopAnim:Landroid/view/animation/Animation;

.field private div:Ljava/io/File;

.field private edtOpenLockPWD:Landroid/widget/EditText;

.field private extInfoLayout:Landroid/widget/LinearLayout;

.field private fragment_dialog:Landroid/widget/PopupWindow;

.field private gt:Landroid/view/GestureDetector;

.field private heightV:I

.field private helper:Lobject/p2pipcam/utils/DataBaseHelper;

.field private iORp:I

.field private imgDown:Landroid/widget/ImageView;

.field private imgLeft:Landroid/widget/ImageView;

.field private imgRight:Landroid/widget/ImageView;

.field private imgUp:Landroid/widget/ImageView;

.field private isDown:Z

.field private isExit:Z

.field private isFPS:Ljava/lang/Boolean;

.field private isH264:Z

.field private isHorizontalMirror:Z

.field private isLeftRight:Z

.field private isMcriophone:Z

.field private isPTZPrompt:Z

.field private isPictSave:Z

.field private isPlayAudio:Ljava/lang/Boolean;

.field private isResolution:Ljava/lang/Boolean;

.field private isSecondDown:Z

.field private isShowtoping:Z

.field private isT:Z

.field private isTakeVideo:Z

.field private isTakepic:Z

.field private isTalking:Z

.field private isTypeI:I

.field private isUpDown:Z

.field private isUpDownPressed:Z

.field private isVerticalMirror:Z

.field private isstart:Z

.field private key00:Landroid/widget/ImageView;

.field private key01:Landroid/widget/ImageView;

.field private key02:Landroid/widget/ImageView;

.field private key03:Landroid/widget/ImageView;

.field private key04:Landroid/widget/ImageView;

.field private key05:Landroid/widget/ImageView;

.field private key06:Landroid/widget/ImageView;

.field private key07:Landroid/widget/ImageView;

.field private key08:Landroid/widget/ImageView;

.field private key09:Landroid/widget/ImageView;

.field private keyboardClicker:Landroid/view/View$OnClickListener;

.field private keydel:Landroid/widget/ImageView;

.field private keyfin:Landroid/widget/ImageView;

.field lastTimeStamp:J

.field private last_touch:J

.field private layout_micphone:Landroid/widget/LinearLayout;

.field private layout_resolution:Landroid/widget/LinearLayout;

.field private layout_resolution_idle_count:I

.field private layout_title:Landroid/view/View;

.field private layout_videoing:Landroid/widget/LinearLayout;

.field private led_close:Landroid/widget/ImageButton;

.field private led_open:Landroid/widget/ImageButton;

.field private lightCtrlView:Landroid/view/View;

.field private lightSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private light_white_value:I

.field private light_yellow_value:I

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

.field private lockbean:Lobject/p2pipcam/bean/LockBean;

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

.field private nFlip:I

.field private nFramerate:I

.field private nMode:I

.field private nP2PMode:I

.field private nPlayCount:I

.field private nResolution:I

.field private nStreamCodecType:I

.field private nSurfaceHeight:I

.field private nSurfaceWidth:I

.field private nTimeoutRemain:I

.field private nVideoHeight:I

.field private nVideoWidth:I

.field private name:Ljava/lang/String;

.field private offset:I

.field private oldDist:F

.field private onLightAudio:Landroid/view/View$OnClickListener;

.field private onLightClick:Landroid/view/View$OnClickListener;

.field private onLightRecord:Landroid/view/View$OnClickListener;

.field private onLightSnap:Landroid/view/View$OnClickListener;

.field private onLightSound:Landroid/view/View$OnClickListener;

.field private onMoreClick:Landroid/view/View$OnClickListener;

.field private onSwitchClick:Landroid/view/View$OnClickListener;

.field originalScale:F

.field private osdView:Landroid/view/View;

.field private path:Ljava/io/File;

.field private playHolder:Landroid/view/SurfaceHolder;

.field private playMode:I

.field private playSurface:Landroid/view/SurfaceView;

.field private playmode:I

.field private popupWindow_about:Landroid/widget/PopupWindow;

.field private popv:Landroid/view/View;

.field private progressView:Landroid/view/View;

.field private ptzAudio:Landroid/widget/ImageButton;

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

.field private runnableHangup:Ljava/lang/Runnable;

.field private runnableStartVideo:Ljava/lang/Runnable;

.field private savedMatrix:Landroid/graphics/Matrix;

.field private sdAvail:Ljava/lang/String;

.field private sdSize:Ljava/lang/String;

.field private selectLayout:Landroid/view/View;

.field private showAnim:Landroid/view/animation/Animation;

.field private showSwitchButton:Z

.field private showTopAnim:Landroid/view/animation/Animation;

.field private st:Z

.field private start:Landroid/graphics/PointF;

.field private start_record_time:J

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

.field private textTimeoutTextView:Landroid/widget/TextView;

.field private textViewTitle:Landroid/widget/TextView;

.field private textViewVideoing:Landroid/widget/TextView;

.field private textView_sdsize:Landroid/widget/TextView;

.field private textosd:Landroid/widget/TextView;

.field private timeoutHandle:Landroid/os/Handler;

.field private topbg:Landroid/widget/RelativeLayout;

.field private totalBlocks:J

.field private touch_count:I

.field ts_data:J

.field private txtBPS:Landroid/widget/TextView;

.field private txtBodyTemp:Landroid/widget/TextView;

.field private txtFPS:Landroid/widget/TextView;

.field private txtHumidity:Landroid/widget/TextView;

.field private txtRecordText:Landroid/widget/TextView;

.field private txtResolution:Landroid/widget/TextView;

.field private txtTemperature:Landroid/widget/TextView;

.field private txtVoltage:Landroid/widget/TextView;

.field private videoCallback:Lobject/p2pwificam/clientActivity/PlayActivity$surfaceCallback;

.field private videoData:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/util/Pair",
            "<[B",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private videoDataLen:I

.field private videoViewStandard:Landroid/widget/ImageView;

.field private video_i:I

.field private videodata:[B

.field private videotime:J

.field private vidoeView:Landroid/widget/ImageView;

.field private viewHandler:Landroid/os/Handler;

.field private widthV:I

.field private x1:F

.field private x2:F

.field private y1:F

.field private y2:F


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 117
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->playmode:I

    .line 122
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->playSurface:Landroid/view/SurfaceView;

    .line 123
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->playHolder:Landroid/view/SurfaceHolder;

    .line 124
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->videodata:[B

    .line 125
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->videoDataLen:I

    .line 126
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nVideoWidth:I

    .line 127
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nVideoHeight:I

    .line 129
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->progressView:Landroid/view/View;

    .line 130
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bProgress:Z

    .line 132
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->gt:Landroid/view/GestureDetector;

    .line 134
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nSurfaceHeight:I

    .line 135
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nSurfaceWidth:I

    .line 136
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nResolution:I

    .line 137
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nBrightness:I

    .line 138
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nContrast:I

    .line 140
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nMode:I

    .line 142
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nFlip:I

    .line 144
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nFramerate:I

    .line 145
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bInitCameraParam:Z

    .line 146
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bManualExit:Z

    .line 148
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->textosd:Landroid/widget/TextView;

    .line 149
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->textTimeStamp:Landroid/widget/TextView;

    .line 150
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->strName:Ljava/lang/String;

    .line 151
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->strDID:Ljava/lang/String;

    .line 152
    const/4 v0, 0x3

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->streamType:I

    .line 154
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->osdView:Landroid/view/View;

    .line 156
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bDisplayFinished:Z

    .line 157
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayActivity$surfaceCallback;

    invoke-direct {v0, p0, v1}, Lobject/p2pwificam/clientActivity/PlayActivity$surfaceCallback;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;Lobject/p2pwificam/clientActivity/PlayActivity$surfaceCallback;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->videoCallback:Lobject/p2pwificam/clientActivity/PlayActivity$surfaceCallback;

    .line 159
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nPlayCount:I

    .line 161
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->AudioBuffer:Lcom/easyview/talkutils/CustomBuffer;

    .line 162
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->audioPlayer:Lcom/easyview/talkutils/AudioPlayer;

    .line 163
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bAudioStart:Z

    .line 164
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_renderBuffer:Lobject/p2pipcam/utils/AudioBuffer;

    .line 165
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->audioUtil:Lobject/p2pipcam/utils/AudioUtil;

    .line 166
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->customAudioRecorder:Lcom/easyview/talkutils/CustomAudioRecorder;

    .line 167
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bAudioRecordStart:Z

    .line 168
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bGetStreamCodecType:Z

    .line 170
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nP2PMode:I

    .line 171
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->playMode:I

    .line 172
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->textTimeoutTextView:Landroid/widget/TextView;

    .line 173
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bTimeoutStarted:Z

    .line 174
    const/16 v0, 0xb4

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nTimeoutRemain:I

    .line 176
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isTakeVideo:Z

    .line 177
    iput-wide v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->videotime:J

    .line 178
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isLeftRight:Z

    .line 179
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isUpDown:Z

    .line 183
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->BRIGHT:I

    .line 184
    const/4 v0, 0x2

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->CONTRAST:I

    .line 185
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isHorizontalMirror:Z

    .line 186
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isVerticalMirror:Z

    .line 187
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isUpDownPressed:Z

    .line 188
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isShowtoping:Z

    .line 202
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnLight:Landroid/widget/ImageButton;

    .line 204
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnLightSnap:Landroid/widget/ImageButton;

    .line 205
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnLightRecord:Landroid/widget/ImageButton;

    .line 207
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isTalking:Z

    .line 208
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isTakepic:Z

    .line 209
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isMcriophone:Z

    .line 210
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isExit:Z

    .line 211
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->controlLayoutLeft:Z

    .line 216
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isH264:Z

    .line 219
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->textViewVideoing:Landroid/widget/TextView;

    .line 220
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->textViewTitle:Landroid/widget/TextView;

    .line 221
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->txtTemperature:Landroid/widget/TextView;

    .line 222
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->txtHumidity:Landroid/widget/TextView;

    .line 223
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->txtBodyTemp:Landroid/widget/TextView;

    .line 224
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->txtVoltage:Landroid/widget/TextView;

    .line 225
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->txtRecordText:Landroid/widget/TextView;

    .line 227
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->video_i:I

    .line 228
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->st:Z

    .line 229
    const/16 v0, 0x2710

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->TAKEVIDEO:I

    .line 230
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isTypeI:I

    .line 231
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isT:Z

    .line 232
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isstart:Z

    .line 233
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->databyte:[B

    .line 234
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->iORp:I

    .line 235
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bH:Z

    .line 236
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isPictSave:Z

    .line 237
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->checkBoxHS:Landroid/widget/ImageButton;

    .line 238
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnExpand:Landroid/view/View;

    .line 239
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnCalloff:Landroid/view/View;

    .line 242
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->videoData:Ljava/util/LinkedList;

    .line 244
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->status:Ljava/lang/String;

    .line 249
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->sdSize:Ljava/lang/String;

    .line 250
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->sdAvail:Ljava/lang/String;

    .line 251
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->textView_sdsize:Landroid/widget/TextView;

    .line 252
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->path:Ljava/io/File;

    .line 253
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_videoing:Landroid/widget/LinearLayout;

    .line 255
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_title:Landroid/view/View;

    .line 256
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_micphone:Landroid/widget/LinearLayout;

    .line 257
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_resolution:Landroid/widget/LinearLayout;

    .line 258
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->extInfoLayout:Landroid/widget/LinearLayout;

    .line 260
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_resolution_idle_count:I

    .line 261
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->div:Ljava/io/File;

    .line 262
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->delFile:Ljava/io/File;

    .line 263
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->name:Ljava/lang/String;

    .line 264
    iput-wide v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->allVideoSize:J

    .line 265
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->button_back:Landroid/widget/ImageButton;

    .line 266
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->widthV:I

    .line 267
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->heightV:I

    .line 268
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->talkAudio:I

    .line 269
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->tagone:I

    .line 281
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->offset:I

    .line 282
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->currIndex:I

    .line 284
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->edtOpenLockPWD:Landroid/widget/EditText;

    .line 288
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->txtResolution:Landroid/widget/TextView;

    .line 289
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->txtFPS:Landroid/widget/TextView;

    .line 290
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->txtBPS:Landroid/widget/TextView;

    .line 292
    const/16 v0, 0x32

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_quaProgress:I

    .line 294
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->buttonSwitch:[Landroid/widget/Button;

    .line 296
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->showSwitchButton:Z

    .line 298
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_light_white:Landroid/widget/SeekBar;

    .line 299
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_light_yellow:Landroid/widget/SeekBar;

    .line 300
    const v0, -0xff7f01

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_selColor:I

    .line 301
    const/4 v0, -0x1

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_norColor:I

    .line 302
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->selectLayout:Landroid/view/View;

    .line 303
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnSelect:Landroid/widget/ImageButton;

    .line 306
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bgetCameraParamsThreadRuning:Z

    .line 309
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_isPlay:Z

    .line 313
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isResolution:Ljava/lang/Boolean;

    .line 314
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isFPS:Ljava/lang/Boolean;

    .line 315
    const/16 v0, 0xf

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_video_fps:I

    .line 316
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isPlayAudio:Ljava/lang/Boolean;

    .line 317
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_free_ppcs:Z

    .line 318
    iput-wide v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->start_record_time:J

    .line 450
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$1;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->MyTakeVideoHandler:Landroid/os/Handler;

    .line 501
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bStartVideo:Z

    .line 851
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$2;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->keyboardClicker:Landroid/view/View$OnClickListener;

    .line 1001
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayActivity$3;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$3;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->timeoutHandle:Landroid/os/Handler;

    .line 1050
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayActivity$4;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$4;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mHandlerFramerate:Landroid/os/Handler;

    .line 1064
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayActivity$5;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$5;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mHandlerVideo:Landroid/os/Handler;

    .line 1106
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayActivity$6;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$6;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mHandler:Landroid/os/Handler;

    .line 1378
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayActivity$7;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$7;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->msgHandler:Landroid/os/Handler;

    .line 1392
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayActivity$8;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$8;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->msgStreamCodecHandler:Landroid/os/Handler;

    .line 2038
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isDown:Z

    .line 2039
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isSecondDown:Z

    .line 2040
    iput v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->x1:F

    .line 2041
    iput v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->x2:F

    .line 2042
    iput v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->y1:F

    .line 2043
    iput v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->y2:F

    .line 2049
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->touch_count:I

    .line 2050
    iput-wide v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->last_touch:J

    .line 2193
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mode:I

    .line 2195
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->matrix:Landroid/graphics/Matrix;

    .line 2196
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->savedMatrix:Landroid/graphics/Matrix;

    .line 2197
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->start:Landroid/graphics/PointF;

    .line 2198
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mid:Landroid/graphics/PointF;

    .line 2199
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mMaxZoom:F

    .line 2200
    const/high16 v0, 0x3ea00000    # 0.3125f

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mMinZoom:F

    .line 2203
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 2204
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 2205
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 2206
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mMatrixValues:[F

    .line 2267
    const/16 v0, 0x50

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->MINLEN:I

    .line 2618
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->light_white_value:I

    .line 2619
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->light_yellow_value:I

    .line 2620
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayActivity$9;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$9;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->lightSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 2672
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayActivity$10;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$10;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->onLightClick:Landroid/view/View$OnClickListener;

    .line 2683
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayActivity$11;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$11;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->onLightSound:Landroid/view/View$OnClickListener;

    .line 2689
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayActivity$12;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$12;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->onLightAudio:Landroid/view/View$OnClickListener;

    .line 2701
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayActivity$13;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$13;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->onLightSnap:Landroid/view/View$OnClickListener;

    .line 2707
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayActivity$14;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$14;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->onLightRecord:Landroid/view/View$OnClickListener;

    .line 2926
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    .line 2927
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 2928
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzTakepic:Landroid/widget/ImageButton;

    .line 2929
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->imgUp:Landroid/widget/ImageView;

    .line 2930
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->imgDown:Landroid/widget/ImageView;

    .line 2931
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->imgRight:Landroid/widget/ImageView;

    .line 2932
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->imgLeft:Landroid/widget/ImageView;

    .line 3070
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->lastTimeStamp:J

    .line 3076
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->VideoFPS:I

    .line 3077
    iput-wide v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ts_data:J

    .line 3213
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->VideoBPS:I

    .line 3238
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayActivity$15;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$15;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->runnableHangup:Ljava/lang/Runnable;

    .line 3304
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayActivity$16;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$16;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->viewHandler:Landroid/os/Handler;

    .line 3345
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayActivity$17;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$17;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->runnableStartVideo:Ljava/lang/Runnable;

    .line 3408
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayActivity$18;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$18;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->CustomListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 3446
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayActivity$19;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$19;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->onSwitchClick:Landroid/view/View$OnClickListener;

    .line 3466
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayActivity$20;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$20;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->onMoreClick:Landroid/view/View$OnClickListener;

    .line 107
    return-void
.end method

.method private InitImageView()V
    .locals 5

    .prologue
    .line 648
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->popv:Landroid/view/View;

    const v4, 0x7f080127

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->cursorxx:Landroid/widget/ImageView;

    .line 649
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f020000

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 650
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 649
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bmpW:I

    .line 651
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 652
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 653
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 654
    .local v2, "screenW":I
    div-int/lit8 v3, v2, 0x2

    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bmpW:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->offset:I

    .line 655
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 656
    .local v1, "matrix":Landroid/graphics/Matrix;
    iget v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->offset:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 657
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->cursorxx:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 658
    return-void
.end method

.method private InitKeyButtonView()V
    .locals 2

    .prologue
    .line 816
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->popv:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->popv:Landroid/view/View;

    const v1, 0x7f080112

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->edtOpenLockPWD:Landroid/widget/EditText;

    .line 822
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->popv:Landroid/view/View;

    const v1, 0x7f08013a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key00:Landroid/widget/ImageView;

    .line 823
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->popv:Landroid/view/View;

    const v1, 0x7f080130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key01:Landroid/widget/ImageView;

    .line 824
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->popv:Landroid/view/View;

    const v1, 0x7f080131

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key02:Landroid/widget/ImageView;

    .line 825
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->popv:Landroid/view/View;

    const v1, 0x7f080132

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key03:Landroid/widget/ImageView;

    .line 826
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->popv:Landroid/view/View;

    const v1, 0x7f080133

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key04:Landroid/widget/ImageView;

    .line 827
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->popv:Landroid/view/View;

    const v1, 0x7f080134

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key05:Landroid/widget/ImageView;

    .line 828
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->popv:Landroid/view/View;

    const v1, 0x7f080135

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key06:Landroid/widget/ImageView;

    .line 829
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->popv:Landroid/view/View;

    const v1, 0x7f080136

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key07:Landroid/widget/ImageView;

    .line 830
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->popv:Landroid/view/View;

    const v1, 0x7f080138

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key08:Landroid/widget/ImageView;

    .line 831
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->popv:Landroid/view/View;

    const v1, 0x7f080139

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key09:Landroid/widget/ImageView;

    .line 832
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->popv:Landroid/view/View;

    const v1, 0x7f080137

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->keydel:Landroid/widget/ImageView;

    .line 833
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->popv:Landroid/view/View;

    const v1, 0x7f08013b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->keyfin:Landroid/widget/ImageView;

    .line 835
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key00:Landroid/widget/ImageView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->keyboardClicker:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 836
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key01:Landroid/widget/ImageView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->keyboardClicker:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 837
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key02:Landroid/widget/ImageView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->keyboardClicker:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 838
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key03:Landroid/widget/ImageView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->keyboardClicker:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 839
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key04:Landroid/widget/ImageView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->keyboardClicker:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 840
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key05:Landroid/widget/ImageView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->keyboardClicker:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 841
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key06:Landroid/widget/ImageView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->keyboardClicker:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 842
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key07:Landroid/widget/ImageView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->keyboardClicker:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 843
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key08:Landroid/widget/ImageView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->keyboardClicker:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 844
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key09:Landroid/widget/ImageView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->keyboardClicker:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 845
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->keydel:Landroid/widget/ImageView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->keyboardClicker:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 846
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->keyfin:Landroid/widget/ImageView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->keyboardClicker:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 849
    :cond_0
    return-void
.end method

.method private InitParams()V
    .locals 3

    .prologue
    .line 1570
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1571
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1572
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nSurfaceWidth:I

    .line 1573
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nSurfaceHeight:I

    .line 1574
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->textosd:Landroid/widget/TextView;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->strName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1575
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->cameraName:Landroid/widget/TextView;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->strName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1576
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->textViewTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->strName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1577
    return-void
.end method

.method private InitTextView()V
    .locals 3

    .prologue
    .line 637
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->popv:Landroid/view/View;

    const v1, 0x7f080125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->t1:Landroid/widget/TextView;

    .line 638
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->popv:Landroid/view/View;

    const v1, 0x7f080126

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->t2:Landroid/widget/TextView;

    .line 643
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->t1:Landroid/widget/TextView;

    new-instance v1, Lobject/p2pwificam/clientActivity/PlayActivity$MyOnClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lobject/p2pwificam/clientActivity/PlayActivity$MyOnClickListener;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->t2:Landroid/widget/TextView;

    new-instance v1, Lobject/p2pwificam/clientActivity/PlayActivity$MyOnClickListener;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lobject/p2pwificam/clientActivity/PlayActivity$MyOnClickListener;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    return-void
.end method

.method private StartAudio()V
    .locals 2

    .prologue
    .line 1580
    monitor-enter p0

    .line 1584
    :try_start_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzAudio:Landroid/widget/ImageButton;

    const v1, 0x7f0200b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1585
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzAudio:Landroid/widget/ImageButton;

    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_selColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 1586
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzAudio:Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnSelect:Landroid/widget/ImageButton;

    .line 1588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bAudioStart:Z

    .line 1589
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_micphone:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1590
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_micphone:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->selectLayout:Landroid/view/View;

    .line 1608
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->isSupportBiVoice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1610
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_micphone:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1611
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->StartTalk()V

    .line 1617
    :goto_0
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->isSupportApm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1619
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_renderBuffer:Lobject/p2pipcam/utils/AudioBuffer;

    invoke-virtual {v0}, Lobject/p2pipcam/utils/AudioBuffer;->clear()V

    .line 1620
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->audioUtil:Lobject/p2pipcam/utils/AudioUtil;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_renderBuffer:Lobject/p2pipcam/utils/AudioBuffer;

    invoke-virtual {v0, v1}, Lobject/p2pipcam/utils/AudioUtil;->StartTrack(Lobject/p2pipcam/utils/AudioBuffer;)Z

    .line 1632
    :goto_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    invoke-virtual {v0}, Lcom/easyview/basecamera/BaseCamera;->StartAudio()V

    .line 1580
    monitor-exit p0

    .line 1636
    return-void

    .line 1614
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->showCalloffButton(Z)V

    goto :goto_0

    .line 1580
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1623
    :cond_1
    :try_start_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->AudioBuffer:Lcom/easyview/talkutils/CustomBuffer;

    invoke-virtual {v0}, Lcom/easyview/talkutils/CustomBuffer;->ClearAll()V

    .line 1624
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->audioPlayer:Lcom/easyview/talkutils/AudioPlayer;

    invoke-virtual {v0}, Lcom/easyview/talkutils/AudioPlayer;->AudioPlayStart()Z

    .line 1627
    const/4 v0, 0x0

    sput v0, Lcom/easyview/talkutils/AudioPlayer;->bMute:I

    .line 1628
    const/4 v0, 0x0

    sput-boolean v0, Lcom/easyview/talkutils/AudioPlayer;->bFilter:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private StartTalk()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1673
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->isSupportApm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1675
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->audioUtil:Lobject/p2pipcam/utils/AudioUtil;

    if-eqz v0, :cond_1

    .line 1677
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/easyview/ppcs/PPCSCamera;

    if-ne v0, v1, :cond_0

    .line 1679
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->audioUtil:Lobject/p2pipcam/utils/AudioUtil;

    new-instance v1, Lobject/p2pwificam/clientActivity/PlayActivity$30;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$30;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    invoke-virtual {v0, v1}, Lobject/p2pipcam/utils/AudioUtil;->StartRecord(Lobject/p2pipcam/utils/AudioUtil$IRecordData;)V

    .line 1688
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bAudioRecordStart:Z

    .line 1690
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    invoke-virtual {v0}, Lcom/easyview/basecamera/BaseCamera;->StartTalk()V

    .line 1703
    :cond_1
    :goto_0
    return-void

    .line 1694
    :cond_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->customAudioRecorder:Lcom/easyview/talkutils/CustomAudioRecorder;

    if-eqz v0, :cond_1

    .line 1695
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/easyview/ppcs/PPCSCamera;

    if-ne v0, v1, :cond_3

    .line 1697
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->customAudioRecorder:Lcom/easyview/talkutils/CustomAudioRecorder;

    invoke-virtual {v0}, Lcom/easyview/talkutils/CustomAudioRecorder;->StartRecord()V

    .line 1698
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bAudioRecordStart:Z

    .line 1700
    :cond_3
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    invoke-virtual {v0}, Lcom/easyview/basecamera/BaseCamera;->StartTalk()V

    goto :goto_0
.end method

.method private Stop()V
    .locals 7

    .prologue
    const v6, 0x7f040006

    const/high16 v5, 0x7f040000

    const/16 v4, 0x66

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3249
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bManualExit:Z

    .line 3250
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_micphone:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3251
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bProgress:Z

    if-nez v0, :cond_2

    .line 3252
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isTakeVideo:Z

    if-eqz v0, :cond_0

    .line 3253
    const v0, 0x7f0601a6

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->showToast(I)V

    .line 3276
    :goto_0
    return-void

    .line 3255
    :cond_0
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->returnLastBmp2Home()V

    .line 3256
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->StopAudio()V

    .line 3257
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->StopTalk()V

    .line 3258
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->playMode:I

    if-ne v0, v2, :cond_1

    .line 3260
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->strDID:Ljava/lang/String;

    invoke-static {v0, v4, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 3262
    :cond_1
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->finish()V

    .line 3263
    invoke-virtual {p0, v6, v5}, Lobject/p2pwificam/clientActivity/PlayActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 3267
    :cond_2
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->StopAudio()V

    .line 3268
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->StopTalk()V

    .line 3269
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->playMode:I

    if-ne v0, v2, :cond_3

    .line 3271
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->strDID:Ljava/lang/String;

    invoke-static {v0, v4, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 3273
    :cond_3
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->finish()V

    .line 3274
    invoke-virtual {p0, v6, v5}, Lobject/p2pwificam/clientActivity/PlayActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method private StopAudio()V
    .locals 2

    .prologue
    .line 1639
    monitor-enter p0

    .line 1640
    :try_start_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzAudio:Landroid/widget/ImageButton;

    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1641
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bAudioStart:Z

    .line 1643
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_micphone:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1645
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->isSupportApm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1647
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->audioUtil:Lobject/p2pipcam/utils/AudioUtil;

    invoke-virtual {v0}, Lobject/p2pipcam/utils/AudioUtil;->StopTrack()V

    .line 1648
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_renderBuffer:Lobject/p2pipcam/utils/AudioBuffer;

    invoke-virtual {v0}, Lobject/p2pipcam/utils/AudioBuffer;->clear()V

    .line 1657
    :goto_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    invoke-virtual {v0}, Lcom/easyview/basecamera/BaseCamera;->StopAudio()V

    .line 1659
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    invoke-virtual {v0}, Lcom/easyview/basecamera/BaseCamera;->get_caps()Lcom/easyview/basecamera/CameraCaps;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyview/basecamera/CameraCaps;->isSupportBiVoice()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1661
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->audioUtil:Lobject/p2pipcam/utils/AudioUtil;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->audioUtil:Lobject/p2pipcam/utils/AudioUtil;

    invoke-virtual {v0}, Lobject/p2pipcam/utils/AudioUtil;->Stop()V

    .line 1662
    :cond_0
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->StopTalk()V

    .line 1639
    :cond_1
    :goto_1
    monitor-exit p0

    .line 1669
    return-void

    .line 1652
    :cond_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->audioPlayer:Lcom/easyview/talkutils/AudioPlayer;

    invoke-virtual {v0}, Lcom/easyview/talkutils/AudioPlayer;->AudioPlayStop()V

    .line 1653
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->AudioBuffer:Lcom/easyview/talkutils/CustomBuffer;

    invoke-virtual {v0}, Lcom/easyview/talkutils/CustomBuffer;->ClearAll()V

    goto :goto_0

    .line 1639
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1663
    :cond_3
    :try_start_1
    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->isBell(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1665
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->audioUtil:Lobject/p2pipcam/utils/AudioUtil;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->audioUtil:Lobject/p2pipcam/utils/AudioUtil;

    invoke-virtual {v0}, Lobject/p2pipcam/utils/AudioUtil;->Stop()V

    .line 1666
    :cond_4
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->StopTalk()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private StopTalk()V
    .locals 2

    .prologue
    .line 1711
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->customAudioRecorder:Lcom/easyview/talkutils/CustomAudioRecorder;

    if-eqz v0, :cond_1

    .line 1712
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/easyview/ppcs/PPCSCamera;

    if-ne v0, v1, :cond_0

    .line 1714
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->customAudioRecorder:Lcom/easyview/talkutils/CustomAudioRecorder;

    invoke-virtual {v0}, Lcom/easyview/talkutils/CustomAudioRecorder;->StopRecord()V

    .line 1715
    const/4 v0, 0x0

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bAudioRecordStart:Z

    .line 1717
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    invoke-virtual {v0}, Lcom/easyview/basecamera/BaseCamera;->StopTalk()V

    .line 1731
    :cond_1
    return-void
.end method

.method private SwitchAudio()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2350
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->selectLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2352
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->selectLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2353
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->selectLayout:Landroid/view/View;

    .line 2354
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnSelect:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnSelect:Landroid/widget/ImageButton;

    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_norColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 2355
    :cond_0
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnSelect:Landroid/widget/ImageButton;

    .line 2357
    :cond_1
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bAudioStart:Z

    if-eqz v0, :cond_2

    .line 2359
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->StopAudio()V

    .line 2364
    :goto_0
    return-void

    .line 2362
    :cond_2
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->StartAudio()V

    goto :goto_0
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->textViewVideoing:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->textView_sdsize:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->timeoutHandle:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lobject/p2pwificam/clientActivity/PlayActivity;J)V
    .locals 0

    .prologue
    .line 248
    iput-wide p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->availableBlocks:J

    return-void
.end method

.method static synthetic access$101(Lobject/p2pwificam/clientActivity/PlayActivity;)J
    .locals 2

    .prologue
    .line 248
    iget-wide v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->availableBlocks:J

    return-wide v0
.end method

.method static synthetic access$102(Lobject/p2pwificam/clientActivity/PlayActivity;)J
    .locals 2

    .prologue
    .line 246
    iget-wide v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->blockSize:J

    return-wide v0
.end method

.method static synthetic access$103(Lobject/p2pwificam/clientActivity/PlayActivity;J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    invoke-direct {p0, p1, p2}, Lobject/p2pwificam/clientActivity/PlayActivity;->formatSize(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$104(Lobject/p2pwificam/clientActivity/PlayActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->sdAvail:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$105(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->sdAvail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$106(Lobject/p2pwificam/clientActivity/PlayActivity;Z)V
    .locals 0

    .prologue
    .line 176
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isTakeVideo:Z

    return-void
.end method

.method static synthetic access$107(Lobject/p2pwificam/clientActivity/PlayActivity;Z)V
    .locals 0

    .prologue
    .line 232
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isstart:Z

    return-void
.end method

.method static synthetic access$108(Lobject/p2pwificam/clientActivity/PlayActivity;Z)V
    .locals 0

    .prologue
    .line 228
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->st:Z

    return-void
.end method

.method static synthetic access$109(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_videoing:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$11(Lobject/p2pwificam/clientActivity/PlayActivity;)Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isExit:Z

    return v0
.end method

.method static synthetic access$110(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->playHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$111(Lobject/p2pwificam/clientActivity/PlayActivity;)Z
    .locals 1

    .prologue
    .line 501
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bStartVideo:Z

    return v0
.end method

.method static synthetic access$112(Lobject/p2pwificam/clientActivity/PlayActivity;Z)V
    .locals 0

    .prologue
    .line 501
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bStartVideo:Z

    return-void
.end method

.method static synthetic access$113(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$114(Lobject/p2pwificam/clientActivity/PlayActivity;)I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->offset:I

    return v0
.end method

.method static synthetic access$115(Lobject/p2pwificam/clientActivity/PlayActivity;)I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bmpW:I

    return v0
.end method

.method static synthetic access$116(Lobject/p2pwificam/clientActivity/PlayActivity;)I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->currIndex:I

    return v0
.end method

.method static synthetic access$117(Lobject/p2pwificam/clientActivity/PlayActivity;I)V
    .locals 0

    .prologue
    .line 282
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->currIndex:I

    return-void
.end method

.method static synthetic access$118(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->t1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$119(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->t2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1106
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$120(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->cursorxx:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$121(Lobject/p2pwificam/clientActivity/PlayActivity;)I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_resolution_idle_count:I

    return v0
.end method

.method static synthetic access$122(Lobject/p2pwificam/clientActivity/PlayActivity;I)V
    .locals 0

    .prologue
    .line 260
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_resolution_idle_count:I

    return-void
.end method

.method static synthetic access$123(Lobject/p2pwificam/clientActivity/PlayActivity;Z)V
    .locals 0

    .prologue
    .line 3419
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/PlayActivity;->showCalloffButton(Z)V

    return-void
.end method

.method static synthetic access$124(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_resolution:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$125(Lobject/p2pwificam/clientActivity/PlayActivity;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 554
    invoke-direct {p0, p1, p2}, Lobject/p2pwificam/clientActivity/PlayActivity;->saveBmpToSDcard(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$126(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$127(Lobject/p2pwificam/clientActivity/PlayActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1255
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/PlayActivity;->savePicToSDcard(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$128(Lobject/p2pwificam/clientActivity/PlayActivity;)Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bAudioRecordStart:Z

    return v0
.end method

.method static synthetic access$129(Lobject/p2pwificam/clientActivity/PlayActivity;I)V
    .locals 0

    .prologue
    .line 292
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_quaProgress:I

    return-void
.end method

.method static synthetic access$13(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 3238
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->runnableHangup:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$130(Lobject/p2pwificam/clientActivity/PlayActivity;)I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_quaProgress:I

    return v0
.end method

.method static synthetic access$131(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_qualitySeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$132(Lobject/p2pwificam/clientActivity/PlayActivity;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isPlayAudio:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$133(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnMusicPlay:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$134(Lobject/p2pwificam/clientActivity/PlayActivity;I)V
    .locals 0

    .prologue
    .line 137
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nBrightness:I

    return-void
.end method

.method static synthetic access$135(Lobject/p2pwificam/clientActivity/PlayActivity;)I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nBrightness:I

    return v0
.end method

.method static synthetic access$136(Lobject/p2pwificam/clientActivity/PlayActivity;I)V
    .locals 0

    .prologue
    .line 138
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nContrast:I

    return-void
.end method

.method static synthetic access$137(Lobject/p2pwificam/clientActivity/PlayActivity;)I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nContrast:I

    return v0
.end method

.method static synthetic access$14(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 3345
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->runnableStartVideo:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$15(Lobject/p2pwificam/clientActivity/PlayActivity;)V
    .locals 0

    .prologue
    .line 1374
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->getCameraParams()V

    return-void
.end method

.method static synthetic access$16(Lobject/p2pwificam/clientActivity/PlayActivity;)V
    .locals 0

    .prologue
    .line 1031
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->setViewVisible()V

    return-void
.end method

.method static synthetic access$17(Lobject/p2pwificam/clientActivity/PlayActivity;)Z
    .locals 1

    .prologue
    .line 2276
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isPTZPrompt:Z

    return v0
.end method

.method static synthetic access$18(Lobject/p2pwificam/clientActivity/PlayActivity;Z)V
    .locals 0

    .prologue
    .line 2276
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isPTZPrompt:Z

    return-void
.end method

.method static synthetic access$19(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->vidoeView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->sdSize:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$20(Lobject/p2pwificam/clientActivity/PlayActivity;)I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nVideoHeight:I

    return v0
.end method

.method static synthetic access$21(Lobject/p2pwificam/clientActivity/PlayActivity;)I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nVideoWidth:I

    return v0
.end method

.method static synthetic access$22(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isResolution:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$23(Lobject/p2pwificam/clientActivity/PlayActivity;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isResolution:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$24(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->txtResolution:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$25(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isFPS:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$26(Lobject/p2pwificam/clientActivity/PlayActivity;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isFPS:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$27(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->txtFPS:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$28(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->txtBPS:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$29(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/opengl/GLSurfaceView;
    .locals 1

    .prologue
    .line 2927
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->edtOpenLockPWD:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$30(Lobject/p2pwificam/clientActivity/PlayActivity;)Lobject/p2pwificam/clientActivity/MyRender;
    .locals 1

    .prologue
    .line 2926
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    return-object v0
.end method

.method static synthetic access$31(Lobject/p2pwificam/clientActivity/PlayActivity;)[B
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->videodata:[B

    return-object v0
.end method

.method static synthetic access$32(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->videoViewStandard:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$33(Lobject/p2pwificam/clientActivity/PlayActivity;)Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isTakeVideo:Z

    return v0
.end method

.method static synthetic access$34(Lobject/p2pwificam/clientActivity/PlayActivity;)J
    .locals 2

    .prologue
    .line 318
    iget-wide v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->start_record_time:J

    return-wide v0
.end method

.method static synthetic access$35(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->txtRecordText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$36(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 2928
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzTakepic:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$37(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 2277
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzTakeVideo:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$38(Lobject/p2pwificam/clientActivity/PlayActivity;)I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->videoDataLen:I

    return v0
.end method

.method static synthetic access$39(Lobject/p2pwificam/clientActivity/PlayActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1105
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mBmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->fragment_dialog:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$40(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1105
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$41(Lobject/p2pwificam/clientActivity/PlayActivity;Z)V
    .locals 0

    .prologue
    .line 156
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bDisplayFinished:Z

    return-void
.end method

.method static synthetic access$42(Lobject/p2pwificam/clientActivity/PlayActivity;I)V
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nVideoWidth:I

    return-void
.end method

.method static synthetic access$43(Lobject/p2pwificam/clientActivity/PlayActivity;I)V
    .locals 0

    .prologue
    .line 127
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nVideoHeight:I

    return-void
.end method

.method static synthetic access$44(Lobject/p2pwificam/clientActivity/PlayActivity;)Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isTakepic:Z

    return v0
.end method

.method static synthetic access$45(Lobject/p2pwificam/clientActivity/PlayActivity;Z)V
    .locals 0

    .prologue
    .line 208
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isTakepic:Z

    return-void
.end method

.method static synthetic access$46(Lobject/p2pwificam/clientActivity/PlayActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1241
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/PlayActivity;->takePicture(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$47(Lobject/p2pwificam/clientActivity/PlayActivity;)Lcom/easyview/basecamera/BaseCamera;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    return-object v0
.end method

.method static synthetic access$48(Lobject/p2pwificam/clientActivity/PlayActivity;)[Landroid/widget/Button;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->buttonSwitch:[Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$49(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_light_white:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/PlayActivity;)Lobject/p2pipcam/bean/LockBean;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->lockbean:Lobject/p2pipcam/bean/LockBean;

    return-object v0
.end method

.method static synthetic access$50(Lobject/p2pwificam/clientActivity/PlayActivity;)I
    .locals 1

    .prologue
    .line 2618
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->light_white_value:I

    return v0
.end method

.method static synthetic access$51(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_light_yellow:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$52(Lobject/p2pwificam/clientActivity/PlayActivity;)I
    .locals 1

    .prologue
    .line 2619
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->light_yellow_value:I

    return v0
.end method

.method static synthetic access$53(Lobject/p2pwificam/clientActivity/PlayActivity;)I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nPlayCount:I

    return v0
.end method

.method static synthetic access$54(Lobject/p2pwificam/clientActivity/PlayActivity;I)V
    .locals 0

    .prologue
    .line 159
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nPlayCount:I

    return-void
.end method

.method static synthetic access$55(Lobject/p2pwificam/clientActivity/PlayActivity;)I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nStreamCodecType:I

    return v0
.end method

.method static synthetic access$56(Lobject/p2pwificam/clientActivity/PlayActivity;I)V
    .locals 0

    .prologue
    .line 2618
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->light_white_value:I

    return-void
.end method

.method static synthetic access$57(Lobject/p2pwificam/clientActivity/PlayActivity;I)V
    .locals 0

    .prologue
    .line 2619
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->light_yellow_value:I

    return-void
.end method

.method static synthetic access$58(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnLight:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$59(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->lightCtrlView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->strDID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$60(Lobject/p2pwificam/clientActivity/PlayActivity;Landroid/widget/ImageButton;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 3501
    invoke-direct {p0, p1, p2}, Lobject/p2pwificam/clientActivity/PlayActivity;->selectCtrlButton(Landroid/widget/ImageButton;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$61(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnLightSound:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$62(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_micphone:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$63(Lobject/p2pwificam/clientActivity/PlayActivity;)Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bAudioStart:Z

    return v0
.end method

.method static synthetic access$64(Lobject/p2pwificam/clientActivity/PlayActivity;)V
    .locals 0

    .prologue
    .line 1638
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->StopAudio()V

    return-void
.end method

.method static synthetic access$65(Lobject/p2pwificam/clientActivity/PlayActivity;)V
    .locals 0

    .prologue
    .line 1579
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->StartAudio()V

    return-void
.end method

.method static synthetic access$66(Lobject/p2pwificam/clientActivity/PlayActivity;)V
    .locals 0

    .prologue
    .line 3527
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->doSnap()V

    return-void
.end method

.method static synthetic access$67(Lobject/p2pwificam/clientActivity/PlayActivity;)V
    .locals 0

    .prologue
    .line 3545
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->doRecord()V

    return-void
.end method

.method static synthetic access$68(Lobject/p2pwificam/clientActivity/PlayActivity;)V
    .locals 0

    .prologue
    .line 3247
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->Stop()V

    return-void
.end method

.method static synthetic access$69(Lobject/p2pwificam/clientActivity/PlayActivity;)V
    .locals 0

    .prologue
    .line 3360
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->showExtInfo()V

    return-void
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/PlayActivity;)I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nTimeoutRemain:I

    return v0
.end method

.method static synthetic access$70(Lobject/p2pwificam/clientActivity/PlayActivity;)Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bProgress:Z

    return v0
.end method

.method static synthetic access$71(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 3304
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->viewHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$72(Lobject/p2pwificam/clientActivity/PlayActivity;)Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->showSwitchButton:Z

    return v0
.end method

.method static synthetic access$73(Lobject/p2pwificam/clientActivity/PlayActivity;Z)V
    .locals 0

    .prologue
    .line 296
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->showSwitchButton:Z

    return-void
.end method

.method static synthetic access$74(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnCalloff:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$75(Lobject/p2pwificam/clientActivity/PlayActivity;)Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->st:Z

    return v0
.end method

.method static synthetic access$76(Lobject/p2pwificam/clientActivity/PlayActivity;)I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->video_i:I

    return v0
.end method

.method static synthetic access$77(Lobject/p2pwificam/clientActivity/PlayActivity;I)V
    .locals 0

    .prologue
    .line 227
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->video_i:I

    return-void
.end method

.method static synthetic access$78(Lobject/p2pwificam/clientActivity/PlayActivity;J)V
    .locals 0

    .prologue
    .line 264
    iput-wide p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->allVideoSize:J

    return-void
.end method

.method static synthetic access$79(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2847
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->getDateTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lobject/p2pwificam/clientActivity/PlayActivity;I)V
    .locals 0

    .prologue
    .line 174
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nTimeoutRemain:I

    return-void
.end method

.method static synthetic access$80(Lobject/p2pwificam/clientActivity/PlayActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$81(Lobject/p2pwificam/clientActivity/PlayActivity;)Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isH264:Z

    return v0
.end method

.method static synthetic access$82(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$83(Lobject/p2pwificam/clientActivity/PlayActivity;)I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_video_fps:I

    return v0
.end method

.method static synthetic access$84(Lobject/p2pwificam/clientActivity/PlayActivity;I)V
    .locals 0

    .prologue
    .line 266
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->widthV:I

    return-void
.end method

.method static synthetic access$85(Lobject/p2pwificam/clientActivity/PlayActivity;I)V
    .locals 0

    .prologue
    .line 267
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->heightV:I

    return-void
.end method

.method static synthetic access$86(Lobject/p2pwificam/clientActivity/PlayActivity;)I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->widthV:I

    return v0
.end method

.method static synthetic access$87(Lobject/p2pwificam/clientActivity/PlayActivity;)I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->heightV:I

    return v0
.end method

.method static synthetic access$88(Lobject/p2pwificam/clientActivity/PlayActivity;Z)V
    .locals 0

    .prologue
    .line 231
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isT:Z

    return-void
.end method

.method static synthetic access$89(Lobject/p2pwificam/clientActivity/PlayActivity;Ljava/util/LinkedList;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->videoData:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$9(Lobject/p2pwificam/clientActivity/PlayActivity;)V
    .locals 0

    .prologue
    .line 631
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->updateTimeout()V

    return-void
.end method

.method static synthetic access$90(Lobject/p2pwificam/clientActivity/PlayActivity;)J
    .locals 2

    .prologue
    .line 264
    iget-wide v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->allVideoSize:J

    return-wide v0
.end method

.method static synthetic access$91(Lobject/p2pwificam/clientActivity/PlayActivity;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->delFile:Ljava/io/File;

    return-void
.end method

.method static synthetic access$92(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/io/File;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->delFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$93(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->videoData:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$94(Lobject/p2pwificam/clientActivity/PlayActivity;)Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bH:Z

    return v0
.end method

.method static synthetic access$95(Lobject/p2pwificam/clientActivity/PlayActivity;Z)V
    .locals 0

    .prologue
    .line 235
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bH:Z

    return-void
.end method

.method static synthetic access$96(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->MyTakeVideoHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$97(Lobject/p2pwificam/clientActivity/PlayActivity;)Ljava/io/File;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->path:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$98(Lobject/p2pwificam/clientActivity/PlayActivity;Landroid/os/StatFs;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->stat:Landroid/os/StatFs;

    return-void
.end method

.method static synthetic access$99(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/os/StatFs;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->stat:Landroid/os/StatFs;

    return-object v0
.end method

.method private checkDeviceAsPhoneTime()V
    .locals 9

    .prologue
    .line 3490
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 3491
    .local v3, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    div-int/lit16 v4, v5, 0x3e8

    .line 3492
    .local v4, "tz":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 3493
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v2, v5

    .line 3494
    .local v2, "now":I
    new-instance v1, Lcom/easyview/bean/DateBean;

    invoke-direct {v1}, Lcom/easyview/bean/DateBean;-><init>()V

    .line 3495
    .local v1, "dateBean":Lcom/easyview/bean/DateBean;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/easyview/bean/DateBean;->setNtp_enable(I)V

    .line 3496
    const-string v5, " "

    invoke-virtual {v1, v5}, Lcom/easyview/bean/DateBean;->setNtp_ser(Ljava/lang/String;)V

    .line 3497
    invoke-virtual {v1, v2}, Lcom/easyview/bean/DateBean;->setNow(I)V

    .line 3498
    invoke-virtual {v1, v4}, Lcom/easyview/bean/DateBean;->setTz(I)V

    .line 3499
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Lcom/easyview/basecamera/BaseCamera;->setTimeParam(Lcom/easyview/bean/DateBean;Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 3500
    return-void
.end method

.method private dismissBrightAndContrastProgress()V
    .locals 1

    .prologue
    .line 2715
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2716
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2717
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    .line 2719
    :cond_0
    return-void
.end method

.method private doRecord()V
    .locals 9

    .prologue
    const/16 v8, 0x14

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3547
    iget-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isTakeVideo:Z

    if-eqz v2, :cond_1

    .line 3548
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->CloseAvi()I

    .line 3549
    iput-boolean v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isTakeVideo:Z

    .line 3550
    iput-boolean v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isstart:Z

    .line 3559
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzTakeVideo:Landroid/widget/ImageButton;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 3560
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_videoing:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3562
    iput-boolean v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->st:Z

    .line 3563
    iget-wide v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->allVideoSize:J

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    const-wide/16 v4, 0x10

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 3564
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->name:Ljava/lang/String;

    invoke-static {p0, v3}, Lobject/p2pipcam/utils/Pub;->recordPathName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->delFile:Ljava/io/File;

    .line 3565
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->delFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 3566
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

    .line 3568
    .end local v0    # "b":Z
    :cond_0
    iput-boolean v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isT:Z

    .line 3613
    :goto_0
    return-void

    .line 3570
    :cond_1
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_2

    .line 3571
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3572
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3574
    :cond_2
    new-instance v2, Landroid/os/StatFs;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->path:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->stat:Landroid/os/StatFs;

    .line 3575
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->stat:Landroid/os/StatFs;

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->availableBlocks:J

    .line 3576
    iget-wide v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->availableBlocks:J

    iget-wide v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->blockSize:J

    mul-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lobject/p2pwificam/clientActivity/PlayActivity;->formatSize(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->sdAvail:Ljava/lang/String;

    .line 3577
    iget-wide v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->availableBlocks:J

    iget-wide v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->blockSize:J

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    const-wide/16 v4, 0x32

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 3578
    const v2, 0x7f0601a9

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/PlayActivity;->showToastLong(I)V

    goto :goto_0

    .line 3582
    :cond_3
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    invoke-virtual {v2}, Lcom/easyview/basecamera/BaseCamera;->getQuality()I

    move-result v1

    .line 3583
    .local v1, "qua":I
    const-string v2, "TakeVideo"

    const-string v3, "Start quality:%d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3585
    if-ge v1, v8, :cond_4

    .line 3587
    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->setResolution(I)V

    .line 3597
    :cond_4
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzTakeVideo:Landroid/widget/ImageButton;

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 3598
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_videoing:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3600
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->textView_sdsize:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3601
    sput v7, Lobject/p2pipcam/system/SystemValue;->checkSDStatu:I

    .line 3602
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->allVideoSize:J

    .line 3603
    iput-boolean v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isTakeVideo:Z

    .line 3604
    iput-boolean v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isstart:Z

    .line 3606
    iput v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->video_i:I

    .line 3607
    iput-boolean v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->st:Z

    .line 3608
    iput-boolean v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isT:Z

    .line 3609
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->videoData:Ljava/util/LinkedList;

    .line 3610
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->start_record_time:J

    .line 3611
    new-instance v2, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/PlayActivity$MyTakeVideoThread;->start()V

    goto/16 :goto_0
.end method

.method private doSnap()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const v2, 0x3c23d70a    # 0.01f

    .line 3529
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->existSdcard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3531
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_soundPool:Landroid/media/SoundPool;

    const/4 v1, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 3532
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isTakepic:Z

    .line 3534
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3544
    :goto_0
    return-void

    .line 3535
    :catch_0
    move-exception v7

    .line 3537
    .local v7, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 3541
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const v0, 0x7f0601a3

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->showToast(I)V

    goto :goto_0
.end method

.method private enableCtrl(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 3616
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnLightSound:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3617
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzTakepic:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3618
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzTakeVideo:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3619
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnLight:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3620
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnExpand:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 3621
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->checkBoxHS:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3622
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3623
    return-void
.end method

.method private existSdcard()Z
    .locals 2

    .prologue
    .line 2030
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 2031
    const-string v1, "mounted"

    .line 2030
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2031
    if-eqz v0, :cond_0

    .line 2032
    const/4 v0, 0x1

    .line 2034
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findView()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 1743
    const v6, 0x7f080185

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->txtResolution:Landroid/widget/TextView;

    .line 1744
    const v6, 0x7f080186

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->txtFPS:Landroid/widget/TextView;

    .line 1745
    const v6, 0x7f080187

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->txtBPS:Landroid/widget/TextView;

    .line 1746
    const v6, 0x7f080080

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->textViewTitle:Landroid/widget/TextView;

    .line 1748
    const v6, 0x7f08018d

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnExpand:Landroid/view/View;

    .line 1749
    const v6, 0x7f08019e

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnCalloff:Landroid/view/View;

    .line 1750
    const v6, 0x7f080192

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->textView_sdsize:Landroid/widget/TextView;

    .line 1751
    const v6, 0x7f080191

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_videoing:Landroid/widget/LinearLayout;

    .line 1752
    const v6, 0x7f0801b2

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->checkBoxHS:Landroid/widget/ImageButton;

    .line 1753
    const v6, 0x7f08007b

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/SurfaceView;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->playSurface:Landroid/view/SurfaceView;

    .line 1755
    const v6, 0x7f080197

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->button_back:Landroid/widget/ImageButton;

    .line 1756
    const v6, 0x7f08007c

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/opengl/GLSurfaceView;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 1757
    new-instance v6, Lobject/p2pwificam/clientActivity/MyRender;

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-direct {v6, v7}, Lobject/p2pwificam/clientActivity/MyRender;-><init>(Landroid/opengl/GLSurfaceView;)V

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    .line 1758
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->myGlSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    invoke-virtual {v6, v7}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 1759
    const v6, 0x7f080198

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->buttonPreset:Landroid/widget/Button;

    .line 1760
    const v6, 0x7f080180

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->imgUp:Landroid/widget/ImageView;

    .line 1761
    const v6, 0x7f080183

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->imgDown:Landroid/widget/ImageView;

    .line 1762
    const v6, 0x7f080182

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->imgRight:Landroid/widget/ImageView;

    .line 1763
    const v6, 0x7f080181

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->imgLeft:Landroid/widget/ImageView;

    .line 1764
    const v6, 0x7f080193

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->textViewVideoing:Landroid/widget/TextView;

    .line 1765
    const v6, 0x7f0801bf

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->led_open:Landroid/widget/ImageButton;

    .line 1766
    const v6, 0x7f0801c0

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->led_close:Landroid/widget/ImageButton;

    .line 1767
    const v6, 0x7f0801b4

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnMusicPlay:Landroid/widget/ImageButton;

    .line 1768
    const v6, 0x7f0801b6

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnLight:Landroid/widget/ImageButton;

    .line 1769
    const v6, 0x7f0801b5

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnLightSound:Landroid/widget/ImageButton;

    .line 1770
    const v6, 0x7f0801a0

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnLightAudio:Landroid/widget/ImageButton;

    .line 1771
    const v6, 0x7f08013d

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->lightCtrlView:Landroid/view/View;

    .line 1772
    const v6, 0x7f0801c1

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnLightSnap:Landroid/widget/ImageButton;

    .line 1773
    const v6, 0x7f0801c2

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnLightRecord:Landroid/widget/ImageButton;

    .line 1775
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->led_close:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1776
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->led_open:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1777
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->imgUp:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1778
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->imgDown:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1779
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->imgLeft:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1780
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->imgRight:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1781
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->buttonPreset:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1782
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->checkBoxHS:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1783
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnExpand:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1784
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnCalloff:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1785
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnMusicPlay:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1787
    const v6, 0x7f0800aa

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->vidoeView:Landroid/widget/ImageView;

    .line 1788
    const v6, 0x7f0800ab

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->videoViewStandard:Landroid/widget/ImageView;

    .line 1789
    const v6, 0x7f08007d

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->progressView:Landroid/view/View;

    .line 1790
    const v6, 0x7f08018f

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->textosd:Landroid/widget/TextView;

    .line 1791
    const v6, 0x7f080190

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->textTimeStamp:Landroid/widget/TextView;

    .line 1792
    const v6, 0x7f08019d

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->textTimeoutTextView:Landroid/widget/TextView;

    .line 1793
    const v6, 0x7f080196

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->cameraName:Landroid/widget/TextView;

    .line 1796
    const v6, 0x7f08007f

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->osdView:Landroid/view/View;

    .line 1798
    const v6, 0x7f080199

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzHoriMirror2:Landroid/widget/ImageButton;

    .line 1799
    const v6, 0x7f08019a

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzVertMirror2:Landroid/widget/ImageButton;

    .line 1800
    const v6, 0x7f08019b

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzHoriTour2:Landroid/widget/ImageButton;

    .line 1801
    const v6, 0x7f08019c

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzVertTour2:Landroid/widget/ImageButton;

    .line 1803
    const v6, 0x7f0801b3

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzAudio:Landroid/widget/ImageButton;

    .line 1805
    const v6, 0x7f0801b8

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzTakepic:Landroid/widget/ImageButton;

    .line 1806
    const v6, 0x7f0801b9

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzTakeVideo:Landroid/widget/ImageButton;

    .line 1807
    const v6, 0x7f0801b7

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnUnlock:Landroid/widget/ImageButton;

    .line 1809
    const v6, 0x7f0801bb

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 1810
    .local v3, "ptzBrightness":Landroid/widget/ImageButton;
    const v6, 0x7f0801bc

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 1811
    .local v4, "ptzContrast":Landroid/widget/ImageButton;
    const v6, 0x7f0801ba

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    .line 1812
    const v6, 0x7f0801be

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzPlayMode:Landroid/widget/ImageButton;

    .line 1813
    const v6, 0x7f0801b0

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzOtherSetView:Landroid/view/View;

    .line 1814
    const v6, 0x7f0801af

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzOtherSetAnimView:Landroid/view/View;

    .line 1815
    const v6, 0x7f0801b1

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzPlatform:Landroid/widget/LinearLayout;

    .line 1816
    const v6, 0x7f0801bd

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 1818
    .local v5, "ptzDefaultSet":Landroid/widget/ImageButton;
    const/high16 v6, 0x1010000

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_title:Landroid/view/View;

    .line 1819
    const v6, 0x1010002

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_micphone:Landroid/widget/LinearLayout;

    .line 1820
    const v6, 0x7f0801a1

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_resolution:Landroid/widget/LinearLayout;

    .line 1821
    const v6, 0x7f08019f

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnmicrophone:Landroid/widget/ImageButton;

    .line 1822
    const v6, 0x7f0801a2

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_qualitySeekBar:Landroid/widget/SeekBar;

    .line 1823
    const v6, 0x7f080188

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->extInfoLayout:Landroid/widget/LinearLayout;

    .line 1824
    const v6, 0x7f08018a

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->txtTemperature:Landroid/widget/TextView;

    .line 1825
    const v6, 0x7f080189

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->txtHumidity:Landroid/widget/TextView;

    .line 1826
    const v6, 0x7f08018b

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->txtBodyTemp:Landroid/widget/TextView;

    .line 1899
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzHoriMirror2:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1900
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzVertMirror2:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1901
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzHoriTour2:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1902
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzVertTour2:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1904
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzAudio:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1906
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzTakepic:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1907
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzTakeVideo:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1908
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnUnlock:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1909
    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1910
    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1911
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1912
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzPlayMode:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1913
    invoke-virtual {v5, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1914
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->button_back:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1916
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnmicrophone:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1917
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_resolution:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1919
    const v6, 0x7f080195

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->topbg:Landroid/widget/RelativeLayout;

    .line 1920
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1921
    const v7, 0x7f02015e

    .line 1920
    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1922
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1923
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 1924
    invoke-virtual {v1, v10}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 1927
    const/16 v6, 0x32

    iput v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_quaProgress:I

    .line 1929
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_qualitySeekBar:Landroid/widget/SeekBar;

    iget v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_quaProgress:I

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1930
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_qualitySeekBar:Landroid/widget/SeekBar;

    new-instance v7, Lobject/p2pwificam/clientActivity/PlayActivity$31;

    invoke-direct {v7, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$31;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1959
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1963
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    invoke-virtual {v6}, Lcom/easyview/basecamera/BaseCamera;->get_caps()Lcom/easyview/basecamera/CameraCaps;

    move-result-object v6

    invoke-virtual {v6}, Lcom/easyview/basecamera/CameraCaps;->isSupportUnlock()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1967
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnUnlock:Landroid/widget/ImageButton;

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1973
    :goto_0
    invoke-direct {p0, v10}, Lobject/p2pwificam/clientActivity/PlayActivity;->showCalloffButton(Z)V

    .line 1974
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->isBell()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1976
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnUnlock:Landroid/widget/ImageButton;

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1977
    const/16 v6, 0x11

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1995
    :cond_0
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->extInfoLayout:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1997
    return-void

    .line 1968
    :cond_1
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->isSupportBiVoice()Z

    goto :goto_0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 447
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCameraParams()V
    .locals 2

    .prologue
    .line 1375
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->strDID:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPGetSystemParams(Ljava/lang/String;I)I

    .line 1376
    return-void
.end method

.method private getDataFromOther()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1549
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1550
    .local v1, "in":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 1551
    const-string v2, "stream_type"

    .line 1552
    const/4 v3, 0x3

    .line 1551
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->streamType:I

    .line 1553
    const-string v2, "cameraid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->strDID:Ljava/lang/String;

    .line 1554
    const-string v2, "camera_type"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nP2PMode:I

    .line 1555
    const-string v2, "play_mode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->playMode:I

    .line 1556
    const-string v2, "free_ppcs"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1557
    .local v0, "free_ppcs":I
    if-ne v0, v5, :cond_1

    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_free_ppcs:Z

    .line 1559
    :goto_0
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_cameraList:Lcom/easyview/camera/CameraList;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v2

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    .line 1560
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    invoke-virtual {v2}, Lcom/easyview/basecamera/BaseCamera;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->strName:Ljava/lang/String;

    .line 1561
    const-string v2, "PlayActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "strDID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    const-string v2, "strDIDtag"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "strName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->strName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " strDID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " streamType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->streamType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " nP2PMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nP2PMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " playMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->playMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    .end local v0    # "free_ppcs":I
    :cond_0
    return-void

    .line 1558
    .restart local v0    # "free_ppcs":I
    :cond_1
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_free_ppcs:Z

    goto :goto_0
.end method

.method private getDateTime()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2848
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2849
    .local v0, "d":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2850
    .local v1, "f":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 2851
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

    .line 2852
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->strDID:Ljava/lang/String;

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
    .line 1314
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1315
    .local v0, "d":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd_HH_mm_ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1316
    .local v1, "f":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1317
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

    .line 2254
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float v0, v2, v3

    .line 2255
    .local v0, "x":F
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float v1, v2, v3

    .line 2256
    .local v1, "y":F
    div-float v2, v0, v4

    div-float v3, v1, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 2257
    return-void
.end method

.method private releaseTalk()V
    .locals 1

    .prologue
    .line 1706
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->customAudioRecorder:Lcom/easyview/talkutils/CustomAudioRecorder;

    invoke-virtual {v0}, Lcom/easyview/talkutils/CustomAudioRecorder;->releaseRecord()V

    .line 1707
    return-void
.end method

.method private returnLastBmp2Home()V
    .locals 1

    .prologue
    .line 526
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayActivity$21;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$21;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    .line 551
    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/PlayActivity$21;->start()V

    .line 552
    return-void
.end method

.method private saveBmpToSDcard(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 555
    const/4 v4, 0x0

    .line 556
    .local v4, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 557
    const-string v8, "IPcamer/picid"

    .line 556
    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 558
    .local v1, "div":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 559
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 562
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

    .line 563
    .local v3, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x50

    invoke-virtual {p2, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 565
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 566
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    invoke-virtual {v7, p1}, Lobject/p2pipcam/utils/DataBaseHelper;->queryFirstpic(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 567
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-gtz v7, :cond_1

    .line 568
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 569
    .local v6, "path":Ljava/lang/String;
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    invoke-virtual {v7, p1, v6}, Lobject/p2pipcam/utils/DataBaseHelper;->addFirstpic(Ljava/lang/String;Ljava/lang/String;)Z

    .line 571
    .end local v6    # "path":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 572
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 578
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 575
    :catch_0
    move-exception v2

    .line 576
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 575
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
    .line 1256
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->getStrDate()Ljava/lang/String;

    move-result-object v7

    .line 1257
    .local v7, "strDate":Ljava/lang/String;
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->strDID:Ljava/lang/String;

    .line 1258
    const-string v10, "picture"

    .line 1257
    invoke-virtual {v8, v9, v7, v10}, Lobject/p2pipcam/utils/DataBaseHelper;->queryVideoOrPictureByDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1259
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    add-int/lit8 v6, v8, 0x1

    .line 1260
    .local v6, "seri":I
    const/4 v4, 0x0

    .line 1267
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->snapPathFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 1268
    .local v1, "div":Ljava/io/File;
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

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1269
    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1268
    invoke-direct {v3, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1270
    .local v3, "file":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1271
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x32

    invoke-virtual {p1, v8, v9, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1272
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 1273
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 1274
    const-string v11, "picture"

    .line 1273
    invoke-virtual {v8, v9, v10, v11, v7}, Lobject/p2pipcam/utils/DataBaseHelper;->createVideoOrPic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 1275
    new-instance v8, Lobject/p2pwificam/clientActivity/PlayActivity$28;

    invoke-direct {v8, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$28;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1301
    :cond_0
    const/4 v8, 0x0

    :try_start_3
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isPictSave:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1302
    if-eqz v5, :cond_3

    .line 1304
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1308
    :goto_0
    const/4 v4, 0x0

    .line 1311
    .end local v1    # "div":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 1287
    :catch_0
    move-exception v2

    .line 1288
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    new-instance v8, Lobject/p2pwificam/clientActivity/PlayActivity$29;

    invoke-direct {v8, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$29;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1298
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

    .line 1299
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1301
    const/4 v8, 0x0

    :try_start_6
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isPictSave:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1302
    if-eqz v4, :cond_1

    .line 1304
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1308
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    const/4 v4, 0x0

    goto :goto_1

    .line 1305
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1306
    .local v2, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 1256
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "seri":I
    .end local v7    # "strDate":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1300
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "seri":I
    .restart local v7    # "strDate":Ljava/lang/String;
    :catchall_1
    move-exception v8

    .line 1301
    :goto_4
    const/4 v9, 0x0

    :try_start_9
    iput-boolean v9, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isPictSave:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1302
    if-eqz v4, :cond_2

    .line 1304
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1308
    :goto_5
    const/4 v4, 0x0

    .line 1310
    :cond_2
    :try_start_b
    throw v8

    .line 1305
    :catch_2
    move-exception v2

    .line 1306
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1305
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "div":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    .line 1306
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_0

    .line 1300
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 1287
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
    :cond_3
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private selectCtrlButton(Landroid/widget/ImageButton;Landroid/view/View;)V
    .locals 3
    .param p1, "btn"    # Landroid/widget/ImageButton;
    .param p2, "layout"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 3503
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3504
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->selectLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->selectLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3505
    :cond_1
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->selectLayout:Landroid/view/View;

    .line 3506
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnSelect:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 3508
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnSelect:Landroid/widget/ImageButton;

    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_norColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 3509
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnSelect:Landroid/widget/ImageButton;

    if-ne v0, p1, :cond_3

    .line 3511
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnSelect:Landroid/widget/ImageButton;

    .line 3526
    :cond_2
    :goto_0
    return-void

    .line 3515
    :cond_3
    iput-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnSelect:Landroid/widget/ImageButton;

    .line 3516
    if-eqz p1, :cond_4

    .line 3518
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnSelect:Landroid/widget/ImageButton;

    .line 3519
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnSelect:Landroid/widget/ImageButton;

    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_selColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 3521
    :cond_4
    if-eqz p2, :cond_2

    .line 3523
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3524
    iput-object p2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->selectLayout:Landroid/view/View;

    goto :goto_0
.end method

.method private setBrightOrContrast(I)V
    .locals 8
    .param p1, "type"    # I

    .prologue
    const/16 v7, 0x3c

    .line 2856
    const-string v3, "PlayActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "type:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  bInitCameraParam:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2857
    iget-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bInitCameraParam:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2856
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    iget-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bInitCameraParam:Z

    if-nez v3, :cond_0

    .line 2909
    :goto_0
    return-void

    .line 2861
    :cond_0
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 2862
    .local v2, "width":I
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 2863
    const v4, 0x7f030012

    const/4 v5, 0x0

    .line 2862
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2864
    .local v0, "layout":Landroid/widget/LinearLayout;
    const v3, 0x7f080076

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 2865
    .local v1, "seekBar":Landroid/widget/SeekBar;
    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 2866
    packed-switch p1, :pswitch_data_0

    .line 2876
    :goto_1
    new-instance v3, Lobject/p2pwificam/clientActivity/PlayActivity$34;

    invoke-direct {v3, p0, p1}, Lobject/p2pwificam/clientActivity/PlayActivity$34;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;I)V

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 2907
    new-instance v3, Landroid/widget/PopupWindow;

    div-int/lit8 v4, v2, 0x2

    invoke-direct {v3, v0, v4, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    .line 2908
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    const v4, 0x7f08016c

    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x30

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 2868
    :pswitch_0
    iget v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nBrightness:I

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 2871
    :pswitch_1
    iget v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nContrast:I

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 2866
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setLightListener()V
    .locals 2

    .prologue
    .line 2656
    const v0, 0x7f080140

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_light_white:Landroid/widget/SeekBar;

    .line 2657
    const v0, 0x7f080143

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_light_yellow:Landroid/widget/SeekBar;

    .line 2658
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_light_white:Landroid/widget/SeekBar;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->lightSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 2659
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_light_yellow:Landroid/widget/SeekBar;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->lightSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 2660
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    if-eqz v0, :cond_0

    .line 2662
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    new-instance v1, Lobject/p2pwificam/clientActivity/PlayActivity$33;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$33;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/easyview/basecamera/BaseCamera;->queryLightValue(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 2671
    :cond_0
    return-void
.end method

.method private setLightValue(II)V
    .locals 3
    .param p1, "white_val"    # I
    .param p2, "yellow_val"    # I

    .prologue
    .line 3484
    const v2, 0x7f080140

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 3485
    .local v0, "sb_white":Landroid/widget/SeekBar;
    const v2, 0x7f080143

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 3486
    .local v1, "sb_yellow":Landroid/widget/SeekBar;
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3487
    invoke-virtual {v1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3488
    return-void
.end method

.method private setViewVisible()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1032
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bProgress:Z

    if-eqz v0, :cond_1

    .line 1033
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bProgress:Z

    .line 1034
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->progressView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1035
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->osdView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1036
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->playMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1038
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->StartAudio()V

    .line 1039
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->strDID:Ljava/lang/String;

    const/16 v1, 0x65

    invoke-static {v0, v1, v2}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    .line 1046
    :cond_0
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->getCameraParams()V

    .line 1048
    :cond_1
    return-void
.end method

.method private showBottom()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 2723
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2724
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2727
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2730
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isUpDownPressed:Z

    if-eqz v1, :cond_1

    .line 2731
    iput-boolean v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isUpDownPressed:Z

    .line 2732
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzOtherSetAnimView:Landroid/view/View;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->dismissAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2733
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzOtherSetAnimView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2741
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 2736
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isUpDownPressed:Z

    .line 2737
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzOtherSetAnimView:Landroid/view/View;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->showAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2738
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzOtherSetAnimView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showCalloffButton(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    const/16 v1, 0x8

    .line 3421
    if-nez p1, :cond_0

    .line 3423
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnCalloff:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3424
    const v0, 0x1010003

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3425
    const v0, 0x1010004

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3445
    :cond_0
    return-void
.end method

.method private showExtInfo()V
    .locals 11

    .prologue
    const/16 v10, 0x2710

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3362
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    invoke-virtual {v3}, Lcom/easyview/basecamera/BaseCamera;->getExtInfo()Lcom/easyview/struct/EVCommandDefs$ExtInfos;

    move-result-object v1

    .line 3363
    .local v1, "info":Lcom/easyview/struct/EVCommandDefs$ExtInfos;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, v1, Lcom/easyview/struct/EVCommandDefs$ExtInfos;->count:I

    if-lt v0, v3, :cond_0

    .line 3407
    return-void

    .line 3365
    :cond_0
    iget-object v3, v1, Lcom/easyview/struct/EVCommandDefs$ExtInfos;->values:[Lcom/easyview/struct/EVCommandDefs$ExtInfo;

    aget-object v3, v3, v0

    iget v2, v3, Lcom/easyview/struct/EVCommandDefs$ExtInfo;->value:I

    .line 3366
    .local v2, "val":I
    iget-object v3, v1, Lcom/easyview/struct/EVCommandDefs$ExtInfos;->values:[Lcom/easyview/struct/EVCommandDefs$ExtInfo;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/easyview/struct/EVCommandDefs$ExtInfo;->item_type:I

    packed-switch v3, :pswitch_data_0

    .line 3363
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3370
    :pswitch_0
    if-le v2, v10, :cond_1

    .line 3372
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->txtHumidity:Landroid/widget/TextView;

    const-string v4, "\uff1aN/A "

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 3374
    :cond_1
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->txtHumidity:Landroid/widget/TextView;

    const-string v4, "\uff1a%d.%dRH "

    new-array v5, v9, [Ljava/lang/Object;

    div-int/lit8 v6, v2, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    rem-int/lit8 v6, v2, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 3379
    :pswitch_1
    if-le v2, v10, :cond_2

    .line 3381
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->txtTemperature:Landroid/widget/TextView;

    const-string v4, "\uff1aN/A "

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 3383
    :cond_2
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->txtTemperature:Landroid/widget/TextView;

    const-string v4, "\uff1a%d.%d\u2103 "

    new-array v5, v9, [Ljava/lang/Object;

    div-int/lit8 v6, v2, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    rem-int/lit8 v6, v2, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 3388
    :pswitch_2
    if-gt v2, v10, :cond_3

    const/16 v3, 0x64

    if-ge v2, v3, :cond_4

    .line 3390
    :cond_3
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->txtBodyTemp:Landroid/widget/TextView;

    const-string v4, "\uff1aN/A "

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 3392
    :cond_4
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->txtBodyTemp:Landroid/widget/TextView;

    const-string v4, "\uff1a%d.%d\u2103 "

    new-array v5, v9, [Ljava/lang/Object;

    div-int/lit8 v6, v2, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    rem-int/lit8 v6, v2, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3366
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showResolutionPopWindow()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 2744
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2745
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    invoke-direct {p0, v6, v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->selectCtrlButton(Landroid/widget/ImageButton;Landroid/view/View;)V

    .line 2768
    :goto_0
    return-void

    .line 2748
    :cond_0
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    invoke-direct {p0, v6, v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->selectCtrlButton(Landroid/widget/ImageButton;Landroid/view/View;)V

    .line 2750
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030048

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2752
    .local v0, "layout":Landroid/widget/LinearLayout;
    const v6, 0x7f0801f5

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2751
    check-cast v3, Landroid/widget/TextView;

    .line 2754
    .local v3, "qvga":Landroid/widget/TextView;
    const v6, 0x7f0801f6

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2753
    check-cast v4, Landroid/widget/TextView;

    .line 2756
    .local v4, "vga":Landroid/widget/TextView;
    const v6, 0x7f0801f7

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2755
    check-cast v2, Landroid/widget/TextView;

    .line 2758
    .local v2, "p720":Landroid/widget/TextView;
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2759
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2760
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2762
    new-instance v6, Landroid/widget/PopupWindow;

    const/16 v7, 0x64

    const/4 v8, -0x2

    invoke-direct {v6, v0, v7, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    .line 2763
    const/4 v6, 0x2

    new-array v1, v6, [I

    .line 2764
    .local v1, "location":[I
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    invoke-virtual {v6, v1}, Landroid/widget/ImageButton;->getLocationOnScreen([I)V

    .line 2765
    const/4 v6, 0x1

    aget v6, v1, v6

    add-int/lit16 v5, v6, -0x104

    .line 2767
    .local v5, "y":I
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    aget v8, v1, v9

    invoke-virtual {v6, v7, v9, v8, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method private showResolutionPopWindow1()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/16 v13, 0x64

    const/4 v12, 0x1

    const/4 v10, -0x2

    const/4 v11, 0x0

    .line 2770
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2811
    :goto_0
    return-void

    .line 2773
    :cond_0
    iget v8, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nStreamCodecType:I

    if-ne v8, v12, :cond_1

    .line 2775
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 2776
    const v9, 0x7f03004a

    invoke-virtual {v8, v9, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2775
    check-cast v0, Landroid/widget/LinearLayout;

    .line 2778
    .local v0, "layout":Landroid/widget/LinearLayout;
    const v8, 0x7f0801fa

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 2777
    check-cast v5, Landroid/widget/TextView;

    .line 2780
    .local v5, "qvga":Landroid/widget/TextView;
    const v8, 0x7f0801fb

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2779
    check-cast v6, Landroid/widget/TextView;

    .line 2781
    .local v6, "vga":Landroid/widget/TextView;
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2782
    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2783
    new-instance v8, Landroid/widget/PopupWindow;

    .line 2784
    invoke-direct {v8, v0, v13, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 2783
    iput-object v8, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    .line 2785
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    const v9, 0x7f08016c

    invoke-virtual {p0, v9}, Lobject/p2pwificam/clientActivity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 2786
    const/16 v10, 0x11

    .line 2785
    invoke-virtual {v8, v9, v10, v11, v11}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 2789
    .end local v0    # "layout":Landroid/widget/LinearLayout;
    .end local v5    # "qvga":Landroid/widget/TextView;
    .end local v6    # "vga":Landroid/widget/TextView;
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030049

    invoke-virtual {v8, v9, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2791
    .restart local v0    # "layout":Landroid/widget/LinearLayout;
    const v8, 0x7f0801f5

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 2790
    check-cast v5, Landroid/widget/TextView;

    .line 2793
    .restart local v5    # "qvga":Landroid/widget/TextView;
    const v8, 0x7f0801f6

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2792
    check-cast v6, Landroid/widget/TextView;

    .line 2795
    .restart local v6    # "vga":Landroid/widget/TextView;
    const v8, 0x7f0801f7

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2794
    check-cast v4, Landroid/widget/TextView;

    .line 2796
    .local v4, "p720":Landroid/widget/TextView;
    const v8, 0x7f0801f8

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2797
    .local v2, "low":Landroid/widget/TextView;
    const v8, 0x7f0801f9

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2798
    .local v3, "lowest":Landroid/widget/TextView;
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2799
    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2800
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2801
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2802
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2803
    new-instance v8, Landroid/widget/PopupWindow;

    invoke-direct {v8, v0, v13, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v8, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    .line 2804
    const/4 v8, 0x2

    new-array v1, v8, [I

    .line 2805
    .local v1, "location":[I
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    invoke-virtual {v8, v1}, Landroid/widget/ImageButton;->getLocationOnScreen([I)V

    .line 2806
    aget v8, v1, v12

    add-int/lit16 v7, v8, -0x1b8

    .line 2808
    .local v7, "y":I
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzResolutoin:Landroid/widget/ImageButton;

    aget v10, v1, v11

    invoke-virtual {v8, v9, v11, v10, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0
.end method

.method private showResolutionWindow()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2814
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->selectLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2816
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->selectLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2817
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnSelect:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnSelect:Landroid/widget/ImageButton;

    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_norColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 2818
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnSelect:Landroid/widget/ImageButton;

    .line 2821
    :cond_1
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->isBell()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2823
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bAudioStart:Z

    if-eqz v0, :cond_2

    .line 2825
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzAudio:Landroid/widget/ImageButton;

    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2826
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bAudioStart:Z

    .line 2827
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_micphone:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2828
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->StopAudio()V

    .line 2831
    :cond_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_resolution:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 2833
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->showCalloffButton(Z)V

    .line 2834
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_resolution:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2845
    :goto_0
    return-void

    .line 2837
    :cond_3
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_qualitySeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_quaProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2838
    invoke-direct {p0, v2}, Lobject/p2pwificam/clientActivity/PlayActivity;->showCalloffButton(Z)V

    .line 2840
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_resolution:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2841
    const/16 v0, 0xa

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_resolution_idle_count:I

    .line 2842
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayActivity$ResolutionThread;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$ResolutionThread;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/PlayActivity$ResolutionThread;->start()V

    .line 2843
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_resolution:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->selectLayout:Landroid/view/View;

    goto :goto_0
.end method

.method private spacing(Landroid/view/MotionEvent;)F
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2245
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 2246
    .local v0, "x":F
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 2247
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

    .line 2250
    .end local v0    # "x":F
    .end local v1    # "y":F
    :goto_0
    return v2

    .line 2248
    :catch_0
    move-exception v2

    .line 2250
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private startTimeout()V
    .locals 4

    .prologue
    .line 1024
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bTimeoutStarted:Z

    if-nez v1, :cond_0

    .line 1025
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1026
    .local v0, "msgMessage":Landroid/os/Message;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->timeoutHandle:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1027
    const/4 v1, 0x1

    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bTimeoutStarted:Z

    .line 1029
    .end local v0    # "msgMessage":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private takePicture(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1242
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isPictSave:Z

    if-nez v0, :cond_0

    .line 1243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isPictSave:Z

    .line 1244
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayActivity$27;

    invoke-direct {v0, p0, p1}, Lobject/p2pwificam/clientActivity/PlayActivity$27;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;Landroid/graphics/Bitmap;)V

    .line 1248
    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/PlayActivity$27;->start()V

    .line 1253
    :cond_0
    return-void
.end method

.method private to_landscape()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2368
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_title:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2369
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_micphone:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2370
    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/PlayActivity;->setRequestedOrientation(I)V

    .line 2371
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->checkBoxHS:Landroid/widget/ImageButton;

    const v1, 0x7f0200c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2377
    return-void
.end method

.method private updateTimeout()V
    .locals 3

    .prologue
    .line 632
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->textTimeoutTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f06019d

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/PlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 633
    iget v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nTimeoutRemain:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f06019e

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/PlayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 632
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    return-void
.end method


# virtual methods
.method public AudioRecordData([BI)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "len"    # I

    .prologue
    .line 2341
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bAudioRecordStart:Z

    if-eqz v0, :cond_0

    if-lez p2, :cond_0

    .line 2342
    const-string v0, "PlayActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "talk data:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    invoke-virtual {v0, p1, p2}, Lcom/easyview/basecamera/BaseCamera;->TalkAudioData([BI)V

    .line 2346
    :cond_0
    return-void
.end method

.method public callBaceVideoData([BIIII)V
    .locals 13
    .param p1, "videobuf"    # [B
    .param p2, "h264Data"    # I
    .param p3, "len"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 3081
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 3084
    .local v5, "ts":J
    iput-wide v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ts_data:J

    .line 3089
    const/4 v7, 0x0

    iput-boolean v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bDisplayFinished:Z

    .line 3091
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->videodata:[B

    .line 3092
    move/from16 v0, p3

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->videoDataLen:I

    .line 3094
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->lastTimeStamp:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 3096
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->lastTimeStamp:J

    .line 3097
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isFPS:Ljava/lang/Boolean;

    .line 3098
    iget v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_video_fps:I

    int-to-double v7, v7

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v7, v9

    iget v9, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->VideoFPS:I

    int-to-double v9, v9

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_video_fps:I

    .line 3099
    const-string v7, "PlayActivity"

    const-string v8, "fps:%d %d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->VideoFPS:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget v11, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_video_fps:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3101
    const/4 v7, 0x0

    iput v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->VideoBPS:I

    iput v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->VideoFPS:I

    .line 3104
    :cond_0
    iget v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->VideoFPS:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->VideoFPS:I

    .line 3120
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 3121
    .local v3, "msg":Landroid/os/Message;
    const/4 v7, 0x1

    if-ne p2, v7, :cond_2

    .line 3122
    move/from16 v0, p4

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nVideoWidth:I

    .line 3123
    move/from16 v0, p5

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nVideoHeight:I

    .line 3125
    iget-boolean v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isTakepic:Z

    if-eqz v7, :cond_1

    .line 3126
    const/4 v7, 0x0

    iput-boolean v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isTakepic:Z

    .line 3127
    mul-int v7, p4, p5

    mul-int/lit8 v7, v7, 0x2

    new-array v4, v7, [B

    .line 3128
    .local v4, "rgb":[B
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {p1, v4, v0, v1}, Lobject/p2pipcam/nativecaller/NativeCaller;->YUV4202RGB565([B[BII)I

    .line 3129
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 3131
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 3130
    iput-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mBmp:Landroid/graphics/Bitmap;

    .line 3132
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 3133
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mBmp:Landroid/graphics/Bitmap;

    invoke-direct {p0, v7}, Lobject/p2pwificam/clientActivity/PlayActivity;->takePicture(Landroid/graphics/Bitmap;)V

    .line 3135
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    .end local v4    # "rgb":[B
    :cond_1
    const/4 v7, 0x1

    iput-boolean v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isH264:Z

    .line 3136
    const/4 v7, 0x1

    iput v7, v3, Landroid/os/Message;->what:I

    .line 3139
    :cond_2
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3140
    return-void
.end method

.method public callBackAudioData([BI)V
    .locals 3
    .param p1, "pcm"    # [B
    .param p2, "len"    # I

    .prologue
    .line 3191
    new-instance v1, Lcom/easyview/talkutils/CustomBufferHead;

    invoke-direct {v1}, Lcom/easyview/talkutils/CustomBufferHead;-><init>()V

    .line 3192
    .local v1, "head":Lcom/easyview/talkutils/CustomBufferHead;
    new-instance v0, Lcom/easyview/talkutils/CustomBufferData;

    invoke-direct {v0}, Lcom/easyview/talkutils/CustomBufferData;-><init>()V

    .line 3193
    .local v0, "data":Lcom/easyview/talkutils/CustomBufferData;
    iput p2, v1, Lcom/easyview/talkutils/CustomBufferHead;->length:I

    .line 3194
    const v2, 0xff00ff

    iput v2, v1, Lcom/easyview/talkutils/CustomBufferHead;->startcode:I

    .line 3195
    iput-object v1, v0, Lcom/easyview/talkutils/CustomBufferData;->head:Lcom/easyview/talkutils/CustomBufferHead;

    .line 3196
    iput-object p1, v0, Lcom/easyview/talkutils/CustomBufferData;->data:[B

    .line 3197
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->isSupportApm()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3199
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_renderBuffer:Lobject/p2pipcam/utils/AudioBuffer;

    invoke-virtual {v2, p1}, Lobject/p2pipcam/utils/AudioBuffer;->add([B)Z

    .line 3207
    :goto_0
    return-void

    .line 3202
    :cond_0
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->AudioBuffer:Lcom/easyview/talkutils/CustomBuffer;

    invoke-virtual {v2, v0}, Lcom/easyview/talkutils/CustomBuffer;->addData(Lcom/easyview/talkutils/CustomBufferData;)Z

    .line 3203
    invoke-static {}, Lcom/easyview/talkutils/AudioPlayer;->AudioPlayerDataRevc()V

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
    .line 2987
    const-string v0, "PlayActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CameraParamNotify...did:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " brightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2988
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

    .line 2989
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

    .line 2990
    const-string v2, " flip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2987
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2991
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

    .line 2992
    iput p3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nBrightness:I

    .line 2993
    iput p4, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nContrast:I

    .line 2994
    iput p2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nResolution:I

    .line 2996
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bInitCameraParam:Z

    .line 3069
    return-void
.end method

.method public callBackH264Data([BII)V
    .locals 3
    .param p1, "h264"    # [B
    .param p2, "type"    # I
    .param p3, "size"    # I

    .prologue
    .line 3217
    iput p3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->VideoBPS:I

    .line 3220
    :try_start_0
    iput p2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isTypeI:I

    .line 3221
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isstart:Z

    if-eqz v0, :cond_1

    .line 3222
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isT:Z

    if-nez v0, :cond_0

    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isTypeI:I

    if-nez v0, :cond_1

    .line 3223
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->videoData:Ljava/util/LinkedList;

    new-instance v1, Landroid/util/Pair;

    rsub-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3225
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isTypeI:I

    if-nez v0, :cond_1

    .line 3226
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isT:Z

    if-nez v0, :cond_1

    .line 3227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isT:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3236
    :cond_1
    :goto_0
    return-void

    .line 3232
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public callBackMessageNotify(Ljava/lang/String;II)V
    .locals 6
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "msgType"    # I
    .param p3, "param"    # I

    .prologue
    const/4 v5, 0x1

    .line 3148
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

    .line 3149
    const-string v4, " param: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3148
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3150
    iget-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bManualExit:Z

    if-eqz v2, :cond_1

    .line 3179
    :cond_0
    :goto_0
    return-void

    .line 3153
    :cond_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 3154
    iput p3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nStreamCodecType:I

    .line 3155
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bGetStreamCodecType:Z

    .line 3156
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 3157
    .local v1, "msgMessage":Landroid/os/Message;
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->msgStreamCodecHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 3161
    .end local v1    # "msgMessage":Landroid/os/Message;
    :cond_2
    if-nez p2, :cond_0

    .line 3165
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->strDID:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3169
    iget v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->playMode:I

    if-eq v2, v5, :cond_0

    .line 3173
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 3174
    .local v0, "msg":Landroid/os/Message;
    iput v5, v0, Landroid/os/Message;->what:I

    .line 3176
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

    .line 3177
    const-string v4, " param: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3176
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->msgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public callBackpenLockParams(Ljava/lang/String;[BI)V
    .locals 5
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "len"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 3333
    new-array v1, v3, [B

    .line 3334
    .local v1, "ret":[B
    invoke-static {p2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3335
    new-instance v0, Lobject/p2pipcam/bean/LockBean;

    invoke-direct {v0}, Lobject/p2pipcam/bean/LockBean;-><init>()V

    .line 3336
    .local v0, "lockbean":Lobject/p2pipcam/bean/LockBean;
    invoke-static {v1}, Lobject/p2pipcam/bean/LockBean;->byteArrayToInt_Little([B)I

    .line 3338
    invoke-static {p2, v3, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3339
    invoke-static {v1}, Lobject/p2pipcam/bean/LockBean;->byteArrayToInt_Little([B)I

    move-result v2

    .line 3342
    .local v2, "retcode":I
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->viewHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3344
    return-void
.end method

.method protected displayResolution()V
    .locals 2

    .prologue
    .line 1326
    const/4 v0, 0x0

    .line 1328
    .local v0, "strCurrResolution":Ljava/lang/String;
    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nResolution:I

    packed-switch v1, :pswitch_data_0

    .line 1350
    :goto_0
    return-void

    .line 1330
    :pswitch_0
    const-string v0, "640x480"

    .line 1331
    goto :goto_0

    .line 1333
    :pswitch_1
    const-string v0, "320x240"

    .line 1334
    goto :goto_0

    .line 1336
    :pswitch_2
    const-string v0, "160x120"

    .line 1337
    goto :goto_0

    .line 1339
    :pswitch_3
    const-string v0, "1280x720"

    .line 1340
    goto :goto_0

    .line 1342
    :pswitch_4
    const-string v0, "640x360"

    .line 1343
    goto :goto_0

    .line 1345
    :pswitch_5
    const-string v0, "1280x960"

    .line 1346
    goto :goto_0

    .line 1328
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 2225
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 2226
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 2227
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected getScale()F
    .locals 1

    .prologue
    .line 2235
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 2231
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "whichValue"    # I

    .prologue
    .line 2239
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2240
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method public initExitPopupWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 777
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 779
    .local v0, "li":Landroid/view/LayoutInflater;
    const v1, 0x7f03002e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->popv:Landroid/view/View;

    .line 784
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->InitKeyButtonView()V

    .line 785
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->popv:Landroid/view/View;

    .line 787
    invoke-direct {v1, v2, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 785
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->fragment_dialog:Landroid/widget/PopupWindow;

    .line 788
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->fragment_dialog:Landroid/widget/PopupWindow;

    const v2, 0x7f07000c

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 789
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->fragment_dialog:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 790
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->fragment_dialog:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 791
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->fragment_dialog:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 792
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->fragment_dialog:Landroid/widget/PopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 794
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->fragment_dialog:Landroid/widget/PopupWindow;

    .line 795
    new-instance v2, Lobject/p2pwificam/clientActivity/PlayActivity$23;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$23;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 803
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->fragment_dialog:Landroid/widget/PopupWindow;

    new-instance v2, Lobject/p2pwificam/clientActivity/PlayActivity$24;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$24;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 813
    return-void
.end method

.method public initExitPopupWindow2()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 969
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 970
    .local v0, "li":Landroid/view/LayoutInflater;
    const v1, 0x7f03002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->popv:Landroid/view/View;

    .line 971
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->InitImageView()V

    .line 972
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->InitTextView()V

    .line 973
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->popv:Landroid/view/View;

    .line 975
    invoke-direct {v1, v2, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 973
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    .line 976
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    const v2, 0x7f07000c

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 977
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 978
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 979
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 981
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    .line 982
    new-instance v2, Lobject/p2pwificam/clientActivity/PlayActivity$25;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$25;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 990
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->popupWindow_about:Landroid/widget/PopupWindow;

    new-instance v2, Lobject/p2pwificam/clientActivity/PlayActivity$26;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$26;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 999
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v7, 0x7f02010c

    const-wide/16 v5, 0xbb8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 2380
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2616
    :cond_0
    :goto_0
    return-void

    .line 2382
    :sswitch_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->strDID:Ljava/lang/String;

    const/16 v2, 0xe

    invoke-static {v1, v2, v3}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    goto :goto_0

    .line 2385
    :sswitch_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->strDID:Ljava/lang/String;

    const/16 v2, 0xe

    invoke-static {v1, v2, v4}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPCameraControl(Ljava/lang/String;II)I

    goto :goto_0

    .line 2391
    :sswitch_2
    invoke-direct {p0, v2, v2}, Lobject/p2pwificam/clientActivity/PlayActivity;->selectCtrlButton(Landroid/widget/ImageButton;Landroid/view/View;)V

    .line 2392
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_1

    .line 2393
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->to_landscape()V

    goto :goto_0

    .line 2394
    :cond_1
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2397
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_title:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2403
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_micphone:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2404
    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/PlayActivity;->setRequestedOrientation(I)V

    .line 2405
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->checkBoxHS:Landroid/widget/ImageButton;

    const v2, 0x7f0200bb

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 2412
    :sswitch_3
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_title:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2413
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_micphone:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2414
    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/PlayActivity;->setRequestedOrientation(I)V

    .line 2415
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->checkBoxHS:Landroid/widget/ImageButton;

    const v2, 0x7f0200c0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2416
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->checkBoxHS:Landroid/widget/ImageButton;

    .line 2417
    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2418
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->checkBoxHS:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2419
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnCalloff:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2423
    :sswitch_4
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->dismissBrightAndContrastProgress()V

    .line 2424
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->SwitchAudio()V

    goto :goto_0

    .line 2428
    :sswitch_5
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bAudioStart:Z

    if-eqz v1, :cond_0

    .line 2430
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->fragment_dialog:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->cameraName:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2431
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->showKeyboard()V

    goto/16 :goto_0

    .line 2435
    :sswitch_6
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->dismissBrightAndContrastProgress()V

    .line 2444
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->doSnap()V

    goto/16 :goto_0

    .line 2447
    :sswitch_7
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->dismissBrightAndContrastProgress()V

    .line 2456
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->doRecord()V

    goto/16 :goto_0

    .line 2459
    :sswitch_8
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bManualExit:Z

    .line 2460
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bProgress:Z

    if-nez v1, :cond_2

    .line 2461
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isTakeVideo:Z

    if-eqz v1, :cond_2

    .line 2462
    const v1, 0x7f0601a6

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->showToast(I)V

    goto/16 :goto_0

    .line 2467
    :cond_2
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->runnableHangup:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2468
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->runnableStartVideo:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2469
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->Stop()V

    goto/16 :goto_0

    .line 2473
    :sswitch_9
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isTakeVideo:Z

    if-eqz v1, :cond_3

    .line 2474
    const v1, 0x7f0601b2

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->showToast(I)V

    goto/16 :goto_0

    .line 2477
    :cond_3
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->showResolutionPopWindow()V

    goto/16 :goto_0

    .line 2482
    :sswitch_a
    invoke-direct {p0, v2, v2}, Lobject/p2pwificam/clientActivity/PlayActivity;->selectCtrlButton(Landroid/widget/ImageButton;Landroid/view/View;)V

    .line 2483
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->dismissBrightAndContrastProgress()V

    .line 2485
    const/16 v1, 0x5a

    iput v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nResolution:I

    .line 2486
    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nResolution:I

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->setResolution(I)V

    .line 2487
    const-string v1, "tag"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "h264 resolution:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nResolution:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " qvga"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2494
    .local v0, "msgMessage":Landroid/os/Message;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mHandlerFramerate:Landroid/os/Handler;

    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2499
    .end local v0    # "msgMessage":Landroid/os/Message;
    :sswitch_b
    invoke-direct {p0, v2, v2}, Lobject/p2pwificam/clientActivity/PlayActivity;->selectCtrlButton(Landroid/widget/ImageButton;Landroid/view/View;)V

    .line 2500
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->dismissBrightAndContrastProgress()V

    .line 2502
    const/16 v1, 0x32

    iput v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nResolution:I

    .line 2503
    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nResolution:I

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->setResolution(I)V

    .line 2504
    const-string v1, "tag"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "h264 resolution:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nResolution:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vga"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2510
    .restart local v0    # "msgMessage":Landroid/os/Message;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mHandlerFramerate:Landroid/os/Handler;

    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2516
    .end local v0    # "msgMessage":Landroid/os/Message;
    :sswitch_c
    invoke-direct {p0, v2, v2}, Lobject/p2pwificam/clientActivity/PlayActivity;->selectCtrlButton(Landroid/widget/ImageButton;Landroid/view/View;)V

    .line 2517
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->dismissBrightAndContrastProgress()V

    .line 2519
    const/16 v1, 0x1e

    iput v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nResolution:I

    .line 2520
    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nResolution:I

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->setResolution(I)V

    .line 2521
    const-string v1, "tag"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "h264 resolution:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nResolution:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 720p"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2527
    .restart local v0    # "msgMessage":Landroid/os/Message;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mHandlerFramerate:Landroid/os/Handler;

    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2532
    .end local v0    # "msgMessage":Landroid/os/Message;
    :sswitch_d
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->dismissBrightAndContrastProgress()V

    .line 2533
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2534
    const/4 v1, 0x3

    iput v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nResolution:I

    .line 2536
    const-string v1, "tag"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "h264 resolution:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nResolution:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 720p"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2542
    .restart local v0    # "msgMessage":Landroid/os/Message;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mHandlerFramerate:Landroid/os/Handler;

    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2547
    .end local v0    # "msgMessage":Landroid/os/Message;
    :sswitch_e
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->dismissBrightAndContrastProgress()V

    .line 2548
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2549
    const/4 v1, 0x4

    iput v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->nResolution:I

    .line 2553
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2556
    .restart local v0    # "msgMessage":Landroid/os/Message;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mHandlerFramerate:Landroid/os/Handler;

    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2560
    .end local v0    # "msgMessage":Landroid/os/Message;
    :sswitch_f
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->dismissBrightAndContrastProgress()V

    .line 2561
    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->playmode:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 2563
    :pswitch_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzPlayMode:Landroid/widget/ImageButton;

    const v2, 0x7f020105

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2564
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzPlayMode:Landroid/widget/ImageButton;

    .line 2565
    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2566
    const-string v1, "tg"

    const-string v2, "magnify 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->playmode:I

    goto/16 :goto_0

    .line 2570
    :pswitch_1
    const-string v1, "tg"

    const-string v2, "STANDARD 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    iput v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->playmode:I

    .line 2572
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzPlayMode:Landroid/widget/ImageButton;

    const v2, 0x7f020107

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2573
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzPlayMode:Landroid/widget/ImageButton;

    .line 2574
    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2577
    :pswitch_2
    const-string v1, "tg"

    const-string v2, "FULLSCREEN 3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    const/4 v1, 0x2

    iput v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->playmode:I

    .line 2579
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzPlayMode:Landroid/widget/ImageButton;

    .line 2580
    const v2, 0x7f020106

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2581
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzPlayMode:Landroid/widget/ImageButton;

    .line 2582
    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2590
    :sswitch_10
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isPlayAudio:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2592
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    invoke-virtual {v1, v4, v2}, Lcom/easyview/basecamera/BaseCamera;->stopMusic(ILcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 2593
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isPlayAudio:Ljava/lang/Boolean;

    .line 2594
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnMusicPlay:Landroid/widget/ImageButton;

    const v2, 0x7f0200be

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_0

    .line 2597
    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isPlayAudio:Ljava/lang/Boolean;

    .line 2598
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    new-instance v2, Lobject/p2pwificam/clientActivity/PlayActivity$32;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$32;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    invoke-virtual {v1, v4, v2}, Lcom/easyview/basecamera/BaseCamera;->playMusic(ILcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 2612
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnMusicPlay:Landroid/widget/ImageButton;

    const v2, 0x7f0200bf

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_0

    .line 2380
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08018d -> :sswitch_3
        0x7f08019e -> :sswitch_8
        0x7f0801b2 -> :sswitch_2
        0x7f0801b3 -> :sswitch_4
        0x7f0801b4 -> :sswitch_10
        0x7f0801b7 -> :sswitch_5
        0x7f0801b8 -> :sswitch_6
        0x7f0801b9 -> :sswitch_7
        0x7f0801ba -> :sswitch_9
        0x7f0801be -> :sswitch_f
        0x7f0801bf -> :sswitch_0
        0x7f0801c0 -> :sswitch_1
        0x7f0801f5 -> :sswitch_a
        0x7f0801f6 -> :sswitch_b
        0x7f0801f7 -> :sswitch_c
        0x7f0801f8 -> :sswitch_d
        0x7f0801f9 -> :sswitch_e
    .end sparse-switch

    .line 2561
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

    .line 2002
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2003
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2004
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2007
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->controlLayoutLeft:Z

    if-eqz v1, :cond_0

    .line 2009
    const/4 v1, 0x3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2010
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzPlatform:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2023
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 2024
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 2025
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 2026
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->videoViewStandard:Landroid/widget/ImageView;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 2027
    return-void

    .line 2012
    :cond_1
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2013
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2016
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->controlLayoutLeft:Z

    if-eqz v1, :cond_0

    .line 2018
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2019
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->ptzPlatform:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x400

    const/16 v4, 0x80

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1404
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1406
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v3

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_cameraList:Lcom/easyview/camera/CameraList;

    .line 1408
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->getDataFromOther()V

    .line 1409
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 1411
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 1413
    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->requestWindowFeature(I)Z

    .line 1414
    const v3, 0x7f030040

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/PlayActivity;->setContentView(I)V

    .line 1415
    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/PlayActivity;->setRequestedOrientation(I)V

    .line 1416
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->findView()V

    .line 1417
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->InitParams()V

    .line 1418
    invoke-static {p0}, Lobject/p2pipcam/utils/DataBaseHelper;->getInstance(Landroid/content/Context;)Lobject/p2pipcam/utils/DataBaseHelper;

    move-result-object v3

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 1419
    new-instance v3, Lcom/easyview/talkutils/CustomBuffer;

    invoke-direct {v3}, Lcom/easyview/talkutils/CustomBuffer;-><init>()V

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->AudioBuffer:Lcom/easyview/talkutils/CustomBuffer;

    .line 1420
    new-instance v3, Lcom/easyview/talkutils/AudioPlayer;

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->AudioBuffer:Lcom/easyview/talkutils/CustomBuffer;

    invoke-direct {v3, p0, v4}, Lcom/easyview/talkutils/AudioPlayer;-><init>(Landroid/content/Context;Lcom/easyview/talkutils/CustomBuffer;)V

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->audioPlayer:Lcom/easyview/talkutils/AudioPlayer;

    .line 1423
    sput v7, Lcom/easyview/talkutils/AudioPlayer;->bMute:I

    .line 1424
    sput v7, Lcom/easyview/talkutils/CustomAudioRecorder;->bTalk:I

    .line 1426
    new-instance v3, Lcom/easyview/talkutils/CustomAudioRecorder;

    invoke-direct {v3, p0, p0}, Lcom/easyview/talkutils/CustomAudioRecorder;-><init>(Landroid/content/Context;Lcom/easyview/talkutils/CustomAudioRecorder$AudioRecordResult;)V

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->customAudioRecorder:Lcom/easyview/talkutils/CustomAudioRecorder;

    .line 1428
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->isSupportApm()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1430
    new-instance v3, Lobject/p2pipcam/utils/AudioBuffer;

    invoke-direct {v3}, Lobject/p2pipcam/utils/AudioBuffer;-><init>()V

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_renderBuffer:Lobject/p2pipcam/utils/AudioBuffer;

    .line 1431
    new-instance v3, Lobject/p2pipcam/utils/AudioUtil;

    invoke-direct {v3}, Lobject/p2pipcam/utils/AudioUtil;-><init>()V

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->audioUtil:Lobject/p2pipcam/utils/AudioUtil;

    .line 1435
    :cond_0
    sput v7, Lcom/easyview/talkutils/AudioPlayer;->bMute:I

    .line 1436
    sput-boolean v7, Lcom/easyview/talkutils/AudioPlayer;->bFilter:Z

    .line 1438
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->setPlayInterface(Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;)V

    .line 1439
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->setOpenLockInterface(Lobject/p2pwificam/clientActivity/BridgeService$OpenLockInterface;)V

    .line 1440
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->playSurface:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->playHolder:Landroid/view/SurfaceHolder;

    .line 1441
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->playHolder:Landroid/view/SurfaceHolder;

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 1442
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->playHolder:Landroid/view/SurfaceHolder;

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->videoCallback:Lobject/p2pwificam/clientActivity/PlayActivity$surfaceCallback;

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1444
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->playSurface:Landroid/view/SurfaceView;

    invoke-virtual {v3, p0}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1445
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->playSurface:Landroid/view/SurfaceView;

    invoke-virtual {v3, v8}, Landroid/view/SurfaceView;->setLongClickable(Z)V

    .line 1447
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->getCameraParams()V

    .line 1448
    const v3, 0x7f04000b

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->dismissTopAnim:Landroid/view/animation/Animation;

    .line 1449
    const v3, 0x7f04000c

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->showTopAnim:Landroid/view/animation/Animation;

    .line 1450
    const v3, 0x7f04000a

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->showAnim:Landroid/view/animation/Animation;

    .line 1451
    const v3, 0x7f040009

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->dismissAnim:Landroid/view/animation/Animation;

    .line 1454
    const-string v3, "ptzcontrol"

    invoke-virtual {p0, v3, v7}, Lobject/p2pwificam/clientActivity/PlayActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1455
    .local v2, "sharePreferences":Landroid/content/SharedPreferences;
    const-string v3, "ptzcontrol"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isPTZPrompt:Z

    .line 1456
    iget-boolean v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isPTZPrompt:Z

    if-nez v3, :cond_1

    .line 1457
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1458
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v3, "ptzcontrol"

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1459
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1461
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->status:Ljava/lang/String;

    .line 1462
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->status:Ljava/lang/String;

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1464
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->path:Ljava/io/File;

    .line 1465
    new-instance v3, Landroid/os/StatFs;

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->path:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->stat:Landroid/os/StatFs;

    .line 1466
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->stat:Landroid/os/StatFs;

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->blockSize:J

    .line 1467
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->stat:Landroid/os/StatFs;

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->totalBlocks:J

    .line 1468
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->stat:Landroid/os/StatFs;

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->availableBlocks:J

    .line 1469
    iget-wide v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->totalBlocks:J

    iget-wide v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->blockSize:J

    mul-long/2addr v3, v5

    invoke-direct {p0, v3, v4}, Lobject/p2pwificam/clientActivity/PlayActivity;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->sdSize:Ljava/lang/String;

    .line 1470
    iget-wide v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->availableBlocks:J

    iget-wide v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->blockSize:J

    mul-long/2addr v3, v5

    invoke-direct {p0, v3, v4}, Lobject/p2pwificam/clientActivity/PlayActivity;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->sdAvail:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1477
    :cond_2
    :goto_0
    new-instance v3, Landroid/media/SoundPool;

    const/16 v4, 0xa

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v7}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_soundPool:Landroid/media/SoundPool;

    .line 1479
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_soundPool:Landroid/media/SoundPool;

    const v4, 0x7f050001

    invoke-virtual {v3, p0, v4, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    .line 1480
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_soundPool:Landroid/media/SoundPool;

    const v4, 0x7f050006

    invoke-virtual {v3, p0, v4, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    .line 1488
    iput-boolean v7, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bAudioStart:Z

    .line 1493
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->initExitPopupWindow()V

    .line 1498
    iput-boolean v8, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bgetCameraParamsThreadRuning:Z

    .line 1516
    new-instance v3, Lobject/p2pipcam/bean/LockBean;

    invoke-direct {v3}, Lobject/p2pipcam/bean/LockBean;-><init>()V

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->lockbean:Lobject/p2pipcam/bean/LockBean;

    .line 1520
    iget v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->playMode:I

    if-ne v3, v8, :cond_3

    .line 1522
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->StartAudio()V

    .line 1523
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->runnableHangup:Ljava/lang/Runnable;

    const-wide/32 v5, 0x1d4c0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1525
    :cond_3
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->runnableStartVideo:Ljava/lang/Runnable;

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1536
    return-void

    .line 1471
    :catch_0
    move-exception v0

    .line 1472
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "removed"

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->status:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2938
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->CloseAvi()I

    .line 2939
    iput v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->talkAudio:I

    .line 2940
    iput v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->tagone:I

    .line 2941
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isTakeVideo:Z

    .line 2942
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isstart:Z

    .line 2943
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->st:Z

    .line 2944
    iget-wide v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->allVideoSize:J

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    const-wide/16 v3, 0x10

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 2945
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->name:Ljava/lang/String;

    invoke-static {p0, v2}, Lobject/p2pipcam/utils/Pub;->recordPathName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->delFile:Ljava/io/File;

    .line 2946
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->delFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 2947
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

    .line 2949
    .end local v0    # "b":Z
    :cond_0
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isT:Z

    .line 2950
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_isPlay:Z

    .line 2952
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    invoke-virtual {v1}, Lcom/easyview/basecamera/BaseCamera;->StopVideo()V

    .line 2955
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->StopAudio()V

    .line 2956
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->StopTalk()V

    .line 2957
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->releaseTalk()V

    .line 2959
    iput-boolean v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bgetCameraParamsThreadRuning:Z

    .line 2961
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    if-eqz v1, :cond_1

    .line 2962
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->myRender:Lobject/p2pwificam/clientActivity/MyRender;

    invoke-virtual {v1}, Lobject/p2pwificam/clientActivity/MyRender;->destroyShaders()J

    .line 2965
    :cond_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->runnableStartVideo:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2967
    sget-object v1, Lobject/p2pwificam/clientActivity/BridgeService;->lockFlag:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2968
    sget-object v1, Lobject/p2pwificam/clientActivity/BridgeService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v1, :cond_2

    .line 2969
    sget-object v1, Lobject/p2pwificam/clientActivity/BridgeService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v1}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 2970
    const/4 v1, 0x0

    sput-object v1, Lobject/p2pwificam/clientActivity/BridgeService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 2974
    :cond_2
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_free_ppcs:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/easyview/ppcs/PPCSCamera;->Free()V

    .line 2976
    :cond_3
    const-string v1, "tag"

    const-string v2, "PlayActivity onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 2978
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2913
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2918
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2263
    const-string v0, "tag"

    const-string v1, "onDown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
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

    .line 2287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2288
    .local v0, "x1":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 2289
    .local v1, "x2":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 2290
    .local v3, "y1":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 2292
    .local v4, "y2":F
    cmpl-float v6, v0, v1

    if-lez v6, :cond_1

    sub-float v2, v0, v1

    .line 2293
    .local v2, "xx":F
    :goto_0
    cmpl-float v6, v3, v4

    if-lez v6, :cond_2

    sub-float v5, v3, v4

    .line 2295
    .local v5, "yy":F
    :goto_1
    cmpl-float v6, v2, v5

    if-lez v6, :cond_4

    .line 2296
    cmpl-float v6, v0, v1

    if-lez v6, :cond_3

    cmpl-float v6, v2, v7

    if-lez v6, :cond_3

    .line 2297
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/easyview/basecamera/BaseCamera;->ptzControl(I)V

    .line 2316
    :cond_0
    :goto_2
    return v8

    .line 2292
    .end local v2    # "xx":F
    .end local v5    # "yy":F
    :cond_1
    sub-float v2, v1, v0

    goto :goto_0

    .line 2293
    .restart local v2    # "xx":F
    :cond_2
    sub-float v5, v4, v3

    goto :goto_1

    .line 2300
    .restart local v5    # "yy":F
    :cond_3
    cmpg-float v6, v0, v1

    if-gez v6, :cond_0

    cmpl-float v6, v2, v7

    if-lez v6, :cond_0

    .line 2301
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/easyview/basecamera/BaseCamera;->ptzControl(I)V

    goto :goto_2

    .line 2306
    :cond_4
    cmpl-float v6, v3, v4

    if-lez v6, :cond_5

    cmpl-float v6, v5, v7

    if-lez v6, :cond_5

    .line 2307
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/easyview/basecamera/BaseCamera;->ptzControl(I)V

    goto :goto_2

    .line 2309
    :cond_5
    cmpg-float v6, v3, v4

    if-gez v6, :cond_0

    cmpl-float v6, v5, v7

    if-lez v6, :cond_0

    .line 2310
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    invoke-virtual {v6, v8}, Lcom/easyview/basecamera/BaseCamera;->ptzControl(I)V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 601
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 605
    :cond_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 606
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 608
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 609
    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bManualExit:Z

    .line 610
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bProgress:Z

    if-nez v1, :cond_3

    .line 611
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isTakeVideo:Z

    if-eqz v1, :cond_2

    .line 612
    const v1, 0x7f0601a6

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->showToast(I)V

    .line 628
    :goto_0
    return v0

    .line 614
    :cond_2
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->returnLastBmp2Home()V

    .line 615
    invoke-virtual {p0, p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->showSureDialogPlay(Landroid/content/Context;)V

    goto :goto_0

    .line 620
    :cond_3
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->Stop()V

    .line 623
    :cond_4
    const/16 v0, 0x52

    if-ne p1, v0, :cond_5

    .line 624
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bProgress:Z

    if-nez v0, :cond_5

    .line 625
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->showBottom()V

    .line 628
    :cond_5
    invoke-super {p0, p1, p2}, Lobject/p2pwificam/clientActivity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2321
    return-void
.end method

.method public onRestart()V
    .locals 4

    .prologue
    .line 1540
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->setPlayInterface(Lobject/p2pwificam/clientActivity/BridgeService$PlayInterface;)V

    .line 1541
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->playMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1543
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->StartAudio()V

    .line 1544
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->runnableHangup:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1546
    :cond_0
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onRestart()V

    .line 1547
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 2326
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2332
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2923
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2336
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 15
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2054
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f08019f

    if-ne v1, v2, :cond_0

    .line 2056
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 2075
    :goto_0
    const/4 v1, 0x1

    .line 2186
    :goto_1
    return v1

    .line 2059
    :pswitch_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_soundPool:Landroid/media/SoundPool;

    const/4 v2, 0x1

    const v3, 0x3dcccccd    # 0.1f

    const v4, 0x3dcccccd    # 0.1f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 2062
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    invoke-virtual {v1}, Lcom/easyview/basecamera/BaseCamera;->StopAudio()V

    .line 2063
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->StartTalk()V

    goto :goto_0

    .line 2066
    :pswitch_1
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->StopTalk()V

    .line 2069
    const/4 v1, 0x0

    sput v1, Lcom/easyview/talkutils/CustomAudioRecorder;->bTalk:I

    .line 2071
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    invoke-virtual {v1}, Lcom/easyview/basecamera/BaseCamera;->StartAudio()V

    goto :goto_0

    .line 2077
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f08013d

    if-ne v1, v2, :cond_1

    .line 2079
    const/4 v1, 0x1

    goto :goto_1

    .line 2081
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0801a1

    if-ne v1, v2, :cond_2

    .line 2083
    const/4 v1, 0x1

    goto :goto_1

    .line 2085
    :cond_2
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isDown:Z

    if-nez v1, :cond_3

    .line 2086
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->x1:F

    .line 2087
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->y1:F

    .line 2088
    const/4 v1, 0x1

    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isDown:Z

    .line 2090
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_1

    .line 2186
    :cond_4
    :goto_2
    :pswitch_2
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->gt:Landroid/view/GestureDetector;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    .line 2092
    :pswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2093
    .local v12, "now":J
    iget-wide v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->last_touch:J

    sub-long v1, v12, v1

    const-wide/16 v3, 0xc8

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    const/4 v1, 0x0

    iput v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->touch_count:I

    .line 2094
    :cond_5
    const-string v1, "PlayActivity"

    const-string v2, "onTouch delta:%d count:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->last_touch:J

    sub-long v5, v12, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->touch_count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    iput-wide v12, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->last_touch:J

    .line 2096
    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->touch_count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->touch_count:I

    const/4 v2, 0x6

    if-le v1, v2, :cond_6

    .line 2098
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_soundPool:Landroid/media/SoundPool;

    const/4 v2, 0x1

    const v3, 0x3dcccccd    # 0.1f

    const v4, 0x3dcccccd    # 0.1f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 2099
    const/4 v1, 0x1

    invoke-static {v1}, Lobject/p2pipcam/utils/Pub;->setDebug(Z)V

    .line 2101
    :cond_6
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 2102
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->start:Landroid/graphics/PointF;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 2103
    const/4 v1, 0x1

    iput v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mode:I

    .line 2104
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->getScale()F

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->originalScale:F

    .line 2106
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_resolution:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    .line 2108
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lobject/p2pwificam/clientActivity/PlayActivity;->showCalloffButton(Z)V

    .line 2109
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->layout_resolution:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2113
    :cond_7
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->selectLayout:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 2115
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v8

    .line 2116
    .local v8, "id":I
    const-string v1, "PlayActivity"

    const-string v2, "onTouch id:%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    const v1, 0x7f08019f

    if-eq v8, v1, :cond_4

    const v1, 0x7f08013d

    if-eq v8, v1, :cond_4

    .line 2120
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->selectLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2121
    const/4 v1, 0x0

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->selectLayout:Landroid/view/View;

    .line 2122
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnSelect:Landroid/widget/ImageButton;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->btnSelect:Landroid/widget/ImageButton;

    iget v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_norColor:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setColorFilter(I)V

    goto/16 :goto_2

    .line 2132
    .end local v8    # "id":I
    .end local v12    # "now":J
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->x2:F

    .line 2133
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->y2:F

    .line 2134
    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->x1:F

    iget v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->x2:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41c80000    # 25.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_b

    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->y1:F

    iget v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->y2:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41c80000    # 25.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_b

    .line 2135
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_8

    .line 2136
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2137
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->resolutionPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2139
    :cond_8
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_9

    .line 2140
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2141
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mPopupWindowProgress:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2143
    :cond_9
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isSecondDown:Z

    if-nez v1, :cond_a

    .line 2144
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->bProgress:Z

    if-nez v1, :cond_a

    .line 2146
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->showBottom()V

    .line 2149
    :cond_a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isSecondDown:Z

    .line 2152
    :cond_b
    const/4 v1, 0x0

    iput v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->x1:F

    .line 2153
    const/4 v1, 0x0

    iput v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->x2:F

    .line 2154
    const/4 v1, 0x0

    iput v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->y1:F

    .line 2155
    const/4 v1, 0x0

    iput v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->y2:F

    .line 2156
    const/4 v1, 0x0

    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isDown:Z

    goto/16 :goto_2

    .line 2159
    :pswitch_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isSecondDown:Z

    .line 2160
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->spacing(Landroid/view/MotionEvent;)F

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->oldDist:F

    .line 2161
    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->oldDist:F

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 2162
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 2163
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mid:Landroid/graphics/PointF;

    move-object/from16 v0, p2

    invoke-direct {p0, v1, v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 2164
    const/4 v1, 0x2

    iput v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mode:I

    goto/16 :goto_2

    .line 2169
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->x2:F

    .line 2170
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->y2:F

    .line 2172
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    div-int/lit8 v9, v1, 0x2

    .line 2173
    .local v9, "midx":I
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    div-int/lit8 v10, v1, 0x2

    .line 2174
    .local v10, "midy":I
    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 2175
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->spacing(Landroid/view/MotionEvent;)F

    move-result v11

    .line 2176
    .local v11, "newDist":F
    const/4 v1, 0x0

    cmpl-float v1, v11, v1

    if-lez v1, :cond_4

    .line 2177
    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->oldDist:F

    div-float v14, v11, v1

    .line 2178
    .local v14, "scale":F
    const-string v1, "scale"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "scale:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v1, v14, v1

    if-gtz v1, :cond_4

    const v1, 0x3e4ccccd    # 0.2f

    cmpl-float v1, v14, v1

    if-ltz v1, :cond_4

    .line 2180
    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->originalScale:F

    mul-float/2addr v1, v14

    int-to-float v2, v9

    int-to-float v3, v10

    invoke-virtual {p0, v1, v2, v3}, Lobject/p2pwificam/clientActivity/PlayActivity;->zoomTo(FFF)V

    goto/16 :goto_2

    .line 2056
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2090
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method protected setResolution(I)V
    .locals 3
    .param p1, "Resolution"    # I

    .prologue
    .line 1735
    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setResolution resolution:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    invoke-virtual {v0, p1}, Lcom/easyview/basecamera/BaseCamera;->setVideoQuality(I)V

    .line 1738
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isResolution:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->isResolution:Ljava/lang/Boolean;

    .line 1739
    return-void

    .line 1738
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public showKeyboard()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const v8, 0x7f020097

    .line 927
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 928
    .local v4, "ranNums":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v5, 0xa

    if-lt v0, v5, :cond_0

    .line 931
    const/16 v5, 0xa

    new-array v1, v5, [I

    .line 932
    .local v1, "numbers":[I
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 933
    .local v3, "ran":Ljava/util/Random;
    const/16 v0, 0xa

    :goto_1
    if-gtz v0, :cond_1

    .line 946
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key00:Landroid/widget/ImageView;

    aget v6, v1, v9

    add-int/2addr v6, v8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 947
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key01:Landroid/widget/ImageView;

    aget v6, v1, v10

    add-int/2addr v6, v8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 948
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key02:Landroid/widget/ImageView;

    aget v6, v1, v11

    add-int/2addr v6, v8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 949
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key03:Landroid/widget/ImageView;

    aget v6, v1, v12

    add-int/2addr v6, v8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 950
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key04:Landroid/widget/ImageView;

    const/4 v6, 0x4

    aget v6, v1, v6

    add-int/2addr v6, v8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 951
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key05:Landroid/widget/ImageView;

    const/4 v6, 0x5

    aget v6, v1, v6

    add-int/2addr v6, v8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 952
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key06:Landroid/widget/ImageView;

    const/4 v6, 0x6

    aget v6, v1, v6

    add-int/2addr v6, v8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 953
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key07:Landroid/widget/ImageView;

    const/4 v6, 0x7

    aget v6, v1, v6

    add-int/2addr v6, v8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 954
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key08:Landroid/widget/ImageView;

    const/16 v6, 0x8

    aget v6, v1, v6

    add-int/2addr v6, v8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 955
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key09:Landroid/widget/ImageView;

    const/16 v6, 0x9

    aget v6, v1, v6

    add-int/2addr v6, v8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 956
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key00:Landroid/widget/ImageView;

    aget v6, v1, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 957
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key01:Landroid/widget/ImageView;

    aget v6, v1, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 958
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key02:Landroid/widget/ImageView;

    aget v6, v1, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 959
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key03:Landroid/widget/ImageView;

    aget v6, v1, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 960
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key04:Landroid/widget/ImageView;

    const/4 v6, 0x4

    aget v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 961
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key05:Landroid/widget/ImageView;

    const/4 v6, 0x5

    aget v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 962
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key06:Landroid/widget/ImageView;

    const/4 v6, 0x6

    aget v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 963
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key07:Landroid/widget/ImageView;

    const/4 v6, 0x7

    aget v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 964
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key08:Landroid/widget/ImageView;

    const/16 v6, 0x8

    aget v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 965
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->key09:Landroid/widget/ImageView;

    const/16 v6, 0x9

    aget v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 966
    return-void

    .line 929
    .end local v1    # "numbers":[I
    .end local v3    # "ran":Ljava/util/Random;
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 928
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 934
    .restart local v1    # "numbers":[I
    .restart local v3    # "ran":Ljava/util/Random;
    :cond_1
    invoke-virtual {v3, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 936
    .local v2, "pos":I
    const-string v5, "keybord"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "pos ==== "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    rsub-int/lit8 v6, v0, 0xa

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v1, v6

    .line 941
    const-string v5, "keybord"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "numbers[10 - i] ==== "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rsub-int/lit8 v7, v0, 0xa

    aget v7, v1, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 933
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1
.end method

.method public showSureDialogPlay(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 581
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 584
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0601b8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 585
    const v1, 0x7f06000c

    .line 586
    new-instance v2, Lobject/p2pwificam/clientActivity/PlayActivity$22;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/PlayActivity$22;-><init>(Lobject/p2pwificam/clientActivity/PlayActivity;)V

    .line 585
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 595
    const v1, 0x7f06000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 596
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 597
    return-void
.end method

.method protected showTimeStamp()V
    .locals 15

    .prologue
    .line 1353
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1354
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 1355
    .local v12, "year":I
    const/4 v13, 0x2

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/lit8 v4, v13, 0x1

    .line 1356
    .local v4, "month":I
    const/4 v13, 0x5

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1357
    .local v1, "day":I
    const/16 v13, 0xb

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1358
    .local v2, "hour":I
    const/16 v13, 0xc

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1359
    .local v3, "minute":I
    const/16 v13, 0xd

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1361
    .local v5, "second":I
    const/16 v13, 0xa

    if-lt v4, v13, :cond_0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 1362
    .local v9, "strMonth":Ljava/lang/String;
    :goto_0
    const/16 v13, 0xa

    if-lt v1, v13, :cond_1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 1363
    .local v6, "strDay":Ljava/lang/String;
    :goto_1
    const/16 v13, 0xa

    if-lt v2, v13, :cond_2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 1364
    .local v7, "strHour":Ljava/lang/String;
    :goto_2
    const/16 v13, 0xa

    if-lt v3, v13, :cond_3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 1366
    .local v8, "strMinite":Ljava/lang/String;
    :goto_3
    const/16 v13, 0xa

    if-lt v5, v13, :cond_4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 1369
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

    .line 1370
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

    .line 1369
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1372
    .local v11, "strTimeStamp":Ljava/lang/String;
    return-void

    .line 1361
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

    .line 1362
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

    .line 1363
    .restart local v6    # "strDay":Ljava/lang/String;
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "0"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 1364
    .restart local v7    # "strHour":Ljava/lang/String;
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "0"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1365
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 1366
    .restart local v8    # "strMinite":Ljava/lang/String;
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "0"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1367
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_4
.end method

.method protected zoomTo(FFF)V
    .locals 5
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    .line 2209
    const-string v2, "zoomTo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "zoomTo scale:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    iget v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mMaxZoom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 2211
    iget p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mMaxZoom:F

    .line 2216
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->getScale()F

    move-result v1

    .line 2217
    .local v1, "oldScale":F
    div-float v0, p1, v1

    .line 2218
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

    .line 2219
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 2220
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->videoViewStandard:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2221
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->videoViewStandard:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayActivity;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 2222
    return-void

    .line 2212
    .end local v0    # "deltaScale":F
    .end local v1    # "oldScale":F
    :cond_1
    iget v2, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mMinZoom:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 2213
    iget p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity;->mMinZoom:F

    goto :goto_0
.end method
